package com.miui.calendar.job;

import android.app.job.JobParameters;
import android.content.Context;
import android.provider.CalendarContract.Calendars;
import android.text.TextUtils;
import com.android.calendar.settings.j;
import com.miui.calendar.shift.ShiftSchema;
import com.miui.calendar.sms.SmartMessage.OntologyType;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.p0;
import com.miui.calendar.util.p0.b;
import com.miui.calendar.util.p0.c;
import com.miui.calendar.util.z;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import k4.d;
import s1.c;

public class StatJobService
  extends a
{
  public StatJobService()
  {
    super(d());
  }
  
  public static d4.a d()
  {
    d4.a locala = new d4.a();
    locala.a = StatJobService.class;
    locala.b = 4;
    locala.c = 1296000000L;
    locala.d = 2592000000L;
    locala.e = 21600000L;
    locala.f = "stat";
    locala.g = "last_stat_job_millis";
    locala.h = "Cal:D:StatJobService";
    return locala;
  }
  
  public static void e(Context paramContext)
  {
    z.h("Cal:D:StatJobService", "executeMiStatJob()");
    g0.h("birthday_count_created", r1.a.z(paramContext));
    g0.h("birthday_count_imported", r1.a.A(paramContext));
    g0.h("birthday_count_today_new", r1.a.x(paramContext));
    g0.h("anniversary_count", s1.a.b(paramContext));
    g0.h("countdown_count", c.b(paramContext));
    boolean bool1 = TextUtils.isEmpty(b2.a.c(paramContext, "preferences_fortune_name", ""));
    String str = "disabled";
    if (bool1) {
      localObject1 = "disabled";
    } else {
      localObject1 = "enabled";
    }
    g0.i("fortune_set_ba_zi", (String)localObject1);
    bool1 = j.m(paramContext);
    boolean bool2 = j.n(paramContext);
    if (bool1)
    {
      if (bool2) {
        g0.i("setting_reminder", "闹钟提醒");
      } else {
        g0.i("setting_reminder", "通知栏提醒");
      }
    }
    else {
      g0.i("setting_reminder", "不提醒");
    }
    if (j.l(paramContext)) {
      localObject1 = "enabled";
    } else {
      localObject1 = "disabled";
    }
    g0.i("setting_chinese_calendar", (String)localObject1);
    if (j.k(paramContext)) {
      localObject1 = "enabled";
    } else {
      localObject1 = "disabled";
    }
    g0.i("enable_yiji", (String)localObject1);
    if (j.g(paramContext)) {
      localObject1 = "enabled";
    } else {
      localObject1 = "disabled";
    }
    g0.i("setting_content_promotion", (String)localObject1);
    if (j.i(paramContext)) {
      localObject1 = "enabled";
    } else {
      localObject1 = "disabled";
    }
    g0.i("setting_holiday_display", (String)localObject1);
    if (j.j(paramContext)) {
      localObject1 = "enabled";
    } else {
      localObject1 = "disabled";
    }
    g0.i("setting_holiday_reminder", (String)localObject1);
    if (j.r(paramContext)) {
      localObject1 = "enabled";
    } else {
      localObject1 = "disabled";
    }
    g0.i("setting_weather_service", (String)localObject1);
    if (j.e(paramContext)) {
      localObject1 = "enabled";
    } else {
      localObject1 = "disabled";
    }
    g0.i("setting_ai_time_parse", (String)localObject1);
    if (j.f(paramContext)) {
      localObject1 = "enabled";
    } else {
      localObject1 = "disabled";
    }
    g0.i("setting_chinese_calendar", (String)localObject1);
    Object localObject1 = com.miui.calendar.limit.a.i(paramContext);
    if (!TextUtils.isEmpty((CharSequence)localObject1)) {
      g0.i("limit_setting_city", (String)localObject1);
    }
    if (com.miui.calendar.limit.a.c(paramContext)) {
      localObject1 = "enabled";
    } else {
      localObject1 = "disabled";
    }
    g0.i("limit_setting_reminder", (String)localObject1);
    Object localObject2 = d.c(paramContext);
    if (localObject2 != null)
    {
      localObject1 = str;
      if (((ShiftSchema)localObject2).isRemind) {
        localObject1 = "enabled";
      }
      g0.i("shift_setting_reminder", (String)localObject1);
    }
    localObject1 = p0.d(paramContext).u(CalendarContract.Calendars.CONTENT_URI).r(new String[] { "account_name", "account_type" });
    int i = 0;
    localObject1 = ((p0)localObject1).t(new Class[] { String.class, String.class }).i();
    if ((localObject1 != null) && (!((p0.b)localObject1).isEmpty())) {
      try
      {
        localObject1 = ((p0.b)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (p0.c)((Iterator)localObject1).next();
          str = ((p0.c)localObject2).c(0);
          localObject2 = ((p0.c)localObject2).c(1);
          if (!TextUtils.isEmpty((CharSequence)localObject2))
          {
            HashMap localHashMap = new java/util/HashMap;
            localHashMap.<init>();
            localHashMap.put("type", localObject2);
            if ((!TextUtils.isEmpty(str)) && (str.contains("@"))) {
              localHashMap.put("name", str.substring(str.indexOf("@"), str.length()));
            }
            g0.e("calendar_account", localHashMap);
          }
        }
        localObject2 = SmartMessage.OntologyType.values();
      }
      catch (Exception localException)
      {
        z.d("Cal:D:StatJobService", "executeMiStatJob()", localException);
      }
    }
    int j = localObject2.length;
    while (i < j)
    {
      str = localObject2[i];
      if (!str.equals(SmartMessage.OntologyType.UNKNOWN))
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("setting_sms_v2_");
        localStringBuilder.append(str);
        g0.i(localStringBuilder.toString(), String.valueOf(j.a(paramContext, str)));
      }
      i++;
    }
  }
  
  /* Error */
  void c(Context paramContext, JobParameters paramJobParameters)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 341	com/miui/calendar/util/y:i	(Landroid/content/Context;)Z
    //   4: ifeq +29 -> 33
    //   7: aload_1
    //   8: invokestatic 344	com/miui/calendar/util/z0:n	(Landroid/content/Context;)Z
    //   11: ifeq +22 -> 33
    //   14: aload_1
    //   15: invokestatic 346	com/miui/calendar/job/StatJobService:e	(Landroid/content/Context;)V
    //   18: new 6	com/miui/calendar/job/StatJobService$a
    //   21: astore_1
    //   22: aload_1
    //   23: aload_0
    //   24: aload_2
    //   25: invokespecial 349	com/miui/calendar/job/StatJobService$a:<init>	(Lcom/miui/calendar/job/StatJobService;Landroid/app/job/JobParameters;)V
    //   28: aload_0
    //   29: aload_1
    //   30: invokestatic 354	com/android/calendar/settings/i:b	(Landroid/content/Context;Lcom/miui/calendar/job/StatJobService$b;)V
    //   33: aload_0
    //   34: aload_2
    //   35: invokevirtual 357	com/miui/calendar/job/a:a	(Landroid/app/job/JobParameters;)V
    //   38: goto +20 -> 58
    //   41: astore_1
    //   42: goto +17 -> 59
    //   45: astore_1
    //   46: ldc 58
    //   48: ldc_w 359
    //   51: aload_1
    //   52: invokestatic 298	com/miui/calendar/util/z:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   55: goto -22 -> 33
    //   58: return
    //   59: aload_0
    //   60: aload_2
    //   61: invokevirtual 357	com/miui/calendar/job/a:a	(Landroid/app/job/JobParameters;)V
    //   64: aload_1
    //   65: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	66	0	this	StatJobService
    //   0	66	1	paramContext	Context
    //   0	66	2	paramJobParameters	JobParameters
    // Exception table:
    //   from	to	target	type
    //   0	33	41	finally
    //   46	55	41	finally
    //   0	33	45	java/lang/Exception
  }
  
  class a
    implements StatJobService.b
  {
    a(JobParameters paramJobParameters) {}
    
    public void a()
    {
      StatJobService.this.a(this.a);
    }
  }
  
  public static abstract interface b
  {
    public abstract void a();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.job.StatJobService
 * JD-Core Version:    0.7.0.1
 */