package e4;

import android.app.Notification;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.text.TextUtils;
import com.android.calendar.common.Utils;
import com.android.calendar.settings.j;
import com.miui.calendar.limit.LimitSchema;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.z;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import o1.g;
import o1.i;

public class a
  implements l3.a
{
  public void a(Context paramContext, long paramLong)
  {
    if (!com.miui.calendar.limit.a.c(paramContext))
    {
      z.h("Cal:D:LimitAlarm", "doNotify(): reminder setting OFF");
      return;
    }
    Object localObject1 = com.miui.calendar.limit.a.i(paramContext);
    LimitSchema localLimitSchema = com.miui.calendar.limit.a.j(paramContext, (String)localObject1);
    if ((localLimitSchema != null) && (!TextUtils.isEmpty(localLimitSchema.desc)) && (!localLimitSchema.getHasNotify(paramContext)) && (localLimitSchema.getReminderMillis(paramContext) == paramLong) && (j.q(paramContext)))
    {
      NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
      Object localObject2 = PendingIntent.getActivity(paramContext, 0, Utils.c0(paramContext, "来自通知"), 201326592);
      localObject2 = i.g(paramContext).setContentTitle(paramContext.getString(2131886820)).setContentText(localLimitSchema.getNotificationText(paramContext)).setSmallIcon(2131232441).setContentIntent((PendingIntent)localObject2).setAutoCancel(true).setShowWhen(true).setPriority(1).setSound(g.f(paramContext)).build();
      HashMap localHashMap = new HashMap();
      Calendar localCalendar = Calendar.getInstance();
      localHashMap.put("minute", String.valueOf(localCalendar.get(11) * 60 + localCalendar.get(12)));
      localHashMap.put("city", localObject1);
      localHashMap.put("car_number", b2.a.c(paramContext, "preferences_limit_car_number", "0"));
      g0.e("limit_notify", localHashMap);
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("doNotify(): id:");
      ((StringBuilder)localObject1).append(localLimitSchema.hashCode());
      ((StringBuilder)localObject1).append(", notification:");
      ((StringBuilder)localObject1).append(localObject2);
      z.h("Cal:D:LimitAlarm", ((StringBuilder)localObject1).toString());
      localNotificationManager.notify(localLimitSchema.hashCode(), (Notification)localObject2);
      localLimitSchema.setHasNotify(paramContext);
    }
  }
  
  public long b(Context paramContext, long paramLong)
  {
    if (!com.miui.calendar.limit.a.c(paramContext))
    {
      z.h("Cal:D:LimitAlarm", "getNextNotifyMillis(): reminder setting OFF");
      return -1L;
    }
    String str = com.miui.calendar.limit.a.i(paramContext);
    Object localObject = com.miui.calendar.limit.a.h(paramContext, str);
    if ((localObject != null) && (((List)localObject).size() != 0))
    {
      str = b2.a.c(paramContext, "preferences_limit_car_number", "0");
      localObject = ((List)localObject).iterator();
      long l1 = -1L;
      while (((Iterator)localObject).hasNext())
      {
        LimitSchema localLimitSchema = (LimitSchema)((Iterator)localObject).next();
        try
        {
          if (!TextUtils.isEmpty(localLimitSchema.number))
          {
            boolean bool = Pattern.matches(localLimitSchema.number, str);
            if ((bool) && (!localLimitSchema.getHasNotify(paramContext)))
            {
              long l2 = localLimitSchema.getReminderMillis(paramContext);
              if ((l2 > paramLong) && ((l1 == -1L) || (l2 < l1))) {
                l1 = l2;
              }
            }
          }
        }
        catch (Exception localException)
        {
          z.d("Cal:D:LimitAlarm", "getNextNotifyMillis()", localException);
        }
      }
      if (l1 > 0L)
      {
        paramContext = new StringBuilder();
        paramContext.append("getNextNotifyMillis() nextNotifyTime=");
        paramContext.append(Utils.T(l1));
        z.h("Cal:D:LimitAlarm", paramContext.toString());
      }
      else
      {
        z.h("Cal:D:LimitAlarm", "getNextNotifyMillis() no upcoming reminder");
      }
      return l1;
    }
    paramContext = new StringBuilder();
    paramContext.append("getNextNotifyMillis() no limit data for city:");
    paramContext.append(str);
    z.m("Cal:D:LimitAlarm", paramContext.toString());
    return -1L;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     e4.a
 * JD-Core Version:    0.7.0.1
 */