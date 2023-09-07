package androidx.room;

import android.database.Cursor;
import java.util.Iterator;
import java.util.List;
import l0.c.a;

public class l
  extends c.a
{
  private b b;
  private final a c;
  private final String d;
  private final String e;
  
  public l(b paramb, a parama, String paramString1, String paramString2)
  {
    super(parama.version);
    this.b = paramb;
    this.c = parama;
    this.d = paramString1;
    this.e = paramString2;
  }
  
  private void h(l0.b paramb)
  {
    b localb;
    if (k(paramb))
    {
      localb = null;
      Cursor localCursor = paramb.b0(new l0.a("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"));
      paramb = localb;
      try
      {
        if (localCursor.moveToFirst()) {
          paramb = localCursor.getString(0);
        }
        localCursor.close();
        if ((this.d.equals(paramb)) || (this.e.equals(paramb))) {
          break label123;
        }
        throw new IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number.");
      }
      finally
      {
        localCursor.close();
      }
    }
    else
    {
      localb = this.c.onValidateSchema(paramb);
      if (!localb.a) {
        break label124;
      }
      this.c.onPostMigrate(paramb);
      l(paramb);
    }
    label123:
    return;
    label124:
    paramb = new StringBuilder();
    paramb.append("Pre-packaged database has an invalid schema: ");
    paramb.append(localb.b);
    throw new IllegalStateException(paramb.toString());
  }
  
  private void i(l0.b paramb)
  {
    paramb.k("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
  }
  
  private static boolean j(l0.b paramb)
  {
    Cursor localCursor = paramb.M("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
    try
    {
      boolean bool1 = localCursor.moveToFirst();
      boolean bool2 = false;
      boolean bool3 = bool2;
      if (bool1)
      {
        int i = localCursor.getInt(0);
        bool3 = bool2;
        if (i == 0) {
          bool3 = true;
        }
      }
      return bool3;
    }
    finally
    {
      localCursor.close();
    }
  }
  
  private static boolean k(l0.b paramb)
  {
    paramb = paramb.M("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
    try
    {
      boolean bool1 = paramb.moveToFirst();
      boolean bool2 = false;
      boolean bool3 = bool2;
      if (bool1)
      {
        int i = paramb.getInt(0);
        bool3 = bool2;
        if (i != 0) {
          bool3 = true;
        }
      }
      return bool3;
    }
    finally
    {
      paramb.close();
    }
  }
  
  private void l(l0.b paramb)
  {
    i(paramb);
    paramb.k(k.a(this.d));
  }
  
  public void b(l0.b paramb)
  {
    super.b(paramb);
  }
  
  public void d(l0.b paramb)
  {
    boolean bool = j(paramb);
    this.c.createAllTables(paramb);
    if (!bool)
    {
      b localb = this.c.onValidateSchema(paramb);
      if (!localb.a)
      {
        paramb = new StringBuilder();
        paramb.append("Pre-packaged database has an invalid schema: ");
        paramb.append(localb.b);
        throw new IllegalStateException(paramb.toString());
      }
    }
    l(paramb);
    this.c.onCreate(paramb);
  }
  
  public void e(l0.b paramb, int paramInt1, int paramInt2)
  {
    g(paramb, paramInt1, paramInt2);
  }
  
  public void f(l0.b paramb)
  {
    super.f(paramb);
    h(paramb);
    this.c.onOpen(paramb);
    this.b = null;
  }
  
  public void g(l0.b paramb, int paramInt1, int paramInt2)
  {
    Object localObject = this.b;
    if (localObject != null)
    {
      localObject = ((b)localObject).d.c(paramInt1, paramInt2);
      if (localObject != null)
      {
        this.c.onPreMigrate(paramb);
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext()) {
          ((j0.a)((Iterator)localObject).next()).a(paramb);
        }
        localObject = this.c.onValidateSchema(paramb);
        if (((b)localObject).a)
        {
          this.c.onPostMigrate(paramb);
          l(paramb);
          i = 1;
          break label149;
        }
        paramb = new StringBuilder();
        paramb.append("Migration didn't properly handle: ");
        paramb.append(((b)localObject).b);
        throw new IllegalStateException(paramb.toString());
      }
    }
    int i = 0;
    label149:
    if (i == 0)
    {
      localObject = this.b;
      if ((localObject != null) && (!((b)localObject).a(paramInt1, paramInt2)))
      {
        this.c.dropAllTables(paramb);
        this.c.createAllTables(paramb);
      }
      else
      {
        paramb = new StringBuilder();
        paramb.append("A migration from ");
        paramb.append(paramInt1);
        paramb.append(" to ");
        paramb.append(paramInt2);
        paramb.append(" was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods.");
        throw new IllegalStateException(paramb.toString());
      }
    }
  }
  
  public static abstract class a
  {
    public final int version;
    
    public a(int paramInt)
    {
      this.version = paramInt;
    }
    
    protected abstract void createAllTables(l0.b paramb);
    
    protected abstract void dropAllTables(l0.b paramb);
    
    protected abstract void onCreate(l0.b paramb);
    
    protected abstract void onOpen(l0.b paramb);
    
    protected void onPostMigrate(l0.b paramb) {}
    
    protected void onPreMigrate(l0.b paramb) {}
    
    protected l.b onValidateSchema(l0.b paramb)
    {
      validateMigration(paramb);
      return new l.b(true, null);
    }
    
    @Deprecated
    protected void validateMigration(l0.b paramb)
    {
      throw new UnsupportedOperationException("validateMigration is deprecated");
    }
  }
  
  public static class b
  {
    public final boolean a;
    public final String b;
    
    public b(boolean paramBoolean, String paramString)
    {
      this.a = paramBoolean;
      this.b = paramString;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.room.l
 * JD-Core Version:    0.7.0.1
 */