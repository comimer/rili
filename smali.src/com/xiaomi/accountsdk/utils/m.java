package com.xiaomi.accountsdk.utils;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public class m
{
  public static ExecutorService a(int paramInt, String paramString)
  {
    return Executors.newFixedThreadPool(paramInt, new a(paramString));
  }
  
  class a
    implements ThreadFactory
  {
    private final AtomicInteger a = new AtomicInteger(1);
    
    a() {}
    
    public Thread newThread(Runnable paramRunnable)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(m.this);
      localStringBuilder.append(" #");
      localStringBuilder.append(this.a.getAndIncrement());
      return new Thread(paramRunnable, localStringBuilder.toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.utils.m
 * JD-Core Version:    0.7.0.1
 */