package androidx.lifecycle;

import android.os.Handler;

public class h0
{
  private final o a;
  private final Handler b;
  private a c;
  
  public h0(n paramn)
  {
    this.a = new o(paramn);
    this.b = new Handler();
  }
  
  private void f(Lifecycle.Event paramEvent)
  {
    a locala = this.c;
    if (locala != null) {
      locala.run();
    }
    paramEvent = new a(this.a, paramEvent);
    this.c = paramEvent;
    this.b.postAtFrontOfQueue(paramEvent);
  }
  
  public Lifecycle a()
  {
    return this.a;
  }
  
  public void b()
  {
    f(Lifecycle.Event.ON_START);
  }
  
  public void c()
  {
    f(Lifecycle.Event.ON_CREATE);
  }
  
  public void d()
  {
    f(Lifecycle.Event.ON_STOP);
    f(Lifecycle.Event.ON_DESTROY);
  }
  
  public void e()
  {
    f(Lifecycle.Event.ON_START);
  }
  
  static class a
    implements Runnable
  {
    private final o a;
    final Lifecycle.Event b;
    private boolean c = false;
    
    a(o paramo, Lifecycle.Event paramEvent)
    {
      this.a = paramo;
      this.b = paramEvent;
    }
    
    public void run()
    {
      if (!this.c)
      {
        this.a.h(this.b);
        this.c = true;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.h0
 * JD-Core Version:    0.7.0.1
 */