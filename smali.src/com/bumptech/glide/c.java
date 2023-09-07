package com.bumptech.glide;

import android.content.Context;
import com.bumptech.glide.load.engine.bitmap_recycle.j;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p2.a.a;
import p2.g;
import p2.h;
import p2.i.a;
import z2.p;
import z2.p.b;

public final class c
{
  private final Map<Class<?>, i<?, ?>> a = new n.a();
  private final e.a b = new e.a();
  private com.bumptech.glide.load.engine.i c;
  private com.bumptech.glide.load.engine.bitmap_recycle.d d;
  private com.bumptech.glide.load.engine.bitmap_recycle.b e;
  private h f;
  private q2.a g;
  private q2.a h;
  private a.a i;
  private p2.i j;
  private z2.d k;
  private int l = 4;
  private b.a m = new a();
  private p.b n;
  private q2.a o;
  private boolean p;
  private List<com.bumptech.glide.request.d<Object>> q;
  
  b a(Context paramContext)
  {
    if (this.g == null) {
      this.g = q2.a.g();
    }
    if (this.h == null) {
      this.h = q2.a.e();
    }
    if (this.o == null) {
      this.o = q2.a.c();
    }
    if (this.j == null) {
      this.j = new i.a(paramContext).a();
    }
    if (this.k == null) {
      this.k = new z2.f();
    }
    if (this.d == null)
    {
      int i1 = this.j.b();
      if (i1 > 0) {
        this.d = new j(i1);
      } else {
        this.d = new com.bumptech.glide.load.engine.bitmap_recycle.e();
      }
    }
    if (this.e == null) {
      this.e = new com.bumptech.glide.load.engine.bitmap_recycle.i(this.j.a());
    }
    if (this.f == null) {
      this.f = new g(this.j.d());
    }
    if (this.i == null) {
      this.i = new p2.f(paramContext);
    }
    if (this.c == null) {
      this.c = new com.bumptech.glide.load.engine.i(this.f, this.i, this.h, this.g, q2.a.h(), this.o, this.p);
    }
    Object localObject = this.q;
    if (localObject == null) {
      this.q = Collections.emptyList();
    } else {
      this.q = Collections.unmodifiableList((List)localObject);
    }
    localObject = this.b.b();
    p localp = new p(this.n, (e)localObject);
    return new b(paramContext, this.c, this.f, this.d, this.e, localp, this.k, this.l, this.m, this.a, this.q, (e)localObject);
  }
  
  void b(p.b paramb)
  {
    this.n = paramb;
  }
  
  class a
    implements b.a
  {
    a() {}
    
    public com.bumptech.glide.request.e build()
    {
      return new com.bumptech.glide.request.e();
    }
  }
  
  static final class b {}
  
  public static final class c {}
  
  public static final class d {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.c
 * JD-Core Version:    0.7.0.1
 */