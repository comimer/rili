package i;

import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public class c
  extends d
{
  private final Object a = new Object();
  private final ExecutorService b = Executors.newFixedThreadPool(4, new a());
  private volatile Handler c;
  
  private static Handler e(Looper paramLooper)
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return b.a(paramLooper);
    }
    try
    {
      Handler localHandler = (Handler)Handler.class.getDeclaredConstructor(new Class[] { Looper.class, Handler.Callback.class, Boolean.TYPE }).newInstance(new Object[] { paramLooper, null, Boolean.TRUE });
      return localHandler;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      return new Handler(paramLooper);
    }
    catch (IllegalAccessException|InstantiationException|NoSuchMethodException localIllegalAccessException) {}
    return new Handler(paramLooper);
  }
  
  public void a(Runnable paramRunnable)
  {
    this.b.execute(paramRunnable);
  }
  
  public boolean c()
  {
    boolean bool;
    if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void d(Runnable paramRunnable)
  {
    if (this.c == null) {
      synchronized (this.a)
      {
        if (this.c == null) {
          this.c = e(Looper.getMainLooper());
        }
      }
    }
    this.c.post(paramRunnable);
  }
  
  class a
    implements ThreadFactory
  {
    private final AtomicInteger a = new AtomicInteger(0);
    
    a() {}
    
    public Thread newThread(Runnable paramRunnable)
    {
      paramRunnable = new Thread(paramRunnable);
      paramRunnable.setName(String.format("arch_disk_io_%d", new Object[] { Integer.valueOf(this.a.getAndIncrement()) }));
      return paramRunnable;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     i.c
 * JD-Core Version:    0.7.0.1
 */