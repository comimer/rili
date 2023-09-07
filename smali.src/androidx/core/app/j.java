package androidx.core.app;

import android.app.Service;
import android.app.job.JobInfo;
import android.app.job.JobInfo.Builder;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.IBinder;
import java.util.ArrayList;
import java.util.HashMap;

@Deprecated
public abstract class j
  extends Service
{
  static final Object h = new Object();
  static final HashMap<ComponentName, g> i = new HashMap();
  b a;
  g b;
  a c;
  boolean d = false;
  boolean e = false;
  boolean f = false;
  final ArrayList<c> g = null;
  
  public static void c(Context paramContext, ComponentName paramComponentName, int paramInt, Intent paramIntent)
  {
    if (paramIntent != null) {
      synchronized (h)
      {
        paramContext = f(paramContext, paramComponentName, true, paramInt);
        paramContext.b(paramInt);
        paramContext.a(paramIntent);
        return;
      }
    }
    throw new IllegalArgumentException("work must not be null");
  }
  
  public static void d(Context paramContext, Class<?> paramClass, int paramInt, Intent paramIntent)
  {
    c(paramContext, new ComponentName(paramContext, paramClass), paramInt, paramIntent);
  }
  
  static g f(Context paramContext, ComponentName paramComponentName, boolean paramBoolean, int paramInt)
  {
    HashMap localHashMap = i;
    g localg = (g)localHashMap.get(paramComponentName);
    Object localObject = localg;
    if (localg == null) {
      if (paramBoolean)
      {
        localObject = new f(paramContext, paramComponentName, paramInt);
        localHashMap.put(paramComponentName, localObject);
      }
      else
      {
        throw new IllegalArgumentException("Can't be here without a job id");
      }
    }
    return localObject;
  }
  
  d a()
  {
    ??? = this.a;
    if (??? != null) {
      return ((b)???).b();
    }
    synchronized (this.g)
    {
      if (this.g.size() > 0)
      {
        d locald = (d)this.g.remove(0);
        return locald;
      }
      return null;
    }
  }
  
  boolean b()
  {
    a locala = this.c;
    if (locala != null) {
      locala.cancel(this.d);
    }
    this.e = true;
    return h();
  }
  
  void e(boolean paramBoolean)
  {
    if (this.c == null)
    {
      this.c = new a();
      g localg = this.b;
      if ((localg != null) && (paramBoolean)) {
        localg.d();
      }
      this.c.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
  }
  
  protected abstract void g(Intent paramIntent);
  
  public boolean h()
  {
    return true;
  }
  
  void i()
  {
    ArrayList localArrayList1 = this.g;
    if (localArrayList1 != null) {
      try
      {
        this.c = null;
        ArrayList localArrayList2 = this.g;
        if ((localArrayList2 != null) && (localArrayList2.size() > 0)) {
          e(false);
        } else if (!this.f) {
          this.b.c();
        }
      }
      finally {}
    }
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    paramIntent = this.a;
    if (paramIntent != null) {
      return paramIntent.a();
    }
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    this.a = new e(this);
    this.b = null;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    ArrayList localArrayList = this.g;
    if (localArrayList != null) {
      try
      {
        this.f = true;
        this.b.c();
      }
      finally {}
    }
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    if (this.g != null)
    {
      this.b.e();
      synchronized (this.g)
      {
        ArrayList localArrayList2 = this.g;
        c localc = new androidx/core/app/j$c;
        if (paramIntent == null) {
          paramIntent = new Intent();
        }
        localc.<init>(this, paramIntent, paramInt2);
        localArrayList2.add(localc);
        e(true);
        return 3;
      }
    }
    return 2;
  }
  
  final class a
    extends AsyncTask<Void, Void, Void>
  {
    a() {}
    
    protected Void a(Void... paramVarArgs)
    {
      for (;;)
      {
        paramVarArgs = j.this.a();
        if (paramVarArgs == null) {
          break;
        }
        j.this.g(paramVarArgs.getIntent());
        paramVarArgs.a();
      }
      return null;
    }
    
    protected void b(Void paramVoid)
    {
      j.this.i();
    }
    
    protected void c(Void paramVoid)
    {
      j.this.i();
    }
  }
  
  static abstract interface b
  {
    public abstract IBinder a();
    
    public abstract j.d b();
  }
  
  final class c
    implements j.d
  {
    final Intent a;
    final int b;
    
    c(Intent paramIntent, int paramInt)
    {
      this.a = paramIntent;
      this.b = paramInt;
    }
    
    public void a()
    {
      j.this.stopSelf(this.b);
    }
    
    public Intent getIntent()
    {
      return this.a;
    }
  }
  
  static abstract interface d
  {
    public abstract void a();
    
    public abstract Intent getIntent();
  }
  
  static final class e
    extends JobServiceEngine
    implements j.b
  {
    final j a;
    final Object b = new Object();
    JobParameters c;
    
    e(j paramj)
    {
      super();
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
        localObject2 = ((JobParameters)localObject2).dequeueWork();
        if (localObject2 != null)
        {
          ((JobWorkItem)localObject2).getIntent().setExtrasClassLoader(this.a.getClassLoader());
          return new a((JobWorkItem)localObject2);
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
        synchronized (j.e.this.b)
        {
          JobParameters localJobParameters = j.e.this.c;
          if (localJobParameters != null) {
            localJobParameters.completeWork(this.a);
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
  
  static final class f
    extends j.g
  {
    private final JobInfo d;
    private final JobScheduler e;
    
    f(Context paramContext, ComponentName paramComponentName, int paramInt)
    {
      super();
      b(paramInt);
      this.d = new JobInfo.Builder(paramInt, this.a).setOverrideDeadline(0L).build();
      this.e = ((JobScheduler)paramContext.getApplicationContext().getSystemService("jobscheduler"));
    }
    
    void a(Intent paramIntent)
    {
      this.e.enqueue(this.d, new JobWorkItem(paramIntent));
    }
  }
  
  static abstract class g
  {
    final ComponentName a;
    boolean b;
    int c;
    
    g(ComponentName paramComponentName)
    {
      this.a = paramComponentName;
    }
    
    abstract void a(Intent paramIntent);
    
    void b(int paramInt)
    {
      if (!this.b)
      {
        this.b = true;
        this.c = paramInt;
      }
      else
      {
        if (this.c != paramInt) {
          break label29;
        }
      }
      return;
      label29:
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Given job ID ");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(" is different than previous ");
      localStringBuilder.append(this.c);
      throw new IllegalArgumentException(localStringBuilder.toString());
    }
    
    public void c() {}
    
    public void d() {}
    
    public void e() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.app.j
 * JD-Core Version:    0.7.0.1
 */