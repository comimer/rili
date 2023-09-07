package com.xiaomi.onetrack.util;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class i
{
  private static ThreadPoolExecutor a;
  private static int b = Runtime.getRuntime().availableProcessors() + 1;
  
  static
  {
    int i = b;
    ThreadPoolExecutor localThreadPoolExecutor = new ThreadPoolExecutor(i, i, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue());
    a = localThreadPoolExecutor;
    localThreadPoolExecutor.allowCoreThreadTimeOut(true);
  }
  
  public static void a(Runnable paramRunnable)
  {
    try
    {
      a.execute(paramRunnable);
      label7:
      return;
    }
    finally
    {
      break label7;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.i
 * JD-Core Version:    0.7.0.1
 */