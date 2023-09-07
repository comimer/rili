package com.android.calendar.alerts;

import android.annotation.SuppressLint;
import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.IBinder;
import android.os.Parcelable;
import android.provider.CalendarContract.CalendarAlerts;
import com.miui.calendar.alerts.entities.BaseAlert;
import com.miui.calendar.util.e;
import com.miui.calendar.util.z;
import o1.a;
import o1.g;
import o1.h;
import o1.i;

public class DismissAlarmsService
  extends IntentService
{
  private static final String[] a = { "state" };
  
  public DismissAlarmsService()
  {
    super("DismissAlarmsService");
  }
  
  private String b(long[] paramArrayOfLong)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("state");
    localStringBuilder.append("=");
    int i = 1;
    localStringBuilder.append(1);
    if (paramArrayOfLong.length > 0)
    {
      localStringBuilder.append(" AND (");
      localStringBuilder.append("event_id");
      localStringBuilder.append("=");
      localStringBuilder.append(paramArrayOfLong[0]);
      while (i < paramArrayOfLong.length)
      {
        localStringBuilder.append(" OR ");
        localStringBuilder.append("event_id");
        localStringBuilder.append("=");
        localStringBuilder.append(paramArrayOfLong[i]);
        i++;
      }
      localStringBuilder.append(")");
    }
    return localStringBuilder.toString();
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  @SuppressLint({"MissingPermission"})
  public void onHandleIntent(Intent paramIntent)
  {
    if (paramIntent == null)
    {
      z.m("Cal:D:DismissAlarmsService", "onHandleIntent() intent is null");
      return;
    }
    long l1 = paramIntent.getLongExtra("eventid", -1L);
    long l2 = paramIntent.getLongExtra("eventstart", -1L);
    long l3 = paramIntent.getLongExtra("eventend", -1L);
    boolean bool1 = paramIntent.getBooleanExtra("showevent", false);
    Object localObject1 = paramIntent.getLongArrayExtra("eventids");
    int i = paramIntent.getIntExtra("notificationid", -1);
    int j = paramIntent.getIntExtra("hasEP", 0);
    boolean bool2 = paramIntent.getBooleanExtra("dismissevent", true);
    boolean bool3 = paramIntent.getBooleanExtra("updatealertnotification", false);
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("onHandleIntent(): ");
    ((StringBuilder)localObject2).append(l1);
    ((StringBuilder)localObject2).append(", eventStart:");
    ((StringBuilder)localObject2).append(l2);
    ((StringBuilder)localObject2).append(", eventEnd:");
    ((StringBuilder)localObject2).append(l3);
    ((StringBuilder)localObject2).append(", showEvent:");
    ((StringBuilder)localObject2).append(bool1);
    ((StringBuilder)localObject2).append(", notificationId:");
    ((StringBuilder)localObject2).append(i);
    ((StringBuilder)localObject2).append(", action:");
    ((StringBuilder)localObject2).append(paramIntent.getAction());
    z.h("Cal:D:DismissAlarmsService", ((StringBuilder)localObject2).toString());
    a.l();
    localObject2 = CalendarContract.CalendarAlerts.CONTENT_URI;
    if (l1 != -1L)
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("state=1 AND event_id=");
      ((StringBuilder)localObject1).append(l1);
      localObject1 = ((StringBuilder)localObject1).toString();
    }
    else if ((localObject1 != null) && (localObject1.length > 0))
    {
      localObject1 = b((long[])localObject1);
    }
    else
    {
      localObject1 = "state=1";
    }
    if (bool2)
    {
      e.a(new h(this, (Uri)localObject2, (String)localObject1));
      if (i != -1) {
        i.c(this, i);
      }
    }
    localObject1 = (BaseAlert)paramIntent.getParcelableExtra("extra_key_alert");
    if (bool3) {
      if (localObject1 != null)
      {
        c.e(this, (BaseAlert)localObject1, 0);
        i.c(this, ((BaseAlert)localObject1).getNotificationId());
      }
      else
      {
        i.b(this);
      }
    }
    paramIntent = new Intent("com.miui.calendar.action.STOP_ALERT_ACTIVITY");
    paramIntent.setPackage(getPackageName());
    if (localObject1 != null) {
      paramIntent.putExtra("extra_key_alert", (Parcelable)localObject1);
    }
    sendBroadcast(paramIntent);
    if (bool1)
    {
      paramIntent = g.a(this, l1, l2, l3, j);
      z.h("Cal:D:DismissAlarmsService", "buildEventViewIntent()");
      if (paramIntent != null)
      {
        paramIntent.putExtra("back_home", true);
        paramIntent.putExtra("extra_launch_from", 3);
        startActivity(paramIntent);
      }
      else
      {
        z.n("Cal:D:DismissAlarmsService", "buildEventViewIntent() return null");
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.alerts.DismissAlarmsService
 * JD-Core Version:    0.7.0.1
 */