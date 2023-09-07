package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.BroadcastReceiver.PendingResult;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import androidx.work.k;
import q0.i;
import y0.f;
import z0.a;

public class ConstraintProxyUpdateReceiver
  extends BroadcastReceiver
{
  static final String a = k.f("ConstrntProxyUpdtRecvr");
  
  public static Intent a(Context paramContext, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    Intent localIntent = new Intent("androidx.work.impl.background.systemalarm.UpdateProxies");
    localIntent.setComponent(new ComponentName(paramContext, ConstraintProxyUpdateReceiver.class));
    localIntent.putExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", paramBoolean1).putExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", paramBoolean2).putExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", paramBoolean3).putExtra("KEY_NETWORK_STATE_PROXY_ENABLED", paramBoolean4);
    return localIntent;
  }
  
  public void onReceive(final Context paramContext, final Intent paramIntent)
  {
    Object localObject;
    if (paramIntent != null) {
      localObject = paramIntent.getAction();
    } else {
      localObject = null;
    }
    if (!"androidx.work.impl.background.systemalarm.UpdateProxies".equals(localObject))
    {
      k.c().a(a, String.format("Ignoring unknown action %s", new Object[] { localObject }), new Throwable[0]);
    }
    else
    {
      localObject = goAsync();
      i.n(paramContext).s().b(new a(paramIntent, paramContext, (BroadcastReceiver.PendingResult)localObject));
    }
  }
  
  class a
    implements Runnable
  {
    a(Intent paramIntent, Context paramContext, BroadcastReceiver.PendingResult paramPendingResult) {}
    
    public void run()
    {
      try
      {
        boolean bool1 = paramIntent.getBooleanExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", false);
        boolean bool2 = paramIntent.getBooleanExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", false);
        boolean bool3 = paramIntent.getBooleanExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", false);
        boolean bool4 = paramIntent.getBooleanExtra("KEY_NETWORK_STATE_PROXY_ENABLED", false);
        k.c().a(ConstraintProxyUpdateReceiver.a, String.format("Updating proxies: BatteryNotLowProxy enabled (%s), BatteryChargingProxy enabled (%s), StorageNotLowProxy (%s), NetworkStateProxy enabled (%s)", new Object[] { Boolean.valueOf(bool1), Boolean.valueOf(bool2), Boolean.valueOf(bool3), Boolean.valueOf(bool4) }), new Throwable[0]);
        f.a(paramContext, ConstraintProxy.BatteryNotLowProxy.class, bool1);
        f.a(paramContext, ConstraintProxy.BatteryChargingProxy.class, bool2);
        f.a(paramContext, ConstraintProxy.StorageNotLowProxy.class, bool3);
        f.a(paramContext, ConstraintProxy.NetworkStateProxy.class, bool4);
        return;
      }
      finally
      {
        this.c.finish();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.impl.background.systemalarm.ConstraintProxyUpdateReceiver
 * JD-Core Version:    0.7.0.1
 */