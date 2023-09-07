package s1;

import android.annotation.TargetApi;
import android.content.Context;
import android.provider.CalendarContract.Events;
import android.text.TextUtils;
import com.android.calendar.common.event.schema.AnniversaryEvent;
import com.android.calendar.common.event.schema.Event;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import t1.c;
import t1.c.a;
import t1.c.b;

public class a
{
  private static final String[] a = { "_id", "title" };
  private static final Class[] b = { Long.class, String.class };
  
  private static List<AnniversaryEvent> a(c.a parama)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = parama.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (c.b)localIterator.next();
      parama = new AnniversaryEvent();
      parama.setId(((c.b)localObject).d(0).longValue());
      localObject = ((c.b)localObject).b(1);
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        parama.setTitle((String)localObject);
        parama.setEventType(8);
        parama.setAllDay(true);
        localArrayList.add(parama);
      }
    }
    return localArrayList;
  }
  
  public static int b(Context paramContext)
  {
    if (paramContext == null) {
      return 0;
    }
    return c.b(paramContext).m(CalendarContract.Events.CONTENT_URI).k("hasExtendedProperties&255=8 AND deleted=0").j(a).l(b).g();
  }
  
  @TargetApi(14)
  public static AnniversaryEvent c(Context paramContext, long paramLong)
  {
    if (paramContext == null) {
      return null;
    }
    List localList = a(c.b(paramContext).m(CalendarContract.Events.CONTENT_URI).k("hasExtendedProperties&255=8 AND deleted=0 AND _id=?").h(new Object[] { Long.valueOf(paramLong) }).j(a).l(b).f());
    g(paramContext, localList);
    if ((localList != null) && (!localList.isEmpty())) {
      return (AnniversaryEvent)localList.get(0);
    }
    return null;
  }
  
  public static List<AnniversaryEvent> d(Context paramContext)
  {
    return e(paramContext, null);
  }
  
  public static List<AnniversaryEvent> e(Context paramContext, Calendar paramCalendar)
  {
    paramContext = i(paramContext, true);
    if (paramCalendar != null)
    {
      Iterator localIterator = paramContext.iterator();
      while (localIterator.hasNext()) {
        if (((AnniversaryEvent)localIterator.next()).calDays(paramCalendar) <= 0) {
          localIterator.remove();
        }
      }
    }
    return paramContext;
  }
  
  public static void f(Context paramContext, AnniversaryEvent paramAnniversaryEvent)
  {
    paramAnniversaryEvent.fillEpInfo(d.f(paramContext, paramAnniversaryEvent.getId(), "key_anniversary_info"));
  }
  
  public static void g(Context paramContext, List<AnniversaryEvent> paramList)
  {
    if ((paramList != null) && (paramList.size() != 0))
    {
      Object localObject1 = new ArrayList();
      Object localObject2 = paramList.iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((List)localObject1).add(Long.valueOf(((AnniversaryEvent)((Iterator)localObject2).next()).getId()));
      }
      paramContext = d.c(paramContext, (List)localObject1, "key_anniversary_info");
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        localObject1 = (AnniversaryEvent)paramList.next();
        localObject2 = (String)paramContext.get(Long.valueOf(((Event)localObject1).getId()));
        if (localObject2 == null) {
          paramList.remove();
        } else {
          ((Event)localObject1).fillEpInfo((String)localObject2);
        }
      }
    }
  }
  
  public static List<AnniversaryEvent> h(Context paramContext)
  {
    return i(paramContext, false);
  }
  
  private static List<AnniversaryEvent> i(Context paramContext, boolean paramBoolean)
  {
    List localList = a(j(paramContext));
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
    return c.b(paramContext).m(CalendarContract.Events.CONTENT_URI).k("hasExtendedProperties&255=8 AND deleted=0").j(a).l(b).f();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s1.a
 * JD-Core Version:    0.7.0.1
 */