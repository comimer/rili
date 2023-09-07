package com.miui.calendar.shift;

import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.text.format.DateUtils;
import com.android.calendar.common.Utils;
import com.android.calendar.settings.j;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.z;
import java.util.Calendar;
import java.util.Formatter;
import java.util.Locale;
import java.util.TimeZone;
import k4.d;
import o1.g;
import o1.i;

public class a
  implements l3.a
{
  public void a(Context paramContext, long paramLong)
  {
    ShiftSchema localShiftSchema = d.c(paramContext);
    if (!localShiftSchema.isRemind)
    {
      z.h("Cal:D:ShiftAlarm", "doNotify(): reminder setting OFF");
      return;
    }
    if ((localShiftSchema.getTodayReminderTimeMillis() == paramLong) && (j.q(paramContext)))
    {
      NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
      PendingIntent localPendingIntent = PendingIntent.getActivity(paramContext, 0, Utils.d0(paramContext, "来自通知"), 201326592);
      Formatter localFormatter = new Formatter(new StringBuilder(50), Locale.getDefault());
      Object localObject = Calendar.getInstance();
      localFormatter = DateUtils.formatDateRange(paramContext, localFormatter, paramLong, paramLong, 16, ((Calendar)localObject).getTimeZone().getID());
      paramContext = i.g(paramContext).setContentTitle(paramContext.getString(2131887496, new Object[] { s0.q(paramContext, localShiftSchema.getShiftReminderMinutes(paramLong), true), ShiftReminderSchema.a.a(paramContext, localShiftSchema.getShiftType(paramLong)) })).setContentText(paramContext.getString(2131887495, new Object[] { localFormatter.toString(), Integer.valueOf(localShiftSchema.getReminderIndex(paramLong) + 1) })).setSmallIcon(2131232441).setContentIntent(localPendingIntent).setAutoCancel(true).setShowWhen(true).setPriority(1).setSound(g.f(paramContext)).build();
      g0.f("shift_notify", new String[] { "minute", String.valueOf(((Calendar)localObject).get(11) * 60 + ((Calendar)localObject).get(12)) });
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("doNotify(): id:");
      ((StringBuilder)localObject).append(localShiftSchema.hashCode());
      ((StringBuilder)localObject).append(", notification:");
      ((StringBuilder)localObject).append(paramContext);
      z.h("Cal:D:ShiftAlarm", ((StringBuilder)localObject).toString());
      localNotificationManager.notify(localShiftSchema.hashCode(), paramContext);
    }
  }
  
  public long b(Context paramContext, long paramLong)
  {
    if (!d.e(paramContext)) {
      return -1L;
    }
    paramContext = d.c(paramContext);
    if (!paramContext.isRemind)
    {
      z.h("Cal:D:ShiftAlarm", "getNextNotifyMillis(): reminder setting OFF");
      return -1L;
    }
    paramLong = paramContext.getNextNotifyMillis(paramLong);
    if (paramLong == -1L)
    {
      z.h("Cal:D:ShiftAlarm", "getNextNotifyMillis() no upcoming reminder");
    }
    else
    {
      paramContext = new StringBuilder();
      paramContext.append("getNextNotifyMillis() nextNotifyTime=");
      paramContext.append(Utils.T(paramLong));
      z.h("Cal:D:ShiftAlarm", paramContext.toString());
    }
    return paramLong;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.shift.a
 * JD-Core Version:    0.7.0.1
 */