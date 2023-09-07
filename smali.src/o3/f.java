package o3;

import android.content.Context;
import android.text.TextUtils;
import com.android.calendar.common.event.schema.CountdownEvent;
import com.miui.calendar.alerts.entities.BaseAlert;
import com.miui.calendar.alerts.entities.CountdownAlert;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import s1.c;
import w1.b;

public class f
  extends d<CountdownAlert, Long>
{
  public f(Context paramContext)
  {
    super(paramContext);
  }
  
  private String d(CountdownEvent paramCountdownEvent, long paramLong)
  {
    if (paramCountdownEvent.calNextCountdownTime(paramLong) == paramLong) {
      paramCountdownEvent = b.d(a(), paramCountdownEvent, false);
    } else if ((paramCountdownEvent.isReminderBefore3Day()) && (paramCountdownEvent.calNextCountdownBefore3DayTime(paramLong) == paramLong)) {
      paramCountdownEvent = b.d(a(), paramCountdownEvent, true);
    } else {
      paramCountdownEvent = "";
    }
    return paramCountdownEvent;
  }
  
  private boolean e(CountdownEvent paramCountdownEvent, long paramLong)
  {
    boolean bool1 = false;
    if (paramCountdownEvent == null) {
      return false;
    }
    if (paramCountdownEvent.calNextCountdownTime(paramLong) == paramLong) {
      return true;
    }
    boolean bool2 = bool1;
    if (paramCountdownEvent.isReminderBefore3Day())
    {
      bool2 = bool1;
      if (paramCountdownEvent.calNextCountdownBefore3DayTime(paramLong) == paramLong) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  private CountdownAlert f(CountdownEvent paramCountdownEvent, long paramLong)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramLong);
    CountdownAlert localCountdownAlert = new CountdownAlert();
    localCountdownAlert.setEventTitle(d(paramCountdownEvent, paramLong));
    if (TextUtils.isEmpty(localCountdownAlert.getEventTitle())) {
      localCountdownAlert.setEventTitle(a().getString(2131887044));
    }
    localCountdownAlert.setEvent(paramCountdownEvent);
    localCountdownAlert.setAlertAt(paramCountdownEvent.getTimeMillis());
    localCountdownAlert.setAllDay(true);
    localCountdownAlert.setEventState(0);
    localCountdownAlert.setBeginAt(paramCountdownEvent.getTimeMillis());
    localCountdownAlert.setEndAt(paramCountdownEvent.getTimeMillis());
    localCountdownAlert.setEventDescription(paramCountdownEvent.getNotifyText(a(), localCalendar));
    localCountdownAlert.setHasAlarm(true);
    return localCountdownAlert;
  }
  
  public CountdownAlert b(long paramLong1, long paramLong2)
  {
    CountdownEvent localCountdownEvent = c.c(a(), paramLong1);
    if (e(localCountdownEvent, paramLong2)) {
      return f(localCountdownEvent, paramLong2);
    }
    return null;
  }
  
  public List<CountdownAlert> c(Long... paramVarArgs)
  {
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator = c.d(a()).iterator();
    while (localIterator.hasNext())
    {
      CountdownEvent localCountdownEvent = (CountdownEvent)localIterator.next();
      if (e(localCountdownEvent, paramVarArgs[0].longValue())) {
        localLinkedList.add(f(localCountdownEvent, paramVarArgs[0].longValue()));
      }
    }
    return localLinkedList;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     o3.f
 * JD-Core Version:    0.7.0.1
 */