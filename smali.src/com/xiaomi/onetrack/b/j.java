package com.xiaomi.onetrack.b;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

class j
  implements Runnable
{
  j(h paramh, String paramString) {}
  
  public void run()
  {
    try
    {
      h.a(this.b).getWritableDatabase().delete("events_cloud", "app_id=?", new String[] { this.a });
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.b.j
 * JD-Core Version:    0.7.0.1
 */