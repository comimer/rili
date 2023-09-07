package z2;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import f3.j;

final class e
  implements c
{
  private final Context a;
  final c.a b;
  boolean c;
  private boolean d;
  private final BroadcastReceiver e = new a();
  
  e(Context paramContext, c.a parama)
  {
    this.a = paramContext.getApplicationContext();
    this.b = parama;
  }
  
  private void l()
  {
    if (this.d) {
      return;
    }
    this.c = k(this.a);
    try
    {
      Context localContext = this.a;
      BroadcastReceiver localBroadcastReceiver = this.e;
      IntentFilter localIntentFilter = new android/content/IntentFilter;
      localIntentFilter.<init>("android.net.conn.CONNECTIVITY_CHANGE");
      localContext.registerReceiver(localBroadcastReceiver, localIntentFilter);
      this.d = true;
    }
    catch (SecurityException localSecurityException)
    {
      if (Log.isLoggable("ConnectivityMonitor", 5)) {
        Log.w("ConnectivityMonitor", "Failed to register", localSecurityException);
      }
    }
  }
  
  private void m()
  {
    if (!this.d) {
      return;
    }
    this.a.unregisterReceiver(this.e);
    this.d = false;
  }
  
  public void a()
  {
    l();
  }
  
  public void b()
  {
    m();
  }
  
  @SuppressLint({"MissingPermission"})
  boolean k(Context paramContext)
  {
    paramContext = (ConnectivityManager)j.d((ConnectivityManager)paramContext.getSystemService("connectivity"));
    boolean bool = true;
    try
    {
      paramContext = paramContext.getActiveNetworkInfo();
      if ((paramContext == null) || (!paramContext.isConnected())) {
        bool = false;
      }
      return bool;
    }
    catch (RuntimeException paramContext)
    {
      if (Log.isLoggable("ConnectivityMonitor", 5)) {
        Log.w("ConnectivityMonitor", "Failed to determine connectivity status when connectivity changed", paramContext);
      }
    }
    return true;
  }
  
  public void onDestroy() {}
  
  class a
    extends BroadcastReceiver
  {
    a() {}
    
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      paramIntent = e.this;
      boolean bool = paramIntent.c;
      paramIntent.c = paramIntent.k(paramContext);
      if (bool != e.this.c)
      {
        if (Log.isLoggable("ConnectivityMonitor", 3))
        {
          paramContext = new StringBuilder();
          paramContext.append("connectivity changed, isConnected: ");
          paramContext.append(e.this.c);
          Log.d("ConnectivityMonitor", paramContext.toString());
        }
        paramContext = e.this;
        paramContext.b.a(paramContext.c);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z2.e
 * JD-Core Version:    0.7.0.1
 */