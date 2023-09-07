package com.miui.calendar.alarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.miui.calendar.util.z;

public class CalendarAlarmReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    long l = paramIntent.getLongExtra("reminder_millis", -1L);
    paramIntent = new StringBuilder();
    paramIntent.append("onReceive: ");
    paramIntent.append(str);
    paramIntent.append("reminderMillis: ");
    paramIntent.append(l);
    z.a("Cal:D:CalendarAlarmReceiver", paramIntent.toString());
    if ("com.miui.action.CALENDARALARM".equals(str)) {
      a.b(paramContext, l);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.alarm.CalendarAlarmReceiver
 * JD-Core Version:    0.7.0.1
 */