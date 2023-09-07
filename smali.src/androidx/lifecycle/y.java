package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;

public class y
  implements n
{
  private static final y i = new y();
  private int a = 0;
  private int b = 0;
  private boolean c = true;
  private boolean d = true;
  private Handler e;
  private final o f = new o(this);
  private Runnable g = new a();
  a0.a h = new b();
  
  public static n h()
  {
    return i;
  }
  
  static void i(Context paramContext)
  {
    i.e(paramContext);
  }
  
  void a()
  {
    int j = this.b - 1;
    this.b = j;
    if (j == 0) {
      this.e.postDelayed(this.g, 700L);
    }
  }
  
  void b()
  {
    int j = this.b + 1;
    this.b = j;
    if (j == 1) {
      if (this.c)
      {
        this.f.h(Lifecycle.Event.ON_RESUME);
        this.c = false;
      }
      else
      {
        this.e.removeCallbacks(this.g);
      }
    }
  }
  
  void c()
  {
    int j = this.a + 1;
    this.a = j;
    if ((j == 1) && (this.d))
    {
      this.f.h(Lifecycle.Event.ON_START);
      this.d = false;
    }
  }
  
  void d()
  {
    this.a -= 1;
    g();
  }
  
  void e(Context paramContext)
  {
    this.e = new Handler();
    this.f.h(Lifecycle.Event.ON_CREATE);
    ((Application)paramContext.getApplicationContext()).registerActivityLifecycleCallbacks(new c());
  }
  
  void f()
  {
    if (this.b == 0)
    {
      this.c = true;
      this.f.h(Lifecycle.Event.ON_PAUSE);
    }
  }
  
  void g()
  {
    if ((this.a == 0) && (this.c))
    {
      this.f.h(Lifecycle.Event.ON_STOP);
      this.d = true;
    }
  }
  
  public Lifecycle getLifecycle()
  {
    return this.f;
  }
  
  class a
    implements Runnable
  {
    a() {}
    
    public void run()
    {
      y.this.f();
      y.this.g();
    }
  }
  
  class b
    implements a0.a
  {
    b() {}
    
    public void a()
    {
      y.this.c();
    }
    
    public void b()
    {
      y.this.b();
    }
    
    public void onCreate() {}
  }
  
  class c
    extends f
  {
    c() {}
    
    public void onActivityCreated(Activity paramActivity, Bundle paramBundle)
    {
      if (Build.VERSION.SDK_INT < 29) {
        a0.f(paramActivity).h(y.this.h);
      }
    }
    
    public void onActivityPaused(Activity paramActivity)
    {
      y.this.a();
    }
    
    public void onActivityPreCreated(Activity paramActivity, Bundle paramBundle)
    {
      z.a(paramActivity, new a());
    }
    
    public void onActivityStopped(Activity paramActivity)
    {
      y.this.d();
    }
    
    class a
      extends f
    {
      a() {}
      
      public void onActivityPostResumed(Activity paramActivity)
      {
        y.this.b();
      }
      
      public void onActivityPostStarted(Activity paramActivity)
      {
        y.this.c();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.y
 * JD-Core Version:    0.7.0.1
 */