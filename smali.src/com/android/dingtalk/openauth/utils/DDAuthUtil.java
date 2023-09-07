package com.android.dingtalk.openauth.utils;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.BaseBundle;
import android.text.TextUtils;

public class DDAuthUtil
{
  public static final int ENV_DAILY = 2;
  public static final int ENV_ONLINE = 0;
  public static final int ENV_PRE = 1;
  private static Boolean sDebug;
  private static int sEnv;
  
  private static boolean checkSumConsistent(Context paramContext, String paramString)
  {
    if (isDebug(paramContext))
    {
      c.a("checkSumConsistent ignore");
      return true;
    }
    paramContext = e.a(paramContext, paramString);
    boolean bool = TextUtils.equals(paramContext, "d2cef93010963d9273440efe6a05dd8d");
    if (!bool)
    {
      paramString = new StringBuilder();
      paramString.append("checkSumConsistent fail, md5Signature : ");
      paramString.append(paramContext);
      paramString.append(", ddAppSignature : ");
      paramString.append("d2cef93010963d9273440efe6a05dd8d");
      c.a(paramString.toString());
    }
    return bool;
  }
  
  public static String getAuthLoginUrl(Context paramContext)
  {
    if (isDebug(paramContext))
    {
      int i = sEnv;
      if (i != 1)
      {
        if (i == 2) {
          return "https://daily-login.dingtalk.test/oauth2/auth";
        }
      }
      else {
        return "https://pre-login.dingtalk.com/oauth2/auth";
      }
    }
    return "https://login.dingtalk.com/oauth2/auth?";
  }
  
  private static int getDDSupportAPI(Context paramContext)
  {
    if (!isDDAppInstalled(paramContext)) {
      return 0;
    }
    return getSdkVersionFromMetaData(paramContext);
  }
  
  private static int getSdkVersionFromMetaData(Context paramContext)
  {
    int i = 0;
    try
    {
      paramContext = paramContext.getPackageManager().getApplicationInfo("com.alibaba.android.rimet", 128).metaData;
      j = i;
      if (paramContext == null) {
        return j;
      }
      j = paramContext.getInt("android.intent.ding.AUTH_SDK_KEY");
    }
    catch (NullPointerException paramContext) {}catch (PackageManager.NameNotFoundException paramContext) {}
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("getSdkVersionFromMetaData exception : ");
    localStringBuilder.append(paramContext.getLocalizedMessage());
    c.a(localStringBuilder.toString());
    int j = i;
    return j;
  }
  
  public static boolean isDDAppInstalled(Context paramContext)
  {
    boolean bool1 = false;
    boolean bool2 = bool1;
    try
    {
      if (paramContext.getPackageManager().getPackageInfo("com.alibaba.android.rimet", 64) != null)
      {
        boolean bool3 = checkSumConsistent(paramContext, "com.alibaba.android.rimet");
        bool2 = bool1;
        if (bool3) {
          bool2 = true;
        }
      }
      return bool2;
    }
    catch (NullPointerException paramContext) {}catch (PackageManager.NameNotFoundException paramContext) {}
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("isDDAppInstalled exception : ");
    localStringBuilder.append(paramContext.getLocalizedMessage());
    c.a(localStringBuilder.toString());
    return false;
  }
  
  public static boolean isDDSupportAPI(Context paramContext)
  {
    int i = getDDSupportAPI(paramContext);
    boolean bool;
    if (i >= 20210101) {
      bool = true;
    } else {
      bool = false;
    }
    if (!bool)
    {
      paramContext = new StringBuilder();
      paramContext.append("isDDSupportAPI fail, ddSupportAPI : ");
      paramContext.append(i);
      paramContext.append(", authSdkVersion : ");
      paramContext.append(20210101);
      c.a(paramContext.toString());
    }
    return bool;
  }
  
  public static boolean isDebug(Context paramContext)
  {
    if (sDebug == null) {
      sDebug = isDebugApp(paramContext);
    }
    paramContext = sDebug;
    boolean bool;
    if (paramContext == null) {
      bool = false;
    } else {
      bool = paramContext.booleanValue();
    }
    return bool;
  }
  
  private static Boolean isDebugApp(Context paramContext)
  {
    if (paramContext == null) {
      return null;
    }
    try
    {
      boolean bool;
      if ((paramContext.getApplicationInfo().flags & 0x2) != 0) {
        bool = true;
      } else {
        bool = false;
      }
      return Boolean.valueOf(bool);
    }
    catch (Exception paramContext) {}
    return Boolean.FALSE;
  }
  
  public static void setEnv(int paramInt)
  {
    sEnv = paramInt;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.dingtalk.openauth.utils.DDAuthUtil
 * JD-Core Version:    0.7.0.1
 */