package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.request.a;
import com.bumptech.glide.request.e;
import f3.k;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import z2.c.a;
import z2.l;
import z2.m;
import z2.q;
import z2.r;
import z2.t;

public class h
  implements ComponentCallbacks2, m
{
  private static final e l = (e)e.m0(Bitmap.class).R();
  private static final e m = (e)e.m0(x2.c.class).R();
  private static final e n = (e)((e)e.n0(com.bumptech.glide.load.engine.h.c).Z(Priority.LOW)).g0(true);
  protected final b a;
  protected final Context b;
  final l c;
  private final r d;
  private final q e;
  private final t f = new t();
  private final Runnable g;
  private final z2.c h;
  private final CopyOnWriteArrayList<com.bumptech.glide.request.d<Object>> i;
  private e j;
  private boolean k;
  
  public h(b paramb, l paraml, q paramq, Context paramContext)
  {
    this(paramb, paraml, paramq, new r(), paramb.g(), paramContext);
  }
  
  h(b paramb, l paraml, q paramq, r paramr, z2.d paramd, Context paramContext)
  {
    a locala = new a();
    this.g = locala;
    this.a = paramb;
    this.c = paraml;
    this.e = paramq;
    this.d = paramr;
    this.b = paramContext;
    paramq = paramd.a(paramContext.getApplicationContext(), new b(paramr));
    this.h = paramq;
    if (k.q()) {
      k.u(locala);
    } else {
      paraml.b(this);
    }
    paraml.b(paramq);
    this.i = new CopyOnWriteArrayList(paramb.i().c());
    w(paramb.i().d());
    paramb.o(this);
  }
  
  private void z(c3.h<?> paramh)
  {
    boolean bool = y(paramh);
    com.bumptech.glide.request.c localc = paramh.i();
    if ((!bool) && (!this.a.p(paramh)) && (localc != null))
    {
      paramh.d(null);
      localc.clear();
    }
  }
  
  public void a()
  {
    try
    {
      v();
      this.f.a();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void b()
  {
    try
    {
      u();
      this.f.b();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public <ResourceType> g<ResourceType> k(Class<ResourceType> paramClass)
  {
    return new g(this.a, this, paramClass, this.b);
  }
  
  public g<Bitmap> l()
  {
    return k(Bitmap.class).n0(l);
  }
  
  public g<Drawable> m()
  {
    return k(Drawable.class);
  }
  
  public void n(c3.h<?> paramh)
  {
    if (paramh == null) {
      return;
    }
    z(paramh);
  }
  
  List<com.bumptech.glide.request.d<Object>> o()
  {
    return this.i;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration) {}
  
  public void onDestroy()
  {
    try
    {
      this.f.onDestroy();
      Iterator localIterator = this.f.l().iterator();
      while (localIterator.hasNext()) {
        n((c3.h)localIterator.next());
      }
      this.f.k();
      this.d.b();
      this.c.a(this);
      this.c.a(this.h);
      k.v(this.g);
      this.a.s(this);
      return;
    }
    finally {}
  }
  
  public void onLowMemory() {}
  
  public void onTrimMemory(int paramInt)
  {
    if ((paramInt == 60) && (this.k)) {
      t();
    }
  }
  
  e p()
  {
    try
    {
      e locale = this.j;
      return locale;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  <T> i<?, T> q(Class<T> paramClass)
  {
    return this.a.i().e(paramClass);
  }
  
  public g<Drawable> r(String paramString)
  {
    return m().A0(paramString);
  }
  
  public void s()
  {
    try
    {
      this.d.c();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void t()
  {
    try
    {
      s();
      Iterator localIterator = this.e.a().iterator();
      while (localIterator.hasNext()) {
        ((h)localIterator.next()).s();
      }
      return;
    }
    finally {}
  }
  
  public String toString()
  {
    try
    {
      Object localObject1 = new java/lang/StringBuilder;
      ((StringBuilder)localObject1).<init>();
      ((StringBuilder)localObject1).append(super.toString());
      ((StringBuilder)localObject1).append("{tracker=");
      ((StringBuilder)localObject1).append(this.d);
      ((StringBuilder)localObject1).append(", treeNode=");
      ((StringBuilder)localObject1).append(this.e);
      ((StringBuilder)localObject1).append("}");
      localObject1 = ((StringBuilder)localObject1).toString();
      return localObject1;
    }
    finally
    {
      localObject2 = finally;
      throw localObject2;
    }
  }
  
  public void u()
  {
    try
    {
      this.d.d();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void v()
  {
    try
    {
      this.d.f();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  protected void w(e parame)
  {
    try
    {
      this.j = ((e)((e)parame.f()).b());
      return;
    }
    finally
    {
      parame = finally;
      throw parame;
    }
  }
  
  void x(c3.h<?> paramh, com.bumptech.glide.request.c paramc)
  {
    try
    {
      this.f.m(paramh);
      this.d.g(paramc);
      return;
    }
    finally
    {
      paramh = finally;
      throw paramh;
    }
  }
  
  boolean y(c3.h<?> paramh)
  {
    try
    {
      com.bumptech.glide.request.c localc = paramh.i();
      if (localc == null) {
        return true;
      }
      if (this.d.a(localc))
      {
        this.f.n(paramh);
        paramh.d(null);
        return true;
      }
      return false;
    }
    finally {}
  }
  
  class a
    implements Runnable
  {
    a() {}
    
    public void run()
    {
      h localh = h.this;
      localh.c.b(localh);
    }
  }
  
  private class b
    implements c.a
  {
    private final r a;
    
    b(r paramr)
    {
      this.a = paramr;
    }
    
    public void a(boolean paramBoolean)
    {
      if (paramBoolean) {
        synchronized (h.this)
        {
          this.a.e();
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.h
 * JD-Core Version:    0.7.0.1
 */