package s1;

import android.annotation.TargetApi;
import android.content.Context;
import android.provider.CalendarContract.Events;
import com.android.calendar.common.event.schema.CountdownEvent;
import com.android.calendar.common.event.schema.Event;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import t1.c.a;
import t1.c.b;

public class c
{
  private static final String[] a = { "_id", "title" };
  private static final Class[] b = { Long.class, String.class };
  
  private static List<CountdownEvent> a(Context paramContext, c.a parama)
  {
    paramContext = new ArrayList();
    Iterator localIterator = parama.iterator();
    while (localIterator.hasNext())
    {
      c.b localb = (c.b)localIterator.next();
      parama = new CountdownEvent();
      parama.setId(localb.d(0).longValue());
      parama.setTitle(localb.b(1));
      parama.setEventType(9);
      parama.setAllDay(true);
      paramContext.add(parama);
    }
    return paramContext;
  }
  
  public static int b(Context paramContext)
  {
    if (paramContext == null) {
      return 0;
    }
    return t1.c.b(paramContext).m(CalendarContract.Events.CONTENT_URI).k("hasExtendedProperties&255=9 AND deleted=0").j(a).l(b).g();
  }
  
  @TargetApi(14)
  public static CountdownEvent c(Context paramContext, long paramLong)
  {
    if (paramContext == null) {
      return null;
    }
    List localList = a(paramContext, t1.c.b(paramContext).m(CalendarContract.Events.CONTENT_URI).k("hasExtendedProperties&255=9 AND deleted=0 AND _id=?").h(new Object[] { Long.valueOf(paramLong) }).j(a).l(b).f());
    g(paramContext, localList);
    if ((localList != null) && (!localList.isEmpty())) {
      return (CountdownEvent)localList.get(0);
    }
    return null;
  }
  
  public static List<CountdownEvent> d(Context paramContext)
  {
    return e(paramContext, null);
  }
  
  public static List<CountdownEvent> e(Context paramContext, Calendar paramCalendar)
  {
    List localList = i(paramContext, true);
    if (paramCalendar != null)
    {
      paramContext = localList.iterator();
      while (paramContext.hasNext()) {
        if (((CountdownEvent)paramContext.next()).calDays(paramCalendar) < 0) {
          paramContext.remove();
        }
      }
    }
    return localList;
  }
  
  public static void f(Context paramContext, CountdownEvent paramCountdownEvent)
  {
    paramCountdownEvent.fillEpInfo(d.f(paramContext, paramCountdownEvent.getId(), "key_countdown_info"));
  }
  
  public static void g(Context paramContext, List<CountdownEvent> paramList)
  {
    if ((paramList != null) && (paramList.size() != 0))
    {
      Object localObject1 = new ArrayList();
      Object localObject2 = paramList.iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((List)localObject1).add(Long.valueOf(((CountdownEvent)((Iterator)localObject2).next()).getId()));
      }
      paramContext = d.c(paramContext, (List)localObject1, "key_countdown_info");
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        localObject2 = (CountdownEvent)paramList.next();
        localObject1 = (String)paramContext.get(Long.valueOf(((Event)localObject2).getId()));
        if (localObject1 == null) {
          paramList.remove();
        } else {
          ((Event)localObject2).fillEpInfo((String)localObject1);
        }
      }
    }
  }
  
  public static List<CountdownEvent> h(Context paramContext)
  {
    return i(paramContext, false);
  }
  
  private static List<CountdownEvent> i(Context paramContext, boolean paramBoolean)
  {
    List localList = a(paramContext, j(paramContext));
    if (paramBoolean) {
      g(paramContext, localList);
    }
    return localList;
  }
  
  private static c.a j(Context paramContext)
  {
    if (paramContext == null) {
      return null;
    }
    return t1.c.b(paramContext).m(CalendarContract.Events.CONTENT_URI).k("hasExtendedProperties&255=9 AND deleted=0").j(a).l(b).f();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s1.c
 * JD-Core Version:    0.7.0.1
 */