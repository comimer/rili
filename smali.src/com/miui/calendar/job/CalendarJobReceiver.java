package com.miui.calendar.job;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.miui.calendar.util.z;
import d4.b;

public class CalendarJobReceiver
  extends BroadcastReceiver
{
  public static void a(Context paramContext)
  {
    if (b.c(paramContext))
    {
      b.g(paramContext, RemoteJobService.h(), false);
      b.g(paramContext, LimitJobService.d(), false);
      b.g(paramContext, StatJobService.d(), false);
      b.g(paramContext, StatDailyJobService.e(), false);
      b.g(paramContext, DaysOffJobService.d(), false);
      b.g(paramContext, DataMigrationAnniversaryJobService.d(), false);
    }
    else
    {
      z.a("Cal:D:CalendarJobReceiver", "onReceive(): normal job scheduler is not supported, do nothing.");
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onReceive(): intent:");
    localStringBuilder.append(paramIntent);
    z.h("Cal:D:CalendarJobReceiver", localStringBuilder.toString());
    a(paramContext);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.job.CalendarJobReceiver
 * JD-Core Version:    0.7.0.1
 */