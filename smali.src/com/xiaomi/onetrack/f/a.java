package com.xiaomi.onetrack.f;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.xiaomi.onetrack.util.j;

public class a
{
  private static Context a;
  private static Context b;
  private static int c = 0;
  private static String d;
  private static String e;
  private static long f = 0L;
  private static volatile boolean g = false;
  
  public static Context a()
  {
    if (j.d(a))
    {
      Context localContext = b;
      if (localContext != null) {
        return localContext;
      }
      try
      {
        if (b == null) {
          b = j.a(a);
        }
        return b;
      }
      finally {}
    }
    return a;
  }
  
  public static PackageInfo a(Context paramContext, String paramString, int paramInt)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramString, paramInt);
      return paramContext;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
  
  public static void a(Context paramContext)
  {
    if (g) {
      return;
    }
    try
    {
      if (g) {
        return;
      }
      a = paramContext;
      try
      {
        paramContext = paramContext.getPackageManager().getPackageInfo(a.getPackageName(), 0);
        c = paramContext.versionCode;
        d = paramContext.versionName;
        f = paramContext.lastUpdateTime;
        e = a.getPackageName();
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        paramContext.printStackTrace();
      }
      g = true;
      return;
    }
    finally {}
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    try
    {
      boolean bool = a(a(paramContext, paramString, 0).applicationInfo);
      return bool;
    }
    catch (Exception paramContext) {}
    return false;
  }
  
  public static boolean a(ApplicationInfo paramApplicationInfo)
  {
    int i = paramApplicationInfo.flags;
    boolean bool = true;
    if ((i & 0x1) == 0) {
      bool = false;
    }
    return bool;
  }
  
  public static Context b()
  {
    return a;
  }
  
  public static boolean b(Context paramContext, String paramString)
  {
    boolean bool1 = false;
    paramContext = a(paramContext, paramString, 0);
    boolean bool2 = bool1;
    if (paramContext != null)
    {
      bool2 = bool1;
      if (paramContext.applicationInfo != null) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  public static String c()
  {
    return d;
  }
  
  public static String c(Context paramContext, String paramString)
  {
    paramContext = paramContext.getPackageManager();
    try
    {
      paramContext = paramContext.getApplicationInfo(paramString, 0).loadLabel(paramContext).toString();
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    return "";
  }
  
  public static int d()
  {
    return c;
  }
  
  public static String e()
  {
    return e;
  }
  
  public static long f()
  {
    return f;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.f.a
 * JD-Core Version:    0.7.0.1
 */