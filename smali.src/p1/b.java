package p1;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import com.android.calendar.anniversary.AnniversaryInfoActivity;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.AnniversaryEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.event.j;
import com.miui.calendar.util.b0;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class b
{
  public static Intent a(Context paramContext, long paramLong, Calendar paramCalendar)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(paramContext, AnniversaryInfoActivity.class);
    localIntent.putExtra("event_id", paramLong);
    localIntent.putExtra("desired_day", paramCalendar);
    return localIntent;
  }
  
  public static Intent b(Context paramContext, AnniversaryEvent paramAnniversaryEvent, Calendar paramCalendar)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(paramContext, AnniversaryInfoActivity.class);
    localIntent.putExtra("event_id", paramAnniversaryEvent.getId());
    localIntent.putExtra("info", paramAnniversaryEvent);
    localIntent.putExtra("desired_day", paramCalendar);
    return localIntent;
  }
  
  public static boolean c(AnniversaryEvent paramAnniversaryEvent, Context paramContext, String paramString, boolean paramBoolean, Calendar paramCalendar)
  {
    paramAnniversaryEvent.getEx().setHasAlarm(false);
    paramAnniversaryEvent.getEx().getReminders().clear();
    paramAnniversaryEvent.setTitle(paramContext.getString(2131886193, new Object[] { paramString }));
    paramAnniversaryEvent.setAllDay(true);
    paramAnniversaryEvent.setLocation(null);
    paramAnniversaryEvent.setDescription(null);
    paramAnniversaryEvent.getEx().setStart(paramCalendar.getTimeInMillis());
    paramAnniversaryEvent.getEx().setEnd(paramAnniversaryEvent.getEx().getStart());
    paramAnniversaryEvent.getEx().setTimezone(Utils.U(paramContext));
    int i;
    if (paramAnniversaryEvent.getDateType() == 1) {
      i = 8;
    } else {
      i = 6;
    }
    j.z(i, paramAnniversaryEvent, Utils.C(paramContext), null, null);
    if (paramAnniversaryEvent.getDateType() == 1) {
      paramAnniversaryEvent.getEx().setRdate(b0.d(paramCalendar, 2, true));
    } else {
      paramAnniversaryEvent.getEx().setRdate(null);
    }
    paramAnniversaryEvent.setEventType(8);
    paramAnniversaryEvent.setContent(paramString);
    paramAnniversaryEvent.setTimeMillis(paramCalendar.getTimeInMillis());
    paramAnniversaryEvent.setReminderBefore3Day(paramBoolean);
    return true;
  }
  
  public static String d(Context paramContext, AnniversaryEvent paramAnniversaryEvent, long paramLong, boolean paramBoolean)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramAnniversaryEvent.calNextAnniversaryTime(paramLong));
    int i = paramAnniversaryEvent.calAnniversary(localCalendar);
    if (paramBoolean) {
      paramContext = paramContext.getResources().getQuantityString(2131755027, i, new Object[] { Integer.valueOf(3), paramAnniversaryEvent.getContent(), Integer.valueOf(i) });
    } else {
      paramContext = paramContext.getResources().getQuantityString(2131755028, i, new Object[] { paramAnniversaryEvent.getContent(), Integer.valueOf(i) });
    }
    return paramContext;
  }
  
  public static void e(List<AnniversaryEvent> paramList, Calendar paramCalendar)
  {
    Collections.sort(paramList, new a(paramCalendar));
  }
  
  class a
    implements Comparator<AnniversaryEvent>
  {
    a() {}
    
    public int a(AnniversaryEvent paramAnniversaryEvent1, AnniversaryEvent paramAnniversaryEvent2)
    {
      if ((paramAnniversaryEvent1.calAnniversary(b.this) > 0) && (paramAnniversaryEvent2.calAnniversary(b.this) <= 0)) {
        return -1;
      }
      if ((paramAnniversaryEvent1.calAnniversary(b.this) <= 0) && (paramAnniversaryEvent2.calAnniversary(b.this) > 0)) {
        return 1;
      }
      return 0;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     p1.b
 * JD-Core Version:    0.7.0.1
 */