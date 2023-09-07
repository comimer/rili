package o3;

import android.content.Context;
import android.text.TextUtils;
import com.android.calendar.common.event.schema.AnniversaryEvent;
import com.miui.calendar.alerts.entities.AnniversaryAlert;
import com.miui.calendar.alerts.entities.BaseAlert;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import s1.a;

public class b
  extends d<AnniversaryAlert, Long>
{
  public b(Context paramContext)
  {
    super(paramContext);
  }
  
  private String d(AnniversaryEvent paramAnniversaryEvent, long paramLong)
  {
    if (paramAnniversaryEvent.calNextAnniversaryTime(paramLong) == paramLong) {
      paramAnniversaryEvent = p1.b.d(a(), paramAnniversaryEvent, paramLong, false);
    } else if ((paramAnniversaryEvent.isReminderBefore3Day()) && (paramAnniversaryEvent.calNextAnniversaryBefore3DayTime(paramLong) == paramLong)) {
      paramAnniversaryEvent = p1.b.d(a(), paramAnniversaryEvent, paramLong, true);
    } else {
      paramAnniversaryEvent = "";
    }
    return paramAnniversaryEvent;
  }
  
  private boolean e(AnniversaryEvent paramAnniversaryEvent, long paramLong)
  {
    boolean bool1 = false;
    if (paramAnniversaryEvent == null) {
      return false;
    }
    if (paramAnniversaryEvent.calNextAnniversaryTime(paramLong) == paramLong) {
      return true;
    }
    boolean bool2 = bool1;
    if (paramAnniversaryEvent.isReminderBefore3Day())
    {
      bool2 = bool1;
      if (paramAnniversaryEvent.calNextAnniversaryBefore3DayTime(paramLong) == paramLong) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  private AnniversaryAlert f(AnniversaryEvent paramAnniversaryEvent, long paramLong)
  {
    AnniversaryAlert localAnniversaryAlert = new AnniversaryAlert();
    Calendar.getInstance().setTimeInMillis(paramLong);
    localAnniversaryAlert.setEventTitle(d(paramAnniversaryEvent, paramLong));
    if (TextUtils.isEmpty(localAnniversaryAlert.getEventTitle())) {
      localAnniversaryAlert.setEventTitle(a().getString(2131887044));
    }
    localAnniversaryAlert.setEvent(paramAnniversaryEvent);
    localAnniversaryAlert.setAlertAt(paramAnniversaryEvent.getTimeMillis());
    localAnniversaryAlert.setAllDay(true);
    localAnniversaryAlert.setEventState(0);
    localAnniversaryAlert.setBeginAt(paramAnniversaryEvent.getTimeMillis());
    localAnniversaryAlert.setEndAt(paramAnniversaryEvent.getTimeMillis());
    localAnniversaryAlert.setEventDescription(paramAnniversaryEvent.getNotifyText(a()));
    localAnniversaryAlert.setHasAlarm(true);
    return localAnniversaryAlert;
  }
  
  public AnniversaryAlert b(long paramLong1, long paramLong2)
  {
    AnniversaryEvent localAnniversaryEvent = a.c(a(), paramLong1);
    if (e(localAnniversaryEvent, paramLong2)) {
      return f(localAnniversaryEvent, paramLong2);
    }
    return null;
  }
  
  public List<AnniversaryAlert> c(Long... paramVarArgs)
  {
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator = a.d(a()).iterator();
    while (localIterator.hasNext())
    {
      AnniversaryEvent localAnniversaryEvent = (AnniversaryEvent)localIterator.next();
      if (e(localAnniversaryEvent, paramVarArgs[0].longValue())) {
        localLinkedList.add(f(localAnniversaryEvent, paramVarArgs[0].longValue()));
      }
    }
    return localLinkedList;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     o3.b
 * JD-Core Version:    0.7.0.1
 */