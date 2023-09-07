package w1;

import android.content.Context;
import com.android.calendar.common.event.schema.CountdownEvent;
import com.android.calendar.settings.j;
import com.miui.calendar.alerts.entities.BaseAlert;
import com.miui.calendar.alerts.entities.CountdownAlert;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import m3.b;
import o3.f;
import s1.c;

public class a
  implements l3.a
{
  public void a(Context paramContext, long paramLong)
  {
    if (!j.m(paramContext)) {
      return;
    }
    Object localObject = Calendar.getInstance();
    ((Calendar)localObject).setTimeInMillis(paramLong);
    int i = ((Calendar)localObject).get(11);
    int j = ((Calendar)localObject).get(12);
    b localb = b.e(paramContext);
    Iterator localIterator = new f(paramContext).c(new Long[] { Long.valueOf(paramLong) }).iterator();
    while (localIterator.hasNext())
    {
      localObject = (CountdownAlert)localIterator.next();
      localb.i(((CountdownAlert)localObject).getAdapter(paramContext, ((CountdownAlert)localObject).getRemindType()));
      g0.f("countdown_notify", new String[] { "minute", String.valueOf(i * 60 + j) });
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("doNotify(): id:");
      localStringBuilder.append(((BaseAlert)localObject).getEventId());
      z.h("Cal:D:CountdownAlarm", localStringBuilder.toString());
    }
  }
  
  public long b(Context paramContext, long paramLong)
  {
    Object localObject = c.d(paramContext);
    paramContext = new ArrayList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      CountdownEvent localCountdownEvent = (CountdownEvent)((Iterator)localObject).next();
      paramContext.add(Long.valueOf(localCountdownEvent.calNextCountdownTime(paramLong)));
      if (localCountdownEvent.isReminderBefore3Day()) {
        paramContext.add(Long.valueOf(localCountdownEvent.calNextCountdownBefore3DayTime(paramLong)));
      }
    }
    localObject = paramContext.iterator();
    for (long l = -1L; ((Iterator)localObject).hasNext(); l = paramContext.longValue())
    {
      label95:
      paramContext = (Long)((Iterator)localObject).next();
      if ((paramContext.longValue() <= paramLong) || ((l != -1L) && (paramContext.longValue() >= l))) {
        break label95;
      }
    }
    return l;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     w1.a
 * JD-Core Version:    0.7.0.1
 */