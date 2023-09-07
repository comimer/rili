package com.android.calendar.widget;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.res.Resources;
import android.os.BaseBundle;
import android.os.Bundle;
import android.text.format.DateUtils;
import android.widget.RemoteViews;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.CountdownEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.widget.base.BaseWidgetProvider;
import com.miui.calendar.util.z;
import f2.d;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import s1.e;

public class CountDownAppWidget
  extends BaseWidgetProvider
{
  private static final Object c = new Object();
  
  private RemoteViews l(Context paramContext, CountdownEvent paramCountdownEvent)
  {
    RemoteViews localRemoteViews;
    synchronized (c)
    {
      localRemoteViews = new android/widget/RemoteViews;
      localRemoteViews.<init>(paramContext.getPackageName(), 2131559005);
      Calendar localCalendar = Calendar.getInstance();
      localRemoteViews.setTextViewText(2131363436, Utils.p(paramContext, localCalendar.getTimeInMillis(), localCalendar.getTimeInMillis(), 524308));
      if (paramCountdownEvent != null)
      {
        localRemoteViews.setViewVisibility(2131362645, 8);
        localRemoteViews.setViewVisibility(2131363443, 0);
        localRemoteViews.setViewVisibility(2131362699, 0);
        localRemoteViews.setTextViewText(2131363443, paramContext.getString(2131887560, new Object[] { paramCountdownEvent.getContent() }));
        int i = paramCountdownEvent.calDays(localCalendar);
        localRemoteViews.setTextViewText(2131363437, String.valueOf(i));
        localRemoteViews.setTextViewText(2131363441, paramContext.getResources().getQuantityString(2131755083, i));
        localRemoteViews.setTextColor(2131363437, paramContext.getColor(2131101061));
      }
      else
      {
        localRemoteViews.setViewVisibility(2131362645, 0);
        localRemoteViews.setTextViewText(2131363443, paramContext.getString(2131886387));
        localRemoteViews.setViewVisibility(2131362699, 4);
      }
      localRemoteViews.setTextViewText(2131363482, DateUtils.getDayOfWeekString(localCalendar.get(7), 10));
      if (paramCountdownEvent != null) {
        localRemoteViews.setOnClickPendingIntent(2131363574, PendingIntent.getActivity(paramContext, 4001, d.a(paramContext, paramCountdownEvent.getId(), Calendar.getInstance().getTimeInMillis(), paramCountdownEvent.getTimeMillis(), paramCountdownEvent.getEventType()), 201326592));
      } else {
        localRemoteViews.setOnClickPendingIntent(2131363574, PendingIntent.getActivity(paramContext, 1, d.d(), 201326592));
      }
    }
    try
    {
      if (!this.a)
      {
        localRemoteViews.setTextColor(2131363436, paramContext.getColor(2131101013));
        localRemoteViews.setTextColor(2131363443, paramContext.getColor(2131101014));
        localRemoteViews.setTextColor(2131363441, paramContext.getColor(2131101016));
        localRemoteViews.setTextColor(2131363482, paramContext.getColor(2131101016));
        f2.c.f(paramContext, localRemoteViews, 7);
      }
      return localRemoteViews;
    }
    finally
    {
      label340:
      break label340;
    }
    paramContext = finally;
    throw paramContext;
  }
  
  private static CountdownEvent m(List<CountdownEvent> paramList, Calendar paramCalendar)
  {
    CountdownEvent localCountdownEvent = null;
    if (paramList == null) {
      return null;
    }
    Iterator localIterator = paramList.iterator();
    paramList = localCountdownEvent;
    while (localIterator.hasNext())
    {
      localCountdownEvent = (CountdownEvent)localIterator.next();
      if (localCountdownEvent.calDays(paramCalendar) >= 0)
      {
        if (paramList == null) {}
        for (;;)
        {
          paramList = localCountdownEvent;
          break;
          if (paramList.getTimeMillis() <= localCountdownEvent.getTimeMillis()) {
            break;
          }
        }
      }
    }
    return paramList;
  }
  
  protected Class<? extends BaseWidgetProvider> e()
  {
    return CountDownAppWidget.class;
  }
  
  protected void k(Context paramContext, int paramInt)
  {
    n(paramContext, paramInt);
  }
  
  public void n(Context paramContext, int paramInt)
  {
    Object localObject1 = Calendar.getInstance();
    Object localObject2 = s1.c.h(paramContext);
    Object localObject3 = new StringBuilder();
    ((StringBuilder)localObject3).append("count down events size : ");
    ((StringBuilder)localObject3).append(((List)localObject2).size());
    z.g("Cal:D:CountDownAppWidget", ((StringBuilder)localObject3).toString());
    e.j(paramContext, (List)localObject2);
    Object localObject4 = m((List)localObject2, (Calendar)localObject1);
    localObject1 = l(paramContext, (CountdownEvent)localObject4);
    localObject3 = new ComponentName(paramContext, CountDownAppWidget.class);
    localObject2 = AppWidgetManager.getInstance(paramContext);
    if ((this.a) && (localObject4 != null))
    {
      int i = ((CountdownEvent)localObject4).calDays(Calendar.getInstance());
      if (i == 0) {
        paramContext = "notice1";
      } else if (i <= 3) {
        paramContext = "notice10";
      } else {
        paramContext = "event_type_other";
      }
      localObject4 = new Bundle();
      ((BaseBundle)localObject4).putString("miuiWidgetEventCode", paramContext);
      ((BaseBundle)localObject4).putString("miuiWidgetTimestamp", String.valueOf(System.currentTimeMillis()));
      ((AppWidgetManager)localObject2).updateAppWidgetOptions(paramInt, (Bundle)localObject4);
    }
    ((AppWidgetManager)localObject2).updateAppWidget((ComponentName)localObject3, (RemoteViews)localObject1);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.widget.CountDownAppWidget
 * JD-Core Version:    0.7.0.1
 */