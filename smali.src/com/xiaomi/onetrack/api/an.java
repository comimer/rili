package com.xiaomi.onetrack.api;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.miui.analytics.ITrack;
import com.xiaomi.onetrack.Configuration;
import com.xiaomi.onetrack.f.a;
import com.xiaomi.onetrack.util.p;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

public class an
{
  public static final String a = "com.miui.analytics";
  public static final String b = "com.miui.analytics.onetrack.OneTrackService";
  private static final String c = "ServiceConnectManager";
  private static final int g = 1;
  private static final int h = 2;
  private ITrack d;
  private AtomicBoolean e = new AtomicBoolean(false);
  private Context f = a.b();
  private c i = new c(Looper.getMainLooper());
  private ServiceConnection j = new ServiceConnectionManager.1(this);
  private CopyOnWriteArrayList<b> k = new CopyOnWriteArrayList();
  
  private an()
  {
    b();
  }
  
  public static an a()
  {
    return a.a();
  }
  
  private void b()
  {
    p.a("ServiceConnectManager", "ensureService start...");
    if ((!this.e.get()) && (this.d == null))
    {
      c();
    }
    else
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("ensureService mConnecting: ");
      localStringBuilder.append(this.e.get());
      localStringBuilder.append(" mAnalytics: ");
      int m;
      if (this.d == null) {
        m = 0;
      } else {
        m = 1;
      }
      localStringBuilder.append(m);
      p.a("ServiceConnectManager", localStringBuilder.toString());
    }
  }
  
  private void c()
  {
    try
    {
      Object localObject = new android/content/Intent;
      ((Intent)localObject).<init>();
      ((Intent)localObject).setClassName("com.miui.analytics", "com.miui.analytics.onetrack.OneTrackService");
      boolean bool = this.f.bindService((Intent)localObject, this.j, 1);
      if (bool)
      {
        this.e.set(true);
      }
      else
      {
        this.e.set(false);
        this.f.unbindService(this.j);
      }
      localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      ((StringBuilder)localObject).append("bindService:  mConnecting: ");
      ((StringBuilder)localObject).append(this.e);
      ((StringBuilder)localObject).append(" bindResult:");
      ((StringBuilder)localObject).append(bool);
      p.a("ServiceConnectManager", ((StringBuilder)localObject).toString());
    }
    catch (Exception localException1)
    {
      try
      {
        this.e.set(false);
        this.f.unbindService(this.j);
      }
      catch (Exception localException2)
      {
        StringBuilder localStringBuilder2 = new StringBuilder();
        localStringBuilder2.append("bindService e1: ");
        localStringBuilder2.append(localException2.toString());
        Log.d("ServiceConnectManager", localStringBuilder2.toString());
      }
      StringBuilder localStringBuilder1 = new StringBuilder();
      localStringBuilder1.append("bindService e: ");
      localStringBuilder1.append(localException1.toString());
      p.b("ServiceConnectManager", localStringBuilder1.toString());
    }
  }
  
  private void d()
  {
    try
    {
      if (this.d != null)
      {
        this.f.unbindService(this.j);
        this.d = null;
      }
    }
    catch (Exception localException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("unBindService: ");
      localStringBuilder.append(localException.toString());
      p.a("ServiceConnectManager", localStringBuilder.toString());
    }
  }
  
  private void e()
  {
    Iterator localIterator = this.k.iterator();
    while (localIterator.hasNext()) {
      ((b)localIterator.next()).a();
    }
  }
  
  public void a(int paramInt)
  {
    if (paramInt == 2) {
      this.i.sendEmptyMessageDelayed(1, 5000L);
    } else if (this.i.hasMessages(1)) {
      this.i.removeMessages(1);
    }
  }
  
  public void a(b paramb)
  {
    if (!this.k.contains(paramb)) {
      this.k.add(paramb);
    }
  }
  
  public boolean a(String paramString1, String paramString2, Configuration paramConfiguration, boolean paramBoolean)
  {
    Object localObject = this.d;
    bool = false;
    if (localObject != null) {}
    try
    {
      try
      {
        localObject = paramConfiguration.getAppId();
        if (paramBoolean) {
          localObject = paramConfiguration.getAdEventAppId();
        }
        this.d.trackEvent((String)localObject, a.e(), paramString1, paramString2);
        paramBoolean = true;
      }
      catch (RemoteException paramString2)
      {
        d();
        this.e.set(false);
        paramString1 = new StringBuilder();
        paramString1.append("track error: ");
        paramString1.append(paramString2.toString());
        p.a("ServiceConnectManager", paramString1.toString());
        paramBoolean = bool;
      }
      this.i.sendEmptyMessage(2);
      paramBoolean = bool;
    }
    catch (NullPointerException paramString1)
    {
      for (;;)
      {
        paramBoolean = bool;
      }
    }
    return paramBoolean;
  }
  
  public void b(String paramString1, String paramString2, Configuration paramConfiguration, boolean paramBoolean)
  {
    try
    {
      String str = paramConfiguration.getAppId();
      if (paramBoolean) {
        str = paramConfiguration.getAdEventAppId();
      }
      this.d.trackEvent(str, a.e(), paramString1, paramString2);
    }
    catch (Exception paramString1)
    {
      paramString2 = new StringBuilder();
      paramString2.append("trackCacheData error:");
      paramString2.append(paramString1.toString());
      p.b("ServiceConnectManager", paramString2.toString());
    }
  }
  
  private static class a
  {
    private static an a = new an(null);
  }
  
  public static abstract interface b
  {
    public abstract void a();
  }
  
  private class c
    extends Handler
  {
    public c(Looper paramLooper)
    {
      super();
    }
    
    public void handleMessage(Message paramMessage)
    {
      super.handleMessage(paramMessage);
      int i = paramMessage.what;
      if (i == 1) {
        an.f(an.this);
      } else if (i == 2) {
        an.g(an.this);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.an
 * JD-Core Version:    0.7.0.1
 */