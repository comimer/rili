package com.miui.calendar.util;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class e
{
  public static final ThreadPoolExecutor a;
  private static final int b;
  
  static
  {
    int i = Runtime.getRuntime().availableProcessors();
    b = i;
    ThreadPoolExecutor localThreadPoolExecutor = new ThreadPoolExecutor(Math.max(2, Math.min(i - 1, 4)), i * 2 + 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(128), new a(), new b());
    a = localThreadPoolExecutor;
    localThreadPoolExecutor.allowCoreThreadTimeOut(true);
  }
  
  public static void a(Runnable paramRunnable)
  {
    if (paramRunnable == null) {
      return;
    }
    try
    {
      a.execute(paramRunnable);
    }
    catch (Exception paramRunnable)
    {
      z.d("Cal:D:BackgroundUtils", "doInBackground", paramRunnable);
    }
  }
  
  class a
    implements ThreadFactory
  {
    private final AtomicInteger a = new AtomicInteger(1);
    
    public Thread newThread(Runnable paramRunnable)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("AsyncTask #");
      localStringBuilder.append(this.a.getAndIncrement());
      return new Thread(paramRunnable, localStringBuilder.toString());
    }
  }
  
  class b
    implements RejectedExecutionHandler
  {
    public void rejectedExecution(Runnable paramRunnable, ThreadPoolExecutor paramThreadPoolExecutor)
    {
      z.c("Cal:D:BackgroundUtils", "rejectedExecution");
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.e
 * JD-Core Version:    0.7.0.1
 */