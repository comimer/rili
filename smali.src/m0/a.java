package m0;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteClosable;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteQuery;
import android.os.CancellationSignal;
import android.util.Pair;
import java.io.IOException;
import java.util.List;
import l0.b;
import l0.f;

class a
  implements b
{
  private static final String[] b = { "", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE " };
  private static final String[] c = new String[0];
  private final SQLiteDatabase a;
  
  a(SQLiteDatabase paramSQLiteDatabase)
  {
    this.a = paramSQLiteDatabase;
  }
  
  public void C()
  {
    this.a.setTransactionSuccessful();
  }
  
  public void D(String paramString, Object[] paramArrayOfObject)
    throws SQLException
  {
    this.a.execSQL(paramString, paramArrayOfObject);
  }
  
  public Cursor M(String paramString)
  {
    return b0(new l0.a(paramString));
  }
  
  public void O()
  {
    this.a.endTransaction();
  }
  
  public Cursor T(final l0.e parame, CancellationSignal paramCancellationSignal)
  {
    return this.a.rawQueryWithFactory(new b(parame), parame.d(), c, null, paramCancellationSignal);
  }
  
  public Cursor b0(final l0.e parame)
  {
    return this.a.rawQueryWithFactory(new a(parame), parame.d(), c, null);
  }
  
  boolean c(SQLiteDatabase paramSQLiteDatabase)
  {
    boolean bool;
    if (this.a == paramSQLiteDatabase) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void close()
    throws IOException
  {
    this.a.close();
  }
  
  public void f()
  {
    this.a.beginTransaction();
  }
  
  public boolean f0()
  {
    return this.a.inTransaction();
  }
  
  public List<Pair<String, String>> g()
  {
    return this.a.getAttachedDbs();
  }
  
  public String getPath()
  {
    return this.a.getPath();
  }
  
  public boolean isOpen()
  {
    return this.a.isOpen();
  }
  
  public void k(String paramString)
    throws SQLException
  {
    this.a.execSQL(paramString);
  }
  
  public f p(String paramString)
  {
    return new e(this.a.compileStatement(paramString));
  }
  
  class a
    implements SQLiteDatabase.CursorFactory
  {
    a(l0.e parame) {}
    
    public Cursor newCursor(SQLiteDatabase paramSQLiteDatabase, SQLiteCursorDriver paramSQLiteCursorDriver, String paramString, SQLiteQuery paramSQLiteQuery)
    {
      parame.e(new d(paramSQLiteQuery));
      return new SQLiteCursor(paramSQLiteCursorDriver, paramString, paramSQLiteQuery);
    }
  }
  
  class b
    implements SQLiteDatabase.CursorFactory
  {
    b(l0.e parame) {}
    
    public Cursor newCursor(SQLiteDatabase paramSQLiteDatabase, SQLiteCursorDriver paramSQLiteCursorDriver, String paramString, SQLiteQuery paramSQLiteQuery)
    {
      parame.e(new d(paramSQLiteQuery));
      return new SQLiteCursor(paramSQLiteCursorDriver, paramString, paramSQLiteQuery);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     m0.a
 * JD-Core Version:    0.7.0.1
 */