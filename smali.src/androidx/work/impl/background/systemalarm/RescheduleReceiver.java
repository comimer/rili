package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.k;
import q0.i;

public class RescheduleReceiver
  extends BroadcastReceiver
{
  private static final String a = k.f("RescheduleReceiver");
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    k.c().a(a, String.format("Received intent %s", new Object[] { paramIntent }), new Throwable[0]);
    try
    {
      i.n(paramContext).w(goAsync());
    }
    catch (IllegalStateException paramContext)
    {
      k.c().b(a, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", new Throwable[] { paramContext });
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.impl.background.systemalarm.RescheduleReceiver
 * JD-Core Version:    0.7.0.1
 */