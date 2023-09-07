package com.xiaomi.onetrack.api;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;
import android.os.SystemClock;
import com.xiaomi.onetrack.util.DeviceUtil;
import com.xiaomi.onetrack.util.p;

class m
  implements Application.ActivityLifecycleCallbacks
{
  private int b = 0;
  private int c;
  private long d;
  private boolean e;
  private boolean f;
  
  m(h paramh) {}
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityDestroyed(Activity paramActivity) {}
  
  public void onActivityPaused(Activity paramActivity)
  {
    long l;
    if (this.c == System.identityHashCode(paramActivity)) {
      l = SystemClock.elapsedRealtime() - this.d;
    } else {
      l = 0L;
    }
    Object localObject = paramActivity.getClass().getName();
    h.a(this.a, (String)localObject, l);
    if (p.a)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("onActivityPaused:");
      ((StringBuilder)localObject).append(paramActivity.getLocalClassName());
      p.a("OneTrackImp", ((StringBuilder)localObject).toString());
    }
  }
  
  public void onActivityResumed(Activity paramActivity)
  {
    h.a(this.a, this.f);
    this.c = System.identityHashCode(paramActivity);
    this.d = SystemClock.elapsedRealtime();
    h.a(this.a, paramActivity.getClass().getName(), this.e);
    if (p.a)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onActivityResumed:");
      localStringBuilder.append(paramActivity.getLocalClassName());
      localStringBuilder.append(" isAppStart:");
      localStringBuilder.append(this.e);
      p.a("OneTrackImp", localStringBuilder.toString());
    }
    this.e = false;
    h.h(this.a);
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityStarted(Activity paramActivity)
  {
    if (this.b == 0)
    {
      h.g(this.a).a(1);
      this.e = true;
      this.f = false;
      DeviceUtil.a();
    }
    else
    {
      this.e = false;
    }
    this.b += 1;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onActivityStarted: ");
    localStringBuilder.append(paramActivity.getLocalClassName());
    p.a("OneTrackImp", localStringBuilder.toString());
  }
  
  public void onActivityStopped(Activity paramActivity)
  {
    int i = this.b - 1;
    this.b = i;
    if (i == 0)
    {
      h.g(this.a).a(2);
      h.i(this.a);
      this.f = true;
      this.e = false;
    }
    else
    {
      this.f = false;
    }
    h.a(this.a, this.f);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onActivityStopped: ");
    localStringBuilder.append(paramActivity.getLocalClassName());
    p.a("OneTrackImp", localStringBuilder.toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.m
 * JD-Core Version:    0.7.0.1
 */