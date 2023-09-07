package com.android.calendar.alerts;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.miui.calendar.util.z;
import l3.b;
import o1.a;
import z3.j;

public class AlertReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onReceive(): intent:");
    localStringBuilder.append(paramIntent);
    z.h("Cal:D:AlertReceiver", localStringBuilder.toString());
    paramIntent = paramIntent.getAction();
    if ("com.android.calendar.STOP_ALARM_RINGTONE".equals(paramIntent))
    {
      if (!a.e())
      {
        z.h("Cal:D:AlertReceiver", "onReceive(): AlarmKlaxon.stop()");
        a.l();
      }
    }
    else
    {
      c.g(paramContext, paramIntent);
      if ((!"android.intent.action.BOOT_COMPLETED".equals(paramIntent)) && (!"com.miui.action.MIDNIGHT".equals(paramIntent)))
      {
        if ("android.intent.action.TIME_SET".equals(paramIntent)) {
          j.g(paramContext);
        }
      }
      else {
        b.a(paramContext);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.alerts.AlertReceiver
 * JD-Core Version:    0.7.0.1
 */