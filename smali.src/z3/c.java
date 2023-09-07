package z3;

import android.app.Notification;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.util.ArrayMap;
import com.android.calendar.common.ModuleSchema;
import com.android.calendar.common.Utils;
import com.android.calendar.settings.j;
import com.miui.calendar.holiday.model.HolidaySchema;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.x;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import com.miui.calendar.web.PageData.ExtraData;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Map;
import l3.a;
import o1.g;
import o1.i;

public class c
  implements a
{
  public void a(Context paramContext, long paramLong)
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("HolidayAlarm doNotify reminderMillis:");
    ((StringBuilder)localObject1).append(paramLong);
    z.a("Cal:D:HolidayAlarm", ((StringBuilder)localObject1).toString());
    if (!j.j(paramContext))
    {
      z.h("Cal:D:HolidayAlarm", "doNotify(): reminder setting OFF");
      return;
    }
    try
    {
      Object localObject2 = d.h(paramContext).k();
      localObject1 = new java/lang/StringBuilder;
      ((StringBuilder)localObject1).<init>();
      ((StringBuilder)localObject1).append("today holiday size:");
      ((StringBuilder)localObject1).append(((ArrayList)localObject2).size());
      z.a("Cal:D:HolidayAlarm", ((StringBuilder)localObject1).toString());
      Iterator localIterator = ((ArrayList)localObject2).iterator();
      while (localIterator.hasNext())
      {
        HolidaySchema localHolidaySchema = (HolidaySchema)localIterator.next();
        if ((localHolidaySchema.isValid()) && (!localHolidaySchema.getHasNotify(paramContext)) && (localHolidaySchema.getReminderMillis(paramContext) == paramLong))
        {
          NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
          localObject2 = null;
          localObject1 = localObject2;
          if (y.l(paramContext))
          {
            localObject1 = localObject2;
            if (localHolidaySchema.action != null)
            {
              localObject1 = new android/util/ArrayMap;
              ((ArrayMap)localObject1).<init>();
              localObject2 = localHolidaySchema.style;
              if (localObject2 != null) {
                ((Map)localObject1).put("style", x.c(localObject2));
              }
              localObject2 = Boolean.TRUE;
              ((Map)localObject1).put("holiday", ((Boolean)localObject2).toString());
              ((Map)localObject1).put("showShare", ((Boolean)localObject2).toString());
              ((Map)localObject1).put("title", localHolidaySchema.name);
              ((Map)localObject1).put("holidayId", String.valueOf(localHolidaySchema.holidayId));
              ((Map)localObject1).put("return_calendar", ((Boolean)localObject2).toString());
              ((Map)localObject1).put("rand", String.valueOf(System.currentTimeMillis()));
              localObject2 = localHolidaySchema.action.getIntent(paramContext, (Map)localObject1);
              localObject1 = localHolidaySchema.extra;
              if (localObject1 != null) {
                ((Intent)localObject2).putExtra("share_image_url", ((PageData.ExtraData)localObject1).shareImage);
              }
              localObject1 = PendingIntent.getActivity(paramContext, localHolidaySchema.hashCode(), (Intent)localObject2, 201326592);
            }
          }
          localObject1 = i.g(paramContext).setContentTitle(localHolidaySchema.notificationTitle).setContentText(localHolidaySchema.notificationDesc).setSmallIcon(2131232441).setContentIntent((PendingIntent)localObject1).setAutoCancel(true).setShowWhen(true).setPriority(1).setSound(g.f(paramContext)).build();
          localObject2 = new android/util/ArrayMap;
          ((ArrayMap)localObject2).<init>();
          Object localObject3 = Calendar.getInstance();
          ((Map)localObject2).put("minute", String.valueOf(((Calendar)localObject3).get(11) * 60 + ((Calendar)localObject3).get(12)));
          localObject3 = new java/lang/StringBuilder;
          ((StringBuilder)localObject3).<init>();
          ((StringBuilder)localObject3).append(localHolidaySchema.name);
          ((StringBuilder)localObject3).append("_");
          ((StringBuilder)localObject3).append(localHolidaySchema.holidayId);
          ((Map)localObject2).put("name", ((StringBuilder)localObject3).toString());
          g0.e("holiday_notify", (Map)localObject2);
          localObject2 = new java/lang/StringBuilder;
          ((StringBuilder)localObject2).<init>();
          ((StringBuilder)localObject2).append("doNotify(): id:");
          ((StringBuilder)localObject2).append(localHolidaySchema.hashCode());
          ((StringBuilder)localObject2).append(", notification:");
          ((StringBuilder)localObject2).append(localObject1);
          ((StringBuilder)localObject2).append(", holiday:");
          ((StringBuilder)localObject2).append(localHolidaySchema);
          z.h("Cal:D:HolidayAlarm", ((StringBuilder)localObject2).toString());
          localNotificationManager.notify(localHolidaySchema.hashCode(), (Notification)localObject1);
          localHolidaySchema.setHasNotify(paramContext);
        }
      }
      return;
    }
    finally {}
  }
  
  public long b(Context paramContext, long paramLong)
  {
    boolean bool = j.j(paramContext);
    long l1 = -1L;
    if (!bool)
    {
      z.h("Cal:D:HolidayAlarm", "getNextNotifyMillis(): reminder setting OFF");
      return -1L;
    }
    Object localObject1 = d.h(paramContext).c();
    Object localObject2 = null;
    HolidaySchema localHolidaySchema = null;
    if (localObject1 != null)
    {
      localObject1 = ((ArrayList)localObject1).iterator();
      l1 = -1L;
      localObject2 = localHolidaySchema;
      while (((Iterator)localObject1).hasNext())
      {
        localHolidaySchema = (HolidaySchema)((Iterator)localObject1).next();
        if ((localHolidaySchema.isValid()) && (!localHolidaySchema.getHasNotify(paramContext)))
        {
          long l2 = localHolidaySchema.getReminderMillis(paramContext);
          if ((l2 > paramLong) && ((l1 == -1L) || (l2 < l1)))
          {
            localObject2 = localHolidaySchema.name;
            l1 = l2;
          }
        }
      }
    }
    if (l1 > 0L)
    {
      paramContext = new StringBuilder();
      paramContext.append("getNextNotifyMillis() nextNotifyTime=");
      paramContext.append(Utils.T(l1));
      paramContext.append(", name=");
      paramContext.append((String)localObject2);
      z.h("Cal:D:HolidayAlarm", paramContext.toString());
    }
    else
    {
      z.h("Cal:D:HolidayAlarm", "getNextNotifyMillis() no upcoming reminder");
    }
    return l1;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z3.c
 * JD-Core Version:    0.7.0.1
 */