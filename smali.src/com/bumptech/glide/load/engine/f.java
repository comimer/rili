package com.bumptech.glide.load.engine;

import com.bumptech.glide.Priority;
import com.bumptech.glide.Registry;
import com.bumptech.glide.Registry.NoModelLoaderAvailableException;
import com.bumptech.glide.Registry.NoSourceEncoderAvailableException;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import n2.g;
import r2.n;
import r2.n.a;
import t2.c;

final class f<Transcode>
{
  private final List<n.a<?>> a = new ArrayList();
  private final List<n2.b> b = new ArrayList();
  private com.bumptech.glide.d c;
  private Object d;
  private int e;
  private int f;
  private Class<?> g;
  private DecodeJob.e h;
  private n2.d i;
  private Map<Class<?>, g<?>> j;
  private Class<Transcode> k;
  private boolean l;
  private boolean m;
  private n2.b n;
  private Priority o;
  private h p;
  private boolean q;
  private boolean r;
  
  void a()
  {
    this.c = null;
    this.d = null;
    this.n = null;
    this.g = null;
    this.k = null;
    this.i = null;
    this.o = null;
    this.j = null;
    this.p = null;
    this.a.clear();
    this.l = false;
    this.b.clear();
    this.m = false;
  }
  
  com.bumptech.glide.load.engine.bitmap_recycle.b b()
  {
    return this.c.b();
  }
  
  List<n2.b> c()
  {
    if (!this.m)
    {
      this.m = true;
      this.b.clear();
      List localList = g();
      int i1 = localList.size();
      for (int i2 = 0; i2 < i1; i2++)
      {
        n.a locala = (n.a)localList.get(i2);
        if (!this.b.contains(locala.a)) {
          this.b.add(locala.a);
        }
        for (int i3 = 0; i3 < locala.b.size(); i3++) {
          if (!this.b.contains(locala.b.get(i3))) {
            this.b.add(locala.b.get(i3));
          }
        }
      }
    }
    return this.b;
  }
  
  p2.a d()
  {
    return this.h.a();
  }
  
  h e()
  {
    return this.p;
  }
  
  int f()
  {
    return this.f;
  }
  
  List<n.a<?>> g()
  {
    if (!this.l)
    {
      this.l = true;
      this.a.clear();
      List localList = this.c.i().i(this.d);
      int i1 = 0;
      int i2 = localList.size();
      while (i1 < i2)
      {
        n.a locala = ((n)localList.get(i1)).a(this.d, this.e, this.f, this.i);
        if (locala != null) {
          this.a.add(locala);
        }
        i1++;
      }
    }
    return this.a;
  }
  
  <Data> q<Data, ?, Transcode> h(Class<Data> paramClass)
  {
    return this.c.i().h(paramClass, this.g, this.k);
  }
  
  Class<?> i()
  {
    return this.d.getClass();
  }
  
  List<n<File, ?>> j(File paramFile)
    throws Registry.NoModelLoaderAvailableException
  {
    return this.c.i().i(paramFile);
  }
  
  n2.d k()
  {
    return this.i;
  }
  
  Priority l()
  {
    return this.o;
  }
  
  List<Class<?>> m()
  {
    return this.c.i().j(this.d.getClass(), this.g, this.k);
  }
  
  <Z> n2.f<Z> n(s<Z> params)
  {
    return this.c.i().k(params);
  }
  
  n2.b o()
  {
    return this.n;
  }
  
  <X> n2.a<X> p(X paramX)
    throws Registry.NoSourceEncoderAvailableException
  {
    return this.c.i().m(paramX);
  }
  
  Class<?> q()
  {
    return this.k;
  }
  
  <Z> g<Z> r(Class<Z> paramClass)
  {
    g localg = (g)this.j.get(paramClass);
    Object localObject = localg;
    if (localg == null)
    {
      Iterator localIterator = this.j.entrySet().iterator();
      do
      {
        localObject = localg;
        if (!localIterator.hasNext()) {
          break;
        }
        localObject = (Map.Entry)localIterator.next();
      } while (!((Class)((Map.Entry)localObject).getKey()).isAssignableFrom(paramClass));
      localObject = (g)((Map.Entry)localObject).getValue();
    }
    if (localObject == null)
    {
      if ((this.j.isEmpty()) && (this.q))
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Missing transformation for ");
        ((StringBuilder)localObject).append(paramClass);
        ((StringBuilder)localObject).append(". If you wish to ignore unknown resource types, use the optional transformation methods.");
        throw new IllegalArgumentException(((StringBuilder)localObject).toString());
      }
      return c.c();
    }
    return localObject;
  }
  
  int s()
  {
    return this.e;
  }
  
  boolean t(Class<?> paramClass)
  {
    boolean bool;
    if (h(paramClass) != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  <R> void u(com.bumptech.glide.d paramd, Object paramObject, n2.b paramb, int paramInt1, int paramInt2, h paramh, Class<?> paramClass, Class<R> paramClass1, Priority paramPriority, n2.d paramd1, Map<Class<?>, g<?>> paramMap, boolean paramBoolean1, boolean paramBoolean2, DecodeJob.e parame)
  {
    this.c = paramd;
    this.d = paramObject;
    this.n = paramb;
    this.e = paramInt1;
    this.f = paramInt2;
    this.p = paramh;
    this.g = paramClass;
    this.h = parame;
    this.k = paramClass1;
    this.o = paramPriority;
    this.i = paramd1;
    this.j = paramMap;
    this.q = paramBoolean1;
    this.r = paramBoolean2;
  }
  
  boolean v(s<?> params)
  {
    return this.c.i().n(params);
  }
  
  boolean w()
  {
    return this.r;
  }
  
  boolean x(n2.b paramb)
  {
    List localList = g();
    int i1 = localList.size();
    for (int i2 = 0; i2 < i1; i2++) {
      if (((n.a)localList.get(i2)).a.equals(paramb)) {
        return true;
      }
    }
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.f
 * JD-Core Version:    0.7.0.1
 */