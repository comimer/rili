package com.android.calendar.application;

import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Looper;
import android.os.Process;
import android.os.Trace;
import android.provider.Settings.Global;
import android.text.TextUtils;
import com.android.calendar.common.MidnightReceiver;
import com.android.calendar.common.Utils;
import com.android.calendar.common.k;
import com.android.calendar.homepage.AllInOneActivity;
import com.miui.calendar.alerts.AlertMigrationService;
import com.miui.calendar.job.CalendarJobReceiver;
import com.miui.calendar.util.DaysOffUtils;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.o0;
import com.miui.calendar.util.s;
import com.miui.calendar.util.z;
import com.miui.zeus.landingpage.sdk.LandingPageSDK;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import miui.content.res.IconCustomizer;
import q1.c;
import s4.d;
import u9.h;

public class CalendarApplication
  extends h
{
  public static CalendarApplication b;
  private final List<Activity> a = new ArrayList(3);
  
  public static CalendarApplication e()
  {
    return b;
  }
  
  private void f()
  {
    AsyncTask.execute(new q1.b(this));
    if (DeviceUtils.r(b, "com.android.providers.calendar") >= 10000001L) {
      k.j();
    } else {
      k.i();
    }
  }
  
  private void g() {}
  
  private boolean h()
  {
    String str = oa.b.a(Process.myPid());
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("CalendarApplication onCreate process:");
    localStringBuilder.append(str);
    z.a("Cal:D:CalendarApplicationDelegate", localStringBuilder.toString());
    boolean bool;
    if ((str != null) && (str.endsWith(":widgetProvider"))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void i()
  {
    z.a("Cal:D:CalendarApplicationDelegate", "launch: lazyJobs start.");
    if (Build.VERSION.SDK_INT >= 28)
    {
      String str = Utils.M(getApplicationContext(), Process.myPid());
      if ((getPackageName() != str) && (!TextUtils.isEmpty(str))) {
        try
        {
          q1.a.a(str);
        }
        catch (IllegalStateException localIllegalStateException)
        {
          localIllegalStateException.printStackTrace();
        }
      }
    }
    z.i(getApplicationContext());
    com.market.sdk.utils.a.d(getApplicationContext());
    LandingPageSDK.init(getApplicationContext());
    int i = Settings.Global.getInt(getContentResolver(), "xiaomi_account_is_child", 0);
    int j = 1;
    if (i != 1) {
      j = 0;
    }
    if (j == 0) {
      g0.b(getApplicationContext());
    }
    d.b("Cal:D:PtLog");
    c.a().c(getApplicationContext());
    Looper.prepare();
    b2.a.h(getApplicationContext());
    MidnightReceiver.b(getApplicationContext());
    CalendarJobReceiver.a(getApplicationContext());
    AlertMigrationService.n(getApplicationContext());
    o0.d(getApplicationContext());
    try
    {
      PackageInfo localPackageInfo1 = getApplicationContext().getPackageManager().getPackageInfo(getApplicationContext().getPackageName(), 0);
      PackageInfo localPackageInfo2 = getApplicationContext().getPackageManager().getPackageInfo("com.android.providers.calendar", 0);
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      localStringBuilder.append("DelayedInitializer: versionCode:");
      localStringBuilder.append(localPackageInfo1.versionCode);
      localStringBuilder.append(", sourceDir:");
      localStringBuilder.append(localPackageInfo1.applicationInfo.sourceDir);
      localStringBuilder.append(", lastUpdateTime:");
      localStringBuilder.append(localPackageInfo1.lastUpdateTime);
      localStringBuilder.append(", providerversioncode:");
      localStringBuilder.append(localPackageInfo2.versionCode);
      z.h("Cal:D:CalendarApplicationDelegate", localStringBuilder.toString());
    }
    catch (Exception localException)
    {
      z.f("Cal:D:CalendarApplicationDelegate", "onCreate()", localException);
    }
    j();
    z.a("Cal:D:CalendarApplicationDelegate", "launch: lazyJobs finished.");
    Trace.endSection();
  }
  
  private void j()
  {
    try
    {
      DaysOffUtils.g(getApplicationContext());
      Utils.p(getApplicationContext(), 0L, 0L, 0);
      DeviceUtils.C(getApplicationContext());
    }
    catch (Exception localException)
    {
      z.d("Cal:D:CalendarApplicationDelegate", "preloadData()", localException);
    }
  }
  
  private void k()
  {
    registerActivityLifecycleCallbacks(new a());
  }
  
  protected void attachBaseContext(Context paramContext)
  {
    super.attachBaseContext(paramContext);
    b = this;
  }
  
  public int d()
  {
    return this.a.size();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    z.g("Cal:D:CalendarApplicationDelegate", "onConfigurationChanged:");
    y3.a.a();
    super.onConfigurationChanged(paramConfiguration);
    IconCustomizer.clearCache();
    s.a();
  }
  
  public void onCreate()
  {
    super.onCreate();
    if (h()) {
      g();
    } else {
      f();
    }
    k();
  }
  
  class a
    implements Application.ActivityLifecycleCallbacks
  {
    a() {}
    
    public void onActivityCreated(Activity paramActivity, Bundle paramBundle)
    {
      if ((paramActivity instanceof AllInOneActivity))
      {
        paramBundle = CalendarApplication.c(CalendarApplication.this).iterator();
        while (paramBundle.hasNext()) {
          ((Activity)paramBundle.next()).finish();
        }
        CalendarApplication.c(CalendarApplication.this).clear();
      }
      CalendarApplication.c(CalendarApplication.this).add(paramActivity);
    }
    
    public void onActivityDestroyed(Activity paramActivity)
    {
      CalendarApplication.c(CalendarApplication.this).remove(paramActivity);
    }
    
    public void onActivityPaused(Activity paramActivity) {}
    
    public void onActivityResumed(Activity paramActivity) {}
    
    public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
    
    public void onActivityStarted(Activity paramActivity) {}
    
    public void onActivityStopped(Activity paramActivity) {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.application.CalendarApplication
 * JD-Core Version:    0.7.0.1
 */