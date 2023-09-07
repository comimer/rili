package androidx.lifecycle;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

public class q
  extends Service
  implements n
{
  private final h0 a = new h0(this);
  
  public Lifecycle getLifecycle()
  {
    return this.a.a();
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    this.a.b();
    return null;
  }
  
  public void onCreate()
  {
    this.a.c();
    super.onCreate();
  }
  
  public void onDestroy()
  {
    this.a.d();
    super.onDestroy();
  }
  
  public void onStart(Intent paramIntent, int paramInt)
  {
    this.a.e();
    super.onStart(paramIntent, paramInt);
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    return super.onStartCommand(paramIntent, paramInt1, paramInt2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.q
 * JD-Core Version:    0.7.0.1
 */