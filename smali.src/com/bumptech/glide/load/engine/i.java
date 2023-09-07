package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.core.util.e;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import g3.a.d;
import java.util.Map;
import java.util.concurrent.Executor;
import n2.g;
import p2.a.a;
import p2.h.a;

public class i
  implements k, h.a, n.a
{
  private static final boolean i = Log.isLoggable("Engine", 2);
  private final p a;
  private final m b;
  private final p2.h c;
  private final b d;
  private final v e;
  private final c f;
  private final a g;
  private final a h;
  
  i(p2.h paramh, a.a parama, q2.a parama1, q2.a parama2, q2.a parama3, q2.a parama4, p paramp, m paramm, a parama5, b paramb, a parama6, v paramv, boolean paramBoolean)
  {
    this.c = paramh;
    c localc = new c(parama);
    this.f = localc;
    if (parama5 == null) {
      parama = new a(paramBoolean);
    } else {
      parama = parama5;
    }
    this.h = parama;
    parama.f(this);
    if (paramm == null) {
      parama = new m();
    } else {
      parama = paramm;
    }
    this.b = parama;
    if (paramp == null) {
      paramp = new p();
    }
    this.a = paramp;
    if (paramb == null) {
      parama = new b(parama1, parama2, parama3, parama4, this, this);
    } else {
      parama = paramb;
    }
    this.d = parama;
    if (parama6 == null) {
      parama = new a(localc);
    } else {
      parama = parama6;
    }
    this.g = parama;
    if (paramv == null) {
      parama = new v();
    } else {
      parama = paramv;
    }
    this.e = parama;
    paramh.e(this);
  }
  
  public i(p2.h paramh, a.a parama, q2.a parama1, q2.a parama2, q2.a parama3, q2.a parama4, boolean paramBoolean)
  {
    this(paramh, parama, parama1, parama2, parama3, parama4, null, null, null, null, null, null, paramBoolean);
  }
  
  private n<?> e(n2.b paramb)
  {
    s locals = this.c.c(paramb);
    if (locals == null) {
      paramb = null;
    } else if ((locals instanceof n)) {
      paramb = (n)locals;
    } else {
      paramb = new n(locals, true, true, paramb, this);
    }
    return paramb;
  }
  
  private n<?> g(n2.b paramb)
  {
    paramb = this.h.e(paramb);
    if (paramb != null) {
      paramb.c();
    }
    return paramb;
  }
  
  private n<?> h(n2.b paramb)
  {
    n localn = e(paramb);
    if (localn != null)
    {
      localn.c();
      this.h.a(paramb, localn);
    }
    return localn;
  }
  
  private n<?> i(l paraml, boolean paramBoolean, long paramLong)
  {
    if (!paramBoolean) {
      return null;
    }
    n localn = g(paraml);
    if (localn != null)
    {
      if (i) {
        j("Loaded resource from active resources", paramLong, paraml);
      }
      return localn;
    }
    localn = h(paraml);
    if (localn != null)
    {
      if (i) {
        j("Loaded resource from cache", paramLong, paraml);
      }
      return localn;
    }
    return null;
  }
  
  private static void j(String paramString, long paramLong, n2.b paramb)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    localStringBuilder.append(" in ");
    localStringBuilder.append(f3.f.a(paramLong));
    localStringBuilder.append("ms, key: ");
    localStringBuilder.append(paramb);
    Log.v("Engine", localStringBuilder.toString());
  }
  
  private <R> d l(com.bumptech.glide.d paramd, Object paramObject, n2.b paramb, int paramInt1, int paramInt2, Class<?> paramClass, Class<R> paramClass1, Priority paramPriority, h paramh, Map<Class<?>, g<?>> paramMap, boolean paramBoolean1, boolean paramBoolean2, n2.d paramd1, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6, com.bumptech.glide.request.f paramf, Executor paramExecutor, l paraml, long paramLong)
  {
    j localj = this.a.a(paraml, paramBoolean6);
    if (localj != null)
    {
      localj.b(paramf, paramExecutor);
      if (i) {
        j("Added to existing load", paramLong, paraml);
      }
      return new d(paramf, localj);
    }
    localj = this.d.a(paraml, paramBoolean3, paramBoolean4, paramBoolean5, paramBoolean6);
    paramd = this.g.a(paramd, paramObject, paraml, paramb, paramInt1, paramInt2, paramClass, paramClass1, paramPriority, paramh, paramMap, paramBoolean1, paramBoolean2, paramBoolean6, paramd1, localj);
    this.a.c(paraml, localj);
    localj.b(paramf, paramExecutor);
    localj.s(paramd);
    if (i) {
      j("Started new load", paramLong, paraml);
    }
    return new d(paramf, localj);
  }
  
  public void a(s<?> params)
  {
    this.e.a(params, true);
  }
  
  public void b(j<?> paramj, n2.b paramb)
  {
    try
    {
      this.a.d(paramb, paramj);
      return;
    }
    finally
    {
      paramj = finally;
      throw paramj;
    }
  }
  
  public void c(j<?> paramj, n2.b paramb, n<?> paramn)
  {
    if (paramn != null) {}
    try
    {
      if (paramn.f()) {
        this.h.a(paramb, paramn);
      }
      this.a.d(paramb, paramj);
      return;
    }
    finally {}
  }
  
  public void d(n2.b paramb, n<?> paramn)
  {
    this.h.d(paramb);
    if (paramn.f()) {
      this.c.d(paramb, paramn);
    } else {
      this.e.a(paramn, false);
    }
  }
  
  public <R> d f(com.bumptech.glide.d paramd, Object paramObject, n2.b paramb, int paramInt1, int paramInt2, Class<?> paramClass, Class<R> paramClass1, Priority paramPriority, h paramh, Map<Class<?>, g<?>> paramMap, boolean paramBoolean1, boolean paramBoolean2, n2.d paramd1, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6, com.bumptech.glide.request.f paramf, Executor paramExecutor)
  {
    long l;
    if (i) {
      l = f3.f.b();
    } else {
      l = 0L;
    }
    l locall = this.b.a(paramObject, paramb, paramInt1, paramInt2, paramMap, paramClass, paramClass1, paramd1);
    try
    {
      n localn = i(locall, paramBoolean3, l);
      if (localn == null)
      {
        paramd = l(paramd, paramObject, paramb, paramInt1, paramInt2, paramClass, paramClass1, paramPriority, paramh, paramMap, paramBoolean1, paramBoolean2, paramd1, paramBoolean3, paramBoolean4, paramBoolean5, paramBoolean6, paramf, paramExecutor, locall, l);
        return paramd;
      }
      paramf.c(localn, DataSource.MEMORY_CACHE, false);
      return null;
    }
    finally {}
  }
  
  public void k(s<?> params)
  {
    if ((params instanceof n))
    {
      ((n)params).g();
      return;
    }
    throw new IllegalArgumentException("Cannot release anything but an EngineResource");
  }
  
  static class a
  {
    final DecodeJob.e a;
    final e<DecodeJob<?>> b = g3.a.d(150, new a());
    private int c;
    
    a(DecodeJob.e parame)
    {
      this.a = parame;
    }
    
    <R> DecodeJob<R> a(com.bumptech.glide.d paramd, Object paramObject, l paraml, n2.b paramb, int paramInt1, int paramInt2, Class<?> paramClass, Class<R> paramClass1, Priority paramPriority, h paramh, Map<Class<?>, g<?>> paramMap, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, n2.d paramd1, DecodeJob.b<R> paramb1)
    {
      DecodeJob localDecodeJob = (DecodeJob)f3.j.d((DecodeJob)this.b.b());
      int i = this.c;
      this.c = (i + 1);
      return localDecodeJob.s(paramd, paramObject, paraml, paramb, paramInt1, paramInt2, paramClass, paramClass1, paramPriority, paramh, paramMap, paramBoolean1, paramBoolean2, paramBoolean3, paramd1, paramb1, i);
    }
    
    class a
      implements a.d<DecodeJob<?>>
    {
      a() {}
      
      public DecodeJob<?> a()
      {
        i.a locala = i.a.this;
        return new DecodeJob(locala.a, locala.b);
      }
    }
  }
  
  static class b
  {
    final q2.a a;
    final q2.a b;
    final q2.a c;
    final q2.a d;
    final k e;
    final n.a f;
    final e<j<?>> g = g3.a.d(150, new a());
    
    b(q2.a parama1, q2.a parama2, q2.a parama3, q2.a parama4, k paramk, n.a parama)
    {
      this.a = parama1;
      this.b = parama2;
      this.c = parama3;
      this.d = parama4;
      this.e = paramk;
      this.f = parama;
    }
    
    <R> j<R> a(n2.b paramb, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
    {
      return ((j)f3.j.d((j)this.g.b())).l(paramb, paramBoolean1, paramBoolean2, paramBoolean3, paramBoolean4);
    }
    
    class a
      implements a.d<j<?>>
    {
      a() {}
      
      public j<?> a()
      {
        i.b localb = i.b.this;
        return new j(localb.a, localb.b, localb.c, localb.d, localb.e, localb.f, localb.g);
      }
    }
  }
  
  private static class c
    implements DecodeJob.e
  {
    private final a.a a;
    private volatile p2.a b;
    
    c(a.a parama)
    {
      this.a = parama;
    }
    
    public p2.a a()
    {
      if (this.b == null) {
        try
        {
          if (this.b == null) {
            this.b = this.a.build();
          }
          if (this.b == null)
          {
            p2.b localb = new p2/b;
            localb.<init>();
            this.b = localb;
          }
        }
        finally {}
      }
      return this.b;
    }
  }
  
  public class d
  {
    private final j<?> a;
    private final com.bumptech.glide.request.f b;
    
    d(j<?> paramj)
    {
      this.b = paramj;
      Object localObject;
      this.a = localObject;
    }
    
    public void a()
    {
      synchronized (i.this)
      {
        this.a.r(this.b);
        return;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.i
 * JD-Core Version:    0.7.0.1
 */