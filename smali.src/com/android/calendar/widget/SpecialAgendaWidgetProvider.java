package com.android.calendar.widget;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.util.SparseIntArray;
import android.widget.RemoteViews;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.AnniversaryEvent;
import com.android.calendar.common.event.schema.BirthdayEvent;
import com.android.calendar.common.event.schema.CountdownEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.widget.base.BaseWidgetProvider;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.z;
import f2.c;
import f2.d;
import f2.j;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.List<Lcom.android.calendar.common.event.schema.Event;>;
import r1.a;

public class SpecialAgendaWidgetProvider
  extends BaseWidgetProvider
{
  private static final Object c = new Object();
  
  private RemoteViews l(Context paramContext, List<a.b> paramList, SparseIntArray paramSparseIntArray1, SparseIntArray paramSparseIntArray2, SparseIntArray paramSparseIntArray3)
  {
    z.a("Cal:D:SpecialAgendaWidgetProvider", "buildUpdate");
    synchronized (c)
    {
      RemoteViews localRemoteViews = new android/widget/RemoteViews;
      localRemoteViews.<init>(paramContext.getPackageName(), 2131558944);
      Object localObject2 = new com/miui/calendar/util/r0;
      ((r0)localObject2).<init>(Utils.U(paramContext));
      ((r0)localObject2).M();
      long l = ((r0)localObject2).P(true);
      Object localObject3 = Calendar.getInstance();
      ((Calendar)localObject3).setTimeInMillis(l);
      int i = ((Calendar)localObject3).get(5);
      localObject3 = paramContext.getString(2131887554, new Object[] { String.valueOf(((Calendar)localObject3).get(2) + 1), String.valueOf(i) });
      localRemoteViews.setTextViewText(2131363199, DateUtils.getDayOfWeekString(((r0)localObject2).t() + 1, 20));
      localRemoteViews.setTextViewText(2131363198, (CharSequence)localObject3);
      localObject2 = PendingIntent.getActivity(paramContext, 0, d.c(paramContext), 201326592);
      localRemoteViews.setOnClickPendingIntent(2131363197, (PendingIntent)localObject2);
      if (paramList.isEmpty()) {
        localRemoteViews.setViewVisibility(2131363200, 0);
      } else {
        localRemoteViews.setViewVisibility(2131363200, 8);
      }
      localRemoteViews.setOnClickPendingIntent(2131363200, (PendingIntent)localObject2);
      for (i = 0;; i++)
      {
        localObject2 = paramSparseIntArray2;
        if (i >= paramList.size()) {
          break;
        }
        localObject3 = (a.b)paramList.get(i);
        localRemoteViews.setViewVisibility(paramSparseIntArray1.get(i), 0);
        localRemoteViews.setTextViewText(((SparseIntArray)localObject2).get(i), ((a.b)localObject3).f);
        localRemoteViews.setTextViewText(paramSparseIntArray3.get(i), ((a.b)localObject3).m);
        if (!this.a) {
          localRemoteViews.setTextColor(((SparseIntArray)localObject2).get(i), paramContext.getColor(2131101072));
        }
        localObject2 = d.a(paramContext, ((a.b)localObject3).h, ((a.b)localObject3).i, ((a.b)localObject3).j, ((a.b)localObject3).p);
        localRemoteViews.setOnClickPendingIntent(paramSparseIntArray1.get(i), PendingIntent.getActivity(paramContext, i + 1001, (Intent)localObject2, 201326592));
      }
      for (i = paramList.size(); i < 3; i++) {
        localRemoteViews.setViewVisibility(paramSparseIntArray1.get(i), 4);
      }
      if (!this.a)
      {
        localRemoteViews.setTextColor(2131363199, paramContext.getColor(2131101073));
        localRemoteViews.setTextColor(2131363198, paramContext.getColor(2131101074));
        localRemoteViews.setTextColor(2131363200, paramContext.getColor(2131101010));
        c.f(paramContext, localRemoteViews, 2);
      }
      return localRemoteViews;
    }
  }
  
  private static List<a.b> n(Context paramContext, Calendar paramCalendar, List<Event> paramList)
  {
    Object localObject1 = paramContext;
    Object localObject2 = new ArrayList(3);
    Iterator localIterator = paramList.iterator();
    paramList = (List<Event>)localObject2;
    for (;;)
    {
      Calendar localCalendar = paramCalendar;
      if (!localIterator.hasNext()) {
        break;
      }
      localObject2 = (Event)localIterator.next();
      if (paramList.size() >= 3) {
        break;
      }
      boolean bool1 = localObject2 instanceof AnniversaryEvent;
      Object localObject3 = "";
      long l1 = 0L;
      Object localObject4;
      long l2;
      long l3;
      boolean bool2;
      int i;
      if ((bool1) && (((Event)localObject2).getEventType() == 8))
      {
        localObject4 = (AnniversaryEvent)localObject2;
        l1 = ((Event)localObject4).getId();
        localObject5 = ((AnniversaryEvent)localObject4).getDateString((Context)localObject1);
        localObject3 = ((AnniversaryEvent)localObject4).getContent();
        l2 = Calendar.getInstance().getTimeInMillis();
        l3 = ((Event)localObject4).getEndTimeMillis();
        bool2 = ((Event)localObject4).isAllDay();
        i = ((Event)localObject4).getEventType();
        j = ((AnniversaryEvent)localObject4).calAnniversary(localCalendar);
        if (j > 0)
        {
          localObject1 = paramContext.getResources().getQuantityString(2131755029, j, new Object[] { Integer.valueOf(j) });
        }
        else
        {
          j = ((AnniversaryEvent)localObject4).calDays(localCalendar);
          localObject1 = paramContext.getResources().getQuantityString(2131755026, j, new Object[] { Integer.valueOf(j) });
        }
        localObject4 = new StringBuilder();
        ((StringBuilder)localObject4).append("AnniversaryEvent dataString : ");
        ((StringBuilder)localObject4).append((String)localObject5);
        ((StringBuilder)localObject4).append(" content : ");
        ((StringBuilder)localObject4).append((String)localObject3);
        ((StringBuilder)localObject4).append(" tagString : ");
        ((StringBuilder)localObject4).append((String)localObject1);
        ((StringBuilder)localObject4).append(" startTime : ");
        ((StringBuilder)localObject4).append(l2);
        ((StringBuilder)localObject4).append(" endTime : ");
        ((StringBuilder)localObject4).append(l3);
        z.a("Cal:D:SpecialAgendaWidgetProvider", ((StringBuilder)localObject4).toString());
        localObject4 = localObject2;
        localObject2 = localObject3;
      }
      else
      {
        localObject1 = "";
        l2 = 0L;
        l3 = l2;
        bool2 = false;
        localObject4 = localObject2;
        i = -1;
        localObject2 = localObject3;
      }
      Object localObject5 = paramList;
      localObject3 = localObject1;
      long l4 = l2;
      int j = i;
      paramList = (List<Event>)localObject2;
      long l5 = l1;
      bool1 = bool2;
      long l6 = l3;
      if ((localObject4 instanceof CountdownEvent))
      {
        localObject3 = localObject1;
        l4 = l2;
        j = i;
        paramList = (List<Event>)localObject2;
        l5 = l1;
        bool1 = bool2;
        l6 = l3;
        if (((Event)localObject4).getEventType() == 9)
        {
          localObject1 = (CountdownEvent)localObject4;
          l5 = ((Event)localObject1).getId();
          localObject2 = ((CountdownEvent)localObject1).getDateString(paramContext, localCalendar);
          paramList = paramContext.getString(2131887560, new Object[] { ((CountdownEvent)localObject1).getContent() });
          l4 = Calendar.getInstance().getTimeInMillis();
          l6 = ((CountdownEvent)localObject1).getTimeMillis();
          bool1 = ((Event)localObject1).isAllDay();
          j = ((Event)localObject1).getEventType();
          i = ((CountdownEvent)localObject1).calDays(localCalendar);
          if (i == 0) {
            localObject3 = paramContext.getString(2131886392);
          } else {
            localObject3 = paramContext.getResources().getQuantityString(2131755096, i, new Object[] { Integer.valueOf(i) });
          }
          localObject1 = new StringBuilder();
          ((StringBuilder)localObject1).append("CountdownEvent dataString : ");
          ((StringBuilder)localObject1).append((String)localObject2);
          ((StringBuilder)localObject1).append(" content : ");
          ((StringBuilder)localObject1).append(paramList);
          ((StringBuilder)localObject1).append(" tagString : ");
          ((StringBuilder)localObject1).append((String)localObject3);
          ((StringBuilder)localObject1).append(" startTime : ");
          ((StringBuilder)localObject1).append(l4);
          ((StringBuilder)localObject1).append(" endTime : ");
          ((StringBuilder)localObject1).append(l6);
          z.a("Cal:D:SpecialAgendaWidgetProvider", ((StringBuilder)localObject1).toString());
        }
      }
      if (((localObject4 instanceof BirthdayEvent)) && (((Event)localObject4).getEventType() == 7))
      {
        localObject1 = (BirthdayEvent)localObject4;
        l5 = ((Event)localObject1).getId();
        paramList = paramContext;
        localObject3 = ((BirthdayEvent)localObject1).getDateString(paramList);
        localObject2 = ((Event)localObject1).getTitle();
        l4 = ((Event)localObject1).getStartTimeMillis();
        l3 = ((Event)localObject1).getEndTimeMillis();
        bool1 = ((Event)localObject1).isAllDay();
        j = ((Event)localObject1).getEventType();
        localObject4 = Calendar.getInstance();
        ((Calendar)localObject4).setTimeInMillis(((Event)localObject1).getStartTimeMillis());
        localObject1 = a.h(paramList, (Calendar)localObject4, (BirthdayEvent)localObject1);
        paramList = (List<Event>)localObject1;
        if (TextUtils.isEmpty((CharSequence)localObject1)) {
          paramList = paramContext.getResources().getString(2131887847);
        }
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("BirthdayEvent dataString : ");
        ((StringBuilder)localObject1).append((String)localObject3);
        ((StringBuilder)localObject1).append(" content : ");
        ((StringBuilder)localObject1).append((String)localObject2);
        ((StringBuilder)localObject1).append(" tagString : ");
        ((StringBuilder)localObject1).append(paramList);
        ((StringBuilder)localObject1).append(" startTime : ");
        ((StringBuilder)localObject1).append(l4);
        ((StringBuilder)localObject1).append(" endTime : ");
        ((StringBuilder)localObject1).append(l3);
        z.a("Cal:D:SpecialAgendaWidgetProvider", ((StringBuilder)localObject1).toString());
        localObject3 = paramList;
        paramList = (List<Event>)localObject2;
      }
      else
      {
        l3 = l6;
      }
      localObject2 = new a.b();
      ((a.b)localObject2).h = l5;
      ((a.b)localObject2).f = paramList;
      ((a.b)localObject2).m = ((String)localObject3);
      ((a.b)localObject2).i = l4;
      ((a.b)localObject2).j = l3;
      ((a.b)localObject2).k = bool1;
      ((a.b)localObject2).p = j;
      ((List)localObject5).add(localObject2);
      paramList = (List<Event>)localObject5;
      localObject1 = paramContext;
    }
    return paramList;
  }
  
  private void o(Context paramContext, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("updateAppWidget(): appWidgetId:");
    localStringBuilder.append(paramInt);
    z.a("Cal:D:SpecialAgendaWidgetProvider", localStringBuilder.toString());
    m(paramContext, paramInt);
  }
  
  protected Class<? extends BaseWidgetProvider> e()
  {
    return SpecialAgendaWidgetProvider.class;
  }
  
  protected void k(Context paramContext, int paramInt)
  {
    o(paramContext, paramInt);
  }
  
  public void m(Context paramContext, int paramInt)
  {
    Object localObject1 = new SparseIntArray();
    SparseIntArray localSparseIntArray = new SparseIntArray();
    Object localObject2 = new SparseIntArray();
    ((SparseIntArray)localObject1).append(0, 2131363204);
    ((SparseIntArray)localObject1).append(1, 2131363205);
    ((SparseIntArray)localObject1).append(2, 2131363206);
    localSparseIntArray.append(0, 2131363214);
    localSparseIntArray.append(1, 2131363215);
    localSparseIntArray.append(2, 2131363216);
    ((SparseIntArray)localObject2).append(0, 2131363210);
    ((SparseIntArray)localObject2).append(1, 2131363211);
    ((SparseIntArray)localObject2).append(2, 2131363212);
    Calendar localCalendar = Calendar.getInstance();
    localObject2 = l(paramContext, n(paramContext, localCalendar, j.m(paramContext, localCalendar, true)), (SparseIntArray)localObject1, localSparseIntArray, (SparseIntArray)localObject2);
    localObject1 = new ComponentName(paramContext, SpecialAgendaWidgetProvider.class);
    AppWidgetManager.getInstance(paramContext).updateAppWidget((ComponentName)localObject1, (RemoteViews)localObject2);
  }
  
  public void onDeleted(Context paramContext, int[] paramArrayOfInt)
  {
    super.onDeleted(paramContext, paramArrayOfInt);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.widget.SpecialAgendaWidgetProvider
 * JD-Core Version:    0.7.0.1
 */