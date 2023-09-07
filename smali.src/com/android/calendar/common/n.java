package com.android.calendar.common;

import android.os.Process;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public class n
  implements ThreadFactory
{
  private final int a;
  private final AtomicInteger b = new AtomicInteger();
  private final String c;
  
  public n(String paramString, int paramInt)
  {
    this.c = paramString;
    this.a = paramInt;
  }
  
  public Thread newThread(Runnable paramRunnable)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.c);
    localStringBuilder.append('-');
    localStringBuilder.append(this.b.getAndIncrement());
    return new a(paramRunnable, localStringBuilder.toString());
  }
  
  class a
    extends Thread
  {
    a(Runnable paramRunnable, String paramString)
    {
      super(paramString);
    }
    
    public void run()
    {
      Process.setThreadPriority(n.a(n.this));
      super.run();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.n
 * JD-Core Version:    0.7.0.1
 */