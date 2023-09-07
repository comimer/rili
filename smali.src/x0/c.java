package x0;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.m;
import java.util.ArrayList;
import java.util.List;
import l0.f;

public final class c
  implements b
{
  private final RoomDatabase a;
  private final androidx.room.d<a> b;
  
  public c(RoomDatabase paramRoomDatabase)
  {
    this.a = paramRoomDatabase;
    this.b = new a(paramRoomDatabase);
  }
  
  public List<String> a(String paramString)
  {
    m localm = m.j("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?", 1);
    if (paramString == null) {
      localm.X(1);
    } else {
      localm.l(1, paramString);
    }
    this.a.assertNotSuspendingTransaction();
    paramString = k0.c.b(this.a, localm, false, null);
    try
    {
      ArrayList localArrayList = new java/util/ArrayList;
      localArrayList.<init>(paramString.getCount());
      while (paramString.moveToNext()) {
        localArrayList.add(paramString.getString(0));
      }
      return localArrayList;
    }
    finally
    {
      paramString.close();
      localm.z();
    }
  }
  
  public boolean b(String paramString)
  {
    boolean bool1 = true;
    m localm = m.j("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)", 1);
    if (paramString == null) {
      localm.X(1);
    } else {
      localm.l(1, paramString);
    }
    this.a.assertNotSuspendingTransaction();
    paramString = this.a;
    boolean bool2 = false;
    paramString = k0.c.b(paramString, localm, false, null);
    try
    {
      if (paramString.moveToFirst())
      {
        int i = paramString.getInt(0);
        if (i != 0) {
          bool2 = bool1;
        } else {
          bool2 = false;
        }
      }
      return bool2;
    }
    finally
    {
      paramString.close();
      localm.z();
    }
  }
  
  public void c(a parama)
  {
    this.a.assertNotSuspendingTransaction();
    this.a.beginTransaction();
    try
    {
      this.b.insert(parama);
      this.a.setTransactionSuccessful();
      return;
    }
    finally
    {
      this.a.endTransaction();
    }
  }
  
  public boolean d(String paramString)
  {
    boolean bool1 = true;
    m localm = m.j("SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?", 1);
    if (paramString == null) {
      localm.X(1);
    } else {
      localm.l(1, paramString);
    }
    this.a.assertNotSuspendingTransaction();
    paramString = this.a;
    boolean bool2 = false;
    Cursor localCursor = k0.c.b(paramString, localm, false, null);
    try
    {
      if (localCursor.moveToFirst())
      {
        int i = localCursor.getInt(0);
        if (i != 0) {
          bool2 = bool1;
        } else {
          bool2 = false;
        }
      }
      return bool2;
    }
    finally
    {
      localCursor.close();
      localm.z();
    }
  }
  
  class a
    extends androidx.room.d<a>
  {
    a(RoomDatabase paramRoomDatabase)
    {
      super();
    }
    
    public void a(f paramf, a parama)
    {
      String str = parama.a;
      if (str == null) {
        paramf.X(1);
      } else {
        paramf.l(1, str);
      }
      parama = parama.b;
      if (parama == null) {
        paramf.X(2);
      } else {
        paramf.l(2, parama);
      }
    }
    
    public String createQuery()
    {
      return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x0.c
 * JD-Core Version:    0.7.0.1
 */