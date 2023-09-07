package w1;

import android.content.Context;
import android.content.Intent;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.CountdownEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.countdown.CountdownInfoActivity;
import com.android.calendar.event.j;
import com.miui.calendar.util.s0;
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
    localIntent.setClass(paramContext, CountdownInfoActivity.class);
    localIntent.putExtra("event_id", paramLong);
    localIntent.putExtra("desired_day", paramCalendar);
    return localIntent;
  }
  
  public static Intent b(Context paramContext, CountdownEvent paramCountdownEvent, Calendar paramCalendar)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(paramContext, CountdownInfoActivity.class);
    localIntent.putExtra("event_id", paramCountdownEvent.getId());
    localIntent.putExtra("info", paramCountdownEvent);
    localIntent.putExtra("desired_day", paramCalendar);
    return localIntent;
  }
  
  public static boolean c(CountdownEvent paramCountdownEvent, Context paramContext, String paramString, boolean paramBoolean, Calendar paramCalendar, int paramInt)
  {
    EventEx localEventEx = paramCountdownEvent.getEx();
    int i = 0;
    localEventEx.setHasAlarm(false);
    paramCountdownEvent.getEx().getReminders().clear();
    paramCountdownEvent.setTitle(paramContext.getString(2131886388, new Object[] { paramString }));
    paramCountdownEvent.setAllDay(true);
    paramCountdownEvent.setLocation(null);
    paramCountdownEvent.setDescription(null);
    paramCountdownEvent.getEx().setStart(paramCalendar.getTimeInMillis());
    paramCountdownEvent.getEx().setEnd(paramCountdownEvent.getEx().getStart());
    paramCountdownEvent.getEx().setTimezone(Utils.U(paramContext));
    if (paramInt == 2) {
      i = 6;
    } else if (paramInt == 1) {
      i = 5;
    }
    j.z(i, paramCountdownEvent, Utils.C(paramContext), null, null);
    paramCountdownEvent.getEx().setRdate(null);
    paramCountdownEvent.setEventType(9);
    paramCountdownEvent.setContent(paramString);
    paramCountdownEvent.setTimeMillis(paramCalendar.getTimeInMillis());
    paramCountdownEvent.setReminderBefore3Day(paramBoolean);
    paramCountdownEvent.setRepeatType(paramInt);
    return true;
  }
  
  public static String d(Context paramContext, CountdownEvent paramCountdownEvent, boolean paramBoolean)
  {
    if (paramBoolean) {
      paramContext = paramContext.getString(2131886389, new Object[] { paramCountdownEvent.getContent(), Integer.valueOf(3) });
    } else {
      paramContext = paramContext.getString(2131886390, new Object[] { paramCountdownEvent.getContent() });
    }
    return paramContext;
  }
  
  public static void e(List<CountdownEvent> paramList, Calendar paramCalendar)
  {
    Collections.sort(paramList, new a(paramCalendar));
  }
  
  class a
    implements Comparator<CountdownEvent>
  {
    a() {}
    
    public int a(CountdownEvent paramCountdownEvent1, CountdownEvent paramCountdownEvent2)
    {
      return s0.m(paramCountdownEvent1.calNextCountdownDay(b.this)) - s0.m(paramCountdownEvent2.calNextCountdownDay(b.this));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     w1.b
 * JD-Core Version:    0.7.0.1
 */