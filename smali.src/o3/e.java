package o3;

import android.content.Context;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.BirthdayEvent;
import com.miui.calendar.alerts.entities.BaseAlert;
import com.miui.calendar.alerts.entities.BaseAlert.b;
import com.miui.calendar.alerts.entities.BirthdayAlert;
import com.miui.calendar.util.p0.c;
import com.miui.calendar.util.z;
import r1.a;

public class e
  extends c<BirthdayAlert>
{
  public e(Context paramContext)
  {
    super(paramContext);
  }
  
  protected String e()
  {
    return "(state=? ) AND alarmTime<=? AND (hasExtendedProperties&255) = 7";
  }
  
  protected boolean h(BirthdayAlert paramBirthdayAlert)
  {
    BaseAlert.b localb = paramBirthdayAlert.edit();
    int i = paramBirthdayAlert.getAlertId();
    boolean bool1 = paramBirthdayAlert.isAvailable(a());
    boolean bool2 = false;
    if (!bool1)
    {
      localb.b();
      bool1 = bool2;
    }
    else
    {
      if (paramBirthdayAlert.isDeclined())
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("processQuery(): dismiss declined alert, alertId: ");
        localStringBuilder.append(i);
        z.h("Cal:D:BirthdayAlertFactory", localStringBuilder.toString());
        localb.b();
        bool1 = false;
      }
      else
      {
        bool1 = true;
      }
      if (paramBirthdayAlert.isNew())
      {
        paramBirthdayAlert = new StringBuilder();
        paramBirthdayAlert.append("processQuery(): fire scheduled alert, alertId: ");
        paramBirthdayAlert.append(i);
        z.h("Cal:D:BirthdayAlertFactory", paramBirthdayAlert.toString());
        localb.c();
      }
      else
      {
        paramBirthdayAlert = new StringBuilder();
        paramBirthdayAlert.append("processQuery(): NO need to fire, alertId: ");
        paramBirthdayAlert.append(i);
        z.h("Cal:D:BirthdayAlertFactory", paramBirthdayAlert.toString());
        bool1 = bool2;
      }
    }
    localb.e(a());
    return bool1;
  }
  
  protected BirthdayAlert i(p0.c paramc)
  {
    BirthdayAlert localBirthdayAlert = new BirthdayAlert();
    boolean bool1 = false;
    localBirthdayAlert.setAlertId(paramc.e(0).intValue());
    localBirthdayAlert.setEventId(paramc.g(6).longValue());
    BirthdayEvent localBirthdayEvent = localBirthdayAlert.getEvent(a());
    if (localBirthdayEvent != null)
    {
      localBirthdayAlert.setEventTitle(a.n(a(), localBirthdayEvent, paramc.e(17).intValue()));
      localBirthdayAlert.setEventDescription(a.m(a(), localBirthdayEvent, paramc.g(4).longValue(), paramc.e(17).intValue()));
    }
    localBirthdayAlert.setEventLocation(paramc.c(2));
    localBirthdayAlert.setBeginAt(paramc.g(4).longValue());
    localBirthdayAlert.setEndAt(paramc.g(5).longValue());
    if (paramc.e(3).intValue() != 0) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    localBirthdayAlert.setAllDay(bool2);
    localBirthdayAlert.setAccountName(paramc.c(10));
    localBirthdayAlert.setAccountType(paramc.c(11));
    localBirthdayAlert.setCalendarDisplayName(paramc.c(12));
    localBirthdayAlert.setColor(Utils.x(a().getResources(), localBirthdayAlert.getAccountName(), localBirthdayAlert.getAccountType(), localBirthdayAlert.getCalendarDisplayName(), paramc.e(7).intValue()));
    localBirthdayAlert.setRrule(paramc.c(8));
    localBirthdayAlert.setCustomAppPackage(paramc.c(13));
    localBirthdayAlert.setSelfAttendeeStatus(paramc.e(14).intValue());
    localBirthdayAlert.setEventState(paramc.e(9).intValue());
    localBirthdayAlert.setEventType(paramc.e(16).intValue() & 0xFF);
    localBirthdayAlert.setRemindMinutes(paramc.e(17).intValue());
    localBirthdayAlert.setAlertAt(paramc.g(18).longValue());
    boolean bool2 = bool1;
    if (paramc.e(19).intValue() != 0) {
      bool2 = true;
    }
    localBirthdayAlert.setHasAlarm(bool2);
    return localBirthdayAlert;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     o3.e
 * JD-Core Version:    0.7.0.1
 */