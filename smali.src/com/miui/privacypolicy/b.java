package com.miui.privacypolicy;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;

public class b
{
  protected static String a(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
    }
    catch (Exception paramContext)
    {
      Log.e("Privacy_PackageUtils", "Exception", paramContext);
      paramContext = "";
    }
    return paramContext;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.privacypolicy.b
 * JD-Core Version:    0.7.0.1
 */