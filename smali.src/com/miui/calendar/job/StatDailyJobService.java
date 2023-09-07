package com.miui.calendar.job;

import android.content.Context;
import android.provider.CalendarContract.Calendars;
import android.provider.CalendarContract.Events;
import android.text.TextUtils;
import com.miui.calendar.util.DaysOffUtils;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.p0;
import com.miui.calendar.util.p0.b;
import com.miui.calendar.util.p0.c;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class StatDailyJobService
  extends a
{
  public StatDailyJobService()
  {
    super(e());
  }
  
  public static d4.a e()
  {
    d4.a locala = new d4.a();
    locala.a = StatDailyJobService.class;
    locala.b = 14;
    locala.c = 86400000L;
    locala.d = 86400000L;
    locala.e = 7200000L;
    locala.f = "stat_daily";
    locala.g = "last_stat_daily_job_millis";
    locala.h = "Cal:D:StatDailyJobService";
    return locala;
  }
  
  private static void f(Context paramContext)
  {
    try
    {
      Object localObject1 = i(paramContext);
      ArrayList localArrayList = new java/util/ArrayList;
      localArrayList.<init>();
      Object localObject2 = ((p0.b)localObject1).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (p0.c)((Iterator)localObject2).next();
        if (localObject3 != null)
        {
          localObject1 = new com/miui/calendar/job/StatDailyJobService$b;
          ((b)localObject1).<init>(null);
          ((b)localObject1).a = ((p0.c)localObject3).e(0).intValue();
          ((b)localObject1).b = ((p0.c)localObject3).c(1);
          localObject3 = ((p0.c)localObject3).c(2);
          ((b)localObject1).c = ((String)localObject3);
          if ((!TextUtils.isEmpty((CharSequence)localObject3)) && (((((b)localObject1).c.equals("LOCAL")) && (!TextUtils.isEmpty(((b)localObject1).b)) && (((b)localObject1).b.equals("account_name_local"))) || (((b)localObject1).c.equals("com.xiaomi")))) {
            localArrayList.add(localObject1);
          }
        }
      }
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      Object localObject3 = new java/lang/StringBuilder;
      ((StringBuilder)localObject3).<init>();
      for (int i = 0; i < localArrayList.size(); i++)
      {
        localObject1 = (b)localArrayList.get(i);
        if (localObject1 != null)
        {
          if (i == 0) {
            ((StringBuilder)localObject2).append("(");
          }
          ((StringBuilder)localObject2).append("calendar_id =");
          ((StringBuilder)localObject2).append(((b)localObject1).a);
          ((StringBuilder)localObject3).append("calendar_id !=");
          ((StringBuilder)localObject3).append(((b)localObject1).a);
          if (i != localArrayList.size() - 1) {
            localObject1 = " OR ";
          } else {
            localObject1 = ") ";
          }
          ((StringBuilder)localObject2).append((String)localObject1);
          if (i != localArrayList.size() - 1) {
            localObject1 = " AND ";
          } else {
            localObject1 = " ";
          }
          ((StringBuilder)localObject3).append((String)localObject1);
        }
      }
      ((StringBuilder)localObject2).append("AND hasExtendedProperties =?");
      i = p0.d(paramContext.getApplicationContext()).u(CalendarContract.Events.CONTENT_URI).s(((StringBuilder)localObject3).toString()).r(new String[] { "_id" }).t(new Class[] { Integer.class }).j();
      localObject1 = new java/util/HashMap;
      ((HashMap)localObject1).<init>();
      ((Map)localObject1).put("other_account_agenda", g(i));
      ((Map)localObject1).put("agenda", g(j(paramContext, ((StringBuilder)localObject2).toString(), 0)));
      ((Map)localObject1).put("credit", g(j(paramContext, ((StringBuilder)localObject2).toString(), 3)));
      ((Map)localObject1).put("flight", g(j(paramContext, ((StringBuilder)localObject2).toString(), 11)));
      ((Map)localObject1).put("train", g(j(paramContext, ((StringBuilder)localObject2).toString(), 12)));
      ((Map)localObject1).put("electricity_bill", g(j(paramContext, ((StringBuilder)localObject2).toString(), 13)));
      ((Map)localObject1).put("gas_bill", g(j(paramContext, ((StringBuilder)localObject2).toString(), 14)));
      ((Map)localObject1).put("hotel", g(j(paramContext, ((StringBuilder)localObject2).toString(), 15)));
      ((Map)localObject1).put("loan", g(j(paramContext, ((StringBuilder)localObject2).toString(), 16)));
      ((Map)localObject1).put("movie", g(j(paramContext, ((StringBuilder)localObject2).toString(), 17)));
      g0.e("agenda_count", (Map)localObject1);
      return;
    }
    finally {}
  }
  
  private static String g(int paramInt)
  {
    if (paramInt == 0) {
      return "0";
    }
    if ((paramInt > 0) && (paramInt <= 10)) {
      return "0-10";
    }
    if ((paramInt > 10) && (paramInt <= 50)) {
      return "10-50";
    }
    if ((paramInt > 50) && (paramInt <= 100)) {
      return "50-100";
    }
    return ">100";
  }
  
  public static void h(Context paramContext)
  {
    z.a("Cal:D:StatDailyJobService", "executeDailyMiStatJob()");
    g0.h("days_off_version", DaysOffUtils.g(paramContext).h());
    new Thread(new a()).start();
  }
  
  private static p0.b i(Context paramContext)
  {
    return p0.d(paramContext.getApplicationContext()).u(CalendarContract.Calendars.CONTENT_URI).r(new String[] { "_id", "account_name", "account_type" }).t(new Class[] { Integer.class, String.class, String.class }).i();
  }
  
  private static int j(Context paramContext, String paramString, int paramInt)
  {
    if (TextUtils.isEmpty(paramString)) {
      return 0;
    }
    return p0.d(paramContext.getApplicationContext()).u(CalendarContract.Events.CONTENT_URI).s(paramString).o(new String[] { String.valueOf(paramInt) }).r(new String[] { "_id" }).t(new Class[] { Integer.class }).j();
  }
  
  /* Error */
  void c(Context paramContext, android.app.job.JobParameters paramJobParameters)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 313	com/miui/calendar/util/z0:n	(Landroid/content/Context;)Z
    //   4: ifeq +7 -> 11
    //   7: aload_1
    //   8: invokestatic 315	com/miui/calendar/job/StatDailyJobService:h	(Landroid/content/Context;)V
    //   11: aload_0
    //   12: aload_2
    //   13: invokevirtual 318	com/miui/calendar/job/a:a	(Landroid/app/job/JobParameters;)V
    //   16: goto +20 -> 36
    //   19: astore_1
    //   20: goto +17 -> 37
    //   23: astore_1
    //   24: ldc 59
    //   26: ldc_w 320
    //   29: aload_1
    //   30: invokestatic 323	com/miui/calendar/util/z:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   33: goto -22 -> 11
    //   36: return
    //   37: aload_0
    //   38: aload_2
    //   39: invokevirtual 318	com/miui/calendar/job/a:a	(Landroid/app/job/JobParameters;)V
    //   42: aload_1
    //   43: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	44	0	this	StatDailyJobService
    //   0	44	1	paramContext	Context
    //   0	44	2	paramJobParameters	android.app.job.JobParameters
    // Exception table:
    //   from	to	target	type
    //   0	11	19	finally
    //   24	33	19	finally
    //   0	11	23	java/lang/Exception
  }
  
  class a
    implements Runnable
  {
    a() {}
    
    public void run()
    {
      try
      {
        StatDailyJobService.d(StatDailyJobService.this);
      }
      catch (Exception localException)
      {
        z.d("Cal:D:StatDailyJobService", "calculateEventCount exception", localException);
      }
    }
  }
  
  private static class b
  {
    int a;
    String b;
    String c;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.job.StatDailyJobService
 * JD-Core Version:    0.7.0.1
 */