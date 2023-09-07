package com.xiaomi.onetrack.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.xiaomi.onetrack.f.a;
import com.xiaomi.onetrack.util.i;
import java.util.concurrent.atomic.AtomicBoolean;

public class m
  extends Handler
{
  private static final String a = "UploadTimer";
  private static final int b = 5000;
  private static final int c = 15000;
  private static final int d = 1200000;
  private final int e = 1000;
  private final int f = 10000;
  private final int g = 1200000;
  private int h = 10000;
  private AtomicBoolean i = new AtomicBoolean(false);
  private BroadcastReceiver j = new n(this);
  
  public m(Looper paramLooper)
  {
    super(paramLooper);
    a(a.b());
  }
  
  private void a(int paramInt, long paramLong)
  {
    removeMessages(paramInt);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("will post msg, prio=");
    localStringBuilder.append(paramInt);
    localStringBuilder.append(", delay=");
    localStringBuilder.append(paramLong);
    com.xiaomi.onetrack.util.p.a("UploadTimer", localStringBuilder.toString());
    sendEmptyMessageDelayed(paramInt, paramLong);
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
      paramContext.registerReceiver(this.j, (IntentFilter)localObject, null, this);
    }
    catch (Exception paramContext)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("registerNetReceiver: ");
      ((StringBuilder)localObject).append(paramContext);
      com.xiaomi.onetrack.util.p.a("UploadTimer", ((StringBuilder)localObject).toString());
    }
  }
  
  private void b()
  {
    if (!q.a().a(2))
    {
      removeMessages(1000);
      int k = this.h * 2;
      this.h = k;
      if (k > 1200000) {
        this.h = 1200000;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("will restart retry msg after ");
      localStringBuilder.append(this.h);
      com.xiaomi.onetrack.util.p.a("UploadTimer", localStringBuilder.toString());
      sendEmptyMessageDelayed(1000, this.h);
    }
    else
    {
      this.h = 10000;
      com.xiaomi.onetrack.util.p.a("UploadTimer", "retry success");
    }
  }
  
  public void a()
  {
    i.a(new p(this));
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    StringBuilder localStringBuilder;
    if (hasMessages(1000))
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("in retry mode, return, prio=");
      localStringBuilder.append(paramInt);
      com.xiaomi.onetrack.util.p.a("UploadTimer", localStringBuilder.toString());
      return;
    }
    if (paramBoolean) {
      removeMessages(paramInt);
    }
    if (!hasMessages(paramInt))
    {
      long l;
      if (paramBoolean) {
        l = 0L;
      } else {
        l = com.xiaomi.onetrack.b.n.a(paramInt);
      }
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("will check prio=");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(", delay=");
      localStringBuilder.append(l);
      com.xiaomi.onetrack.util.p.a("UploadTimer", localStringBuilder.toString());
      a(paramInt, l);
    }
  }
  
  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    if ((com.xiaomi.onetrack.b.n.a()) && (com.xiaomi.onetrack.b.n.c()) && (!com.xiaomi.onetrack.b.n.b()))
    {
      int k = paramMessage.what;
      if (k == 1000)
      {
        b();
        return;
      }
      boolean bool = q.a().a(k);
      paramMessage = new StringBuilder();
      paramMessage.append("handleCheckUpload ret=");
      paramMessage.append(bool);
      paramMessage.append(", prio=");
      paramMessage.append(k);
      com.xiaomi.onetrack.util.p.a("UploadTimer", paramMessage.toString());
      if (!bool)
      {
        com.xiaomi.onetrack.util.p.a("UploadTimer", "handleCheckUpload failed, will check if need to send retry msg");
        if (!hasMessages(1000))
        {
          sendEmptyMessageDelayed(1000, this.h);
          paramMessage = new StringBuilder();
          paramMessage.append("fire retry timer after ");
          paramMessage.append(this.h);
          com.xiaomi.onetrack.util.p.a("UploadTimer", paramMessage.toString());
        }
      }
      return;
    }
    paramMessage = new StringBuilder();
    paramMessage.append("不用处理消息, available=");
    paramMessage.append(com.xiaomi.onetrack.b.n.a());
    paramMessage.append(", 是否有网=");
    paramMessage.append(com.xiaomi.onetrack.b.n.c());
    paramMessage.append(", 数据库是否为空=");
    paramMessage.append(com.xiaomi.onetrack.b.n.b());
    com.xiaomi.onetrack.util.p.a("UploadTimer", paramMessage.toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.c.m
 * JD-Core Version:    0.7.0.1
 */