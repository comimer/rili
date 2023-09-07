package o1;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build.VERSION;
import androidx.core.app.e;
import com.miui.calendar.util.z;

public class c
{
  public static void a(Context paramContext, AlarmManager paramAlarmManager, int paramInt, long paramLong, PendingIntent paramPendingIntent)
  {
    paramContext = new StringBuilder();
    paramContext.append("setExactAlarm(): alarmTime:");
    paramContext.append(paramLong);
    z.a("Cal:D:AlarmManagerUtils", paramContext.toString());
    if ((Build.VERSION.SDK_INT >= 31) && (!b.a(paramAlarmManager)))
    {
      paramContext = new StringBuilder();
      paramContext.append("setExactAlarmFailed: alarmTime:");
      paramContext.append(paramLong);
      z.c("Cal:D:AlarmManagerUtils", paramContext.toString());
      return;
    }
    e.a(paramAlarmManager, 1, paramLong, paramPendingIntent);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     o1.c
 * JD-Core Version:    0.7.0.1
 */