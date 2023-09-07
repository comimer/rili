package com.xiaomi.onetrack.api;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Process;
import com.miui.analytics.ITrack.Stub;
import com.xiaomi.onetrack.util.p;
import java.util.concurrent.atomic.AtomicBoolean;

class ServiceConnectionManager$1
  implements ServiceConnection
{
  ServiceConnectionManager$1(an paraman) {}
  
  public void onBindingDied(ComponentName paramComponentName)
  {
    try
    {
      an.a(this.a, null);
      an.a(this.a).set(false);
      try
      {
        an.e(this.a).unbindService(an.d(this.a));
      }
      catch (Exception localException)
      {
        paramComponentName = new java/lang/StringBuilder;
        paramComponentName.<init>();
        paramComponentName.append("unbindService error: ");
        paramComponentName.append(localException.toString());
        p.a("ServiceConnectManager", paramComponentName.toString());
      }
      StringBuilder localStringBuilder;
      return;
    }
    finally
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("onBindingDied throwable:");
      localStringBuilder.append(paramComponentName.getMessage());
      p.a("ServiceConnectManager", localStringBuilder.toString());
    }
  }
  
  /* Error */
  public void onNullBinding(ComponentName paramComponentName)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 12	com/xiaomi/onetrack/api/ServiceConnectionManager$1:a	Lcom/xiaomi/onetrack/api/an;
    //   4: aconst_null
    //   5: invokestatic 25	com/xiaomi/onetrack/api/an:a	(Lcom/xiaomi/onetrack/api/an;Lcom/miui/analytics/ITrack;)Lcom/miui/analytics/ITrack;
    //   8: pop
    //   9: aload_0
    //   10: getfield 12	com/xiaomi/onetrack/api/ServiceConnectionManager$1:a	Lcom/xiaomi/onetrack/api/an;
    //   13: invokestatic 28	com/xiaomi/onetrack/api/an:a	(Lcom/xiaomi/onetrack/api/an;)Ljava/util/concurrent/atomic/AtomicBoolean;
    //   16: iconst_0
    //   17: invokevirtual 34	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   20: goto +37 -> 57
    //   23: astore_2
    //   24: new 50	java/lang/StringBuilder
    //   27: dup
    //   28: invokespecial 51	java/lang/StringBuilder:<init>	()V
    //   31: astore_1
    //   32: aload_1
    //   33: ldc 79
    //   35: invokevirtual 57	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: pop
    //   39: aload_1
    //   40: aload_2
    //   41: invokevirtual 76	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   44: invokevirtual 57	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: pop
    //   48: ldc 63
    //   50: aload_1
    //   51: invokevirtual 64	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   54: invokestatic 69	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   57: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	58	0	this	1
    //   0	58	1	paramComponentName	ComponentName
    //   23	18	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   0	20	23	finally
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    try
    {
      paramComponentName = an.a(this.a);
      int i = 0;
      paramComponentName.set(false);
      an.a(this.a, ITrack.Stub.asInterface(paramIBinder));
      an.b(this.a);
      paramComponentName = new java/lang/StringBuilder;
      paramComponentName.<init>();
      paramComponentName.append("onServiceConnected  mConnecting ");
      paramComponentName.append(an.a(this.a));
      paramComponentName.append(" mIOneTrackService ");
      if (an.c(this.a) != null) {
        i = 1;
      }
      paramComponentName.append(i);
      paramComponentName.append(" pid:");
      paramComponentName.append(Process.myPid());
      paramComponentName.append(" tid:");
      paramComponentName.append(Process.myTid());
      p.a("ServiceConnectManager", paramComponentName.toString());
    }
    finally
    {
      paramComponentName = new StringBuilder();
      paramComponentName.append("onServiceConnected throwable:");
      paramComponentName.append(paramIBinder.getMessage());
      p.a("ServiceConnectManager", paramComponentName.toString());
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    try
    {
      an.a(this.a, null);
      paramComponentName = an.a(this.a);
      int i = 0;
      paramComponentName.set(false);
      paramComponentName = new java/lang/StringBuilder;
      paramComponentName.<init>();
      paramComponentName.append("onServiceDisconnected:  mConnecting ");
      paramComponentName.append(an.a(this.a));
      paramComponentName.append(" mIOneTrackService ");
      if (an.c(this.a) != null) {
        i = 1;
      }
      paramComponentName.append(i);
      p.a("ServiceConnectManager", paramComponentName.toString());
    }
    finally
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onServiceDisconnected throwable:");
      localStringBuilder.append(paramComponentName.getMessage());
      p.a("ServiceConnectManager", localStringBuilder.toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.ServiceConnectionManager.1
 * JD-Core Version:    0.7.0.1
 */