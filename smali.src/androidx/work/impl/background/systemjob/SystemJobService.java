package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.Service;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Context;
import android.os.BaseBundle;
import android.os.Build.VERSION;
import android.text.TextUtils;
import androidx.work.WorkerParameters.a;
import androidx.work.k;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import q0.b;
import q0.d;
import q0.i;

public class SystemJobService
  extends JobService
  implements b
{
  private static final String c = k.f("SystemJobService");
  private i a;
  private final Map<String, JobParameters> b = new HashMap();
  
  private static String a(JobParameters paramJobParameters)
  {
    try
    {
      paramJobParameters = paramJobParameters.getExtras();
      if ((paramJobParameters != null) && (paramJobParameters.containsKey("EXTRA_WORK_SPEC_ID")))
      {
        paramJobParameters = paramJobParameters.getString("EXTRA_WORK_SPEC_ID");
        return paramJobParameters;
      }
    }
    catch (NullPointerException paramJobParameters)
    {
      label27:
      break label27;
    }
    return null;
  }
  
  public void c(String paramString, boolean paramBoolean)
  {
    k.c().a(c, String.format("%s executed on JobScheduler", new Object[] { paramString }), new Throwable[0]);
    synchronized (this.b)
    {
      paramString = (JobParameters)this.b.remove(paramString);
      if (paramString != null) {
        jobFinished(paramString, paramBoolean);
      }
      return;
    }
  }
  
  public void onCreate()
  {
    super.onCreate();
    try
    {
      i locali = i.n(getApplicationContext());
      this.a = locali;
      locali.p().d(this);
    }
    catch (IllegalStateException localIllegalStateException)
    {
      if (!Application.class.equals(getApplication().getClass())) {
        break label60;
      }
    }
    k.c().h(c, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.", new Throwable[0]);
    return;
    label60:
    throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().");
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    i locali = this.a;
    if (locali != null) {
      locali.p().i(this);
    }
  }
  
  public boolean onStartJob(JobParameters paramJobParameters)
  {
    if (this.a == null)
    {
      k.c().a(c, "WorkManager is not initialized; requesting retry.", new Throwable[0]);
      jobFinished(paramJobParameters, true);
      return false;
    }
    String str = a(paramJobParameters);
    if (TextUtils.isEmpty(str))
    {
      k.c().b(c, "WorkSpec id not found!", new Throwable[0]);
      return false;
    }
    synchronized (this.b)
    {
      if (this.b.containsKey(str))
      {
        k.c().a(c, String.format("Job is already being executed by SystemJobService: %s", new Object[] { str }), new Throwable[0]);
        return false;
      }
      k.c().a(c, String.format("onStartJob for %s", new Object[] { str }), new Throwable[0]);
      this.b.put(str, paramJobParameters);
      int i = Build.VERSION.SDK_INT;
      ??? = new WorkerParameters.a();
      if (paramJobParameters.getTriggeredContentUris() != null) {
        ((WorkerParameters.a)???).b = Arrays.asList(paramJobParameters.getTriggeredContentUris());
      }
      if (paramJobParameters.getTriggeredContentAuthorities() != null) {
        ((WorkerParameters.a)???).a = Arrays.asList(paramJobParameters.getTriggeredContentAuthorities());
      }
      if (i >= 28) {
        ((WorkerParameters.a)???).c = paramJobParameters.getNetwork();
      }
      this.a.y(str, (WorkerParameters.a)???);
      return true;
    }
  }
  
  public boolean onStopJob(JobParameters arg1)
  {
    if (this.a == null)
    {
      k.c().a(c, "WorkManager is not initialized; requesting retry.", new Throwable[0]);
      return true;
    }
    String str = a(???);
    if (TextUtils.isEmpty(str))
    {
      k.c().b(c, "WorkSpec id not found!", new Throwable[0]);
      return false;
    }
    k.c().a(c, String.format("onStopJob for %s", new Object[] { str }), new Throwable[0]);
    synchronized (this.b)
    {
      this.b.remove(str);
      this.a.A(str);
      return this.a.p().f(str) ^ true;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.impl.background.systemjob.SystemJobService
 * JD-Core Version:    0.7.0.1
 */