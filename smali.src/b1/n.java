package b1;

import android.graphics.Path;
import android.graphics.PointF;
import c1.a.b;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.h0;
import com.airbnb.lottie.model.content.PolystarShape;
import com.airbnb.lottie.model.content.PolystarShape.Type;
import com.airbnb.lottie.model.content.ShapeTrimPath.Type;
import e1.d;
import java.util.List;
import k1.g;

public class n
  implements m, a.b, k
{
  private final Path a = new Path();
  private final String b;
  private final LottieDrawable c;
  private final PolystarShape.Type d;
  private final boolean e;
  private final boolean f;
  private final c1.a<?, Float> g;
  private final c1.a<?, PointF> h;
  private final c1.a<?, Float> i;
  private final c1.a<?, Float> j;
  private final c1.a<?, Float> k;
  private final c1.a<?, Float> l;
  private final c1.a<?, Float> m;
  private final b n = new b();
  private boolean o;
  
  public n(LottieDrawable paramLottieDrawable, com.airbnb.lottie.model.layer.a parama, PolystarShape paramPolystarShape)
  {
    this.c = paramLottieDrawable;
    this.b = paramPolystarShape.d();
    PolystarShape.Type localType1 = paramPolystarShape.j();
    this.d = localType1;
    this.e = paramPolystarShape.k();
    this.f = paramPolystarShape.l();
    paramLottieDrawable = paramPolystarShape.g().m();
    this.g = paramLottieDrawable;
    c1.a locala1 = paramPolystarShape.h().m();
    this.h = locala1;
    c1.a locala2 = paramPolystarShape.i().m();
    this.i = locala2;
    c1.a locala3 = paramPolystarShape.e().m();
    this.k = locala3;
    c1.a locala4 = paramPolystarShape.f().m();
    this.m = locala4;
    PolystarShape.Type localType2 = PolystarShape.Type.STAR;
    if (localType1 == localType2)
    {
      this.j = paramPolystarShape.b().m();
      this.l = paramPolystarShape.c().m();
    }
    else
    {
      this.j = null;
      this.l = null;
    }
    parama.i(paramLottieDrawable);
    parama.i(locala1);
    parama.i(locala2);
    parama.i(locala3);
    parama.i(locala4);
    if (localType1 == localType2)
    {
      parama.i(this.j);
      parama.i(this.l);
    }
    paramLottieDrawable.a(this);
    locala1.a(this);
    locala2.a(this);
    locala3.a(this);
    locala4.a(this);
    if (localType1 == localType2)
    {
      this.j.a(this);
      this.l.a(this);
    }
  }
  
  private void e()
  {
    int i1 = (int)Math.floor(((Float)this.g.h()).floatValue());
    Object localObject = this.i;
    if (localObject == null) {
      d1 = 0.0D;
    } else {
      d1 = ((Float)((c1.a)localObject).h()).floatValue();
    }
    double d2 = Math.toRadians(d1 - 90.0D);
    double d3 = i1;
    float f1 = (float)(6.283185307179586D / d3);
    float f2 = ((Float)this.m.h()).floatValue() / 100.0F;
    float f3 = ((Float)this.k.h()).floatValue();
    double d4 = f3;
    float f4 = (float)(Math.cos(d2) * d4);
    float f5 = (float)(Math.sin(d2) * d4);
    this.a.moveTo(f4, f5);
    double d1 = f1;
    d2 += d1;
    d3 = Math.ceil(d3);
    i1 = 0;
    while (i1 < d3)
    {
      f1 = (float)(Math.cos(d2) * d4);
      float f6 = (float)(d4 * Math.sin(d2));
      if (f2 != 0.0F)
      {
        double d5 = (float)(Math.atan2(f5, f4) - 1.570796326794897D);
        float f7 = (float)Math.cos(d5);
        float f8 = (float)Math.sin(d5);
        d5 = (float)(Math.atan2(f6, f1) - 1.570796326794897D);
        float f9 = (float)Math.cos(d5);
        float f10 = (float)Math.sin(d5);
        float f11 = f3 * f2 * 0.25F;
        this.a.cubicTo(f4 - f7 * f11, f5 - f8 * f11, f1 + f9 * f11, f6 + f11 * f10, f1, f6);
      }
      else
      {
        this.a.lineTo(f1, f6);
      }
      d2 += d1;
      i1++;
      f5 = f6;
      f4 = f1;
    }
    localObject = (PointF)this.h.h();
    this.a.offset(((PointF)localObject).x, ((PointF)localObject).y);
    this.a.close();
  }
  
  private void i()
  {
    float f1 = ((Float)this.g.h()).floatValue();
    Object localObject = this.i;
    if (localObject == null) {
      d1 = 0.0D;
    } else {
      d1 = ((Float)((c1.a)localObject).h()).floatValue();
    }
    double d2 = Math.toRadians(d1 - 90.0D);
    double d3 = f1;
    float f2 = (float)(6.283185307179586D / d3);
    float f3 = f2;
    if (this.f) {
      f3 = f2 * -1.0F;
    }
    float f4 = f3 / 2.0F;
    float f5 = f1 - (int)f1;
    boolean bool1 = f5 < 0.0F;
    double d1 = d2;
    if (bool1) {
      d1 = d2 + (1.0F - f5) * f4;
    }
    float f6 = ((Float)this.k.h()).floatValue();
    f1 = ((Float)this.j.h()).floatValue();
    localObject = this.l;
    float f7;
    if (localObject != null) {
      f7 = ((Float)((c1.a)localObject).h()).floatValue() / 100.0F;
    } else {
      f7 = 0.0F;
    }
    localObject = this.m;
    if (localObject != null) {
      f2 = ((Float)((c1.a)localObject).h()).floatValue() / 100.0F;
    } else {
      f2 = 0.0F;
    }
    float f8;
    float f9;
    float f10;
    if (bool1)
    {
      f8 = (f6 - f1) * f5 + f1;
      d2 = f8;
      f9 = (float)(d2 * Math.cos(d1));
      f10 = (float)(d2 * Math.sin(d1));
      this.a.moveTo(f9, f10);
      d1 += f3 * f5 / 2.0F;
    }
    else
    {
      d2 = f6;
      f9 = (float)(Math.cos(d1) * d2);
      f10 = (float)(d2 * Math.sin(d1));
      this.a.moveTo(f9, f10);
      d1 += f4;
      f8 = 0.0F;
    }
    d2 = Math.ceil(d3) * 2.0D;
    int i1 = 0;
    int i2 = i1;
    float f11 = f3;
    for (;;)
    {
      d3 = i1;
      if (d3 >= d2) {
        break;
      }
      if (i2 != 0) {
        f3 = f6;
      } else {
        f3 = f1;
      }
      boolean bool2 = f8 < 0.0F;
      float f12;
      if ((bool2) && (d3 == d2 - 2.0D)) {
        f12 = f11 * f5 / 2.0F;
      } else {
        f12 = f4;
      }
      if ((bool2) && (d3 == d2 - 1.0D)) {
        f3 = f8;
      }
      double d4 = f3;
      float f13 = (float)(d4 * Math.cos(d1));
      float f14 = (float)(d4 * Math.sin(d1));
      if ((f7 == 0.0F) && (f2 == 0.0F))
      {
        this.a.lineTo(f13, f14);
      }
      else
      {
        d4 = f10;
        f3 = f7;
        d4 = (float)(Math.atan2(d4, f9) - 1.570796326794897D);
        float f15 = (float)Math.cos(d4);
        float f16 = (float)Math.sin(d4);
        d4 = (float)(Math.atan2(f14, f13) - 1.570796326794897D);
        float f17 = (float)Math.cos(d4);
        float f18 = (float)Math.sin(d4);
        if (i2 != 0) {
          f19 = f3;
        } else {
          f19 = f2;
        }
        if (i2 != 0) {
          f3 = f2;
        }
        if (i2 != 0) {
          f20 = f1;
        } else {
          f20 = f6;
        }
        if (i2 != 0) {
          f21 = f6;
        } else {
          f21 = f1;
        }
        float f19 = f20 * f19 * 0.47829F;
        f15 *= f19;
        f16 = f19 * f16;
        f3 = f21 * f3 * 0.47829F;
        f17 *= f3;
        f18 = f3 * f18;
        f3 = f17;
        f19 = f16;
        float f20 = f18;
        float f21 = f15;
        if (bool1) {
          if (i1 == 0)
          {
            f21 = f15 * f5;
            f19 = f16 * f5;
            f3 = f17;
            f20 = f18;
          }
          else
          {
            f3 = f17;
            f19 = f16;
            f20 = f18;
            f21 = f15;
            if (d3 == d2 - 1.0D)
            {
              f3 = f17 * f5;
              f20 = f18 * f5;
              f21 = f15;
              f19 = f16;
            }
          }
        }
        this.a.cubicTo(f9 - f21, f10 - f19, f13 + f3, f14 + f20, f13, f14);
      }
      d1 += f12;
      i2 ^= 0x1;
      i1++;
      f9 = f13;
      f10 = f14;
    }
    localObject = (PointF)this.h.h();
    this.a.offset(((PointF)localObject).x, ((PointF)localObject).y);
    this.a.close();
  }
  
  private void j()
  {
    this.o = false;
    this.c.invalidateSelf();
  }
  
  public void a()
  {
    j();
  }
  
  public void b(List<c> paramList1, List<c> paramList2)
  {
    for (int i1 = 0; i1 < paramList1.size(); i1++)
    {
      paramList2 = (c)paramList1.get(i1);
      if ((paramList2 instanceof u))
      {
        paramList2 = (u)paramList2;
        if (paramList2.j() == ShapeTrimPath.Type.SIMULTANEOUSLY)
        {
          this.n.a(paramList2);
          paramList2.e(this);
        }
      }
    }
  }
  
  public void f(d paramd1, int paramInt, List<d> paramList, d paramd2)
  {
    g.k(paramd1, paramInt, paramList, paramd2, this);
  }
  
  public String getName()
  {
    return this.b;
  }
  
  public Path getPath()
  {
    if (this.o) {
      return this.a;
    }
    this.a.reset();
    if (this.e)
    {
      this.o = true;
      return this.a;
    }
    int i1 = a.a[this.d.ordinal()];
    if (i1 != 1)
    {
      if (i1 == 2) {
        e();
      }
    }
    else {
      i();
    }
    this.a.close();
    this.n.b(this.a);
    this.o = true;
    return this.a;
  }
  
  public <T> void h(T paramT, l1.c<T> paramc)
  {
    if (paramT == h0.w)
    {
      this.g.n(paramc);
    }
    else if (paramT == h0.x)
    {
      this.i.n(paramc);
    }
    else if (paramT == h0.n)
    {
      this.h.n(paramc);
    }
    else
    {
      c1.a locala;
      if (paramT == h0.y)
      {
        locala = this.j;
        if (locala != null)
        {
          locala.n(paramc);
          return;
        }
      }
      if (paramT == h0.z)
      {
        this.k.n(paramc);
      }
      else
      {
        if (paramT == h0.A)
        {
          locala = this.l;
          if (locala != null)
          {
            locala.n(paramc);
            return;
          }
        }
        if (paramT == h0.B) {
          this.m.n(paramc);
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b1.n
 * JD-Core Version:    0.7.0.1
 */