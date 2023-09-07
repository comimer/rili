package com.miui.zeus.landingpage.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public class c
{
  public static ConcurrentHashMap<String, String> e = new ConcurrentHashMap();
  public static c f = null;
  public Context a = h.a();
  public e b;
  public boolean c = false;
  public HashMap<String, b> d = new HashMap();
  
  public static c a()
  {
    if (f == null) {
      try
      {
        if (f == null)
        {
          c localc = new com/miui/zeus/landingpage/sdk/c;
          localc.<init>();
          f = localc;
        }
      }
      finally {}
    }
    return f;
  }
  
  public void a(DownloadListener paramDownloadListener)
  {
    j.a("MiMarketHelper", "registerDownloadListener");
    if (!this.c)
    {
      j.a("MiMarketHelper", "registerMarketReceiver");
      Object localObject1 = new IntentFilter();
      ((IntentFilter)localObject1).addAction("com.xiaomi.market.DOWNLOAD_INSTALL_RESULT");
      localObject2 = new e();
      this.b = ((e)localObject2);
      this.a.registerReceiver((BroadcastReceiver)localObject2, (IntentFilter)localObject1);
      this.c = true;
      if (a.b == null) {
        try
        {
          if (a.b == null)
          {
            localObject2 = new com/miui/zeus/landingpage/sdk/a;
            ((a)localObject2).<init>();
            a.b = (a)localObject2;
          }
        }
        finally {}
      }
      Object localObject3 = a.b;
      localObject3.getClass();
      localObject2 = new IntentFilter();
      ((IntentFilter)localObject2).addAction("android.intent.action.PACKAGE_REMOVED");
      ((IntentFilter)localObject2).addDataScheme("package");
      localObject1 = h.a();
      localObject3 = ((a)localObject3).a;
      if (h.a != null)
      {
        if (h.d == null) {
          try
          {
            if (h.d == null)
            {
              HandlerThread localHandlerThread = new android/os/HandlerThread;
              Object localObject4 = new java/lang/StringBuilder;
              ((StringBuilder)localObject4).<init>();
              ((StringBuilder)localObject4).append("zeus-bg-task-");
              ((StringBuilder)localObject4).append(h.a.getPackageName());
              localHandlerThread.<init>(((StringBuilder)localObject4).toString());
              if (!localHandlerThread.isAlive()) {
                localHandlerThread.start();
              }
              localObject4 = new android/os/Handler;
              ((Handler)localObject4).<init>(localHandlerThread.getLooper());
              h.d = (Handler)localObject4;
            }
          }
          finally {}
        }
        ((Context)localObject1).registerReceiver((BroadcastReceiver)localObject3, (IntentFilter)localObject2, null, h.d);
      }
      else
      {
        throw new IllegalStateException("GlobalHolder should be init before using");
      }
    }
    Object localObject2 = this.b;
    localObject2.getClass();
    if (paramDownloadListener != null) {
      ((e)localObject2).a.add(paramDownloadListener);
    }
  }
  
  public void b(DownloadListener paramDownloadListener)
  {
    j.a("MiMarketHelper", "unRegisterDownloadListener");
    try
    {
      e locale = this.b;
      if (locale != null) {
        locale.a.remove(paramDownloadListener);
      }
    }
    catch (Exception paramDownloadListener)
    {
      j.a("MiMarketHelper", "unRegisterDownloadListener", paramDownloadListener);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.zeus.landingpage.sdk.c
 * JD-Core Version:    0.7.0.1
 */