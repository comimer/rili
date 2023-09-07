package com.android.calendar.cards;

import android.content.Context;
import android.text.format.DateUtils;
import android.util.ArrayMap;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.common.event.schema.AnniversaryEvent;
import com.android.calendar.common.event.schema.BirthdayEvent;
import com.android.calendar.common.event.schema.CountdownEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.settings.j;
import com.miui.calendar.util.s0;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import s1.c;
import s1.d;
import s1.e;

public class k0
  extends b<List<Event>>
{
  private List<Event> f;
  
  public k0(t paramt)
  {
    super(paramt);
  }
  
  private void u(Calendar paramCalendar, Context paramContext, List<AnniversaryEvent> paramList, List<CountdownEvent> paramList1, List<Event> paramList2)
  {
    ArrayList localArrayList1 = new ArrayList();
    Object localObject1 = new ArrayMap();
    ArrayList localArrayList2 = new ArrayList();
    Object localObject2 = new ArrayMap();
    ArrayList localArrayList3 = new ArrayList();
    Object localObject3 = new ArrayMap();
    Object localObject4;
    int i;
    int j;
    if (paramList != null)
    {
      localObject4 = paramList.iterator();
      while (((Iterator)localObject4).hasNext())
      {
        localObject5 = (AnniversaryEvent)((Iterator)localObject4).next();
        i = ((AnniversaryEvent)localObject5).calDays(paramCalendar);
        if (i > 0)
        {
          j = ((AnniversaryEvent)localObject5).calAnniversary(paramCalendar);
          if (j > 0)
          {
            localArrayList2.add(localObject5);
            ((Map)localObject2).put(localObject5, Integer.valueOf(j));
          }
          else if (i % 100 == 0)
          {
            localArrayList3.add(localObject5);
            ((Map)localObject3).put(localObject5, Integer.valueOf(i));
          }
          else
          {
            localArrayList1.add(localObject5);
          }
        }
      }
    }
    Collections.sort(localArrayList2, new g0((Map)localObject2));
    Collections.sort(localArrayList3, new h0((Map)localObject3));
    Collections.sort(localArrayList1, new i0((Map)localObject1));
    localObject1 = new ArrayList();
    localObject3 = new ArrayMap();
    if (paramList1 != null)
    {
      localObject5 = paramList1.iterator();
      while (((Iterator)localObject5).hasNext())
      {
        localObject2 = (CountdownEvent)((Iterator)localObject5).next();
        j = ((CountdownEvent)localObject2).calDays(paramCalendar);
        if (j >= 0)
        {
          ((List)localObject1).add(localObject2);
          ((Map)localObject3).put(localObject2, Integer.valueOf(j));
        }
      }
    }
    Collections.sort((List)localObject1, new j0((Map)localObject3));
    localObject2 = new ArrayList();
    localObject3 = new ArrayList();
    Object localObject5 = new ArrayList();
    boolean bool = j.o(paramContext);
    if (paramList2 != null)
    {
      paramList2 = paramList2.iterator();
      for (j = 0; paramList2.hasNext(); j = i)
      {
        localObject4 = (Event)paramList2.next();
        i = ((Event)localObject4).getEventType();
        if (i != 3)
        {
          if (i != 7) {
            switch (i)
            {
            default: 
              if ((!bool) && (((Event)localObject4).getEx().isRejectAgenda()))
              {
                i = j;
              }
              else
              {
                String str = d.h(paramContext, ((Event)localObject4).getId(), "meeting_status");
                ((Event)localObject4).getEx().setMeetingStatus(str);
                if (((Event)localObject4).isAllDay())
                {
                  ((List)localObject2).add(localObject4);
                  i = j;
                }
                else
                {
                  ((List)localObject3).add(localObject4);
                  i = j;
                }
              }
              break;
            case 15: 
              ((List)localObject2).add(localObject4);
              i = j;
              break;
            }
          }
        }
        else {
          break label621;
        }
        i = j;
        if (j <= 100)
        {
          ((List)localObject2).add((BirthdayEvent)localObject4);
          i = j + 1;
          continue;
          label621:
          if (((Event)localObject4).isAllDay())
          {
            ((List)localObject2).add(localObject4);
            i = j;
          }
          else
          {
            ((List)localObject3).add(localObject4);
            i = j;
          }
        }
      }
    }
    r1.a.C(paramContext, (List)localObject5);
    p1.b.e(paramList, paramCalendar);
    w1.b.e(paramList1, paramCalendar);
    paramContext = new ArrayList();
    paramContext.addAll(localArrayList2);
    paramContext.addAll(localArrayList3);
    paramContext.addAll(localArrayList1);
    paramContext.addAll((Collection)localObject1);
    paramContext.addAll((Collection)localObject2);
    paramContext.addAll((Collection)localObject5);
    paramContext.addAll((Collection)localObject3);
    if (DateUtils.isToday(paramCalendar.getTimeInMillis())) {
      com.miui.calendar.util.g0.f("key_everyday_agenda_amount", new String[] { "count", String.valueOf(paramContext.size()) });
    }
    this.f = paramContext;
  }
  
  public int c()
  {
    return 0;
  }
  
  boolean e()
  {
    boolean bool;
    if (this.f.size() == 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void h()
  {
    Calendar localCalendar = (Calendar)this.d.clone();
    CalendarApplication localCalendarApplication = CalendarApplication.e();
    boolean bool = com.miui.calendar.util.e0.v(Calendar.getInstance(), localCalendar);
    int i = com.miui.calendar.util.e0.i(localCalendar);
    int j;
    if (bool) {
      j = 3;
    } else {
      j = 1;
    }
    List localList = e.d(localCalendarApplication, i, j);
    if (bool)
    {
      localObject1 = localList.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Event)((Iterator)localObject1).next();
        if (((((Event)localObject2).getEx().getStartJulianDay() > i) || (((Event)localObject2).getEx().getEndJulianDay() < i)) && (((Event)localObject2).getEventType() != 3) && (((Event)localObject2).getEventType() != 16)) {
          ((Iterator)localObject1).remove();
        }
      }
    }
    if (com.android.calendar.event.e0.e(localCalendarApplication))
    {
      localObject2 = localList.iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject1 = (Event)((Iterator)localObject2).next();
        if ((((Event)localObject1).getEventType() == 8) || (((Event)localObject1).getEventType() == 9)) {
          ((Iterator)localObject2).remove();
        }
      }
    }
    e.j(localCalendarApplication, localList);
    Object localObject1 = s1.a.h(localCalendarApplication);
    e.j(localCalendarApplication, (List)localObject1);
    Object localObject2 = c.h(localCalendarApplication);
    e.j(localCalendarApplication, (List)localObject2);
    u(localCalendar, CalendarApplication.e(), (List)localObject1, (List)localObject2, localList);
    if (!s0.u(localCalendar, this.d)) {
      return;
    }
    g();
  }
  
  f0 o()
  {
    return new f0(this.d);
  }
  
  List<Event> p()
  {
    return this.f;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.k0
 * JD-Core Version:    0.7.0.1
 */