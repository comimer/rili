package x0;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.m;
import java.util.ArrayList;
import java.util.List;
import k0.c;
import l0.f;

public final class u
  implements t
{
  private final RoomDatabase a;
  private final androidx.room.d<s> b;
  
  public u(RoomDatabase paramRoomDatabase)
  {
    this.a = paramRoomDatabase;
    this.b = new a(paramRoomDatabase);
  }
  
  public List<String> a(String paramString)
  {
    m localm = m.j("SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?", 1);
    if (paramString == null) {
      localm.X(1);
    } else {
      localm.l(1, paramString);
    }
    this.a.assertNotSuspendingTransaction();
    paramString = c.b(this.a, localm, false, null);
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
  
  public void b(s params)
  {
    this.a.assertNotSuspendingTransaction();
    this.a.beginTransaction();
    try
    {
      this.b.insert(params);
      this.a.setTransactionSuccessful();
      return;
    }
    finally
    {
      this.a.endTransaction();
    }
  }
  
  class a
    extends androidx.room.d<s>
  {
    a(RoomDatabase paramRoomDatabase)
    {
      super();
    }
    
    public void a(f paramf, s params)
    {
      String str = params.a;
      if (str == null) {
        paramf.X(1);
      } else {
        paramf.l(1, str);
      }
      params = params.b;
      if (params == null) {
        paramf.X(2);
      } else {
        paramf.l(2, params);
      }
    }
    
    public String createQuery()
    {
      return "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)";
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x0.u
 * JD-Core Version:    0.7.0.1
 */