package s1;

import android.content.Context;
import android.provider.CalendarContract.Events;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.common.event.schema.TrainEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import t1.c;
import t1.c.a;
import t1.c.b;

public class i
{
  private static final String[] a = { "_id", "title", "dtstart", "dtend" };
  private static final Class[] b = { Long.class, String.class, Long.class, Long.class };
  
  private static List<TrainEvent> a(c.a parama)
  {
    ArrayList localArrayList = new ArrayList();
    parama = parama.iterator();
    while (parama.hasNext())
    {
      c.b localb = (c.b)parama.next();
      TrainEvent localTrainEvent = new TrainEvent();
      localTrainEvent.setId(localb.d(0).longValue());
      localTrainEvent.setTitle(localb.b(1));
      localTrainEvent.getEx().setStart(localb.d(2).longValue());
      localTrainEvent.getEx().setEnd(localb.d(3).longValue());
      localTrainEvent.setEventType(12);
      localTrainEvent.setAllDay(true);
      localArrayList.add(localTrainEvent);
    }
    return localArrayList;
  }
  
  public static TrainEvent b(Context paramContext, long paramLong)
  {
    if (paramContext == null) {
      return null;
    }
    List localList = a(c.b(paramContext).m(CalendarContract.Events.CONTENT_URI).k("hasExtendedProperties&255=12 AND deleted=0 AND _id=?").h(new Object[] { Long.valueOf(paramLong) }).j(a).l(b).f());
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext()) {
      c(paramContext, (TrainEvent)localIterator.next());
    }
    if (localList.isEmpty()) {
      return null;
    }
    return (TrainEvent)localList.get(0);
  }
  
  public static void c(Context paramContext, TrainEvent paramTrainEvent)
  {
    paramTrainEvent.fillEpInfo(d.f(paramContext, paramTrainEvent.getId(), "travel_info"));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s1.i
 * JD-Core Version:    0.7.0.1
 */