package com.xiaomi.onetrack.util.oaid.helpers;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.xiaomi.onetrack.util.p;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

class ZTEDeviceIDHelper$1
  implements ServiceConnection
{
  ZTEDeviceIDHelper$1(m paramm) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    try
    {
      this.a.b.offer(paramIBinder, 1L, TimeUnit.SECONDS);
    }
    catch (Exception paramComponentName)
    {
      p.a("ZTEDeviceIDHelper", paramComponentName.getMessage());
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.oaid.helpers.ZTEDeviceIDHelper.1
 * JD-Core Version:    0.7.0.1
 */