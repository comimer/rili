package com.bumptech.glide.load.engine;

import f3.j;
import n2.b;

class n<Z>
  implements s<Z>
{
  private final boolean a;
  private final boolean b;
  private final s<Z> c;
  private final a d;
  private final b e;
  private int f;
  private boolean g;
  
  n(s<Z> params, boolean paramBoolean1, boolean paramBoolean2, b paramb, a parama)
  {
    this.c = ((s)j.d(params));
    this.a = paramBoolean1;
    this.b = paramBoolean2;
    this.e = paramb;
    this.d = ((a)j.d(parama));
  }
  
  public void a()
  {
    try
    {
      if (this.f <= 0)
      {
        if (!this.g)
        {
          this.g = true;
          if (this.b) {
            this.c.a();
          }
          return;
        }
        localIllegalStateException = new java/lang/IllegalStateException;
        localIllegalStateException.<init>("Cannot recycle a resource that has already been recycled");
        throw localIllegalStateException;
      }
      IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
      localIllegalStateException.<init>("Cannot recycle a resource while it is still acquired");
      throw localIllegalStateException;
    }
    finally {}
  }
  
  public int b()
  {
    return this.c.b();
  }
  
  void c()
  {
    try
    {
      if (!this.g)
      {
        this.f += 1;
        return;
      }
      IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
      localIllegalStateException.<init>("Cannot acquire a recycled resource");
      throw localIllegalStateException;
    }
    finally {}
  }
  
  public Class<Z> d()
  {
    return this.c.d();
  }
  
  s<Z> e()
  {
    return this.c;
  }
  
  boolean f()
  {
    return this.a;
  }
  
  void g()
  {
    try
    {
      int i = this.f;
      if (i > 0)
      {
        int j = 1;
        i--;
        this.f = i;
        if (i != 0) {
          j = 0;
        }
        if (j != 0) {
          this.d.d(this.e, this);
        }
        return;
      }
      IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
      localIllegalStateException.<init>("Cannot release a recycled or not yet acquired resource");
      throw localIllegalStateException;
    }
    finally {}
  }
  
  public Z get()
  {
    return this.c.get();
  }
  
  public String toString()
  {
    try
    {
      Object localObject1 = new java/lang/StringBuilder;
      ((StringBuilder)localObject1).<init>();
      ((StringBuilder)localObject1).append("EngineResource{isMemoryCacheable=");
      ((StringBuilder)localObject1).append(this.a);
      ((StringBuilder)localObject1).append(", listener=");
      ((StringBuilder)localObject1).append(this.d);
      ((StringBuilder)localObject1).append(", key=");
      ((StringBuilder)localObject1).append(this.e);
      ((StringBuilder)localObject1).append(", acquired=");
      ((StringBuilder)localObject1).append(this.f);
      ((StringBuilder)localObject1).append(", isRecycled=");
      ((StringBuilder)localObject1).append(this.g);
      ((StringBuilder)localObject1).append(", resource=");
      ((StringBuilder)localObject1).append(this.c);
      ((StringBuilder)localObject1).append('}');
      localObject1 = ((StringBuilder)localObject1).toString();
      return localObject1;
    }
    finally
    {
      localObject2 = finally;
      throw localObject2;
    }
  }
  
  static abstract interface a
  {
    public abstract void d(b paramb, n<?> paramn);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.n
 * JD-Core Version:    0.7.0.1
 */