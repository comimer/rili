package v0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.ConnectivityManager.NetworkCallback;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import androidx.work.k;
import t0.b;

public class e
  extends d<b>
{
  static final String j = k.f("NetworkStateTracker");
  private final ConnectivityManager g = (ConnectivityManager)this.b.getSystemService("connectivity");
  private b h;
  private a i;
  
  public e(Context paramContext, z0.a parama)
  {
    super(paramContext, parama);
    if (j()) {
      this.h = new b();
    } else {
      this.i = new a();
    }
  }
  
  private static boolean j()
  {
    return true;
  }
  
  public void e()
  {
    if (j())
    {
      try
      {
        k.c().a(j, "Registering network callback", new Throwable[0]);
        this.g.registerDefaultNetworkCallback(this.h);
      }
      catch (SecurityException localSecurityException) {}catch (IllegalArgumentException localIllegalArgumentException) {}
      k.c().b(j, "Received exception while registering network callback", new Throwable[] { localIllegalArgumentException });
    }
    else
    {
      k.c().a(j, "Registering broadcast receiver", new Throwable[0]);
      this.b.registerReceiver(this.i, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }
  }
  
  public void f()
  {
    if (j())
    {
      try
      {
        k.c().a(j, "Unregistering network callback", new Throwable[0]);
        this.g.unregisterNetworkCallback(this.h);
      }
      catch (SecurityException localSecurityException) {}catch (IllegalArgumentException localIllegalArgumentException) {}
      k.c().b(j, "Received exception while unregistering network callback", new Throwable[] { localIllegalArgumentException });
    }
    else
    {
      k.c().a(j, "Unregistering broadcast receiver", new Throwable[0]);
      this.b.unregisterReceiver(this.i);
    }
  }
  
  b g()
  {
    NetworkInfo localNetworkInfo = this.g.getActiveNetworkInfo();
    boolean bool1 = true;
    boolean bool2;
    if ((localNetworkInfo != null) && (localNetworkInfo.isConnected())) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    boolean bool3 = i();
    boolean bool4 = androidx.core.net.a.a(this.g);
    if ((localNetworkInfo == null) || (localNetworkInfo.isRoaming())) {
      bool1 = false;
    }
    return new b(bool2, bool3, bool4, bool1);
  }
  
  public b h()
  {
    return g();
  }
  
  boolean i()
  {
    boolean bool1 = true;
    try
    {
      Object localObject = this.g.getActiveNetwork();
      localObject = this.g.getNetworkCapabilities((Network)localObject);
      if (localObject != null)
      {
        boolean bool2 = ((NetworkCapabilities)localObject).hasCapability(16);
        if (bool2) {}
      }
      else
      {
        bool1 = false;
      }
      return bool1;
    }
    catch (SecurityException localSecurityException)
    {
      k.c().b(j, "Unable to validate active network", new Throwable[] { localSecurityException });
    }
    return false;
  }
  
  private class a
    extends BroadcastReceiver
  {
    a() {}
    
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      if ((paramIntent != null) && (paramIntent.getAction() != null) && (paramIntent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")))
      {
        k.c().a(e.j, "Network broadcast received", new Throwable[0]);
        paramContext = e.this;
        paramContext.d(paramContext.g());
      }
    }
  }
  
  private class b
    extends ConnectivityManager.NetworkCallback
  {
    b() {}
    
    public void onCapabilitiesChanged(Network paramNetwork, NetworkCapabilities paramNetworkCapabilities)
    {
      k.c().a(e.j, String.format("Network capabilities changed: %s", new Object[] { paramNetworkCapabilities }), new Throwable[0]);
      paramNetwork = e.this;
      paramNetwork.d(paramNetwork.g());
    }
    
    public void onLost(Network paramNetwork)
    {
      k.c().a(e.j, "Network connection lost", new Throwable[0]);
      paramNetwork = e.this;
      paramNetwork.d(paramNetwork.g());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     v0.e
 * JD-Core Version:    0.7.0.1
 */