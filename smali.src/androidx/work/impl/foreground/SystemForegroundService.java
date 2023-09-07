package androidx.work.impl.foreground;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import androidx.lifecycle.q;
import androidx.work.k;

public class SystemForegroundService
  extends q
  implements a.b
{
  private static final String f = k.f("SystemFgService");
  private static SystemForegroundService g = null;
  private Handler b;
  private boolean c;
  a d;
  NotificationManager e;
  
  private void e()
  {
    this.b = new Handler(Looper.getMainLooper());
    this.e = ((NotificationManager)getApplicationContext().getSystemService("notification"));
    a locala = new a(getApplicationContext());
    this.d = locala;
    locala.m(this);
  }
  
  public void b(final int paramInt1, final int paramInt2, final Notification paramNotification)
  {
    this.b.post(new a(paramInt1, paramNotification, paramInt2));
  }
  
  public void c(final int paramInt, final Notification paramNotification)
  {
    this.b.post(new b(paramInt, paramNotification));
  }
  
  public void d(final int paramInt)
  {
    this.b.post(new c(paramInt));
  }
  
  public void onCreate()
  {
    super.onCreate();
    g = this;
    e();
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    this.d.k();
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    super.onStartCommand(paramIntent, paramInt1, paramInt2);
    if (this.c)
    {
      k.c().d(f, "Re-initializing SystemForegroundService after a request to shut-down.", new Throwable[0]);
      this.d.k();
      e();
      this.c = false;
    }
    if (paramIntent != null) {
      this.d.l(paramIntent);
    }
    return 3;
  }
  
  public void stop()
  {
    this.c = true;
    k.c().a(f, "All commands completed.", new Throwable[0]);
    stopForeground(true);
    g = null;
    stopSelf();
  }
  
  class a
    implements Runnable
  {
    a(int paramInt1, Notification paramNotification, int paramInt2) {}
    
    public void run()
    {
      if (Build.VERSION.SDK_INT >= 29) {
        SystemForegroundService.this.startForeground(paramInt1, paramNotification, paramInt2);
      } else {
        SystemForegroundService.this.startForeground(paramInt1, paramNotification);
      }
    }
  }
  
  class b
    implements Runnable
  {
    b(int paramInt, Notification paramNotification) {}
    
    public void run()
    {
      SystemForegroundService.this.e.notify(paramInt, paramNotification);
    }
  }
  
  class c
    implements Runnable
  {
    c(int paramInt) {}
    
    public void run()
    {
      SystemForegroundService.this.e.cancel(paramInt);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.impl.foreground.SystemForegroundService
 * JD-Core Version:    0.7.0.1
 */