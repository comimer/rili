package m0;

import android.database.sqlite.SQLiteClosable;
import android.database.sqlite.SQLiteProgram;

class d
  implements l0.d
{
  private final SQLiteProgram a;
  
  d(SQLiteProgram paramSQLiteProgram)
  {
    this.a = paramSQLiteProgram;
  }
  
  public void B(int paramInt, long paramLong)
  {
    this.a.bindLong(paramInt, paramLong);
  }
  
  public void F(int paramInt, byte[] paramArrayOfByte)
  {
    this.a.bindBlob(paramInt, paramArrayOfByte);
  }
  
  public void X(int paramInt)
  {
    this.a.bindNull(paramInt);
  }
  
  public void close()
  {
    this.a.close();
  }
  
  public void l(int paramInt, String paramString)
  {
    this.a.bindString(paramInt, paramString);
  }
  
  public void r(int paramInt, double paramDouble)
  {
    this.a.bindDouble(paramInt, paramDouble);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     m0.d
 * JD-Core Version:    0.7.0.1
 */