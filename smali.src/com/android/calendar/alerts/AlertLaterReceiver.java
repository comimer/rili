package com.android.calendar.alerts;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.miui.calendar.alerts.entities.BaseAlert;
import com.miui.calendar.util.z;

public class AlertLaterReceiver
  extends BroadcastReceiver
{
  public void a(Context paramContext, BaseAlert paramBaseAlert)
  {
    if (paramBaseAlert != null)
    {
      Intent localIntent = new Intent("com.miui.calendar.action.STOP_ALERT_ACTIVITY");
      localIntent.setPackage(paramContext.getPackageName());
      localIntent.putExtra("extra_key_alert", paramBaseAlert);
      paramContext.sendBroadcast(localIntent);
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("onReceive(): intent:");
    ((StringBuilder)localObject).append(paramIntent);
    z.h("Cal:D:AlertReceiver", ((StringBuilder)localObject).toString());
    localObject = paramIntent.getAction();
    if ("com.android.calendar.SET_REMINDER_LATER".equals(localObject))
    {
      paramIntent = (BaseAlert)paramIntent.getParcelableExtra("extra_key_alert");
      d.e(paramContext, paramIntent);
      a(paramContext, paramIntent);
    }
    else if ("com.android.calendar.ALERT_REMINDER_LATER".equals(localObject))
    {
      d.a(paramContext, BaseAlert.fromBundle(paramIntent.getExtras()));
    }
    else if ("com.android.calendar.CANCEL_REMINDER_LATER".equals(localObject))
    {
      d.b(paramContext, (BaseAlert)paramIntent.getParcelableExtra("extra_key_alert"));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.alerts.AlertLaterReceiver
 * JD-Core Version:    0.7.0.1
 */