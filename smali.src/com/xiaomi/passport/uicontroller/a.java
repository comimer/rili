package com.xiaomi.passport.uicontroller;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import x5.d;

public class a<T>
  extends FutureTask<T>
{
  private final d<b<T>> a;
  
  public a(Callable<T> paramCallable, b<T> paramb)
  {
    super(paramCallable);
    this.a = new d(paramb);
  }
  
  public boolean cancel(boolean paramBoolean)
  {
    this.a.b(null);
    return super.cancel(paramBoolean);
  }
  
  protected void done()
  {
    if (!isCancelled()) {
      new Handler(Looper.getMainLooper()).post(new a());
    }
    super.done();
  }
  
  class a
    implements Runnable
  {
    a() {}
    
    public void run()
    {
      a.b localb = (a.b)a.a(a.this).a();
      if (localb != null) {
        localb.a(a.this);
      }
    }
  }
  
  public static abstract class b<T>
  {
    public abstract void a(a<T> parama);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.uicontroller.a
 * JD-Core Version:    0.7.0.1
 */