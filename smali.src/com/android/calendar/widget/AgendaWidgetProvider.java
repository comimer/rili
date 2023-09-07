package com.android.calendar.widget;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.BaseBundle;
import android.os.Bundle;
import android.provider.CalendarContract;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.widget.RemoteViews;
import com.android.calendar.common.Utils;
import com.android.calendar.event.EditEventActivity;
import com.android.calendar.event.EventInfoActivity;
import com.android.calendar.homepage.AllInOneActivity;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Set;

public class AgendaWidgetProvider
  extends AppWidgetProvider
{
  static ComponentName a(Context paramContext)
  {
    return new ComponentName(paramContext, AgendaWidgetProvider.class);
  }
  
  public static Intent b(Context paramContext, long paramLong)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setClass(paramContext, AllInOneActivity.class);
    paramContext = new StringBuilder();
    paramContext.append("content://com.android.calendar/time/");
    paramContext.append(paramLong);
    localIntent.setData(Uri.parse(paramContext.toString()));
    localIntent.putExtra("START_BY_WIDGET", true);
    return localIntent;
  }
  
  static Intent c(Context paramContext, long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean)
  {
    Intent localIntent = new Intent();
    Object localObject = "content://com.android.calendar/events";
    if (paramLong1 != 0L)
    {
      localIntent.setFlags(268484608);
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("content://com.android.calendar/events");
      ((StringBuilder)localObject).append("/");
      ((StringBuilder)localObject).append(paramLong1);
      localObject = ((StringBuilder)localObject).toString();
      localIntent.setClass(paramContext, EventInfoActivity.class);
      localIntent.putExtra("extra_launch_from", 2);
      paramContext = (Context)localObject;
    }
    else
    {
      localIntent.setClass(paramContext, AllInOneActivity.class);
      paramContext = (Context)localObject;
    }
    localIntent.setData(Uri.parse(paramContext));
    localIntent.putExtra("beginTime", paramLong2);
    localIntent.putExtra("endTime", paramLong3);
    localIntent.putExtra("allDay", paramBoolean);
    return localIntent;
  }
  
  static PendingIntent d(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("android.intent.action.VIEW");
    localIntent.setFlags(268484608);
    localIntent.setClass(paramContext, AllInOneActivity.class);
    return PendingIntent.getActivity(paramContext, 0, localIntent, 201326592);
  }
  
  private static PendingIntent e(Context paramContext)
  {
    Intent localIntent = new Intent("android.intent.action.EDIT");
    localIntent.setClass(paramContext, EditEventActivity.class);
    Uri.Builder localBuilder = CalendarContract.CONTENT_URI.buildUpon();
    localBuilder.appendPath("events");
    localIntent.setData(localBuilder.build());
    return PendingIntent.getActivity(paramContext, 0, localIntent, 201326592);
  }
  
  static PendingIntent f(Context paramContext)
  {
    Intent localIntent = new Intent(Utils.g0(paramContext));
    localIntent.setDataAndType(CalendarContract.CONTENT_URI, "vnd.android.data/update");
    return PendingIntent.getBroadcast(paramContext, 0, localIntent, 67108864);
  }
  
  private void g(Context paramContext, AppWidgetManager paramAppWidgetManager, int[] paramArrayOfInt, long[] paramArrayOfLong)
  {
    int i = paramArrayOfInt.length;
    for (int j = 0; j < i; j++)
    {
      int k = paramArrayOfInt[j];
      Object localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("performUpdate(): appWidgetId:");
      ((StringBuilder)localObject1).append(k);
      z.a("Cal:D:AgendaWidgetProvider", ((StringBuilder)localObject1).toString());
      Intent localIntent = new Intent(paramContext, AgendaWidgetService.class);
      localIntent.putExtra("appWidgetId", k);
      if (paramArrayOfLong != null) {
        localIntent.putExtra("com.android.calendar.EXTRA_EVENT_IDS", paramArrayOfLong);
      }
      localIntent.setData(Uri.parse(localIntent.toUri(1)));
      localObject1 = new RemoteViews(paramContext.getPackageName(), 2131558465);
      Object localObject2 = new r0(Utils.U(paramContext));
      ((r0)localObject2).M();
      long l = ((r0)localObject2).P(true);
      Object localObject3 = Calendar.getInstance();
      ((Calendar)localObject3).setTimeInMillis(l);
      localObject3 = x0.y(paramContext, String.valueOf(((Calendar)localObject3).get(5)), paramContext.getResources().getColor(2131101027), paramContext.getResources().getDimensionPixelSize(2131167476), false);
      localObject2 = DateUtils.getDayOfWeekString(((r0)localObject2).t() + 1, 20);
      String str = Utils.p(paramContext, l, l, 524340);
      ((RemoteViews)localObject1).setImageViewBitmap(2131362315, (Bitmap)localObject3);
      ((RemoteViews)localObject1).setTextViewText(2131362316, (CharSequence)localObject2);
      ((RemoteViews)localObject1).setTextViewText(2131362247, str);
      ((RemoteViews)localObject1).setRemoteAdapter(k, 2131362433, localIntent);
      paramAppWidgetManager.notifyAppWidgetViewDataChanged(k, 2131362433);
      localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setClass(paramContext, AllInOneActivity.class);
      localObject3 = new StringBuilder();
      ((StringBuilder)localObject3).append("content://com.android.calendar/time/");
      ((StringBuilder)localObject3).append(l);
      localIntent.setData(Uri.parse(((StringBuilder)localObject3).toString()));
      ((RemoteViews)localObject1).setOnClickPendingIntent(2131362516, PendingIntent.getActivity(paramContext, 0, localIntent, 67108864));
      ((RemoteViews)localObject1).setOnClickPendingIntent(2131362871, e(paramContext));
      ((RemoteViews)localObject1).setPendingIntentTemplate(2131362433, d(paramContext));
      paramAppWidgetManager.updateAppWidget(k, (RemoteViews)localObject1);
    }
  }
  
  public void onDisabled(Context paramContext)
  {
    ((AlarmManager)paramContext.getSystemService("alarm")).cancel(f(paramContext));
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("onReceive(): intent: ");
    ((StringBuilder)localObject1).append(paramIntent);
    z.a("Cal:D:AgendaWidgetProvider", ((StringBuilder)localObject1).toString());
    String str = paramIntent.getAction();
    AppWidgetManager localAppWidgetManager = AppWidgetManager.getInstance(paramContext);
    localObject1 = localAppWidgetManager.getAppWidgetIds(a(paramContext));
    if ((localObject1 != null) && (localObject1.length != 0))
    {
      if (("android.intent.action.BOOT_COMPLETED".equals(str)) || ("android.appwidget.action.APPWIDGET_UPDATE".equals(str)) || ("android.appwidget.action.APPWIDGET_DELETED".equals(str)))
      {
        g0.h("agenda_widget_count", localObject1.length);
        int i = localObject1.length;
        for (int j = 0; j < i; j++)
        {
          int k = localObject1[j];
          Object localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append("onReceive(): id:");
          ((StringBuilder)localObject2).append(k);
          z.a("Cal:D:AgendaWidgetProvider", ((StringBuilder)localObject2).toString());
          Bundle localBundle = localAppWidgetManager.getAppWidgetOptions(k);
          Iterator localIterator = localBundle.keySet().iterator();
          while (localIterator.hasNext())
          {
            localObject2 = (String)localIterator.next();
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("onReceive(): key:");
            localStringBuilder.append((String)localObject2);
            localStringBuilder.append(", value:");
            localStringBuilder.append(localBundle.get((String)localObject2));
            z.a("Cal:D:AgendaWidgetProvider", localStringBuilder.toString());
          }
        }
      }
      if ((!TextUtils.equals(Utils.h0(paramContext), str)) && (!"android.intent.action.BOOT_COMPLETED".equals(str)) && (!"android.intent.action.TIME_SET".equals(str)) && (!"android.intent.action.TIMEZONE_CHANGED".equals(str)) && (!"com.miui.action.MIDNIGHT".equals(str)))
      {
        if ((!"android.intent.action.PROVIDER_CHANGED".equals(str)) && (!TextUtils.equals(str, Utils.g0(paramContext))))
        {
          super.onReceive(paramContext, paramIntent);
        }
        else
        {
          paramIntent = new Intent(paramContext, AgendaWidgetService.class);
          try
          {
            paramContext.startService(paramIntent);
          }
          catch (Exception paramIntent)
          {
            paramContext = new StringBuilder();
            paramContext.append("onReceive: ");
            paramContext.append(paramIntent.getMessage());
            z.c("Cal:D:AgendaWidgetProvider", paramContext.toString());
          }
        }
      }
      else {
        g(paramContext, localAppWidgetManager, localAppWidgetManager.getAppWidgetIds(a(paramContext)), null);
      }
      return;
    }
    z.a("Cal:D:AgendaWidgetProvider", "onReceive(): appWidgetIds is null");
    g0.h("agenda_widget_count", 0L);
  }
  
  public void onUpdate(Context paramContext, AppWidgetManager paramAppWidgetManager, int[] paramArrayOfInt)
  {
    g(paramContext, paramAppWidgetManager, paramArrayOfInt, null);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.widget.AgendaWidgetProvider
 * JD-Core Version:    0.7.0.1
 */