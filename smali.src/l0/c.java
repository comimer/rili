package l0;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

public abstract interface c
  extends Closeable
{
  public abstract b K();
  
  public abstract void close();
  
  public abstract String getDatabaseName();
  
  public abstract void setWriteAheadLoggingEnabled(boolean paramBoolean);
  
  public static abstract class a
  {
    public final int a;
    
    public a(int paramInt)
    {
      this.a = paramInt;
    }
    
    private void a(String paramString)
    {
      if ((!paramString.equalsIgnoreCase(":memory:")) && (paramString.trim().length() != 0))
      {
        Object localObject = new StringBuilder();
        ((StringBuilder)localObject).append("deleting the database file: ");
        ((StringBuilder)localObject).append(paramString);
        Log.w("SupportSQLite", ((StringBuilder)localObject).toString());
        try
        {
          localObject = new java/io/File;
          ((File)localObject).<init>(paramString);
          SQLiteDatabase.deleteDatabase((File)localObject);
        }
        catch (Exception paramString)
        {
          Log.w("SupportSQLite", "delete failed: ", paramString);
        }
      }
    }
    
    public void b(b paramb) {}
    
    public void c(b paramb)
    {
      Object localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("Corruption reported by sqlite on database: ");
      ((StringBuilder)localObject1).append(paramb.getPath());
      Log.e("SupportSQLite", ((StringBuilder)localObject1).toString());
      if (!paramb.isOpen())
      {
        a(paramb.getPath());
        return;
      }
      localObject1 = null;
      Object localObject3 = null;
      label143:
      try
      {
        try
        {
          List localList = paramb.g();
          localObject1 = localList;
        }
        finally
        {
          break label89;
        }
      }
      catch (SQLiteException localSQLiteException)
      {
        label78:
        label89:
        break label78;
      }
      localObject3 = localObject2;
      try
      {
        paramb.close();
      }
      catch (IOException localIOException)
      {
        break label143;
      }
      if (localObject3 != null)
      {
        paramb = localObject3.iterator();
        while (paramb.hasNext()) {
          a((String)((Pair)paramb.next()).second);
        }
      }
      a(paramb.getPath());
      throw localObject2;
      if (localObject2 != null)
      {
        paramb = localObject2.iterator();
        while (paramb.hasNext()) {
          a((String)((Pair)paramb.next()).second);
        }
      }
      a(paramb.getPath());
    }
    
    public abstract void d(b paramb);
    
    public abstract void e(b paramb, int paramInt1, int paramInt2);
    
    public void f(b paramb) {}
    
    public abstract void g(b paramb, int paramInt1, int paramInt2);
  }
  
  public static class b
  {
    public final Context a;
    public final String b;
    public final c.a c;
    public final boolean d;
    
    b(Context paramContext, String paramString, c.a parama, boolean paramBoolean)
    {
      this.a = paramContext;
      this.b = paramString;
      this.c = parama;
      this.d = paramBoolean;
    }
    
    public static a a(Context paramContext)
    {
      return new a(paramContext);
    }
    
    public static class a
    {
      Context a;
      String b;
      c.a c;
      boolean d;
      
      a(Context paramContext)
      {
        this.a = paramContext;
      }
      
      public c.b a()
      {
        if (this.c != null)
        {
          if (this.a != null)
          {
            if ((this.d) && (TextUtils.isEmpty(this.b))) {
              throw new IllegalArgumentException("Must set a non-null database name to a configuration that uses the no backup directory.");
            }
            return new c.b(this.a, this.b, this.c, this.d);
          }
          throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
        }
        throw new IllegalArgumentException("Must set a callback to create the configuration.");
      }
      
      public a b(c.a parama)
      {
        this.c = parama;
        return this;
      }
      
      public a c(String paramString)
      {
        this.b = paramString;
        return this;
      }
      
      public a d(boolean paramBoolean)
      {
        this.d = paramBoolean;
        return this;
      }
    }
  }
  
  public static abstract interface c
  {
    public abstract c a(c.b paramb);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     l0.c
 * JD-Core Version:    0.7.0.1
 */