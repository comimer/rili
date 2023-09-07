package com.miui.calendar.util;

import aa.a;
import android.app.Application;
import android.content.Context;
import android.util.Log;
import j9.b;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class n
{
  private static Application a;
  private static Context b;
  public static boolean c;
  public static int d;
  
  static
  {
    Object localObject1;
    try
    {
      c = a();
      d = b.v();
    }
    catch (Exception localException1)
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("DeviceLevel(): Load Class Exception:");
      ((StringBuilder)localObject1).append(localException1);
      Log.e("DeviceLevel", ((StringBuilder)localObject1).toString());
    }
    if (b == null) {
      try
      {
        localObject1 = (Application)Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, null);
        a = (Application)localObject1;
        if (localObject1 != null) {
          b = ((Context)localObject1).getApplicationContext();
        }
      }
      catch (Exception localException3)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("android.app.ActivityThread Exception:");
        localStringBuilder.append(localException3);
        Log.e("DeviceLevel", localStringBuilder.toString());
      }
    }
    if (b == null) {
      try
      {
        localObject2 = (Application)Class.forName("android.app.AppGlobals").getMethod("getInitialApplication", new Class[0]).invoke(null, null);
        a = (Application)localObject2;
        if (localObject2 != null) {
          b = ((Context)localObject2).getApplicationContext();
        }
      }
      catch (Exception localException2)
      {
        Object localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("android.app.AppGlobals Exception:");
        ((StringBuilder)localObject2).append(localException2);
        Log.e("DeviceLevel", ((StringBuilder)localObject2).toString());
      }
    }
  }
  
  private static boolean a()
  {
    boolean bool1 = false;
    try
    {
      if (!((Boolean)Class.forName("miui.os.Build").getDeclaredField("IS_MIUI_LITE_VERSION").get(null)).booleanValue())
      {
        boolean bool2 = b();
        if (!bool2) {}
      }
      else
      {
        bool1 = true;
      }
      return bool1;
    }
    catch (Exception localException)
    {
      Log.i("DeviceLevel", "getDeviceLevel failed", localException);
    }
    return false;
  }
  
  private static boolean b()
  {
    return a.i();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.n
 * JD-Core Version:    0.7.0.1
 */