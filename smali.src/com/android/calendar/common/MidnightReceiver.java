package com.android.calendar.common;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import com.miui.calendar.util.z;
import java.util.Calendar;
import o1.b;

public class MidnightReceiver
  extends BroadcastReceiver
{
  private static long a()
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.add(6, 1);
    localCalendar.set(11, 0);
    localCalendar.set(13, 0);
    localCalendar.set(12, 0);
    localCalendar.set(14, 0);
    return localCalendar.getTimeInMillis();
  }
  
  public static void b(Context paramContext)
  {
    try
    {
      AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
      if (localAlarmManager == null) {
        return;
      }
      Intent localIntent = new android/content/Intent;
      localIntent.<init>("com.miui.action.MIDNIGHT");
      localIntent.setPackage(paramContext.getPackageName());
      long l = a();
      if ((Build.VERSION.SDK_INT >= 31) && (!b.a(localAlarmManager)))
      {
        z.c("Cal:D:MidnightReceiver", "Alarm can not schedule");
      }
      else
      {
        localAlarmManager.setExact(1, l, PendingIntent.getBroadcast(paramContext, 0, localIntent, 67108864));
        paramContext = new java/lang/StringBuilder;
        paramContext.<init>();
        paramContext.append("setMidnightAlarm: ");
        paramContext.append(l);
        z.a("Cal:D:MidnightReceiver", paramContext.toString());
      }
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:MidnightReceiver", "setMidnightAlarm", paramContext);
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    paramIntent = new StringBuilder();
    paramIntent.append("onReceive: ");
    paramIntent.append(str);
    z.a("Cal:D:MidnightReceiver", paramIntent.toString());
    if (("com.miui.action.MIDNIGHT".equals(str)) || ("android.intent.action.TIME_SET".equals(str)) || ("android.intent.action.TIMEZONE_CHANGED".equals(str)) || ("android.intent.action.BOOT_COMPLETED".equals(str)) || ("android.intent.action.LOCALE_CHANGED".equals(str))) {
      b(paramContext);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.MidnightReceiver
 * JD-Core Version:    0.7.0.1
 */