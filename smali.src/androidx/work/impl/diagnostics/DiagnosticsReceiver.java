package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.workers.DiagnosticsWorker;
import androidx.work.k;
import androidx.work.l;
import androidx.work.r;

public class DiagnosticsReceiver
  extends BroadcastReceiver
{
  private static final String a = k.f("DiagnosticsRcvr");
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null) {
      return;
    }
    k.c().a(a, "Requesting diagnostics", new Throwable[0]);
    try
    {
      r.f(paramContext).c(l.e(DiagnosticsWorker.class));
    }
    catch (IllegalStateException paramContext)
    {
      k.c().b(a, "WorkManager is not initialized", new Throwable[] { paramContext });
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.impl.diagnostics.DiagnosticsReceiver
 * JD-Core Version:    0.7.0.1
 */