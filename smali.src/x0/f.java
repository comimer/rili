package x0;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.m;
import k0.c;

public final class f
  implements e
{
  private final RoomDatabase a;
  private final androidx.room.d<d> b;
  
  public f(RoomDatabase paramRoomDatabase)
  {
    this.a = paramRoomDatabase;
    this.b = new a(paramRoomDatabase);
  }
  
  public Long a(String paramString)
  {
    m localm = m.j("SELECT long_value FROM Preference where `key`=?", 1);
    if (paramString == null) {
      localm.X(1);
    } else {
      localm.l(1, paramString);
    }
    this.a.assertNotSuspendingTransaction();
    paramString = this.a;
    Object localObject = null;
    Cursor localCursor = c.b(paramString, localm, false, null);
    paramString = localObject;
    try
    {
      if (localCursor.moveToFirst()) {
        if (localCursor.isNull(0)) {
          paramString = localObject;
        } else {
          paramString = Long.valueOf(localCursor.getLong(0));
        }
      }
      return paramString;
    }
    finally
    {
      localCursor.close();
      localm.z();
    }
  }
  
  public void b(d paramd)
  {
    this.a.assertNotSuspendingTransaction();
    this.a.beginTransaction();
    try
    {
      this.b.insert(paramd);
      this.a.setTransactionSuccessful();
      return;
    }
    finally
    {
      this.a.endTransaction();
    }
  }
  
  class a
    extends androidx.room.d<d>
  {
    a(RoomDatabase paramRoomDatabase)
    {
      super();
    }
    
    public void a(l0.f paramf, d paramd)
    {
      String str = paramd.a;
      if (str == null) {
        paramf.X(1);
      } else {
        paramf.l(1, str);
      }
      paramd = paramd.b;
      if (paramd == null) {
        paramf.X(2);
      } else {
        paramf.B(2, paramd.longValue());
      }
    }
    
    public String createQuery()
    {
      return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x0.f
 * JD-Core Version:    0.7.0.1
 */