package e6;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import f6.a;

public class b
{
  private static volatile b d;
  public static boolean e = false;
  private Context a;
  private volatile boolean b = false;
  private BroadcastReceiver c = new a();
  
  private b(Context paramContext)
  {
    this.a = f6.b.a(paramContext);
  }
  
  public static b a(Context paramContext)
  {
    try
    {
      if (d == null)
      {
        b localb = new e6/b;
        localb.<init>(paramContext);
        d = localb;
      }
      paramContext = d;
      return paramContext;
    }
    finally {}
  }
  
  public void b()
  {
    if (this.b) {
      return;
    }
    this.b = true;
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.xiaomi.analytics.intent.DEBUG_ON");
    localIntentFilter.addAction("com.xiaomi.analytics.intent.DEBUG_OFF");
    localIntentFilter.addAction("com.xiaomi.analytics.intent.STAGING_ON");
    localIntentFilter.addAction("com.xiaomi.analytics.intent.STAGING_OFF");
    this.a.registerReceiver(this.c, localIntentFilter);
  }
  
  class a
    extends BroadcastReceiver
  {
    a() {}
    
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      if (paramIntent == null) {
        return;
      }
      paramIntent = paramIntent.getAction();
      String str = a.a("Debugger");
      paramContext = new StringBuilder();
      paramContext.append("action = ");
      paramContext.append(paramIntent);
      Log.d(str, paramContext.toString());
      if ("com.xiaomi.analytics.intent.DEBUG_ON".equals(paramIntent)) {
        a.a = true;
      } else if ("com.xiaomi.analytics.intent.DEBUG_OFF".equals(paramIntent)) {
        a.a = false;
      } else if ("com.xiaomi.analytics.intent.STAGING_ON".equals(paramIntent)) {
        b.e = true;
      } else if ("com.xiaomi.analytics.intent.STAGING_OFF".equals(paramIntent)) {
        b.e = false;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     e6.b
 * JD-Core Version:    0.7.0.1
 */