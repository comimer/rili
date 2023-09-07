package com.miui.calendar.job;

import android.app.job.JobParameters;
import android.content.Context;
import com.miui.calendar.limit.a.a;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0;

public class LimitJobService
  extends a
{
  public LimitJobService()
  {
    super(d());
  }
  
  public static d4.a d()
  {
    d4.a locala = new d4.a();
    locala.a = LimitJobService.class;
    locala.b = 2;
    locala.c = 172800000L;
    locala.d = 259200000L;
    locala.e = 21600000L;
    locala.f = "limit";
    locala.g = "last_limit_job_millis";
    locala.h = "Cal:D:LimitJobService";
    return locala;
  }
  
  protected void c(Context paramContext, JobParameters paramJobParameters)
  {
    try
    {
      if ((y.i(paramContext)) && (z0.n(paramContext)))
      {
        a locala = new com/miui/calendar/job/LimitJobService$a;
        locala.<init>(this, paramJobParameters);
        com.miui.calendar.limit.a.n(paramContext, locala, "job_scheduler");
      }
      else
      {
        a(paramJobParameters);
      }
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:LimitJobService", "startJob", paramContext);
      a(paramJobParameters);
    }
  }
  
  public boolean onStopJob(JobParameters paramJobParameters)
  {
    com.miui.calendar.limit.a.m(this);
    return super.onStopJob(paramJobParameters);
  }
  
  class a
    implements a.a
  {
    a(JobParameters paramJobParameters) {}
    
    public void a()
    {
      LimitJobService.this.a(this.a);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.job.LimitJobService
 * JD-Core Version:    0.7.0.1
 */