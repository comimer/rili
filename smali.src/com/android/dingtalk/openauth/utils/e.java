package com.android.dingtalk.openauth.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;

public class e
{
  public static String a(Context paramContext, String paramString)
  {
    paramString = b(paramContext, paramString);
    if ((paramString != null) && (paramString.length != 0))
    {
      paramContext = new StringBuffer();
      for (int i = 0; i < paramString.length; i++) {
        paramContext.append(d.a(paramString[i].toByteArray()));
      }
      return paramContext.toString();
    }
    return null;
  }
  
  private static Signature[] b(Context paramContext, String paramString)
  {
    if ((paramString != null) && (paramString.length() != 0) && (paramContext != null)) {
      paramContext = paramContext.getPackageManager();
    }
    try
    {
      paramContext = paramContext.getPackageInfo(paramString, 64);
      if (paramContext == null) {
        return null;
      }
      return paramContext.signatures;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      label42:
      break label42;
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.dingtalk.openauth.utils.e
 * JD-Core Version:    0.7.0.1
 */