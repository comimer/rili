package com.miui.calendar.ad;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import b2.a;
import com.android.calendar.application.CalendarApplication;
import com.miui.calendar.detail.UpdateUserCardService;
import com.miui.calendar.holiday.CommonJobIntentService;
import com.miui.calendar.util.z;

public class DownloadInstallReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    z.a("DownloadInstallReceiver", "DownloadInstallReceiver onReceive");
    CommonJobIntentService.j(paramContext, paramIntent, new a(paramIntent));
  }
  
  private static class a
    implements Runnable
  {
    private final Intent a;
    
    public a(Intent paramIntent)
    {
      this.a = paramIntent;
    }
    
    public void run()
    {
      CalendarApplication localCalendarApplication = CalendarApplication.e();
      if (localCalendarApplication == null) {
        return;
      }
      String str = this.a.getStringExtra("packageName");
      int i = this.a.getIntExtra("errorCode", -100);
      int j = this.a.getIntExtra("progress", -1);
      int k = this.a.getIntExtra("status", -1);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onReceive(): packageName=");
      localStringBuilder.append(str);
      localStringBuilder.append(",code=");
      localStringBuilder.append(i);
      localStringBuilder.append(",status=");
      localStringBuilder.append(k);
      z.a("DownloadInstallReceiver", localStringBuilder.toString());
      c.a(localCalendarApplication).e(str, i, j, k);
      if (i != 4) {
        return;
      }
      long l;
      if ("com.mi.health".equals(str))
      {
        l = a.b(localCalendarApplication, "key_subscribe_menstruation", -1L);
        if (l != -1L) {
          UpdateUserCardService.f(localCalendarApplication, l, 0, localCalendarApplication.getString(2131887564));
        }
      }
      else if ("com.miui.voiceassist".equals(str))
      {
        l = a.b(localCalendarApplication, "key_subscribe_class_schedule", -1L);
        if (l != -1L) {
          UpdateUserCardService.f(localCalendarApplication, l, 0, localCalendarApplication.getString(2131887564));
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.ad.DownloadInstallReceiver
 * JD-Core Version:    0.7.0.1
 */