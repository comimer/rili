package com.miui.zeus.landingpage.sdk;

import android.text.TextUtils;
import java.util.List;

public class LandingPageHelper
{
  public static final String TAG = "LandingPageHelper";
  
  public static boolean land(String paramString)
  {
    return land(paramString, false);
  }
  
  public static boolean land(String paramString, boolean paramBoolean)
  {
    if (TextUtils.isEmpty(paramString))
    {
      j.b("LandingPageHelper", "url is empty");
      return false;
    }
    paramBoolean = i.a(paramString, paramBoolean, -1);
    j.a("LandingPageHelper", new Object[] { "result=", Boolean.valueOf(paramBoolean) });
    return paramBoolean;
  }
  
  public static boolean land(String paramString, boolean paramBoolean, int paramInt)
  {
    if (TextUtils.isEmpty(paramString))
    {
      j.b("LandingPageHelper", "url is empty");
      return false;
    }
    paramBoolean = i.a(paramString, paramBoolean, paramInt);
    j.a("LandingPageHelper", new Object[] { "result=", Boolean.valueOf(paramBoolean) });
    return paramBoolean;
  }
  
  public static void registerAppLaunchListener(OnAppLaunchListener paramOnAppLaunchListener)
  {
    f localf = f.a();
    if (!localf.a.contains(paramOnAppLaunchListener)) {
      localf.a.add(paramOnAppLaunchListener);
    }
  }
  
  public static void registerDownloadListener(DownloadListener paramDownloadListener)
  {
    c.a().a(paramDownloadListener);
  }
  
  public static void unRegisterAppLaunchListener(OnAppLaunchListener paramOnAppLaunchListener)
  {
    f localf = f.a();
    if (!localf.a.contains(paramOnAppLaunchListener)) {
      localf.a.add(paramOnAppLaunchListener);
    }
  }
  
  public static void unRegisterDownloadListener(DownloadListener paramDownloadListener)
  {
    c.a().b(paramDownloadListener);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.zeus.landingpage.sdk.LandingPageHelper
 * JD-Core Version:    0.7.0.1
 */