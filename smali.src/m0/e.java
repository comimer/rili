package m0;

import android.database.sqlite.SQLiteStatement;
import l0.f;

class e
  extends d
  implements f
{
  private final SQLiteStatement b;
  
  e(SQLiteStatement paramSQLiteStatement)
  {
    super(paramSQLiteStatement);
    this.b = paramSQLiteStatement;
  }
  
  public long m0()
  {
    return this.b.executeInsert();
  }
  
  public int o()
  {
    return this.b.executeUpdateDelete();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     m0.e
 * JD-Core Version:    0.7.0.1
 */