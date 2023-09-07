package com.miui.maml.util;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.ConnectivityManager;
import android.util.Log;

public class MobileDataUtils
  extends BaseMobileDataUtils
{
  public static MobileDataUtils getInstance()
  {
    try
    {
      MobileDataUtils localMobileDataUtils = (MobileDataUtils)Class.forName("miui.msim.util.MSimMobileDataUtils").newInstance();
      return localMobileDataUtils;
    }
    catch (Exception localException) {}
    return new MobileDataUtils();
  }
  
  public void enableMobileData(Context paramContext, boolean paramBoolean)
  {
    try
    {
      ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
      Class localClass = localConnectivityManager.getClass();
      paramContext = Boolean.TYPE;
      localObject = Boolean.FALSE;
      ReflectionHelper.invoke(localClass, localConnectivityManager, "setMobileDataEnabled", new Class[] { paramContext }, new Object[] { localObject });
    }
    catch (Exception paramContext)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Invoke | ConnectivityManager_enableMobileData() occur EXCEPTION: ");
      ((StringBuilder)localObject).append(paramContext.getMessage());
      Log.e("BaseMobileDataUtils", ((StringBuilder)localObject).toString());
    }
  }
  
  public void registerContentObserver(Context paramContext, ContentObserver paramContentObserver)
  {
    paramContext.getContentResolver().registerContentObserver(getMobileDataUri(), false, paramContentObserver);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.MobileDataUtils
 * JD-Core Version:    0.7.0.1
 */