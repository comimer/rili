package com.xiaomi.onetrack.b;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

public class g
  extends SQLiteOpenHelper
{
  public static final String a = "one_track_cloud";
  public static final String b = "events_cloud";
  public static final String c = "_id";
  public static final String d = "app_id";
  public static final String e = "cloud_data";
  public static final String f = "data_hash";
  public static final String g = "timestamp";
  static final String h = "CREATE TABLE events_cloud (_id  INTEGER PRIMARY KEY AUTOINCREMENT,app_id TEXT,cloud_data TEXT,timestamp INTEGER,data_hash TEXT)";
  private static final String i = "ConfigDatabaseHelper";
  private static final int j = 1;
  
  public g(Context paramContext)
  {
    super(paramContext, "one_track_cloud", null, 1);
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE events_cloud (_id  INTEGER PRIMARY KEY AUTOINCREMENT,app_id TEXT,cloud_data TEXT,timestamp INTEGER,data_hash TEXT)");
    Log.d("ConfigDatabaseHelper", "onCreate: ");
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.b.g
 * JD-Core Version:    0.7.0.1
 */