package com.xiaomi.accountsdk.service;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.BaseBundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.xiaomi.passport.b.a;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import y5.c;

public class a
{
  private static boolean a(Context paramContext, String paramString, int paramInt)
  {
    Intent localIntent = new Intent("com.xiaomi.account.action.COMMON_SERVICE");
    localIntent.setPackage("com.xiaomi.account");
    Object localObject = paramContext.getPackageManager();
    boolean bool = false;
    localObject = ((PackageManager)localObject).queryIntentServices(localIntent, 0);
    if ((localObject != null) && (!((List)localObject).isEmpty()))
    {
      localObject = (ResolveInfo)((List)localObject).get(0);
      if ((localObject != null) && (((ResolveInfo)localObject).serviceInfo != null))
      {
        localObject = ((ResolveInfo)localObject).serviceInfo;
        localObject = new ComponentName(((ServiceInfo)localObject).packageName, ((ServiceInfo)localObject).name);
        try
        {
          paramContext = paramContext.getPackageManager().getServiceInfo((ComponentName)localObject, 128);
          if (paramContext != null)
          {
            paramContext = paramContext.metaData;
            if (paramContext != null)
            {
              paramContext = paramContext.get(paramString);
              if ((paramContext instanceof Integer))
              {
                int i = ((Integer)paramContext).intValue();
                if (i >= paramInt) {
                  bool = true;
                }
                return bool;
              }
            }
          }
        }
        catch (PackageManager.NameNotFoundException paramContext)
        {
          com.xiaomi.accountsdk.utils.b.h("PassportCommonServiceClient", "component not found", paramContext);
        }
      }
    }
    return false;
  }
  
  public static DeviceInfoResult b(Context paramContext, final String paramString, final int paramInt1, int paramInt2)
  {
    if (c(paramContext))
    {
      c localc = new c();
      new a(localc, paramString, paramInt1).b();
      long l = paramInt2;
      try
      {
        paramContext = (DeviceInfoResult)localc.get(l, TimeUnit.MILLISECONDS);
        return paramContext;
      }
      catch (TimeoutException paramContext) {}catch (ExecutionException paramContext) {}catch (InterruptedException paramContext) {}
      com.xiaomi.accountsdk.utils.b.h("PassportCommonServiceClient", "getDeviceInfoRpc", paramContext);
      return new DeviceInfoResult.b(null).f(DeviceInfoResult.ErrorCode.ERROR_EXECUTION_EXCEPTION).g(paramContext.getMessage()).e();
    }
    return new DeviceInfoResult.b(null).f(DeviceInfoResult.ErrorCode.ERROR_NOT_SUPPORTED).g("GetDeviceInfo feature is not yet supported by this version of XiaomiAccount, please update a newer version.").e();
  }
  
  private static boolean c(Context paramContext)
  {
    return a(paramContext, "feature_get_device_info_version", 1);
  }
  
  class a
    extends a.b<DeviceInfoResult>
  {
    a(y5.a parama, String paramString, int paramInt)
    {
      super(parama);
    }
    
    protected DeviceInfoResult k()
      throws RemoteException
    {
      return ((com.xiaomi.passport.b)h()).g0(paramString, paramInt1);
    }
  }
  
  private static abstract class b<T>
    extends y5.b<com.xiaomi.passport.b, T, T>
  {
    protected b(Context paramContext, y5.a<T, T> parama)
    {
      super("com.xiaomi.account.action.COMMON_SERVICE", "com.xiaomi.account", parama);
    }
    
    protected final com.xiaomi.passport.b j(IBinder paramIBinder)
    {
      return b.a.n0(paramIBinder);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.service.a
 * JD-Core Version:    0.7.0.1
 */