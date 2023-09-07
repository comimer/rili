package androidx.work.impl.background.systemalarm;

import android.app.Service;
import android.content.Intent;
import androidx.lifecycle.q;
import androidx.work.k;
import y0.m;

public class SystemAlarmService
  extends q
  implements e.c
{
  private static final String d = k.f("SystemAlarmService");
  private e b;
  private boolean c;
  
  private void e()
  {
    e locale = new e(this);
    this.b = locale;
    locale.m(this);
  }
  
  public void a()
  {
    this.c = true;
    k.c().a(d, "All commands completed in dispatcher", new Throwable[0]);
    m.a();
    stopSelf();
  }
  
  public void onCreate()
  {
    super.onCreate();
    e();
    this.c = false;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    this.c = true;
    this.b.j();
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    super.onStartCommand(paramIntent, paramInt1, paramInt2);
    if (this.c)
    {
      k.c().d(d, "Re-initializing SystemAlarmDispatcher after a request to shut-down.", new Throwable[0]);
      this.b.j();
      e();
      this.c = false;
    }
    if (paramIntent != null) {
      this.b.a(paramIntent, paramInt2);
    }
    return 3;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.impl.background.systemalarm.SystemAlarmService
 * JD-Core Version:    0.7.0.1
 */