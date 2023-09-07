package com.market.sdk.utils;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;

public class c
{
  public static boolean a(String paramString)
  {
    try
    {
      PackageManager localPackageManager = a.b();
      int i = localPackageManager.getApplicationEnabledSetting(paramString);
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      localStringBuilder.append("state: ");
      localStringBuilder.append(i);
      b.b("PkgUtils", localStringBuilder.toString());
      if (i != 0) {
        return i == 1;
      }
      boolean bool = localPackageManager.getApplicationInfo(paramString, 0).enabled;
      return bool;
    }
    catch (Exception paramString)
    {
      b.d("PkgUtils", paramString.toString(), paramString);
      return false;
    }
    catch (IllegalArgumentException paramString)
    {
      label78:
      break label78;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.utils.c
 * JD-Core Version:    0.7.0.1
 */