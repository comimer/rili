package com.miui.calendar.job;

import android.app.job.JobParameters;
import android.content.Context;
import com.miui.calendar.util.DaysOffUtils;
import com.miui.calendar.util.DaysOffUtils.a;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0;

public class DaysOffJobService
  extends a
{
  public DaysOffJobService()
  {
    super(d());
  }
  
  public static d4.a d()
  {
    d4.a locala = new d4.a();
    locala.a = DaysOffJobService.class;
    locala.b = 13;
    locala.c = 432000000L;
    locala.d = 604800000L;
    locala.e = 21600000L;
    locala.f = "daysoff";
    locala.g = "last_daysoff_job_millis";
    locala.h = "Cal:D:DaysOffJobService";
    return locala;
  }
  
  protected void c(Context paramContext, JobParameters paramJobParameters)
  {
    try
    {
      if (z0.n(paramContext))
      {
        DaysOffUtils localDaysOffUtils = DaysOffUtils.g(paramContext);
        a locala = new com/miui/calendar/job/DaysOffJobService$a;
        locala.<init>(this, paramJobParameters);
        localDaysOffUtils.c(paramContext, "job", locala);
      }
      else
      {
        a(paramJobParameters);
      }
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:DaysOffJobService", "startJob", paramContext);
      a(paramJobParameters);
    }
  }
  
  class a
    implements DaysOffUtils.a
  {
    a(JobParameters paramJobParameters) {}
    
    public void a(int paramInt)
    {
      DaysOffJobService.this.a(this.a);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.job.DaysOffJobService
 * JD-Core Version:    0.7.0.1
 */