package com.xiaomi.onetrack.util.oaid.helpers;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

class LenovoDeviceIDHelper$1
  implements ServiceConnection
{
  LenovoDeviceIDHelper$1(e parame) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    try
    {
      this.a.a.offer(paramIBinder, 1L, TimeUnit.SECONDS);
    }
    catch (Exception paramComponentName)
    {
      paramComponentName.printStackTrace();
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.oaid.helpers.LenovoDeviceIDHelper.1
 * JD-Core Version:    0.7.0.1
 */