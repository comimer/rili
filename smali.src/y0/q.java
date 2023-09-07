package y0;

import androidx.work.k;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

public class q
{
  private static final String f = k.f("WorkTimer");
  private final ThreadFactory a;
  private final ScheduledExecutorService b;
  final Map<String, c> c;
  final Map<String, b> d;
  final Object e;
  
  public q()
  {
    a locala = new a();
    this.a = locala;
    this.c = new HashMap();
    this.d = new HashMap();
    this.e = new Object();
    this.b = Executors.newSingleThreadScheduledExecutor(locala);
  }
  
  public void a()
  {
    if (!this.b.isShutdown()) {
      this.b.shutdownNow();
    }
  }
  
  public void b(String paramString, long paramLong, b paramb)
  {
    synchronized (this.e)
    {
      k.c().a(f, String.format("Starting timer for %s", new Object[] { paramString }), new Throwable[0]);
      c(paramString);
      c localc = new y0/q$c;
      localc.<init>(this, paramString);
      this.c.put(paramString, localc);
      this.d.put(paramString, paramb);
      this.b.schedule(localc, paramLong, TimeUnit.MILLISECONDS);
      return;
    }
  }
  
  public void c(String paramString)
  {
    synchronized (this.e)
    {
      if ((c)this.c.remove(paramString) != null)
      {
        k.c().a(f, String.format("Stopping timer for %s", new Object[] { paramString }), new Throwable[0]);
        this.d.remove(paramString);
      }
      return;
    }
  }
  
  class a
    implements ThreadFactory
  {
    private int a = 0;
    
    a() {}
    
    public Thread newThread(Runnable paramRunnable)
    {
      paramRunnable = Executors.defaultThreadFactory().newThread(paramRunnable);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("WorkManager-WorkTimer-thread-");
      localStringBuilder.append(this.a);
      paramRunnable.setName(localStringBuilder.toString());
      this.a += 1;
      return paramRunnable;
    }
  }
  
  public static abstract interface b
  {
    public abstract void a(String paramString);
  }
  
  public static class c
    implements Runnable
  {
    private final q a;
    private final String b;
    
    c(q paramq, String paramString)
    {
      this.a = paramq;
      this.b = paramString;
    }
    
    public void run()
    {
      synchronized (this.a.e)
      {
        if ((c)this.a.c.remove(this.b) != null)
        {
          q.b localb = (q.b)this.a.d.remove(this.b);
          if (localb != null) {
            localb.a(this.b);
          }
        }
        else
        {
          k.c().a("WrkTimerRunnable", String.format("Timer with %s is already marked as complete.", new Object[] { this.b }), new Throwable[0]);
        }
        return;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y0.q
 * JD-Core Version:    0.7.0.1
 */