package com.miui.maml.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.provider.Settings.Global;
import android.util.Log;

public class BaseMobileDataUtils
{
  public static final String MOBILE_DATA = "mobile_data";
  
  public Uri getMobileDataUri()
  {
    return Settings.Global.getUriFor("mobile_data");
  }
  
  public boolean isMobileEnable(Context paramContext)
  {
    try
    {
      paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
      boolean bool = ((Boolean)ReflectionHelper.invokeObject(paramContext.getClass(), paramContext, "getMobileDataEnabled", new Class[0], new Object[0])).booleanValue();
      return bool;
    }
    catch (Exception localException)
    {
      paramContext = new StringBuilder();
      paramContext.append("Invoke | ConnectivityManager_getMobileDataEnabled() occur EXCEPTION: ");
      paramContext.append(localException.getMessage());
      Log.e("BaseMobileDataUtils", paramContext.toString());
    }
    return false;
  }
  
  public void onMobileDataChange(Context paramContext) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.BaseMobileDataUtils
 * JD-Core Version:    0.7.0.1
 */