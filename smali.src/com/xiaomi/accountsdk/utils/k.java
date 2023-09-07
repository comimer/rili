package com.xiaomi.accountsdk.utils;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.BaseBundle;

public class k
{
  public static int a(Context paramContext, String paramString)
  {
    try
    {
      int i = paramContext.getPackageManager().getPackageInfo(paramString, 0).versionCode;
      return i;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return -1;
  }
  
  public static String b(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128).metaData.getString("WEIXIN_APP_ID");
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      throw new IllegalStateException(paramContext);
    }
  }
  
  public static boolean c(Context paramContext)
  {
    if (paramContext != null)
    {
      boolean bool;
      if ((paramContext.getApplicationInfo().flags & 0x2) != 0) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    throw new NullPointerException("context cannot be null");
  }
  
  public static boolean d(Context paramContext, String paramString)
  {
    boolean bool = false;
    try
    {
      paramContext.getPackageManager().getApplicationInfo(paramString, 0);
      bool = true;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      label14:
      break label14;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.utils.k
 * JD-Core Version:    0.7.0.1
 */