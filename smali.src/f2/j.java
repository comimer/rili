package f2;

import android.content.Context;
import android.content.res.Resources;
import android.util.ArrayMap;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.AnniversaryEvent;
import com.android.calendar.common.event.schema.BirthdayEvent;
import com.android.calendar.common.event.schema.CountdownEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import s1.c;
import s1.d;
import s1.e;

public class j
{
  public static a e(Context paramContext, Calendar paramCalendar, List<Event> paramList)
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("agendaStatusPriority allEvents size : ");
    ((StringBuilder)localObject1).append(paramList.size());
    z.a("Cal:D:WidgetEventLoader", ((StringBuilder)localObject1).toString());
    Object localObject2 = f(paramList);
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("agendaStatusPriority allEvents size : ");
    ((StringBuilder)localObject1).append(paramList.size());
    z.a("Cal:D:WidgetEventLoader", ((StringBuilder)localObject1).toString());
    int i = ((List)localObject2).size();
    localObject1 = "progress1";
    if (i <= 0)
    {
      paramCalendar = m(paramContext, g(paramContext), false);
      if (paramCalendar.size() > 0) {
        paramContext = paramContext.getResources().getQuantityString(2131755099, paramCalendar.size(), new Object[] { Integer.valueOf(paramCalendar.size()) });
      } else if (((List)localObject2).size() != paramList.size()) {
        paramContext = paramContext.getResources().getString(2131887842);
      } else {
        paramContext = paramContext.getResources().getString(2131887841);
      }
    }
    else
    {
      paramCalendar = n(paramContext, paramCalendar);
      e.j(paramContext, paramCalendar);
      paramCalendar = (List)p(paramContext, paramCalendar).get("event_type_other");
      if (!paramCalendar.isEmpty()) {
        break label263;
      }
      paramContext = paramContext.getResources().getQuantityString(2131755092, paramList.size(), new Object[] { Integer.valueOf(paramList.size()) });
    }
    for (;;)
    {
      paramCalendar = "other";
      break;
      label263:
      long l1 = System.currentTimeMillis();
      if (((Event)paramCalendar.get(0)).getStartTimeMillis() - l1 > 0L)
      {
        if (((Event)paramCalendar.get(0)).getStartTimeMillis() - l1 > 900000L) {
          paramContext = paramContext.getResources().getQuantityString(2131755092, paramList.size(), new Object[] { Integer.valueOf(paramList.size()) });
        } else {
          i = r(((Event)paramCalendar.get(0)).getStartTimeMillis() - l1);
        }
      }
      else
      {
        for (paramContext = paramContext.getResources().getQuantityString(2131755098, i, new Object[] { Integer.valueOf(i) });; paramContext = paramContext.getResources().getQuantityString(2131755098, i, new Object[] { Integer.valueOf(i) }))
        {
          paramCalendar = "notice1";
          break label863;
          localObject2 = paramCalendar.iterator();
          int j = 0;
          i = j;
          int k = i;
          long l2 = -1L;
          while (((Iterator)localObject2).hasNext())
          {
            Event localEvent = (Event)((Iterator)localObject2).next();
            if ((l1 >= localEvent.getStartTimeMillis()) && (l1 < localEvent.getEndTimeMillis()))
            {
              k++;
            }
            else if (l1 >= localEvent.getEndTimeMillis())
            {
              j++;
            }
            else
            {
              int m = i + 1;
              i = m;
              if (l2 == -1L)
              {
                l2 = localEvent.getStartTimeMillis();
                i = m;
              }
            }
          }
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append("doingEventCount : ");
          ((StringBuilder)localObject2).append(k);
          ((StringBuilder)localObject2).append(" notStartEventCount : ");
          ((StringBuilder)localObject2).append(i);
          ((StringBuilder)localObject2).append(" doneEventCount : ");
          ((StringBuilder)localObject2).append(j);
          ((StringBuilder)localObject2).append(" allEventCount : ");
          ((StringBuilder)localObject2).append(paramList.size());
          z.a("Cal:D:WidgetEventLoader", ((StringBuilder)localObject2).toString());
          if ((k > 0) && (k + j == paramCalendar.size()))
          {
            paramContext = paramContext.getResources().getQuantityString(2131755097, k, new Object[] { Integer.valueOf(k) });
            paramCalendar = (Calendar)localObject1;
            break label863;
          }
          if (j == paramCalendar.size())
          {
            if (j == paramList.size())
            {
              paramContext = paramContext.getResources().getString(2131887842);
              break;
            }
            i = f(paramList).size() - k;
            paramContext = paramContext.getResources().getQuantityString(2131755092, i, new Object[] { Integer.valueOf(i) });
            break;
          }
          if (i <= 0) {
            break label857;
          }
          if (!h(l2))
          {
            if (k > 0)
            {
              paramContext = paramContext.getResources().getQuantityString(2131755097, k, new Object[] { Integer.valueOf(k) });
              paramCalendar = (Calendar)localObject1;
              break label863;
            }
            paramCalendar = f(paramList);
            paramContext = paramContext.getResources().getQuantityString(2131755092, paramCalendar.size(), new Object[] { Integer.valueOf(paramCalendar.size()) });
            break;
          }
          i = r(l2 - l1);
        }
        label857:
        paramContext = "";
      }
    }
    label863:
    paramList = new StringBuilder();
    paramList.append("agendaStatusPriority str : ");
    paramList.append(paramContext);
    z.a("Cal:D:WidgetEventLoader", paramList.toString());
    paramList = new a();
    paramList.a = paramContext;
    paramList.b = paramCalendar;
    return paramList;
  }
  
  public static List<Event> f(List<Event> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList);
    long l = System.currentTimeMillis();
    paramList = localArrayList.iterator();
    while (paramList.hasNext())
    {
      Event localEvent = (Event)paramList.next();
      if ((l >= localEvent.getEndTimeMillis()) && (localEvent.getEventType() != 7) && (localEvent.getEventType() != 9) && (localEvent.getEventType() != 8)) {
        paramList.remove();
      }
    }
    return localArrayList;
  }
  
  private static Calendar g(Context paramContext)
  {
    paramContext = new r0(Utils.U(paramContext));
    paramContext.M();
    paramContext.J(paramContext.q() + 1);
    long l = paramContext.P(true);
    paramContext = Calendar.getInstance();
    paramContext.setTimeInMillis(l);
    return paramContext;
  }
  
  private static boolean h(long paramLong)
  {
    boolean bool;
    if (paramLong - System.currentTimeMillis() <= 900000L) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static List<Event> m(Context paramContext, Calendar paramCalendar, boolean paramBoolean)
  {
    z.a("Cal:D:WidgetEventLoader", "loadAgendaEvents");
    List localList1 = n(paramContext, paramCalendar);
    e.j(paramContext, localList1);
    List localList2 = s1.a.h(paramContext);
    e.j(paramContext, localList2);
    List localList3 = c.h(paramContext);
    e.j(paramContext, localList3);
    return q(paramContext, paramCalendar, localList2, localList3, localList1, paramBoolean);
  }
  
  public static List<Event> n(Context paramContext, Calendar paramCalendar)
  {
    boolean bool = com.miui.calendar.util.e0.v(Calendar.getInstance(), paramCalendar);
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("preParseEvents isToday : ");
    ((StringBuilder)localObject).append(bool);
    z.a("Cal:D:WidgetEventLoader", ((StringBuilder)localObject).toString());
    int i = com.miui.calendar.util.e0.i(paramCalendar);
    int j;
    if (bool) {
      j = 3;
    } else {
      j = 1;
    }
    paramCalendar = e.d(paramContext, i, j);
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("preParseEvents event size : ");
    ((StringBuilder)localObject).append(paramCalendar.size());
    z.a("Cal:D:WidgetEventLoader", ((StringBuilder)localObject).toString());
    if (bool)
    {
      localObject = paramCalendar.iterator();
      while (((Iterator)localObject).hasNext())
      {
        Event localEvent = (Event)((Iterator)localObject).next();
        if (((localEvent.getEx().getStartJulianDay() > i) || (localEvent.getEx().getEndJulianDay() < i)) && (localEvent.getEventType() != 3) && (localEvent.getEventType() != 16)) {
          ((Iterator)localObject).remove();
        }
      }
    }
    if (com.android.calendar.event.e0.e(paramContext))
    {
      localObject = paramCalendar.iterator();
      while (((Iterator)localObject).hasNext())
      {
        paramContext = (Event)((Iterator)localObject).next();
        if ((paramContext.getEventType() == 8) || (paramContext.getEventType() == 9)) {
          ((Iterator)localObject).remove();
        }
      }
    }
    return paramCalendar;
  }
  
  public static List<BirthdayEvent> o(Context paramContext, List<Event> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      for (int i = 0; localIterator.hasNext(); i++)
      {
        label22:
        paramList = (Event)localIterator.next();
        if ((paramList.getEventType() != 7) || (i > 100)) {
          break label22;
        }
        localArrayList.add((BirthdayEvent)paramList);
      }
    }
    r1.a.C(paramContext, localArrayList);
    return localArrayList;
  }
  
  public static Map<String, List<Event>> p(Context paramContext, List<Event> paramList)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    HashMap localHashMap = new HashMap();
    boolean bool = com.android.calendar.settings.j.o(paramContext);
    if (paramList != null)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("preProcessNormalEvents size : ");
      ((StringBuilder)localObject).append(paramList.size());
      z.a("Cal:D:WidgetEventLoader", ((StringBuilder)localObject).toString());
      localObject = paramList.iterator();
      while (((Iterator)localObject).hasNext())
      {
        paramList = (Event)((Iterator)localObject).next();
        int i = paramList.getEventType();
        if (i != 3)
        {
          if (i != 7) {
            switch (i)
            {
            default: 
              if ((!bool) && (paramList.getEx().isRejectAgenda())) {
                continue;
              }
              String str = d.h(paramContext, paramList.getId(), "meeting_status");
              paramList.getEx().setMeetingStatus(str);
              if (paramList.isAllDay())
              {
                localArrayList1.add(paramList);
                continue;
              }
              localArrayList2.add(paramList);
              break;
            case 15: 
              localArrayList1.add(paramList);
              break;
            }
          }
        }
        else if (paramList.isAllDay()) {
          localArrayList1.add(paramList);
        } else {
          localArrayList2.add(paramList);
        }
      }
      paramContext = new StringBuilder();
      paramContext.append("preProcessNormalEvents #2 allday ");
      paramContext.append(localArrayList1.size());
      paramContext.append(" otherday ");
      paramContext.append(localArrayList2.size());
      z.a("Cal:D:WidgetEventLoader", paramContext.toString());
      localHashMap.put("event_type_allday", localArrayList1);
      localHashMap.put("event_type_other", localArrayList2);
    }
    return localHashMap;
  }
  
  private static List<Event> q(Context paramContext, Calendar paramCalendar, List<AnniversaryEvent> paramList, List<CountdownEvent> paramList1, List<Event> paramList2, boolean paramBoolean)
  {
    ArrayList localArrayList1 = new ArrayList();
    Object localObject1 = new ArrayMap();
    ArrayList localArrayList2 = new ArrayList();
    Object localObject2 = new ArrayMap();
    ArrayList localArrayList3 = new ArrayList();
    ArrayMap localArrayMap = new ArrayMap();
    int j;
    if (paramList != null)
    {
      localObject3 = paramList.iterator();
      while (((Iterator)localObject3).hasNext())
      {
        localObject4 = (AnniversaryEvent)((Iterator)localObject3).next();
        int i = ((AnniversaryEvent)localObject4).calDays(paramCalendar);
        if (i > 0)
        {
          j = ((AnniversaryEvent)localObject4).calAnniversary(paramCalendar);
          if (j > 0)
          {
            localArrayList2.add(localObject4);
            ((Map)localObject2).put(localObject4, Integer.valueOf(j));
          }
          else if (i % 100 == 0)
          {
            localArrayList3.add(localObject4);
            localArrayMap.put(localObject4, Integer.valueOf(i));
          }
          else
          {
            localArrayList1.add(localObject4);
          }
        }
      }
    }
    Collections.sort(localArrayList2, new f((Map)localObject2));
    Collections.sort(localArrayList3, new g(localArrayMap));
    Collections.sort(localArrayList1, new h((Map)localObject1));
    localObject1 = new ArrayList();
    Object localObject3 = new ArrayMap();
    if (paramList1 != null)
    {
      localObject4 = paramList1.iterator();
      while (((Iterator)localObject4).hasNext())
      {
        localObject2 = (CountdownEvent)((Iterator)localObject4).next();
        j = ((CountdownEvent)localObject2).calDays(paramCalendar);
        if (j >= 0)
        {
          ((List)localObject1).add(localObject2);
          ((Map)localObject3).put(localObject2, Integer.valueOf(j));
        }
      }
    }
    Collections.sort((List)localObject1, new i((Map)localObject3));
    localObject2 = p(paramContext, paramList2);
    Object localObject4 = (List)((Map)localObject2).get("event_type_allday");
    localObject2 = (List)((Map)localObject2).get("event_type_other");
    paramContext = o(paramContext, paramList2);
    p1.b.e(paramList, paramCalendar);
    w1.b.e(paramList1, paramCalendar);
    paramCalendar = new ArrayList();
    if (!paramBoolean)
    {
      paramCalendar.addAll((Collection)localObject2);
      paramCalendar.addAll((Collection)localObject4);
    }
    paramCalendar.addAll(localArrayList2);
    paramCalendar.addAll(localArrayList3);
    paramCalendar.addAll(localArrayList1);
    paramCalendar.addAll((Collection)localObject1);
    paramCalendar.addAll(paramContext);
    return paramCalendar;
  }
  
  private static int r(long paramLong)
  {
    return (int)(paramLong / 1000L / 60L) + 1;
  }
  
  public static class a
  {
    public String a;
    public String b;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f2.j
 * JD-Core Version:    0.7.0.1
 */