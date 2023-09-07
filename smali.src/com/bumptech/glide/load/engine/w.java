package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d.a;
import java.util.Collections;
import java.util.List;
import p2.a.b;
import r2.n.a;

class w
  implements e, e.a
{
  private final f<?> a;
  private final e.a b;
  private int c;
  private b d;
  private Object e;
  private volatile n.a<?> f;
  private c g;
  
  w(f<?> paramf, e.a parama)
  {
    this.a = paramf;
    this.b = parama;
  }
  
  private void d(Object paramObject)
  {
    long l = f3.f.b();
    try
    {
      n2.a locala = this.a.p(paramObject);
      Object localObject = new com/bumptech/glide/load/engine/d;
      ((d)localObject).<init>(locala, paramObject, this.a.k());
      c localc = new com/bumptech/glide/load/engine/c;
      localc.<init>(this.f.a, this.a.o());
      this.g = localc;
      this.a.d().b(this.g, (a.b)localObject);
      if (Log.isLoggable("SourceGenerator", 2))
      {
        localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        ((StringBuilder)localObject).append("Finished encoding source to cache, key: ");
        ((StringBuilder)localObject).append(this.g);
        ((StringBuilder)localObject).append(", data: ");
        ((StringBuilder)localObject).append(paramObject);
        ((StringBuilder)localObject).append(", encoder: ");
        ((StringBuilder)localObject).append(locala);
        ((StringBuilder)localObject).append(", duration: ");
        ((StringBuilder)localObject).append(f3.f.a(l));
        Log.v("SourceGenerator", ((StringBuilder)localObject).toString());
      }
      this.f.c.b();
      this.d = new b(Collections.singletonList(this.f.a), this.a, this);
      return;
    }
    finally
    {
      this.f.c.b();
    }
  }
  
  private boolean e()
  {
    boolean bool;
    if (this.c < this.a.g().size()) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void j(final n.a<?> parama)
  {
    this.f.c.e(this.a.l(), new a(parama));
  }
  
  public boolean a()
  {
    Object localObject = this.e;
    if (localObject != null)
    {
      this.e = null;
      d(localObject);
    }
    localObject = this.d;
    if ((localObject != null) && (((b)localObject).a())) {
      return true;
    }
    this.d = null;
    this.f = null;
    for (boolean bool = false; (!bool) && (e()); bool = true)
    {
      label49:
      localObject = this.a.g();
      int i = this.c;
      this.c = (i + 1);
      this.f = ((n.a)((List)localObject).get(i));
      if ((this.f == null) || ((!this.a.e().c(this.f.c.d())) && (!this.a.t(this.f.c.a())))) {
        break label49;
      }
      j(this.f);
    }
    return bool;
  }
  
  public void b(n2.b paramb1, Object paramObject, com.bumptech.glide.load.data.d<?> paramd, DataSource paramDataSource, n2.b paramb2)
  {
    this.b.b(paramb1, paramObject, paramd, this.f.c.d(), paramb1);
  }
  
  public void c()
  {
    throw new UnsupportedOperationException();
  }
  
  public void cancel()
  {
    n.a locala = this.f;
    if (locala != null) {
      locala.c.cancel();
    }
  }
  
  boolean f(n.a<?> parama)
  {
    n.a locala = this.f;
    boolean bool;
    if ((locala != null) && (locala == parama)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  void g(n.a<?> parama, Object paramObject)
  {
    Object localObject = this.a.e();
    if ((paramObject != null) && (((h)localObject).c(parama.c.d())))
    {
      this.e = paramObject;
      this.b.c();
    }
    else
    {
      e.a locala = this.b;
      localObject = parama.a;
      parama = parama.c;
      locala.b((n2.b)localObject, paramObject, parama, parama.d(), this.g);
    }
  }
  
  void h(n.a<?> parama, Exception paramException)
  {
    e.a locala = this.b;
    c localc = this.g;
    parama = parama.c;
    locala.i(localc, paramException, parama, parama.d());
  }
  
  public void i(n2.b paramb, Exception paramException, com.bumptech.glide.load.data.d<?> paramd, DataSource paramDataSource)
  {
    this.b.i(paramb, paramException, paramd, this.f.c.d());
  }
  
  class a
    implements d.a<Object>
  {
    a(n.a parama) {}
    
    public void c(Exception paramException)
    {
      if (w.this.f(parama)) {
        w.this.h(parama, paramException);
      }
    }
    
    public void f(Object paramObject)
    {
      if (w.this.f(parama)) {
        w.this.g(parama, paramObject);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.w
 * JD-Core Version:    0.7.0.1
 */