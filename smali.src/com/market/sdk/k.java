package com.market.sdk;

import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.DiscardOldestPolicy;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class k
{
  public static ThreadPoolExecutor a(int paramInt1, int paramInt2, int paramInt3, String paramString)
  {
    paramString = new ThreadPoolExecutor(paramInt1, paramInt1, 60L, TimeUnit.SECONDS, new ArrayBlockingQueue(paramInt2), new a(paramString, paramInt3), new ThreadPoolExecutor.DiscardOldestPolicy());
    paramString.allowCoreThreadTimeOut(true);
    return paramString;
  }
  
  private static class a
    implements ThreadFactory
  {
    private static final AtomicInteger e = new AtomicInteger(1);
    private final ThreadGroup a;
    private final AtomicInteger b = new AtomicInteger(1);
    private final String c;
    private final int d;
    
    public a(String paramString, int paramInt)
    {
      Object localObject = System.getSecurityManager();
      if (localObject != null) {
        localObject = ((SecurityManager)localObject).getThreadGroup();
      } else {
        localObject = Thread.currentThread().getThreadGroup();
      }
      this.a = ((ThreadGroup)localObject);
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Po");
      ((StringBuilder)localObject).append(e.getAndIncrement());
      ((StringBuilder)localObject).append("-");
      ((StringBuilder)localObject).append(paramString);
      ((StringBuilder)localObject).append("-");
      this.c = ((StringBuilder)localObject).toString();
      this.d = paramInt;
    }
    
    public Thread newThread(Runnable paramRunnable)
    {
      ThreadGroup localThreadGroup = this.a;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.c);
      localStringBuilder.append(this.b.getAndIncrement());
      paramRunnable = new Thread(localThreadGroup, paramRunnable, localStringBuilder.toString(), 0L);
      if (paramRunnable.isDaemon()) {
        paramRunnable.setDaemon(false);
      }
      int i = paramRunnable.getPriority();
      int j = this.d;
      if (i != j) {
        paramRunnable.setPriority(j);
      }
      return paramRunnable;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.k
 * JD-Core Version:    0.7.0.1
 */