package com.miui.calendar.holiday;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import com.android.calendar.event.e0;
import com.miui.calendar.job.RemoteJobService.g;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import okhttp3.b0;
import u1.b;
import u1.b.a;
import z3.e;

public class HolidayService
  extends androidx.core.app.y
{
  private tc.a<b0> j;
  
  public static void j(Context paramContext)
  {
    z.a("Cal:D:HolidayService", "clearHolidayCalendars()");
    if (b2.a.d(paramContext, "have_delete_holiday_calendar", false))
    {
      z.a("Cal:D:HolidayService", "clearHolidayCalendars(): has delete, return");
      return;
    }
    Iterator localIterator = e.a.values().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("clearHolidayCalendars(): delete calendar, name:");
      localStringBuilder.append(str);
      z.h("Cal:D:HolidayService", localStringBuilder.toString());
      e0.a(paramContext, "account_name_local", "LOCAL", str);
    }
    b2.a.l(paramContext, "have_delete_holiday_calendar", true);
  }
  
  private void k()
  {
    z.h("Cal:D:HolidayService", "stop()");
    tc.a locala = this.j;
    if (locala != null)
    {
      locala.cancel();
      this.j = null;
    }
  }
  
  public static tc.a<b0> l(Context paramContext, RemoteJobService.g paramg)
  {
    z.a("Cal:D:HolidayService", "syncHoliday()");
    if (!z0.n(paramContext))
    {
      z.a("Cal:D:HolidayService", "syncHoliday(): user has NOT agree, return");
      if (paramg != null) {
        paramg.a();
      }
      return null;
    }
    j(paramContext);
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("start(): region:");
    ((StringBuilder)localObject1).append(DeviceUtils.t());
    ((StringBuilder)localObject1).append(", locale:");
    ((StringBuilder)localObject1).append(Locale.getDefault());
    z.h("Cal:D:HolidayService", ((StringBuilder)localObject1).toString());
    localObject1 = u1.d.a(paramContext);
    long l1 = Calendar.getInstance().get(1);
    long l2 = Calendar.getInstance().get(2);
    Object localObject2 = new HashMap();
    ((HashMap)localObject2).put("year", String.valueOf(l1));
    ((HashMap)localObject2).put("month", String.valueOf(l2));
    ((HashMap)localObject2).put("festivalVersion", String.valueOf(b2.a.b(paramContext, "key_holiday_server_festival_version", 0L)));
    localObject2 = l0.a(paramContext, (HashMap)localObject2);
    u1.a locala = u1.d.d();
    paramg = new b(paramContext, paramg);
    if (com.miui.calendar.util.y.l(paramContext)) {
      paramContext = locala.s((String)localObject1, (Map)localObject2);
    } else {
      paramContext = locala.h((String)localObject1, (Map)localObject2);
    }
    paramContext.q(new b(paramg));
    return paramContext;
  }
  
  protected void g(Intent paramIntent)
  {
    if (paramIntent == null)
    {
      z.n("Cal:D:HolidayService", "intent is null");
      return;
    }
    String str = paramIntent.getAction();
    paramIntent = new StringBuilder();
    paramIntent.append("onHandleIntent(): action:");
    paramIntent.append(str);
    z.h("Cal:D:HolidayService", paramIntent.toString());
    if ("com.android.calendar.SYNC_HOLIDAY".equals(str)) {
      this.j = l(this, null);
    } else if ("action_stop_sync".equals(str)) {
      k();
    } else {
      z.m("Cal:D:HolidayService", "onHandleIntent(): NO action match");
    }
  }
  
  private static class a
    extends AsyncTask<Void, Integer, String>
  {
    private WeakReference<Context> a;
    private String b;
    
    public a(Context paramContext, String paramString)
    {
      this.a = new WeakReference(paramContext);
      this.b = paramString;
    }
    
    protected String a(Void... paramVarArgs)
    {
      if (this.a.get() != null) {
        z3.d.h((Context)this.a.get()).p((Context)this.a.get(), this.b);
      }
      return null;
    }
  }
  
  private static class b
    implements b.a
  {
    private WeakReference<Context> a;
    private WeakReference<RemoteJobService.g> b;
    
    public b(Context paramContext, RemoteJobService.g paramg)
    {
      this.a = new WeakReference(paramContext);
      this.b = new WeakReference(paramg);
    }
    
    /* Error */
    public void a(org.json.JSONObject paramJSONObject)
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 25	com/miui/calendar/holiday/HolidayService$b:a	Ljava/lang/ref/WeakReference;
      //   4: invokevirtual 37	java/lang/ref/Reference:get	()Ljava/lang/Object;
      //   7: checkcast 39	android/content/Context
      //   10: astore_2
      //   11: aload_2
      //   12: ifnull +4 -> 16
      //   15: return
      //   16: aconst_null
      //   17: astore_3
      //   18: aload_1
      //   19: ldc 41
      //   21: invokevirtual 47	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
      //   24: invokestatic 51	com/miui/calendar/util/l0:b	(Ljava/lang/String;)Ljava/lang/String;
      //   27: astore 4
      //   29: aload 4
      //   31: invokestatic 57	s4/d:d	(Ljava/lang/String;)V
      //   34: new 59	com/miui/calendar/holiday/HolidayService$a
      //   37: astore_1
      //   38: aload_1
      //   39: aload_2
      //   40: aload 4
      //   42: invokespecial 62	com/miui/calendar/holiday/HolidayService$a:<init>	(Landroid/content/Context;Ljava/lang/String;)V
      //   45: aload_1
      //   46: getstatic 68	android/os/AsyncTask:THREAD_POOL_EXECUTOR	Ljava/util/concurrent/Executor;
      //   49: aconst_null
      //   50: invokevirtual 72	android/os/AsyncTask:executeOnExecutor	(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
      //   53: pop
      //   54: aload_0
      //   55: getfield 27	com/miui/calendar/holiday/HolidayService$b:b	Ljava/lang/ref/WeakReference;
      //   58: invokevirtual 37	java/lang/ref/Reference:get	()Ljava/lang/Object;
      //   61: ifnull +82 -> 143
      //   64: aload_0
      //   65: getfield 27	com/miui/calendar/holiday/HolidayService$b:b	Ljava/lang/ref/WeakReference;
      //   68: invokevirtual 37	java/lang/ref/Reference:get	()Ljava/lang/Object;
      //   71: checkcast 74	com/miui/calendar/job/RemoteJobService$g
      //   74: invokeinterface 76 1 0
      //   79: goto +64 -> 143
      //   82: astore_1
      //   83: aload 4
      //   85: astore_3
      //   86: goto +8 -> 94
      //   89: astore_1
      //   90: goto +54 -> 144
      //   93: astore_1
      //   94: new 78	java/lang/StringBuilder
      //   97: astore 4
      //   99: aload 4
      //   101: invokespecial 79	java/lang/StringBuilder:<init>	()V
      //   104: aload 4
      //   106: ldc 81
      //   108: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   111: pop
      //   112: aload 4
      //   114: aload_3
      //   115: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   118: pop
      //   119: ldc 87
      //   121: aload 4
      //   123: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   126: aload_1
      //   127: invokestatic 97	com/miui/calendar/util/z:f	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   130: aload_0
      //   131: getfield 27	com/miui/calendar/holiday/HolidayService$b:b	Ljava/lang/ref/WeakReference;
      //   134: invokevirtual 37	java/lang/ref/Reference:get	()Ljava/lang/Object;
      //   137: ifnull +6 -> 143
      //   140: goto -76 -> 64
      //   143: return
      //   144: aload_0
      //   145: getfield 27	com/miui/calendar/holiday/HolidayService$b:b	Ljava/lang/ref/WeakReference;
      //   148: invokevirtual 37	java/lang/ref/Reference:get	()Ljava/lang/Object;
      //   151: ifnull +18 -> 169
      //   154: aload_0
      //   155: getfield 27	com/miui/calendar/holiday/HolidayService$b:b	Ljava/lang/ref/WeakReference;
      //   158: invokevirtual 37	java/lang/ref/Reference:get	()Ljava/lang/Object;
      //   161: checkcast 74	com/miui/calendar/job/RemoteJobService$g
      //   164: invokeinterface 76 1 0
      //   169: aload_1
      //   170: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	171	0	this	b
      //   0	171	1	paramJSONObject	org.json.JSONObject
      //   10	30	2	localContext	Context
      //   17	98	3	localObject1	Object
      //   27	95	4	localObject2	Object
      // Exception table:
      //   from	to	target	type
      //   29	54	82	java/lang/Exception
      //   18	29	89	finally
      //   29	54	89	finally
      //   94	130	89	finally
      //   18	29	93	java/lang/Exception
    }
    
    public void b(Exception paramException)
    {
      z.d("Cal:D:HolidayService", "ResponseListener:", paramException);
      if (this.b.get() != null) {
        ((RemoteJobService.g)this.b.get()).a();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.holiday.HolidayService
 * JD-Core Version:    0.7.0.1
 */