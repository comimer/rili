package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.request.f;
import g3.a.f;
import g3.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import n2.b;
import q2.a;

class j<R>
  implements DecodeJob.b<R>, a.f
{
  private static final c F = new c();
  private volatile boolean D;
  private boolean E;
  final e a = new e();
  private final c b = c.a();
  private final n.a c;
  private final androidx.core.util.e<j<?>> d;
  private final c e;
  private final k f;
  private final a g;
  private final a h;
  private final a i;
  private final a j;
  private final AtomicInteger k = new AtomicInteger();
  private b l;
  private boolean m;
  private boolean n;
  private boolean o;
  private boolean p;
  private s<?> q;
  DataSource r;
  private boolean v;
  GlideException w;
  private boolean x;
  n<?> y;
  private DecodeJob<R> z;
  
  j(a parama1, a parama2, a parama3, a parama4, k paramk, n.a parama, androidx.core.util.e<j<?>> parame)
  {
    this(parama1, parama2, parama3, parama4, paramk, parama, parame, F);
  }
  
  j(a parama1, a parama2, a parama3, a parama4, k paramk, n.a parama, androidx.core.util.e<j<?>> parame, c paramc)
  {
    this.g = parama1;
    this.h = parama2;
    this.i = parama3;
    this.j = parama4;
    this.f = paramk;
    this.c = parama;
    this.d = parame;
    this.e = paramc;
  }
  
  private a j()
  {
    a locala;
    if (this.n) {
      locala = this.i;
    } else if (this.o) {
      locala = this.j;
    } else {
      locala = this.h;
    }
    return locala;
  }
  
  private boolean m()
  {
    boolean bool;
    if ((!this.x) && (!this.v) && (!this.D)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private void q()
  {
    try
    {
      if (this.l != null)
      {
        this.a.clear();
        this.l = null;
        this.y = null;
        this.q = null;
        this.x = false;
        this.D = false;
        this.v = false;
        this.E = false;
        this.z.B(false);
        this.z = null;
        this.w = null;
        this.r = null;
        this.d.a(this);
        return;
      }
      IllegalArgumentException localIllegalArgumentException = new java/lang/IllegalArgumentException;
      localIllegalArgumentException.<init>();
      throw localIllegalArgumentException;
    }
    finally {}
  }
  
  public void a(GlideException paramGlideException)
  {
    try
    {
      this.w = paramGlideException;
      n();
      return;
    }
    finally {}
  }
  
  void b(f paramf, Executor paramExecutor)
  {
    try
    {
      this.b.c();
      this.a.c(paramf, paramExecutor);
      boolean bool1 = this.v;
      boolean bool2 = true;
      Object localObject;
      if (bool1)
      {
        k(1);
        localObject = new com/bumptech/glide/load/engine/j$b;
        ((b)localObject).<init>(this, paramf);
        paramExecutor.execute((Runnable)localObject);
      }
      else if (this.x)
      {
        k(1);
        localObject = new com/bumptech/glide/load/engine/j$a;
        ((a)localObject).<init>(this, paramf);
        paramExecutor.execute((Runnable)localObject);
      }
      else
      {
        if (this.D) {
          bool2 = false;
        }
        f3.j.a(bool2, "Cannot add callbacks to a cancelled EngineJob");
      }
      return;
    }
    finally {}
  }
  
  public void c(s<R> params, DataSource paramDataSource, boolean paramBoolean)
  {
    try
    {
      this.q = params;
      this.r = paramDataSource;
      this.E = paramBoolean;
      o();
      return;
    }
    finally {}
  }
  
  public void d(DecodeJob<?> paramDecodeJob)
  {
    j().execute(paramDecodeJob);
  }
  
  void e(f paramf)
  {
    try
    {
      paramf.a(this.w);
      return;
    }
    finally {}
  }
  
  void f(f paramf)
  {
    try
    {
      paramf.c(this.y, this.r, this.E);
      return;
    }
    finally {}
  }
  
  void g()
  {
    if (m()) {
      return;
    }
    this.D = true;
    this.z.j();
    this.f.b(this, this.l);
  }
  
  public c h()
  {
    return this.b;
  }
  
  void i()
  {
    try
    {
      this.b.c();
      f3.j.a(m(), "Not yet complete!");
      int i1 = this.k.decrementAndGet();
      boolean bool;
      if (i1 >= 0) {
        bool = true;
      } else {
        bool = false;
      }
      f3.j.a(bool, "Can't decrement below 0");
      n localn;
      if (i1 == 0)
      {
        localn = this.y;
        q();
      }
      else
      {
        localn = null;
      }
      if (localn != null) {
        localn.g();
      }
      return;
    }
    finally {}
  }
  
  void k(int paramInt)
  {
    try
    {
      f3.j.a(m(), "Not yet complete!");
      if (this.k.getAndAdd(paramInt) == 0)
      {
        n localn = this.y;
        if (localn != null) {
          localn.c();
        }
      }
      return;
    }
    finally {}
  }
  
  j<R> l(b paramb, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    try
    {
      this.l = paramb;
      this.m = paramBoolean1;
      this.n = paramBoolean2;
      this.o = paramBoolean3;
      this.p = paramBoolean4;
      return this;
    }
    finally
    {
      paramb = finally;
      throw paramb;
    }
  }
  
  void n()
  {
    try
    {
      this.b.c();
      if (this.D)
      {
        q();
        return;
      }
      if (!this.a.isEmpty())
      {
        if (!this.x)
        {
          this.x = true;
          localObject1 = this.l;
          Object localObject3 = this.a.h();
          k(((e)localObject3).size() + 1);
          this.f.c(this, (b)localObject1, null);
          localObject1 = ((e)localObject3).iterator();
          while (((Iterator)localObject1).hasNext())
          {
            localObject3 = (d)((Iterator)localObject1).next();
            ((d)localObject3).b.execute(new a(((d)localObject3).a));
          }
          i();
          return;
        }
        localObject1 = new java/lang/IllegalStateException;
        ((IllegalStateException)localObject1).<init>("Already failed once");
        throw ((Throwable)localObject1);
      }
      Object localObject1 = new java/lang/IllegalStateException;
      ((IllegalStateException)localObject1).<init>("Received an exception without any callbacks to notify");
      throw ((Throwable)localObject1);
    }
    finally {}
  }
  
  void o()
  {
    try
    {
      this.b.c();
      if (this.D)
      {
        this.q.a();
        q();
        return;
      }
      if (!this.a.isEmpty())
      {
        if (!this.v)
        {
          this.y = this.e.a(this.q, this.m, this.l, this.c);
          this.v = true;
          e locale = this.a.h();
          k(locale.size() + 1);
          localObject1 = this.l;
          Object localObject3 = this.y;
          this.f.c(this, (b)localObject1, (n)localObject3);
          localObject1 = locale.iterator();
          while (((Iterator)localObject1).hasNext())
          {
            localObject3 = (d)((Iterator)localObject1).next();
            ((d)localObject3).b.execute(new b(((d)localObject3).a));
          }
          i();
          return;
        }
        localObject1 = new java/lang/IllegalStateException;
        ((IllegalStateException)localObject1).<init>("Already have resource");
        throw ((Throwable)localObject1);
      }
      Object localObject1 = new java/lang/IllegalStateException;
      ((IllegalStateException)localObject1).<init>("Received a resource without any callbacks to notify");
      throw ((Throwable)localObject1);
    }
    finally {}
  }
  
  boolean p()
  {
    return this.p;
  }
  
  void r(f paramf)
  {
    try
    {
      this.b.c();
      this.a.k(paramf);
      if (this.a.isEmpty())
      {
        g();
        int i1;
        if ((!this.v) && (!this.x)) {
          i1 = 0;
        } else {
          i1 = 1;
        }
        if ((i1 != 0) && (this.k.get() == 0)) {
          q();
        }
      }
      return;
    }
    finally {}
  }
  
  public void s(DecodeJob<R> paramDecodeJob)
  {
    try
    {
      this.z = paramDecodeJob;
      a locala;
      if (paramDecodeJob.H()) {
        locala = this.g;
      } else {
        locala = j();
      }
      locala.execute(paramDecodeJob);
      return;
    }
    finally {}
  }
  
  private class a
    implements Runnable
  {
    private final f a;
    
    a(f paramf)
    {
      this.a = paramf;
    }
    
    public void run()
    {
      synchronized (this.a.g())
      {
        synchronized (j.this)
        {
          if (j.this.a.d(this.a)) {
            j.this.e(this.a);
          }
          j.this.i();
          return;
        }
      }
    }
  }
  
  private class b
    implements Runnable
  {
    private final f a;
    
    b(f paramf)
    {
      this.a = paramf;
    }
    
    public void run()
    {
      synchronized (this.a.g())
      {
        synchronized (j.this)
        {
          if (j.this.a.d(this.a))
          {
            j.this.y.c();
            j.this.f(this.a);
            j.this.r(this.a);
          }
          j.this.i();
          return;
        }
      }
    }
  }
  
  static class c
  {
    public <R> n<R> a(s<R> params, boolean paramBoolean, b paramb, n.a parama)
    {
      return new n(params, paramBoolean, true, paramb, parama);
    }
  }
  
  static final class d
  {
    final f a;
    final Executor b;
    
    d(f paramf, Executor paramExecutor)
    {
      this.a = paramf;
      this.b = paramExecutor;
    }
    
    public boolean equals(Object paramObject)
    {
      if ((paramObject instanceof d))
      {
        paramObject = (d)paramObject;
        return this.a.equals(paramObject.a);
      }
      return false;
    }
    
    public int hashCode()
    {
      return this.a.hashCode();
    }
  }
  
  static final class e
    implements Iterable<j.d>
  {
    private final List<j.d> a;
    
    e()
    {
      this(new ArrayList(2));
    }
    
    e(List<j.d> paramList)
    {
      this.a = paramList;
    }
    
    private static j.d j(f paramf)
    {
      return new j.d(paramf, f3.e.a());
    }
    
    void c(f paramf, Executor paramExecutor)
    {
      this.a.add(new j.d(paramf, paramExecutor));
    }
    
    void clear()
    {
      this.a.clear();
    }
    
    boolean d(f paramf)
    {
      return this.a.contains(j(paramf));
    }
    
    e h()
    {
      return new e(new ArrayList(this.a));
    }
    
    boolean isEmpty()
    {
      return this.a.isEmpty();
    }
    
    public Iterator<j.d> iterator()
    {
      return this.a.iterator();
    }
    
    void k(f paramf)
    {
      this.a.remove(j(paramf));
    }
    
    int size()
    {
      return this.a.size();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.j
 * JD-Core Version:    0.7.0.1
 */