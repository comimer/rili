package p1;

import android.content.Context;
import com.android.calendar.common.event.schema.AnniversaryEvent;
import com.android.calendar.settings.j;
import com.miui.calendar.alerts.entities.AnniversaryAlert;
import com.miui.calendar.alerts.entities.BaseAlert;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

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
    m3.b localb = m3.b.e(paramContext);
    Iterator localIterator = new o3.b(paramContext).c(new Long[] { Long.valueOf(paramLong) }).iterator();
    while (localIterator.hasNext())
    {
      localObject = (AnniversaryAlert)localIterator.next();
      localb.i(((AnniversaryAlert)localObject).getAdapter(paramContext, ((AnniversaryAlert)localObject).getRemindType()));
      g0.f("anniversary_notify", new String[] { "minute", String.valueOf(i * 60 + j) });
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("doNotify(): id:");
      localStringBuilder.append(((BaseAlert)localObject).getEventId());
      z.h("Cal:D:AnniversaryAlarm", localStringBuilder.toString());
    }
  }
  
  public long b(Context paramContext, long paramLong)
  {
    Object localObject = s1.a.d(paramContext);
    paramContext = new ArrayList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      AnniversaryEvent localAnniversaryEvent = (AnniversaryEvent)((Iterator)localObject).next();
      paramContext.add(Long.valueOf(localAnniversaryEvent.calNextAnniversaryTime(paramLong)));
      if (localAnniversaryEvent.isReminderBefore3Day()) {
        paramContext.add(Long.valueOf(localAnniversaryEvent.calNextAnniversaryBefore3DayTime(paramLong)));
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
 * Qualified Name:     p1.a
 * JD-Core Version:    0.7.0.1
 */