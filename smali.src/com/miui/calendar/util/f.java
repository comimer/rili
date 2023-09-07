package com.miui.calendar.util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.provider.CalendarContract;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.common.Utils;
import com.android.calendar.widget.DateWidgetProvider;
import com.android.calendar.widget.MonthWidgetProvider;
import com.android.calendar.widget.MonthWidgetProviderNew;
import com.android.calendar.widget.NearEventAppWidget;
import java.util.Iterator;
import java.util.List;

public class f
{
  private static boolean a(Context paramContext)
  {
    long l = DeviceUtils.r(paramContext, "com.android.providers.calendar");
    boolean bool = true;
    int i;
    if (l >= 10000200L) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      bool = false;
    }
    return bool;
  }
  
  public static void b(Context paramContext, Intent paramIntent)
  {
    Iterator localIterator = paramContext.getPackageManager().queryBroadcastReceivers(paramIntent, 128).iterator();
    while (localIterator.hasNext())
    {
      ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("sendBroadcastToAllApp packageName: ");
      localStringBuilder.append(localResolveInfo.activityInfo.packageName);
      z.h("Cal:D:BroadcastUtils", localStringBuilder.toString());
      paramIntent.setPackage(localResolveInfo.activityInfo.packageName);
      paramContext.sendBroadcast(paramIntent, null);
    }
  }
  
  public static void c(Context paramContext)
  {
    z.a("Cal:D:BroadcastUtils", "sendEventChangeBroadcast");
    Intent localIntent = new Intent(Utils.h0(paramContext));
    Iterator localIterator = paramContext.getPackageManager().queryBroadcastReceivers(localIntent, 128).iterator();
    while (localIterator.hasNext())
    {
      ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("sendEventChangeBroadcast packageName: ");
      localStringBuilder.append(localResolveInfo.activityInfo.name);
      z.a("Cal:D:BroadcastUtils", localStringBuilder.toString());
      localIntent.setClassName(paramContext, localResolveInfo.activityInfo.name);
      paramContext.sendBroadcast(localIntent, null);
    }
  }
  
  public static void d(String paramString)
  {
    Intent localIntent = new Intent("miui.intent.action.START_WEEK_DAY_CHANGED");
    localIntent.putExtra("key_widget_first_day_of_week", paramString);
    localIntent.setClass(CalendarApplication.e(), MonthWidgetProvider.class);
    CalendarApplication.e().sendBroadcast(localIntent);
    localIntent.setClass(CalendarApplication.e(), MonthWidgetProviderNew.class);
    CalendarApplication.e().sendBroadcast(localIntent);
    localIntent.setClass(CalendarApplication.e(), NearEventAppWidget.class);
    CalendarApplication.e().sendBroadcast(localIntent);
    localIntent.setClass(CalendarApplication.e(), DateWidgetProvider.class);
    CalendarApplication.e().sendBroadcast(localIntent);
  }
  
  public static void e(Context paramContext)
  {
    if (a(paramContext))
    {
      z.h("Cal:D:BroadcastUtils", "sendBroadcast");
      b(paramContext, new Intent("android.intent.action.PROVIDER_CHANGED", CalendarContract.CONTENT_URI));
    }
    c(paramContext);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.f
 * JD-Core Version:    0.7.0.1
 */