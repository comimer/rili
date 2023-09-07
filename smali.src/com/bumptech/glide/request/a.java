package com.bumptech.glide.request;

import android.content.res.Resources.Theme;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.engine.h;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.i;
import com.bumptech.glide.load.resource.bitmap.n;
import com.bumptech.glide.load.resource.bitmap.p;
import java.util.Map;
import n2.d;
import n2.g;
import x2.f;

public abstract class a<T extends a<T>>
  implements Cloneable
{
  private boolean D;
  private boolean E = true;
  private boolean F;
  private int a;
  private float b = 1.0F;
  private h c = h.e;
  private Priority d = Priority.NORMAL;
  private Drawable e;
  private int f;
  private Drawable g;
  private int h;
  private boolean i = true;
  private int j = -1;
  private int k = -1;
  private n2.b l = e3.a.c();
  private boolean m;
  private boolean n = true;
  private Drawable o;
  private int p;
  private d q = new d();
  private Map<Class<?>, g<?>> r = new f3.b();
  private Class<?> v = Object.class;
  private boolean w;
  private Resources.Theme x;
  private boolean y;
  private boolean z;
  
  private boolean L(int paramInt)
  {
    return M(this.a, paramInt);
  }
  
  private static boolean M(int paramInt1, int paramInt2)
  {
    boolean bool;
    if ((paramInt1 & paramInt2) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private T V(DownsampleStrategy paramDownsampleStrategy, g<Bitmap> paramg)
  {
    return a0(paramDownsampleStrategy, paramg, false);
  }
  
  private T a0(DownsampleStrategy paramDownsampleStrategy, g<Bitmap> paramg, boolean paramBoolean)
  {
    if (paramBoolean) {
      paramDownsampleStrategy = h0(paramDownsampleStrategy, paramg);
    } else {
      paramDownsampleStrategy = W(paramDownsampleStrategy, paramg);
    }
    paramDownsampleStrategy.E = true;
    return paramDownsampleStrategy;
  }
  
  private T b0()
  {
    return this;
  }
  
  public final Class<?> A()
  {
    return this.v;
  }
  
  public final n2.b B()
  {
    return this.l;
  }
  
  public final float C()
  {
    return this.b;
  }
  
  public final Resources.Theme D()
  {
    return this.x;
  }
  
  public final Map<Class<?>, g<?>> E()
  {
    return this.r;
  }
  
  public final boolean F()
  {
    return this.F;
  }
  
  public final boolean G()
  {
    return this.z;
  }
  
  protected final boolean H()
  {
    return this.y;
  }
  
  public final boolean I()
  {
    return this.i;
  }
  
  public final boolean J()
  {
    return L(8);
  }
  
  boolean K()
  {
    return this.E;
  }
  
  public final boolean N()
  {
    return this.n;
  }
  
  public final boolean O()
  {
    return this.m;
  }
  
  public final boolean P()
  {
    return L(2048);
  }
  
  public final boolean Q()
  {
    return f3.k.t(this.k, this.j);
  }
  
  public T R()
  {
    this.w = true;
    return b0();
  }
  
  public T S()
  {
    return W(DownsampleStrategy.e, new i());
  }
  
  public T T()
  {
    return V(DownsampleStrategy.d, new com.bumptech.glide.load.resource.bitmap.j());
  }
  
  public T U()
  {
    return V(DownsampleStrategy.c, new p());
  }
  
  final T W(DownsampleStrategy paramDownsampleStrategy, g<Bitmap> paramg)
  {
    if (this.y) {
      return f().W(paramDownsampleStrategy, paramg);
    }
    i(paramDownsampleStrategy);
    return k0(paramg, false);
  }
  
  public T X(int paramInt1, int paramInt2)
  {
    if (this.y) {
      return f().X(paramInt1, paramInt2);
    }
    this.k = paramInt1;
    this.j = paramInt2;
    this.a |= 0x200;
    return c0();
  }
  
  public T Y(int paramInt)
  {
    if (this.y) {
      return f().Y(paramInt);
    }
    this.h = paramInt;
    paramInt = this.a;
    this.g = null;
    this.a = ((paramInt | 0x80) & 0xFFFFFFBF);
    return c0();
  }
  
  public T Z(Priority paramPriority)
  {
    if (this.y) {
      return f().Z(paramPriority);
    }
    this.d = ((Priority)f3.j.d(paramPriority));
    this.a |= 0x8;
    return c0();
  }
  
  public T a(a<?> parama)
  {
    if (this.y) {
      return f().a(parama);
    }
    if (M(parama.a, 2)) {
      this.b = parama.b;
    }
    if (M(parama.a, 262144)) {
      this.z = parama.z;
    }
    if (M(parama.a, 1048576)) {
      this.F = parama.F;
    }
    if (M(parama.a, 4)) {
      this.c = parama.c;
    }
    if (M(parama.a, 8)) {
      this.d = parama.d;
    }
    if (M(parama.a, 16))
    {
      this.e = parama.e;
      this.f = 0;
      this.a &= 0xFFFFFFDF;
    }
    if (M(parama.a, 32))
    {
      this.f = parama.f;
      this.e = null;
      this.a &= 0xFFFFFFEF;
    }
    if (M(parama.a, 64))
    {
      this.g = parama.g;
      this.h = 0;
      this.a &= 0xFFFFFF7F;
    }
    if (M(parama.a, 128))
    {
      this.h = parama.h;
      this.g = null;
      this.a &= 0xFFFFFFBF;
    }
    if (M(parama.a, 256)) {
      this.i = parama.i;
    }
    if (M(parama.a, 512))
    {
      this.k = parama.k;
      this.j = parama.j;
    }
    if (M(parama.a, 1024)) {
      this.l = parama.l;
    }
    if (M(parama.a, 4096)) {
      this.v = parama.v;
    }
    if (M(parama.a, 8192))
    {
      this.o = parama.o;
      this.p = 0;
      this.a &= 0xFFFFBFFF;
    }
    if (M(parama.a, 16384))
    {
      this.p = parama.p;
      this.o = null;
      this.a &= 0xFFFFDFFF;
    }
    if (M(parama.a, 32768)) {
      this.x = parama.x;
    }
    if (M(parama.a, 65536)) {
      this.n = parama.n;
    }
    if (M(parama.a, 131072)) {
      this.m = parama.m;
    }
    if (M(parama.a, 2048))
    {
      this.r.putAll(parama.r);
      this.E = parama.E;
    }
    if (M(parama.a, 524288)) {
      this.D = parama.D;
    }
    if (!this.n)
    {
      this.r.clear();
      int i1 = this.a;
      this.m = false;
      this.a = (i1 & 0xFFFFF7FF & 0xFFFDFFFF);
      this.E = true;
    }
    this.a |= parama.a;
    this.q.d(parama.q);
    return c0();
  }
  
  public T b()
  {
    if ((this.w) && (!this.y)) {
      throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
    }
    this.y = true;
    return R();
  }
  
  protected final T c0()
  {
    if (!this.w) {
      return b0();
    }
    throw new IllegalStateException("You cannot modify locked T, consider clone()");
  }
  
  public T d()
  {
    return h0(DownsampleStrategy.e, new i());
  }
  
  public <Y> T d0(n2.c<Y> paramc, Y paramY)
  {
    if (this.y) {
      return f().d0(paramc, paramY);
    }
    f3.j.d(paramc);
    f3.j.d(paramY);
    this.q.e(paramc, paramY);
    return c0();
  }
  
  public T e()
  {
    return h0(DownsampleStrategy.d, new com.bumptech.glide.load.resource.bitmap.k());
  }
  
  public T e0(n2.b paramb)
  {
    if (this.y) {
      return f().e0(paramb);
    }
    this.l = ((n2.b)f3.j.d(paramb));
    this.a |= 0x400;
    return c0();
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof a;
    boolean bool2 = false;
    boolean bool3 = bool2;
    if (bool1)
    {
      paramObject = (a)paramObject;
      bool3 = bool2;
      if (Float.compare(paramObject.b, this.b) == 0)
      {
        bool3 = bool2;
        if (this.f == paramObject.f)
        {
          bool3 = bool2;
          if (f3.k.c(this.e, paramObject.e))
          {
            bool3 = bool2;
            if (this.h == paramObject.h)
            {
              bool3 = bool2;
              if (f3.k.c(this.g, paramObject.g))
              {
                bool3 = bool2;
                if (this.p == paramObject.p)
                {
                  bool3 = bool2;
                  if (f3.k.c(this.o, paramObject.o))
                  {
                    bool3 = bool2;
                    if (this.i == paramObject.i)
                    {
                      bool3 = bool2;
                      if (this.j == paramObject.j)
                      {
                        bool3 = bool2;
                        if (this.k == paramObject.k)
                        {
                          bool3 = bool2;
                          if (this.m == paramObject.m)
                          {
                            bool3 = bool2;
                            if (this.n == paramObject.n)
                            {
                              bool3 = bool2;
                              if (this.z == paramObject.z)
                              {
                                bool3 = bool2;
                                if (this.D == paramObject.D)
                                {
                                  bool3 = bool2;
                                  if (this.c.equals(paramObject.c))
                                  {
                                    bool3 = bool2;
                                    if (this.d == paramObject.d)
                                    {
                                      bool3 = bool2;
                                      if (this.q.equals(paramObject.q))
                                      {
                                        bool3 = bool2;
                                        if (this.r.equals(paramObject.r))
                                        {
                                          bool3 = bool2;
                                          if (this.v.equals(paramObject.v))
                                          {
                                            bool3 = bool2;
                                            if (f3.k.c(this.l, paramObject.l))
                                            {
                                              bool3 = bool2;
                                              if (f3.k.c(this.x, paramObject.x)) {
                                                bool3 = true;
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    return bool3;
  }
  
  public T f()
  {
    try
    {
      a locala = (a)super.clone();
      Object localObject = new n2/d;
      ((d)localObject).<init>();
      locala.q = ((d)localObject);
      ((d)localObject).d(this.q);
      localObject = new f3/b;
      ((f3.b)localObject).<init>();
      locala.r = ((Map)localObject);
      ((Map)localObject).putAll(this.r);
      locala.w = false;
      locala.y = false;
      return locala;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new RuntimeException(localCloneNotSupportedException);
    }
  }
  
  public T f0(float paramFloat)
  {
    if (this.y) {
      return f().f0(paramFloat);
    }
    if ((paramFloat >= 0.0F) && (paramFloat <= 1.0F))
    {
      this.b = paramFloat;
      this.a |= 0x2;
      return c0();
    }
    throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
  }
  
  public T g(Class<?> paramClass)
  {
    if (this.y) {
      return f().g(paramClass);
    }
    this.v = ((Class)f3.j.d(paramClass));
    this.a |= 0x1000;
    return c0();
  }
  
  public T g0(boolean paramBoolean)
  {
    if (this.y) {
      return f().g0(true);
    }
    this.i = (paramBoolean ^ true);
    this.a |= 0x100;
    return c0();
  }
  
  public T h(h paramh)
  {
    if (this.y) {
      return f().h(paramh);
    }
    this.c = ((h)f3.j.d(paramh));
    this.a |= 0x4;
    return c0();
  }
  
  final T h0(DownsampleStrategy paramDownsampleStrategy, g<Bitmap> paramg)
  {
    if (this.y) {
      return f().h0(paramDownsampleStrategy, paramg);
    }
    i(paramDownsampleStrategy);
    return j0(paramg);
  }
  
  public int hashCode()
  {
    int i1 = f3.k.k(this.b);
    i1 = f3.k.n(this.f, i1);
    i1 = f3.k.o(this.e, i1);
    i1 = f3.k.n(this.h, i1);
    i1 = f3.k.o(this.g, i1);
    i1 = f3.k.n(this.p, i1);
    i1 = f3.k.o(this.o, i1);
    i1 = f3.k.p(this.i, i1);
    i1 = f3.k.n(this.j, i1);
    i1 = f3.k.n(this.k, i1);
    i1 = f3.k.p(this.m, i1);
    i1 = f3.k.p(this.n, i1);
    i1 = f3.k.p(this.z, i1);
    i1 = f3.k.p(this.D, i1);
    i1 = f3.k.o(this.c, i1);
    i1 = f3.k.o(this.d, i1);
    i1 = f3.k.o(this.q, i1);
    i1 = f3.k.o(this.r, i1);
    i1 = f3.k.o(this.v, i1);
    i1 = f3.k.o(this.l, i1);
    return f3.k.o(this.x, i1);
  }
  
  public T i(DownsampleStrategy paramDownsampleStrategy)
  {
    return d0(DownsampleStrategy.h, f3.j.d(paramDownsampleStrategy));
  }
  
  <Y> T i0(Class<Y> paramClass, g<Y> paramg, boolean paramBoolean)
  {
    if (this.y) {
      return f().i0(paramClass, paramg, paramBoolean);
    }
    f3.j.d(paramClass);
    f3.j.d(paramg);
    this.r.put(paramClass, paramg);
    int i1 = this.a;
    this.n = true;
    i1 = i1 | 0x800 | 0x10000;
    this.a = i1;
    this.E = false;
    if (paramBoolean)
    {
      this.a = (i1 | 0x20000);
      this.m = true;
    }
    return c0();
  }
  
  public T j0(g<Bitmap> paramg)
  {
    return k0(paramg, true);
  }
  
  public T k(int paramInt)
  {
    if (this.y) {
      return f().k(paramInt);
    }
    this.f = paramInt;
    paramInt = this.a;
    this.e = null;
    this.a = ((paramInt | 0x20) & 0xFFFFFFEF);
    return c0();
  }
  
  T k0(g<Bitmap> paramg, boolean paramBoolean)
  {
    if (this.y) {
      return f().k0(paramg, paramBoolean);
    }
    n localn = new n(paramg, paramBoolean);
    i0(Bitmap.class, paramg, paramBoolean);
    i0(Drawable.class, localn, paramBoolean);
    i0(BitmapDrawable.class, localn.c(), paramBoolean);
    i0(x2.c.class, new f(paramg), paramBoolean);
    return c0();
  }
  
  public final h l()
  {
    return this.c;
  }
  
  public T l0(boolean paramBoolean)
  {
    if (this.y) {
      return f().l0(paramBoolean);
    }
    this.F = paramBoolean;
    this.a |= 0x100000;
    return c0();
  }
  
  public final int n()
  {
    return this.f;
  }
  
  public final Drawable o()
  {
    return this.e;
  }
  
  public final Drawable p()
  {
    return this.o;
  }
  
  public final int r()
  {
    return this.p;
  }
  
  public final boolean t()
  {
    return this.D;
  }
  
  public final d u()
  {
    return this.q;
  }
  
  public final int v()
  {
    return this.j;
  }
  
  public final int w()
  {
    return this.k;
  }
  
  public final Drawable x()
  {
    return this.g;
  }
  
  public final int y()
  {
    return this.h;
  }
  
  public final Priority z()
  {
    return this.d;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.request.a
 * JD-Core Version:    0.7.0.1
 */