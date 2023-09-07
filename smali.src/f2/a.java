package f2;

import android.app.AlarmManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build.VERSION;
import com.android.calendar.common.Utils;
import com.android.calendar.widget.a.b;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.z;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import o1.b;

public class a
{
  private static long a = 21600000L;
  
  public static long a(Context paramContext, com.android.calendar.widget.a parama, long paramLong, String paramString, Class<?> paramClass)
  {
    long l1 = b(parama, paramLong, paramString);
    parama = new StringBuilder();
    parama.append("triggerTime : ");
    parama.append(l1);
    z.a("Cal:D:AlarmManagerUtil", parama.toString());
    long l2 = l1;
    if (l1 < paramLong)
    {
      parama = new StringBuilder();
      parama.append("Encountered bad trigger time ");
      parama.append(e(l1, paramLong));
      z.m("Cal:D:AlarmManagerUtil", parama.toString());
      l2 = 21600000L + paramLong;
    }
    h(paramContext, l2, paramClass);
    parama = new r0(Utils.U(paramContext));
    parama.M();
    if (parama.y(true) != a)
    {
      paramString = new r0(Utils.U(paramContext));
      paramString.D(a);
      paramString.y(true);
      if ((parama.v() != paramString.v()) || (parama.w() != paramString.w())) {
        i(paramContext);
      }
      a = parama.P(true);
    }
    return a;
  }
  
  private static long b(com.android.calendar.widget.a parama, long paramLong, String paramString)
  {
    long l1 = g(paramString);
    paramString = parama.d.iterator();
    while (paramString.hasNext())
    {
      parama = (a.b)paramString.next();
      long l2 = parama.i;
      long l3 = parama.j;
      if (paramLong < l2)
      {
        l2 = Math.min(l1, l2);
      }
      else
      {
        l2 = l1;
        if (paramLong < l3) {
          l2 = Math.min(l1, l3);
        }
      }
      l1 = l2;
      if (l2 - d(paramLong) < 900000L) {
        l1 = d(paramLong) + 60000L;
      }
    }
    return l1;
  }
  
  public static void c(Context paramContext)
  {
    f(paramContext).cancel(d.i(paramContext));
  }
  
  private static long d(long paramLong)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramLong);
    return paramLong - (localCalendar.get(13) * 1000 + localCalendar.get(14));
  }
  
  static String e(long paramLong1, long paramLong2)
  {
    r0 localr0 = new r0();
    localr0.D(paramLong1);
    paramLong2 = paramLong1 - paramLong2;
    if (paramLong2 > 60000L)
    {
      paramLong2 /= 60000L;
      return String.format(Locale.getDefault(), "[%d] %s (%+d mins)", new Object[] { Long.valueOf(paramLong1), localr0.e("HH:mm:ss"), Long.valueOf(paramLong2) });
    }
    paramLong2 /= 1000L;
    return String.format(Locale.getDefault(), "[%d] %s (%+d secs)", new Object[] { Long.valueOf(paramLong1), localr0.e("HH:mm:ss"), Long.valueOf(paramLong2) });
  }
  
  public static AlarmManager f(Context paramContext)
  {
    return (AlarmManager)paramContext.getSystemService("alarm");
  }
  
  private static long g(String paramString)
  {
    r0 localr0 = new r0();
    localr0.M();
    localr0.J(localr0.q() + 1);
    localr0.F(0);
    localr0.H(0);
    localr0.K(0);
    long l = localr0.y(true);
    localr0.L(paramString);
    localr0.M();
    localr0.J(localr0.q() + 1);
    localr0.F(0);
    localr0.H(0);
    localr0.K(0);
    return Math.min(l, localr0.y(true));
  }
  
  public static void h(Context paramContext, long paramLong, Class<?> paramClass)
  {
    AlarmManager localAlarmManager = f(paramContext);
    paramContext = d.h(paramContext, paramClass);
    localAlarmManager.cancel(paramContext);
    z.a("Cal:D:AlarmManagerUtil", "sendUpdateMsgDelay");
    if ((Build.VERSION.SDK_INT >= 31) && (!b.a(localAlarmManager))) {
      z.c("Cal:D:AlarmManagerUtil", "Alarm can not schedule");
    } else {
      localAlarmManager.setExact(0, paramLong, paramContext);
    }
  }
  
  public static void i(Context paramContext)
  {
    z.a("Cal:D:AlarmManagerUtil", "sendMiuiWidgetBroadcast");
    Intent localIntent = new Intent("miui.appwidget.action.APPWIDGET_UPDATE");
    Iterator localIterator = paramContext.getPackageManager().queryBroadcastReceivers(localIntent, 128).iterator();
    while (localIterator.hasNext())
    {
      ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("sendMiuiWidgetBroadcast name: ");
      localStringBuilder.append(localResolveInfo.activityInfo.name);
      z.a("Cal:D:AlarmManagerUtil", localStringBuilder.toString());
      localIntent.setPackage(paramContext.getPackageName());
      localIntent.setClassName(paramContext, localResolveInfo.activityInfo.name);
      paramContext.sendBroadcast(localIntent, null);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f2.a
 * JD-Core Version:    0.7.0.1
 */