package com.xiaomi.onetrack.c;

import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;

public class a
{
  private static final String a = "BroadcastExecutor";
  private static String b = "onetrack_broadcast";
  private static Handler c;
  
  public static void a()
  {
    if (c == null) {
      try
      {
        if (c == null)
        {
          Object localObject1 = new java/lang/StringBuilder;
          ((StringBuilder)localObject1).<init>();
          ((StringBuilder)localObject1).append("initIfNeeded : ");
          ((StringBuilder)localObject1).append(Thread.currentThread().getId());
          Log.d("BroadcastExecutor", ((StringBuilder)localObject1).toString());
          localObject1 = new android/os/HandlerThread;
          ((HandlerThread)localObject1).<init>(b);
          ((Thread)localObject1).start();
          Handler localHandler = new android/os/Handler;
          localHandler.<init>(((HandlerThread)localObject1).getLooper());
          c = localHandler;
        }
      }
      finally {}
    }
  }
  
  public static void a(Runnable paramRunnable)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("BroadcastExecutor : ");
    localStringBuilder.append(Thread.currentThread().getId());
    Log.d("BroadcastExecutor", localStringBuilder.toString());
    a();
    c.post(paramRunnable);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.c.a
 * JD-Core Version:    0.7.0.1
 */