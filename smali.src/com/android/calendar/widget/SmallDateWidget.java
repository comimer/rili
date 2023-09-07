package com.android.calendar.widget;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.text.format.DateUtils;
import android.widget.RemoteViews;
import com.android.calendar.widget.base.BaseWidgetProvider;
import com.miui.calendar.holiday.model.HolidaySchema;
import com.miui.calendar.util.y;
import f2.c;
import java.util.Calendar;
import java.util.List;

public class SmallDateWidget
  extends BaseWidgetProvider
{
  private void l(Context paramContext, int paramInt)
  {
    AppWidgetManager localAppWidgetManager = AppWidgetManager.getInstance(paramContext);
    RemoteViews localRemoteViews = new RemoteViews(paramContext.getPackageName(), 2131559021);
    Calendar localCalendar = Calendar.getInstance();
    localRemoteViews.setTextViewText(2131363440, String.valueOf(localCalendar.get(5)));
    localRemoteViews.setTextViewText(2131363482, DateUtils.getDayOfWeekString(localCalendar.get(7), 10).replace("周", "星期"));
    if (y.a())
    {
      localObject = a4.d.g(localCalendar);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramContext.getString(2131886851));
      localStringBuilder.append(" ");
      localStringBuilder.append((String)localObject);
      localRemoteViews.setTextViewText(2131363449, localStringBuilder.toString());
    }
    else
    {
      localRemoteViews.setViewVisibility(2131363449, 4);
    }
    Object localObject = null;
    if (y.d(paramContext, z3.d.i())) {
      localObject = z3.d.h(paramContext).g(localCalendar.getTimeInMillis() + localCalendar.get(15));
    }
    if ((localObject != null) && (!((List)localObject).isEmpty()))
    {
      localRemoteViews.setViewVisibility(2131363444, 0);
      localRemoteViews.setTextViewText(2131363444, ((HolidaySchema)((List)localObject).get(0)).name);
    }
    else
    {
      localRemoteViews.setViewVisibility(2131363444, 4);
    }
    localRemoteViews.setOnClickPendingIntent(2131363583, PendingIntent.getActivity(paramContext, 0, f2.d.c(paramContext), 201326592));
    if (!this.a)
    {
      localRemoteViews.setTextColor(2131363482, paramContext.getColor(2131101015));
      localRemoteViews.setTextColor(2131363449, paramContext.getColor(2131101016));
      localRemoteViews.setTextColor(2131363444, paramContext.getColor(2131101016));
      c.f(paramContext, localRemoteViews, 6);
    }
    localAppWidgetManager.updateAppWidget(paramInt, localRemoteViews);
  }
  
  protected Class<? extends BaseWidgetProvider> e()
  {
    return SmallDateWidget.class;
  }
  
  protected void k(Context paramContext, int paramInt)
  {
    l(paramContext, paramInt);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.widget.SmallDateWidget
 * JD-Core Version:    0.7.0.1
 */