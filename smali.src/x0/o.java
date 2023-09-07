package x0;

import androidx.room.RoomDatabase;
import androidx.room.q;
import l0.f;

public final class o
  implements n
{
  private final RoomDatabase a;
  private final androidx.room.d<m> b;
  private final q c;
  private final q d;
  
  public o(RoomDatabase paramRoomDatabase)
  {
    this.a = paramRoomDatabase;
    this.b = new a(paramRoomDatabase);
    this.c = new b(paramRoomDatabase);
    this.d = new c(paramRoomDatabase);
  }
  
  public void a(String paramString)
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
  
  public void deleteAll()
  {
    this.a.assertNotSuspendingTransaction();
    f localf = this.d.acquire();
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
      this.d.release(localf);
    }
  }
  
  class a
    extends androidx.room.d<m>
  {
    a(RoomDatabase paramRoomDatabase)
    {
      super();
    }
    
    public void a(f paramf, m paramm)
    {
      String str = paramm.a;
      if (str == null) {
        paramf.X(1);
      } else {
        paramf.l(1, str);
      }
      paramm = androidx.work.d.k(paramm.b);
      if (paramm == null) {
        paramf.X(2);
      } else {
        paramf.F(2, paramm);
      }
    }
    
    public String createQuery()
    {
      return "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)";
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
      return "DELETE from WorkProgress where work_spec_id=?";
    }
  }
  
  class c
    extends q
  {
    c(RoomDatabase paramRoomDatabase)
    {
      super();
    }
    
    public String createQuery()
    {
      return "DELETE FROM WorkProgress";
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x0.o
 * JD-Core Version:    0.7.0.1
 */