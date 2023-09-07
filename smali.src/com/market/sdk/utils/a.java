package com.market.sdk.utils;

import android.content.Context;
import android.content.pm.PackageManager;

public class a
{
  private static Context a;
  
  public static Context a()
  {
    Context localContext = a;
    if (localContext != null) {
      return localContext;
    }
    throw new IllegalArgumentException("sContext is null,should call setContext first!!");
  }
  
  public static PackageManager b()
  {
    return a.getPackageManager();
  }
  
  private static void c()
  {
    if (PrefUtils.b("sdkBeginTime", new PrefUtils.PrefFile[0]) == 0L) {
      PrefUtils.e("sdkBeginTime", System.currentTimeMillis(), new PrefUtils.PrefFile[0]);
    }
  }
  
  public static void d(Context paramContext)
  {
    a = paramContext.getApplicationContext();
    c();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.utils.a
 * JD-Core Version:    0.7.0.1
 */