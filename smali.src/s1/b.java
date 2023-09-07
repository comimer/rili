package s1;

import android.content.Context;
import android.provider.CalendarContract.Events;
import android.provider.CalendarContract.Reminders;
import com.android.calendar.common.event.schema.BirthdayEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.common.event.schema.Reminder;
import java.util.ArrayList;
import java.util.Iterator;
import t1.c;
import t1.c.a;
import t1.c.b;

public class b
{
  private static final Class[] a = { Long.class, String.class, Long.class, String.class };
  private static final String[] b = { "_id", "title", "dtstart", "description" };
  private static final String[] c = { "_id", "minutes", "method" };
  private static final Class[] d = { Integer.class, Integer.class, Integer.class };
  
  private static BirthdayEvent a(Context paramContext, c.b paramb)
  {
    BirthdayEvent localBirthdayEvent = new BirthdayEvent();
    localBirthdayEvent.setId(paramb.d(0).longValue());
    localBirthdayEvent.setTitle(paramb.b(1));
    localBirthdayEvent.getEx().setStart(paramb.d(2).longValue());
    localBirthdayEvent.setDescription(paramb.b(3));
    c(paramContext, localBirthdayEvent);
    localBirthdayEvent.getEx().setReminders(e(paramContext, localBirthdayEvent.getId()));
    return localBirthdayEvent;
  }
  
  public static BirthdayEvent b(Context paramContext, long paramLong)
  {
    c.a locala = d(paramContext, paramLong);
    if ((locala != null) && (!locala.isEmpty())) {
      return a(paramContext, locala.k());
    }
    return null;
  }
  
  public static void c(Context paramContext, BirthdayEvent paramBirthdayEvent)
  {
    paramBirthdayEvent.fillEpInfo(d.f(paramContext, paramBirthdayEvent.getId(), "key_birthday_info"));
  }
  
  private static c.a d(Context paramContext, long paramLong)
  {
    if (paramContext == null) {
      return null;
    }
    return c.b(paramContext.getApplicationContext()).m(CalendarContract.Events.CONTENT_URI).k("hasExtendedProperties&255=7 AND _id=?").l(a).h(new Object[] { Long.valueOf(paramLong) }).j(b).f();
  }
  
  private static ArrayList<Reminder> e(Context paramContext, long paramLong)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramContext == null) {
      return localArrayList;
    }
    paramContext = c.b(paramContext.getApplicationContext()).m(CalendarContract.Reminders.CONTENT_URI).j(c).l(d).k("event_id=?").i(new String[] { Long.toString(paramLong) }).f().iterator();
    while (paramContext.hasNext())
    {
      c.b localb = (c.b)paramContext.next();
      localArrayList.add(Reminder.valueOf(localb.c(1).intValue(), localb.c(2).intValue()));
    }
    return localArrayList;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s1.b
 * JD-Core Version:    0.7.0.1
 */