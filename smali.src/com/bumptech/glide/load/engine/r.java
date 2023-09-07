package com.bumptech.glide.load.engine;

import androidx.core.util.e;
import f3.j;
import g3.a;
import g3.a.d;
import g3.a.f;
import g3.c;

final class r<Z>
  implements s<Z>, a.f
{
  private static final e<r<?>> e = a.d(20, new a());
  private final c a = c.a();
  private s<Z> b;
  private boolean c;
  private boolean d;
  
  private void c(s<Z> params)
  {
    this.d = false;
    this.c = true;
    this.b = params;
  }
  
  static <Z> r<Z> e(s<Z> params)
  {
    r localr = (r)j.d((r)e.b());
    localr.c(params);
    return localr;
  }
  
  private void f()
  {
    this.b = null;
    e.a(this);
  }
  
  public void a()
  {
    try
    {
      this.a.c();
      this.d = true;
      if (!this.c)
      {
        this.b.a();
        f();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public int b()
  {
    return this.b.b();
  }
  
  public Class<Z> d()
  {
    return this.b.d();
  }
  
  void g()
  {
    try
    {
      this.a.c();
      if (this.c)
      {
        this.c = false;
        if (this.d) {
          a();
        }
        return;
      }
      IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
      localIllegalStateException.<init>("Already unlocked");
      throw localIllegalStateException;
    }
    finally {}
  }
  
  public Z get()
  {
    return this.b.get();
  }
  
  public c h()
  {
    return this.a;
  }
  
  class a
    implements a.d<r<?>>
  {
    public r<?> a()
    {
      return new r();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.r
 * JD-Core Version:    0.7.0.1
 */