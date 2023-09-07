package com.xiaomi.onetrack.a.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.xiaomi.onetrack.b.n;
import com.xiaomi.onetrack.f.a;
import com.xiaomi.onetrack.util.p;

public class b
{
  private static final String a = "AdMonitorUploadTimer";
  private static final int b = 10;
  private static volatile b c;
  private a d;
  private BroadcastReceiver e = new c(this);
  
  private b()
  {
    HandlerThread localHandlerThread = new HandlerThread("onetrack_ad_monitor_uploader");
    localHandlerThread.start();
    this.d = new a(localHandlerThread.getLooper());
    a(a.a());
  }
  
  public static b a()
  {
    if (c == null) {
      try
      {
        if (c == null)
        {
          b localb = new com/xiaomi/onetrack/a/c/b;
          localb.<init>();
          c = localb;
        }
      }
      finally {}
    }
    return c;
  }
  
  private void a(Context paramContext)
  {
    if (paramContext == null) {
      return;
    }
    try
    {
      localObject = new android/content/IntentFilter;
      ((IntentFilter)localObject).<init>();
      ((IntentFilter)localObject).addAction("android.net.conn.CONNECTIVITY_CHANGE");
      paramContext.registerReceiver(this.e, (IntentFilter)localObject);
    }
    catch (Exception paramContext)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("registerNetReceiver: ");
      ((StringBuilder)localObject).append(paramContext);
      p.a("AdMonitorUploadTimer", ((StringBuilder)localObject).toString());
    }
  }
  
  public void b()
  {
    this.d.a(0);
  }
  
  private static final class a
    extends Handler
  {
    public a(Looper paramLooper)
    {
      super();
    }
    
    private void a(int paramInt, long paramLong)
    {
      removeMessages(paramInt);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("will post msg, prio=");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(", delay=");
      localStringBuilder.append(paramLong);
      p.a("AdMonitorUploadTimer", localStringBuilder.toString());
      sendEmptyMessageDelayed(paramInt, paramLong);
    }
    
    public void a()
    {
      removeCallbacksAndMessages(null);
    }
    
    public void a(int paramInt)
    {
      StringBuilder localStringBuilder;
      if (!hasMessages(paramInt))
      {
        long l = n.a(paramInt);
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("will check prio=");
        localStringBuilder.append(paramInt);
        localStringBuilder.append(", delay=");
        localStringBuilder.append(l);
        p.a("AdMonitorUploadTimer", localStringBuilder.toString());
        a(paramInt, l);
      }
      else
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("has message　prio=");
        localStringBuilder.append(paramInt);
        p.a("AdMonitorUploadTimer", localStringBuilder.toString());
      }
    }
    
    public void handleMessage(Message paramMessage)
    {
      super.handleMessage(paramMessage);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("AdMonitorUploadTimer.handleMessage, msg.what=");
      localStringBuilder.append(paramMessage.what);
      p.a("AdMonitorUploadTimer", localStringBuilder.toString());
      if (paramMessage.what == 10)
      {
        boolean bool = com.xiaomi.onetrack.g.c.a();
        paramMessage = new StringBuilder();
        paramMessage.append("AdMonitorUploadTimer netReceiver, 网络是否可用=");
        paramMessage.append(bool);
        p.a("AdMonitorUploadTimer", paramMessage.toString());
        if (bool) {
          a(0, 1000L);
        }
        return;
      }
      d.a();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.a.c.b
 * JD-Core Version:    0.7.0.1
 */