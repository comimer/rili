package o3;

import android.annotation.TargetApi;
import android.content.Context;
import android.provider.CalendarContract.CalendarAlerts;
import com.android.calendar.common.event.schema.Event;
import com.miui.calendar.alerts.entities.BaseAlert;
import com.miui.calendar.util.p0;
import com.miui.calendar.util.p0.b;
import com.miui.calendar.util.p0.c;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public abstract class c<T extends BaseAlert<? extends Event>>
  extends d<T, Void>
{
  private static final String[] b = { "_id", "title", "eventLocation", "allDay", "begin", "end", "event_id", "calendar_color", "rrule", "state", "account_name", "account_type", "calendar_displayName", "customAppPackage", "selfAttendeeStatus", "description", "hasExtendedProperties", "minutes", "alarmTime", "hasAlarm" };
  private static final Class[] c = { Integer.class, String.class, String.class, Integer.class, Long.class, Long.class, Long.class, Integer.class, String.class, Integer.class, String.class, String.class, String.class, String.class, Integer.class, String.class, Integer.class, Integer.class, Long.class, Integer.class };
  
  public c(Context paramContext)
  {
    super(paramContext);
  }
  
  private List<T> g(p0.b paramb)
  {
    ArrayList localArrayList = new ArrayList(paramb.size());
    HashSet localHashSet = new HashSet();
    paramb = paramb.iterator();
    while (paramb.hasNext())
    {
      BaseAlert localBaseAlert = f((p0.c)paramb.next());
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("toAlertList(): alertId: ");
      localStringBuilder.append(localBaseAlert.getAlertId());
      z.a("Cal:D:BaseAgendaAlertFactory", localStringBuilder.toString());
      if ((b(localBaseAlert)) && (!localHashSet.contains(Long.valueOf(localBaseAlert.getEventId()))))
      {
        localHashSet.add(Long.valueOf(localBaseAlert.getEventId()));
        localArrayList.add(localBaseAlert);
      }
    }
    return localArrayList;
  }
  
  protected abstract boolean b(T paramT);
  
  public T c(int paramInt)
  {
    p0.b localb = p0.d(a()).u(CalendarContract.CalendarAlerts.CONTENT_URI).r(b).t(c).s("CalendarAlerts._ID=?").n(new Object[] { Integer.valueOf(paramInt) }).i();
    if (!localb.isEmpty()) {
      return f(localb.l(0));
    }
    return null;
  }
  
  @TargetApi(14)
  public List<T> d(Void... paramVarArgs)
  {
    long l = System.currentTimeMillis();
    return g(p0.d(a()).u(CalendarContract.CalendarAlerts.CONTENT_URI).r(b).t(c).s(e()).o(new String[] { Integer.toString(0), Long.toString(l + 5000L) }).q("begin DESC, end DESC").i());
  }
  
  protected String e()
  {
    return "(state=? ) AND alarmTime<=? AND (hasExtendedProperties&255) != 7";
  }
  
  protected abstract T f(p0.c paramc);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     o3.c
 * JD-Core Version:    0.7.0.1
 */