package com.xiaomi.phonenum.utils;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class ServiceBindWaiter
{
  public static b a(Context paramContext, Intent paramIntent)
    throws InterruptedException, ServiceBindWaiter.ServiceBindTimeoutException, ServiceBindWaiter.ServiceBindFailedException
  {
    return b(paramContext, paramIntent, 5000L);
  }
  
  public static b b(Context paramContext, Intent paramIntent, long paramLong)
    throws ServiceBindWaiter.ServiceBindFailedException, InterruptedException, ServiceBindWaiter.ServiceBindTimeoutException
  {
    final CountDownLatch localCountDownLatch = new CountDownLatch(1);
    IBinder[] arrayOfIBinder = new IBinder[1];
    a locala = new a(arrayOfIBinder, localCountDownLatch);
    if (paramContext.bindService(paramIntent, locala, 1))
    {
      if (localCountDownLatch.await(paramLong, TimeUnit.MILLISECONDS)) {
        return new b(locala, arrayOfIBinder[0]);
      }
      throw new ServiceBindTimeoutException();
    }
    paramContext = new StringBuilder();
    paramContext.append("can not bind to service intent=");
    paramContext.append(paramIntent);
    throw new ServiceBindFailedException(paramContext.toString());
  }
  
  public static class ServiceBindFailedException
    extends Exception
  {
    public ServiceBindFailedException(String paramString)
    {
      super();
    }
  }
  
  public static class ServiceBindTimeoutException
    extends Exception
  {}
  
  class a
    implements ServiceConnection
  {
    a(CountDownLatch paramCountDownLatch) {}
    
    public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      ServiceBindWaiter.this[0] = paramIBinder;
      localCountDownLatch.countDown();
    }
    
    public void onServiceDisconnected(ComponentName paramComponentName) {}
  }
  
  public static class b
  {
    public final ServiceConnection a;
    public final IBinder b;
    
    public b(ServiceConnection paramServiceConnection, IBinder paramIBinder)
    {
      this.a = paramServiceConnection;
      this.b = paramIBinder;
    }
    
    public void a(Context paramContext)
    {
      paramContext.unbindService(this.a);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.phonenum.utils.ServiceBindWaiter
 * JD-Core Version:    0.7.0.1
 */