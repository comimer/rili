package com.android.calendar.alerts;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.util.Log;
import b2.a;
import com.android.calendar.common.event.schema.Event;
import com.miui.calendar.alerts.entities.BaseAlert;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.t0;
import o1.i;

public class d
{
  static void a(Context paramContext, BaseAlert paramBaseAlert)
  {
    if (paramBaseAlert == null) {
      return;
    }
    i.c(paramContext, paramBaseAlert.getNotificationId());
    c.e(paramContext, paramBaseAlert, 1);
  }
  
  static void b(Context paramContext, BaseAlert<? extends Event> paramBaseAlert)
  {
    g0.d("notification_cancel_remind_later_button_clicked");
    if (paramBaseAlert != null) {
      c(paramContext, paramBaseAlert.getNotificationId());
    }
    c.a(paramContext, paramBaseAlert);
  }
  
  public static void c(Context paramContext, int paramInt)
  {
    i.c(paramContext, paramInt);
    AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
    if (localAlarmManager == null) {
      return;
    }
    Intent localIntent = new Intent(paramContext, AlertLaterReceiver.class);
    localIntent.setAction("com.android.calendar.ALERT_REMINDER_LATER");
    localAlarmManager.cancel(PendingIntent.getBroadcast(paramContext, paramInt, localIntent, 201326592));
  }
  
  private static PendingIntent d(Context paramContext, BaseAlert<? extends Event> paramBaseAlert)
  {
    Intent localIntent = new Intent(paramContext, AlertLaterReceiver.class);
    localIntent.setAction("com.android.calendar.ALERT_REMINDER_LATER");
    localIntent.putExtras(paramBaseAlert.toBundle());
    return PendingIntent.getBroadcast(paramContext, paramBaseAlert.getNotificationId(), localIntent, 201326592);
  }
  
  static void e(Context paramContext, BaseAlert<? extends Event> paramBaseAlert)
  {
    if (paramBaseAlert == null) {
      return;
    }
    g0.d("notification_remind_later_button_clicked");
    i.c(paramContext, paramBaseAlert.getNotificationId());
    AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
    if (localAlarmManager != null)
    {
      paramBaseAlert = d(paramContext, paramBaseAlert);
      String str = a.c(paramContext, "preferences_default_reminder_later_time", "");
      long l;
      try
      {
        l = Long.parseLong(str);
      }
      catch (NumberFormatException localNumberFormatException)
      {
        for (;;)
        {
          Log.e("Cal:D:RemindLaterUtils", "parseLong exception", localNumberFormatException);
          l = 300000L;
        }
      }
      o1.c.a(paramContext, localAlarmManager, 1, System.currentTimeMillis() + l, paramBaseAlert);
      int i = (int)(l / 60000L);
      t0.d(paramContext, paramContext.getResources().getQuantityString(2131755086, i, new Object[] { Integer.valueOf(i) }), 1);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.alerts.d
 * JD-Core Version:    0.7.0.1
 */