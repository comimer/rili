package androidx.core.app;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;

@TargetApi(26)
public class z
  extends JobServiceEngine
  implements j.b
{
  final j a;
  final Object b = new Object();
  JobParameters c;
  
  z(j paramj)
  {
    super(paramj);
    this.a = paramj;
  }
  
  public IBinder a()
  {
    return getBinder();
  }
  
  public j.d b()
  {
    synchronized (this.b)
    {
      Object localObject2 = this.c;
      if (localObject2 == null) {
        return null;
      }
      JobWorkItem localJobWorkItem;
      try
      {
        localObject2 = ((JobParameters)localObject2).dequeueWork();
      }
      catch (SecurityException localSecurityException)
      {
        com.miui.calendar.util.z.f("Cal:D:SafeJobServiceEngineImpl", "dequeueWork", localSecurityException);
        localJobWorkItem = null;
      }
      if (localJobWorkItem != null)
      {
        localJobWorkItem.getIntent().setExtrasClassLoader(this.a.getClassLoader());
        return new a(localJobWorkItem);
      }
      return null;
    }
  }
  
  public boolean onStartJob(JobParameters paramJobParameters)
  {
    this.c = paramJobParameters;
    this.a.e(false);
    return true;
  }
  
  public boolean onStopJob(JobParameters arg1)
  {
    boolean bool = this.a.b();
    synchronized (this.b)
    {
      this.c = null;
      return bool;
    }
  }
  
  final class a
    implements j.d
  {
    final JobWorkItem a;
    
    a(JobWorkItem paramJobWorkItem)
    {
      this.a = paramJobWorkItem;
    }
    
    public void a()
    {
      synchronized (z.this.b)
      {
        JobParameters localJobParameters = z.this.c;
        if (localJobParameters != null) {
          try
          {
            localJobParameters.completeWork(this.a);
          }
          catch (SecurityException localSecurityException)
          {
            com.miui.calendar.util.z.f("Cal:D:SafeJobServiceEngineImpl", "WrapperWorkItem.complete", localSecurityException);
          }
        }
        return;
      }
    }
    
    public Intent getIntent()
    {
      return this.a.getIntent();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.app.z
 * JD-Core Version:    0.7.0.1
 */