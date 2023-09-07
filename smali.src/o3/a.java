package o3;

import android.content.Context;
import android.text.TextUtils;
import com.android.calendar.common.Utils;
import com.miui.calendar.alerts.entities.AgendaAlert;
import com.miui.calendar.alerts.entities.BaseAlert;
import com.miui.calendar.alerts.entities.BaseAlert.b;
import com.miui.calendar.util.p0.c;
import com.miui.calendar.util.z;

public class a
  extends c<AgendaAlert>
{
  public a(Context paramContext)
  {
    super(paramContext);
  }
  
  protected boolean h(AgendaAlert paramAgendaAlert)
  {
    BaseAlert.b localb = paramAgendaAlert.edit();
    int i = paramAgendaAlert.getAlertId();
    boolean bool1 = paramAgendaAlert.isDeclined();
    boolean bool2 = false;
    if (bool1)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("processQuery(): dismiss declined alert, alertId: ");
      localStringBuilder.append(i);
      z.h("Cal:D:AgendaAlertFactory", localStringBuilder.toString());
      localb.b();
      bool1 = false;
    }
    else
    {
      bool1 = true;
    }
    if (paramAgendaAlert.isNew())
    {
      paramAgendaAlert = new StringBuilder();
      paramAgendaAlert.append("processQuery(): fire scheduled alert, alertId: ");
      paramAgendaAlert.append(i);
      z.h("Cal:D:AgendaAlertFactory", paramAgendaAlert.toString());
      localb.c();
    }
    else
    {
      paramAgendaAlert = new StringBuilder();
      paramAgendaAlert.append("processQuery(): NO need to fire, alertId: ");
      paramAgendaAlert.append(i);
      z.h("Cal:D:AgendaAlertFactory", paramAgendaAlert.toString());
      bool1 = bool2;
    }
    localb.e(a());
    return bool1;
  }
  
  protected AgendaAlert i(p0.c paramc)
  {
    AgendaAlert localAgendaAlert = new AgendaAlert();
    boolean bool1 = false;
    localAgendaAlert.setAlertId(paramc.e(0).intValue());
    localAgendaAlert.setEventId(paramc.g(6).longValue());
    localAgendaAlert.setEventLocation(paramc.c(2));
    localAgendaAlert.setEventTitle(paramc.c(1));
    if (TextUtils.isEmpty(localAgendaAlert.getEventTitle())) {
      localAgendaAlert.setEventTitle(a().getString(2131887044));
    }
    localAgendaAlert.setEventDescription(paramc.c(15));
    localAgendaAlert.setBeginAt(paramc.g(4).longValue());
    localAgendaAlert.setEndAt(paramc.g(5).longValue());
    if (paramc.e(3).intValue() != 0) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    localAgendaAlert.setAllDay(bool2);
    localAgendaAlert.setAccountName(paramc.c(10));
    localAgendaAlert.setAccountType(paramc.c(11));
    localAgendaAlert.setCalendarDisplayName(paramc.c(12));
    localAgendaAlert.setColor(Utils.x(a().getResources(), localAgendaAlert.getAccountName(), localAgendaAlert.getAccountType(), localAgendaAlert.getCalendarDisplayName(), paramc.e(7).intValue()));
    localAgendaAlert.setRrule(paramc.c(8));
    localAgendaAlert.setCustomAppPackage(paramc.c(13));
    localAgendaAlert.setSelfAttendeeStatus(paramc.e(14).intValue());
    localAgendaAlert.setEventState(paramc.e(9).intValue());
    localAgendaAlert.setEventType(paramc.e(16).intValue() & 0xFF);
    localAgendaAlert.setRemindMinutes(paramc.e(17).intValue());
    localAgendaAlert.setAlertAt(paramc.g(18).longValue());
    boolean bool2 = bool1;
    if (paramc.e(19).intValue() != 0) {
      bool2 = true;
    }
    localAgendaAlert.setHasAlarm(bool2);
    return localAgendaAlert;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     o3.a
 * JD-Core Version:    0.7.0.1
 */