package f5;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import d5.a.a;

class a
  implements ServiceConnection
{
  a(c paramc) {}
  
  public void onServiceConnected(ComponentName arg1, IBinder paramIBinder)
  {
    ??? = new StringBuilder();
    ???.append("onServiceConnected. from startting binding service to connected,it spent ");
    ???.append(System.currentTimeMillis() - c.e());
    ???.append("ms.");
    Log.d("RemoteUnifiedAdService", ???.toString());
    try
    {
      synchronized (c.a(this.a))
      {
        c.d(this.a, a.a.n0(paramIBinder));
        c.a(this.a).notifyAll();
      }
      return;
    }
    catch (Exception ???)
    {
      Log.e("RemoteUnifiedAdService", "onServiceConnected", ???);
    }
  }
  
  public void onServiceDisconnected(ComponentName arg1)
  {
    Log.d("RemoteUnifiedAdService", "onServiceDisconnected");
    synchronized (c.a(this.a))
    {
      c.d(this.a, null);
      return;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f5.a
 * JD-Core Version:    0.7.0.1
 */