package s5;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

public class c
  extends SQLiteOpenHelper
{
  public c(Context paramContext, String paramString)
  {
    super(paramContext, paramString, null, 4);
  }
  
  private void c(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL(" CREATE TRIGGER accountsDelete DELETE ON accounts BEGIN   DELETE FROM authtokens     WHERE accounts_id=OLD._id ;   DELETE FROM extras     WHERE accounts_id=OLD._id ;   DELETE FROM grants     WHERE accounts_id=OLD._id ; END");
  }
  
  private void d(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE grants (  accounts_id INTEGER NOT NULL, auth_token_type STRING NOT NULL,  uid INTEGER NOT NULL,  UNIQUE (accounts_id,auth_token_type,uid))");
  }
  
  public b e(Context paramContext)
  {
    return new b(paramContext, super.getWritableDatabase());
  }
  
  @Deprecated
  public SQLiteDatabase getReadableDatabase()
  {
    throw new IllegalStateException("use getSecureDatabase instead");
  }
  
  @Deprecated
  public SQLiteDatabase getWritableDatabase()
  {
    throw new IllegalStateException("use getSecureDatabase instead");
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE accounts ( _id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, type TEXT NOT NULL, password TEXT, UNIQUE(name,type))");
    paramSQLiteDatabase.execSQL("CREATE TABLE authtokens (  _id INTEGER PRIMARY KEY AUTOINCREMENT,  accounts_id INTEGER NOT NULL, type TEXT NOT NULL,  authtoken TEXT,  UNIQUE (accounts_id,type))");
    d(paramSQLiteDatabase);
    paramSQLiteDatabase.execSQL("CREATE TABLE extras ( _id INTEGER PRIMARY KEY AUTOINCREMENT, accounts_id INTEGER, key TEXT NOT NULL, value TEXT, UNIQUE(accounts_id,key))");
    paramSQLiteDatabase.execSQL("CREATE TABLE meta ( key TEXT PRIMARY KEY NOT NULL, value TEXT)");
    c(paramSQLiteDatabase);
  }
  
  public void onOpen(SQLiteDatabase paramSQLiteDatabase)
  {
    if (Log.isLoggable("SecureDatabaseHelper", 2))
    {
      paramSQLiteDatabase = new StringBuilder();
      paramSQLiteDatabase.append("opened database ");
      paramSQLiteDatabase.append(getDatabaseName());
      com.xiaomi.accountsdk.utils.b.g("SecureDatabaseHelper", paramSQLiteDatabase.toString());
    }
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("upgrade from version ");
    localStringBuilder.append(paramInt1);
    localStringBuilder.append(" to version ");
    localStringBuilder.append(paramInt2);
    com.xiaomi.accountsdk.utils.b.g("SecureDatabaseHelper", localStringBuilder.toString());
    paramInt2 = paramInt1;
    if (paramInt1 == 1) {
      paramInt2 = paramInt1 + 1;
    }
    paramInt1 = paramInt2;
    if (paramInt2 == 2)
    {
      d(paramSQLiteDatabase);
      paramSQLiteDatabase.execSQL("DROP TRIGGER accountsDelete");
      c(paramSQLiteDatabase);
      paramInt1 = paramInt2 + 1;
    }
    if (paramInt1 == 3) {
      paramSQLiteDatabase.execSQL("UPDATE accounts SET type = 'com.google' WHERE type == 'com.google.GAIA'");
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s5.c
 * JD-Core Version:    0.7.0.1
 */