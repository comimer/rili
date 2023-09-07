package z3;

import android.content.Context;
import com.android.calendar.event.e0;
import com.miui.calendar.job.RemoteJobService.g;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import okhttp3.b0;
import u1.b;
import u1.d;

@Metadata(bv={}, d1={""}, d2={"Landroid/content/Context;", "context", "Lkotlin/u;", "f", "d", "g", "i", "j", "Lcom/miui/calendar/job/RemoteJobService$g;", "listener", "Ltc/a;", "Lokhttp3/b0;", "k", "l", "c", "app_chinaNormalRelease"}, k=2, mv={1, 7, 1})
public final class j
{
  private static tc.a<b0> a;
  private static tc.a<b0> b;
  
  private static final void c(Context paramContext)
  {
    z.a("Cal:D:HolidaySyncHelper", "clearHolidayCalendars()");
    if (b2.a.d(paramContext, "have_delete_holiday_calendar", false))
    {
      z.a("Cal:D:HolidaySyncHelper", "clearHolidayCalendars(): has delete, return");
      return;
    }
    Iterator localIterator = e.a.values().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("clearHolidayCalendars(): delete calendar, name:");
      localStringBuilder.append(str);
      z.h("Cal:D:HolidaySyncHelper", localStringBuilder.toString());
      e0.a(paramContext, "account_name_local", "LOCAL", str);
    }
    b2.a.l(paramContext, "have_delete_holiday_calendar", true);
  }
  
  public static final void d(Context paramContext)
  {
    z.a("Cal:D:HolidaySyncHelper", "startSyncHoliday");
    paramContext = new WeakReference(paramContext);
    i();
    new Thread(new i(paramContext)).start();
  }
  
  private static final void e(WeakReference paramWeakReference)
  {
    r.f(paramWeakReference, "$weakContext");
    a = k((Context)paramWeakReference.get(), null);
  }
  
  public static final void f(Context paramContext)
  {
    d(paramContext);
    g(paramContext);
  }
  
  public static final void g(Context paramContext)
  {
    z.a("Cal:D:HolidaySyncHelper", "startSyncHoliday");
    paramContext = new WeakReference(paramContext);
    j();
    new Thread(new h(paramContext)).start();
  }
  
  private static final void h(WeakReference paramWeakReference)
  {
    r.f(paramWeakReference, "$weakContext");
    b = m((Context)paramWeakReference.get(), null, 2, null);
  }
  
  public static final void i()
  {
    z.a("Cal:D:HolidaySyncHelper", "stopSyncHoliday()");
    tc.a locala = a;
    if (locala != null)
    {
      r.c(locala);
      locala.cancel();
      a = null;
    }
  }
  
  public static final void j()
  {
    z.a("Cal:D:HolidaySyncHelper", "stopSyncReminder()");
    tc.a locala = b;
    if (locala != null)
    {
      r.c(locala);
      locala.cancel();
      b = null;
    }
  }
  
  public static final tc.a<b0> k(Context paramContext, RemoteJobService.g paramg)
  {
    z.a("Cal:D:HolidaySyncHelper", "syncHoliday()");
    if (!z0.n(paramContext))
    {
      z.a("Cal:D:HolidaySyncHelper", "syncHoliday(): user has NOT agree, return");
      if (paramg != null) {
        paramg.a();
      }
      return null;
    }
    c(paramContext);
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("start(): region:");
    ((StringBuilder)localObject1).append(DeviceUtils.t());
    ((StringBuilder)localObject1).append(", locale:");
    ((StringBuilder)localObject1).append(Locale.getDefault());
    z.h("Cal:D:HolidaySyncHelper", ((StringBuilder)localObject1).toString());
    localObject1 = d.c(paramContext, false, null, null, 14, null);
    long l1 = Calendar.getInstance().get(1);
    long l2 = Calendar.getInstance().get(2);
    Object localObject2 = new HashMap();
    ((Map)localObject2).put("year", String.valueOf(l1));
    ((Map)localObject2).put("month", String.valueOf(l2));
    ((Map)localObject2).put("festivalVersion", String.valueOf(b2.a.b(paramContext, "key_holiday_server_festival_version", 0L)));
    Map localMap = l0.a(paramContext, (HashMap)localObject2);
    localObject2 = d.f(null, 1, null);
    paramg = new p(paramContext, paramg);
    if (y.l(paramContext)) {
      paramContext = ((u1.a)localObject2).s((String)localObject1, localMap);
    } else {
      paramContext = ((u1.a)localObject2).h((String)localObject1, localMap);
    }
    if (paramContext != null) {
      paramContext.q(new b(paramg));
    }
    return paramContext;
  }
  
  public static final tc.a<b0> l(Context paramContext, RemoteJobService.g paramg)
  {
    z.a("Cal:D:HolidaySyncHelper", "syncHolidayReminderAsync()");
    if (!z0.n(paramContext))
    {
      z.a("Cal:D:HolidaySyncHelper", "syncHolidayReminderAsync(): user has NOT agree, return");
      return null;
    }
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("start(): region:");
    ((StringBuilder)localObject1).append(DeviceUtils.t());
    ((StringBuilder)localObject1).append(", locale:");
    ((StringBuilder)localObject1).append(Locale.getDefault());
    z.h("Cal:D:HolidaySyncHelper", ((StringBuilder)localObject1).toString());
    localObject1 = d.c(paramContext, false, null, null, 14, null);
    Object localObject2 = new HashMap();
    Object localObject3 = new SimpleDateFormat("yyyyMMdd").format(new Date());
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("param day : ");
    localStringBuilder.append((String)localObject3);
    z.a("Cal:D:HolidaySyncHelper", localStringBuilder.toString());
    r.e(localObject3, "day");
    ((Map)localObject2).put("startDay", localObject3);
    localObject3 = l0.a(paramContext, (HashMap)localObject2);
    localObject2 = d.f(null, 1, null);
    paramContext = new o(paramContext, paramg);
    paramg = ((u1.a)localObject2).k((String)localObject1, (Map)localObject3);
    if (paramg != null) {
      paramg.q(new b(paramContext));
    }
    return paramg;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z3.j
 * JD-Core Version:    0.7.0.1
 */