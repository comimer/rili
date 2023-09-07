package c1;

import android.graphics.Color;
import android.graphics.Paint;
import j1.j;

public class c
  implements a.b
{
  private final a.b a;
  private final a<Integer, Integer> b;
  private final a<Float, Float> c;
  private final a<Float, Float> d;
  private final a<Float, Float> e;
  private final a<Float, Float> f;
  private boolean g = true;
  
  public c(a.b paramb, com.airbnb.lottie.model.layer.a parama, j paramj)
  {
    this.a = paramb;
    paramb = paramj.a().m();
    this.b = paramb;
    paramb.a(this);
    parama.i(paramb);
    paramb = paramj.d().m();
    this.c = paramb;
    paramb.a(this);
    parama.i(paramb);
    paramb = paramj.b().m();
    this.d = paramb;
    paramb.a(this);
    parama.i(paramb);
    paramb = paramj.c().m();
    this.e = paramb;
    paramb.a(this);
    parama.i(paramb);
    paramb = paramj.e().m();
    this.f = paramb;
    paramb.a(this);
    parama.i(paramb);
  }
  
  public void a()
  {
    this.g = true;
    this.a.a();
  }
  
  public void b(Paint paramPaint)
  {
    if (!this.g) {
      return;
    }
    this.g = false;
    double d1 = ((Float)this.d.h()).floatValue() * 0.0174532925199433D;
    float f1 = ((Float)this.e.h()).floatValue();
    float f2 = (float)Math.sin(d1);
    float f3 = (float)Math.cos(d1 + 3.141592653589793D);
    int i = ((Integer)this.b.h()).intValue();
    i = Color.argb(Math.round(((Float)this.c.h()).floatValue()), Color.red(i), Color.green(i), Color.blue(i));
    paramPaint.setShadowLayer(((Float)this.f.h()).floatValue(), f2 * f1, f3 * f1, i);
  }
  
  public void c(l1.c<Integer> paramc)
  {
    this.b.n(paramc);
  }
  
  public void d(l1.c<Float> paramc)
  {
    this.d.n(paramc);
  }
  
  public void e(l1.c<Float> paramc)
  {
    this.e.n(paramc);
  }
  
  public void f(final l1.c<Float> paramc)
  {
    if (paramc == null)
    {
      this.c.n(null);
      return;
    }
    this.c.n(new a(paramc));
  }
  
  public void g(l1.c<Float> paramc)
  {
    this.f.n(paramc);
  }
  
  class a
    extends l1.c<Float>
  {
    a(l1.c paramc) {}
    
    public Float d(l1.b<Float> paramb)
    {
      paramb = (Float)paramc.a(paramb);
      if (paramb == null) {
        return null;
      }
      return Float.valueOf(paramb.floatValue() * 2.55F);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c1.c
 * JD-Core Version:    0.7.0.1
 */