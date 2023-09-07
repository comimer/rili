package x0;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.m;
import java.util.ArrayList;
import java.util.List;
import k0.c;
import l0.f;

public final class l
  implements k
{
  private final RoomDatabase a;
  private final androidx.room.d<j> b;
  
  public l(RoomDatabase paramRoomDatabase)
  {
    this.a = paramRoomDatabase;
    this.b = new a(paramRoomDatabase);
  }
  
  public void a(j paramj)
  {
    this.a.assertNotSuspendingTransaction();
    this.a.beginTransaction();
    try
    {
      this.b.insert(paramj);
      this.a.setTransactionSuccessful();
      return;
    }
    finally
    {
      this.a.endTransaction();
    }
  }
  
  public List<String> b(String paramString)
  {
    m localm = m.j("SELECT name FROM workname WHERE work_spec_id=?", 1);
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
  
  class a
    extends androidx.room.d<j>
  {
    a(RoomDatabase paramRoomDatabase)
    {
      super();
    }
    
    public void a(f paramf, j paramj)
    {
      String str = paramj.a;
      if (str == null) {
        paramf.X(1);
      } else {
        paramf.l(1, str);
      }
      paramj = paramj.b;
      if (paramj == null) {
        paramf.X(2);
      } else {
        paramf.l(2, paramj);
      }
    }
    
    public String createQuery()
    {
      return "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)";
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x0.l
 * JD-Core Version:    0.7.0.1
 */