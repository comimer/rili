package androidx.core.app;

import android.app.AlarmManager;
import android.app.PendingIntent;

public final class e
{
  public static void a(AlarmManager paramAlarmManager, int paramInt, long paramLong, PendingIntent paramPendingIntent)
  {
    a.b(paramAlarmManager, paramInt, paramLong, paramPendingIntent);
  }
  
  static class a
  {
    static void a(AlarmManager paramAlarmManager, int paramInt, long paramLong, PendingIntent paramPendingIntent)
    {
      paramAlarmManager.setAndAllowWhileIdle(paramInt, paramLong, paramPendingIntent);
    }
    
    static void b(AlarmManager paramAlarmManager, int paramInt, long paramLong, PendingIntent paramPendingIntent)
    {
      paramAlarmManager.setExactAndAllowWhileIdle(paramInt, paramLong, paramPendingIntent);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.app.e
 * JD-Core Version:    0.7.0.1
 */