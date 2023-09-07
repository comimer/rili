package x0;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.m;
import androidx.room.q;
import java.util.ArrayList;
import java.util.List;
import k0.b;
import k0.c;
import l0.f;

public final class i
  implements h
{
  private final RoomDatabase a;
  private final androidx.room.d<g> b;
  private final q c;
  
  public i(RoomDatabase paramRoomDatabase)
  {
    this.a = paramRoomDatabase;
    this.b = new a(paramRoomDatabase);
    this.c = new b(paramRoomDatabase);
  }
  
  public List<String> a()
  {
    m localm = m.j("SELECT DISTINCT work_spec_id FROM SystemIdInfo", 0);
    this.a.assertNotSuspendingTransaction();
    Cursor localCursor = c.b(this.a, localm, false, null);
    try
    {
      ArrayList localArrayList = new java/util/ArrayList;
      localArrayList.<init>(localCursor.getCount());
      while (localCursor.moveToNext()) {
        localArrayList.add(localCursor.getString(0));
      }
      return localArrayList;
    }
    finally
    {
      localCursor.close();
      localm.z();
    }
  }
  
  public g b(String paramString)
  {
    m localm = m.j("SELECT `SystemIdInfo`.`work_spec_id` AS `work_spec_id`, `SystemIdInfo`.`system_id` AS `system_id` FROM SystemIdInfo WHERE work_spec_id=?", 1);
    if (paramString == null) {
      localm.X(1);
    } else {
      localm.l(1, paramString);
    }
    this.a.assertNotSuspendingTransaction();
    Object localObject = this.a;
    paramString = null;
    localObject = c.b((RoomDatabase)localObject, localm, false, null);
    try
    {
      int i = b.c((Cursor)localObject, "work_spec_id");
      int j = b.c((Cursor)localObject, "system_id");
      if (((Cursor)localObject).moveToFirst()) {
        paramString = new g(((Cursor)localObject).getString(i), ((Cursor)localObject).getInt(j));
      }
      return paramString;
    }
    finally
    {
      ((Cursor)localObject).close();
      localm.z();
    }
  }
  
  public void c(String paramString)
  {
    this.a.assertNotSuspendingTransaction();
    f localf = this.c.acquire();
    if (paramString == null) {
      localf.X(1);
    } else {
      localf.l(1, paramString);
    }
    this.a.beginTransaction();
    try
    {
      localf.o();
      this.a.setTransactionSuccessful();
      return;
    }
    finally
    {
      this.a.endTransaction();
      this.c.release(localf);
    }
  }
  
  public void d(g paramg)
  {
    this.a.assertNotSuspendingTransaction();
    this.a.beginTransaction();
    try
    {
      this.b.insert(paramg);
      this.a.setTransactionSuccessful();
      return;
    }
    finally
    {
      this.a.endTransaction();
    }
  }
  
  class a
    extends androidx.room.d<g>
  {
    a(RoomDatabase paramRoomDatabase)
    {
      super();
    }
    
    public void a(f paramf, g paramg)
    {
      String str = paramg.a;
      if (str == null) {
        paramf.X(1);
      } else {
        paramf.l(1, str);
      }
      paramf.B(2, paramg.b);
    }
    
    public String createQuery()
    {
      return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`system_id`) VALUES (?,?)";
    }
  }
  
  class b
    extends q
  {
    b(RoomDatabase paramRoomDatabase)
    {
      super();
    }
    
    public String createQuery()
    {
      return "DELETE FROM SystemIdInfo where work_spec_id=?";
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x0.i
 * JD-Core Version:    0.7.0.1
 */