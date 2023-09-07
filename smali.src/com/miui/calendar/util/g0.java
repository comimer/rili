package com.miui.calendar.util;

import android.content.Context;
import com.android.calendar.application.CalendarApplication;
import com.xiaomi.onetrack.Configuration.Builder;
import com.xiaomi.onetrack.OneTrack;
import com.xiaomi.onetrack.OneTrack.Mode;
import com.xiaomi.onetrack.ServiceQualityEvent;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import oa.a;

public class g0
{
  private static Context a;
  private static OneTrack b;
  
  private static String a()
  {
    if (!a.a) {
      return "com.android.calendar";
    }
    return DeviceUtils.t();
  }
  
  public static void b(Context paramContext)
  {
    z.a("Cal:D:OneTrackHelper", "initialize()");
    a = paramContext;
    try
    {
      Configuration.Builder localBuilder = new com/xiaomi/onetrack/Configuration$Builder;
      localBuilder.<init>();
      b = OneTrack.createInstance(paramContext, localBuilder.setAppId("2882303761517326808").setChannel(a()).setMode(OneTrack.Mode.APP).setExceptionCatcherEnable(true).setAutoTrackActivityAction(true).setUseCustomPrivacyPolicy(true).build());
      z.a("Cal:D:OneTrackHelper", "init() done");
      paramContext = a;
      OneTrack.setAccessNetworkEnable(paramContext, z0.n(paramContext));
      b.setCustomPrivacyPolicyAccepted(z0.n(a));
      OneTrack.setDebugMode(false);
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:OneTrackHelper", "init error", paramContext);
    }
  }
  
  private static boolean c()
  {
    Context localContext = a;
    boolean bool;
    if ((localContext != null) && (z0.n(localContext))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static void d(String paramString)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("recordCountEvent(): key:");
    ((StringBuilder)localObject).append(paramString);
    z.a("Cal:D:OneTrackHelper", ((StringBuilder)localObject).toString());
    try
    {
      localObject = new java/util/HashMap;
      ((HashMap)localObject).<init>();
      e(paramString, (Map)localObject);
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public static void e(String paramString, Map<String, Object> paramMap)
  {
    if (!c()) {
      return;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("recordCountEvent(): key:");
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append(", params=");
    ((StringBuilder)localObject).append(paramMap);
    z.a("Cal:D:OneTrackHelper", ((StringBuilder)localObject).toString());
    if (paramMap != null) {}
    try
    {
      if (paramMap.size() > 0)
      {
        b.track(paramString, paramMap);
      }
      else
      {
        localObject = b;
        paramMap = new java/util/HashMap;
        paramMap.<init>();
        ((OneTrack)localObject).track(paramString, paramMap);
      }
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public static void f(String paramString, String... paramVarArgs)
  {
    if (!c()) {
      return;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("recordCountEvent(): key:");
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append(", params:");
    ((StringBuilder)localObject).append(Arrays.toString(paramVarArgs));
    z.a("Cal:D:OneTrackHelper", ((StringBuilder)localObject).toString());
    if (paramVarArgs != null) {
      try
      {
        if ((paramVarArgs.length != 0) && (paramVarArgs.length % 2 == 0))
        {
          localObject = new java/util/HashMap;
          ((HashMap)localObject).<init>();
          for (int i = 0; i < paramVarArgs.length; i += 2) {
            ((Map)localObject).put(paramVarArgs[i], paramVarArgs[(i + 1)]);
          }
          b.track(paramString, (Map)localObject);
        }
      }
      catch (Exception paramString)
      {
        break label136;
      }
    }
    z.m("Cal:D:OneTrackHelper", "recordCountEvent(): params INVALID");
    d(paramString);
    return;
    label136:
    paramString.printStackTrace();
  }
  
  public static void g(Map<String, Object> paramMap)
  {
    if (!c()) {
      return;
    }
    try
    {
      b.track("net_available", paramMap);
    }
    catch (Exception paramMap)
    {
      paramMap.printStackTrace();
    }
  }
  
  public static void h(String paramString, long paramLong)
  {
    if (!c()) {
      return;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("recordNumericPropertyEvent(): key:");
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append(", value:");
    ((StringBuilder)localObject).append(paramLong);
    z.a("Cal:D:OneTrackHelper", ((StringBuilder)localObject).toString());
    try
    {
      localObject = new java/util/HashMap;
      ((HashMap)localObject).<init>();
      ((Map)localObject).put(paramString, Long.valueOf(paramLong));
      b.setUserProfile(paramString, localObject);
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public static void i(String paramString1, String paramString2)
  {
    if (!c()) {
      return;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("recordStringPropertyEvent(): key:");
    ((StringBuilder)localObject).append(paramString1);
    ((StringBuilder)localObject).append(", value:");
    ((StringBuilder)localObject).append(paramString2);
    z.a("Cal:D:OneTrackHelper", ((StringBuilder)localObject).toString());
    try
    {
      localObject = new java/util/HashMap;
      ((HashMap)localObject).<init>();
      ((Map)localObject).put(paramString1, paramString2);
      b.setUserProfile(paramString1, localObject);
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
  }
  
  public static void j()
  {
    try
    {
      OneTrack.setAccessNetworkEnable(a, true);
      b.setCustomPrivacyPolicyAccepted(true);
    }
    catch (Exception localException)
    {
      b(CalendarApplication.e().getApplicationContext());
      z.d("Cal:D:OneTrackHelper", "setPrivacyStateAgree()", localException);
    }
  }
  
  public static void k(ServiceQualityEvent paramServiceQualityEvent)
  {
    try
    {
      b.trackServiceQualityEvent(paramServiceQualityEvent);
    }
    catch (Exception paramServiceQualityEvent)
    {
      paramServiceQualityEvent.printStackTrace();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.g0
 * JD-Core Version:    0.7.0.1
 */