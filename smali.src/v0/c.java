package v0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.k;
import z0.a;

public abstract class c<T>
  extends d<T>
{
  private static final String h = k.f("BrdcstRcvrCnstrntTrckr");
  private final BroadcastReceiver g = new a();
  
  public c(Context paramContext, a parama)
  {
    super(paramContext, parama);
  }
  
  public void e()
  {
    k.c().a(h, String.format("%s: registering receiver", new Object[] { getClass().getSimpleName() }), new Throwable[0]);
    this.b.registerReceiver(this.g, g());
  }
  
  public void f()
  {
    k.c().a(h, String.format("%s: unregistering receiver", new Object[] { getClass().getSimpleName() }), new Throwable[0]);
    this.b.unregisterReceiver(this.g);
  }
  
  public abstract IntentFilter g();
  
  public abstract void h(Context paramContext, Intent paramIntent);
  
  class a
    extends BroadcastReceiver
  {
    a() {}
    
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      if (paramIntent != null) {
        c.this.h(paramContext, paramIntent);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     v0.c
 * JD-Core Version:    0.7.0.1
 */