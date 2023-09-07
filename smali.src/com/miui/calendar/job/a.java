package com.miui.calendar.job;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Context;
import android.text.TextUtils;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.z;
import d4.b;
import java.util.Calendar;
import java.util.HashMap;

public abstract class a
  extends JobService
{
  private d4.a a;
  
  public a(d4.a parama)
  {
    this.a = parama;
  }
  
  private void b(JobParameters paramJobParameters)
  {
    if (TextUtils.isEmpty(this.a.f)) {
      return;
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("strvalue", String.valueOf(paramJobParameters.isOverrideDeadlineExpired()));
    Calendar localCalendar = Calendar.getInstance();
    long l = b.a(this, this.a.g);
    int i;
    if (l == -1L) {
      i = -1;
    } else {
      i = (int)((localCalendar.getTimeInMillis() - l) / 3600000L);
    }
    paramJobParameters = this.a.h;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("startJobTask(): start job after ");
    localStringBuilder.append(i);
    localStringBuilder.append(" hour(s)(-1 for the first time)");
    z.h(paramJobParameters, localStringBuilder.toString());
    b.f(this, localCalendar.getTimeInMillis(), this.a.g);
    localHashMap.put("interval", String.valueOf(i));
    localHashMap.put("hour_of_day", String.valueOf(Calendar.getInstance().get(11)));
    paramJobParameters = new StringBuilder();
    paramJobParameters.append("job_execute_v2_");
    paramJobParameters.append(this.a.f);
    g0.e(paramJobParameters.toString(), localHashMap);
  }
  
  protected void a(JobParameters paramJobParameters)
  {
    z.h(this.a.h, "finishJob()");
    jobFinished(paramJobParameters, false);
    b.g(this, this.a, true);
  }
  
  abstract void c(Context paramContext, JobParameters paramJobParameters);
  
  public boolean onStartJob(JobParameters paramJobParameters)
  {
    String str = this.a.h;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onStartJob(): isOverrideDeadlineExpired:");
    localStringBuilder.append(paramJobParameters.isOverrideDeadlineExpired());
    z.h(str, localStringBuilder.toString());
    b(paramJobParameters);
    c(getApplicationContext(), paramJobParameters);
    return true;
  }
  
  public boolean onStopJob(JobParameters paramJobParameters)
  {
    z.h(this.a.h, "onStopJob()");
    b.g(this, this.a, true);
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.job.a
 * JD-Core Version:    0.7.0.1
 */