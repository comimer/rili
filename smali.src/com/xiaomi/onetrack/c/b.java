package com.xiaomi.onetrack.c;

import android.os.Handler;
import android.os.HandlerThread;

public class b
{
  private static final String a = "DbExecutor";
  private static String b = "onetrack_db";
  private static Handler c;
  
  private static void a()
  {
    if (c == null) {
      try
      {
        if (c == null)
        {
          HandlerThread localHandlerThread = new android/os/HandlerThread;
          localHandlerThread.<init>(b);
          localHandlerThread.start();
          Handler localHandler = new android/os/Handler;
          localHandler.<init>(localHandlerThread.getLooper());
          c = localHandler;
        }
      }
      finally {}
    }
  }
  
  public static void a(Runnable paramRunnable)
  {
    a();
    c.post(paramRunnable);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.c.b
 * JD-Core Version:    0.7.0.1
 */