package com.miui.calendar.alerts;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.provider.CalendarContract.Events;
import androidx.core.app.y;
import b2.a;
import com.android.calendar.event.i;
import com.android.calendar.settings.j;
import com.miui.calendar.util.p0;
import com.miui.calendar.util.p0.b;
import com.miui.calendar.util.p0.c;
import com.miui.calendar.util.z;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import s1.d;

public class AlertMigrationService
  extends y
{
  private static final String[] j = { "_id", "hasExtendedProperties" };
  private static final Class[] k = { Integer.class, Integer.class };
  
  private void j()
  {
    NotificationManager localNotificationManager = (NotificationManager)getSystemService("notification");
    Object localObject = null;
    if (localNotificationManager != null) {
      localObject = localNotificationManager.getNotificationChannels();
    }
    if (localObject != null)
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        localNotificationManager.deleteNotificationChannel(((NotificationChannel)((Iterator)localObject).next()).getId());
      }
    }
  }
  
  private void k()
  {
    Iterator localIterator = l().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (p0.c)localIterator.next();
      int i = ((p0.c)localObject).e(0).intValue();
      String str1 = d.b(((p0.c)localObject).e(1).intValue() & 0xFF);
      localObject = getApplicationContext();
      long l = i;
      String str2 = d.h((Context)localObject, l, str1);
      JSONObject localJSONObject;
      try
      {
        localObject = new org/json/JSONObject;
        ((JSONObject)localObject).<init>(str2);
      }
      catch (Exception localException)
      {
        z.d("Cal:D:AlertMigrationService", "getEPValue error", localException);
        localJSONObject = new JSONObject();
      }
      try
      {
        localJSONObject.put("need_alarm", true);
      }
      catch (JSONException localJSONException)
      {
        z.d("Cal:D:AlertMigrationService", "put need alarm error", localJSONException);
      }
      i.g(getApplicationContext(), l, str1, localJSONObject.toString());
    }
  }
  
  private p0.b l()
  {
    return p0.d(getApplicationContext()).u(CalendarContract.Events.CONTENT_URI).s("deleted=0 AND (dtend>? OR dtend is null)").n(new Object[] { Long.valueOf(System.currentTimeMillis()) }).r(j).t(k).i();
  }
  
  private void m()
  {
    Context localContext = getApplicationContext();
    j.u(localContext, 3, true);
    j.u(localContext, 11, true);
    j.u(localContext, 12, true);
    j.u(localContext, 17, true);
    j.u(localContext, 13, true);
    j.u(localContext, 14, true);
    j.u(localContext, 15, true);
    j.u(localContext, 16, true);
  }
  
  public static void n(Context paramContext)
  {
    if (paramContext == null) {
      return;
    }
    if (((!j.m(paramContext)) || (!j.n(paramContext))) && (a.d(paramContext, "key_alert_migrate_finished", false)))
    {
      z.a("Cal:D:AlertMigrationService", "startService skipped");
      return;
    }
    Intent localIntent = new Intent();
    y.d(paramContext.getApplicationContext(), AlertMigrationService.class, 12, localIntent);
  }
  
  protected void g(Intent paramIntent)
  {
    paramIntent = getApplicationContext();
    if (!a.d(paramIntent, "key_alert_migrate_finished", false))
    {
      j();
      a.l(paramIntent, "key_alert_migrate_finished", true);
      z.a("Cal:D:AlertMigrationService", "clearNotificationChannels");
    }
    if ((j.m(paramIntent)) && (j.n(paramIntent)))
    {
      z.a("Cal:D:AlertMigrationService", "migrate start");
      j.t(paramIntent, true);
      m();
      k();
      j.b(paramIntent);
      z.a("Cal:D:AlertMigrationService", "migrate end");
      return;
    }
    j.b(paramIntent);
    z.a("Cal:D:AlertMigrationService", "migrate skipped");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.alerts.AlertMigrationService
 * JD-Core Version:    0.7.0.1
 */