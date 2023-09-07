package b1;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import c1.a.b;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.h0;
import com.airbnb.lottie.model.content.ShapeTrimPath.Type;
import g1.f;
import java.util.List;
import k1.g;

public class o
  implements a.b, k, m
{
  private final Path a = new Path();
  private final RectF b = new RectF();
  private final String c;
  private final boolean d;
  private final LottieDrawable e;
  private final c1.a<?, PointF> f;
  private final c1.a<?, PointF> g;
  private final c1.a<?, Float> h;
  private final b i = new b();
  private c1.a<Float, Float> j = null;
  private boolean k;
  
  public o(LottieDrawable paramLottieDrawable, com.airbnb.lottie.model.layer.a parama, f paramf)
  {
    this.c = paramf.c();
    this.d = paramf.f();
    this.e = paramLottieDrawable;
    c1.a locala = paramf.d().m();
    this.f = locala;
    paramLottieDrawable = paramf.e().m();
    this.g = paramLottieDrawable;
    paramf = paramf.b().m();
    this.h = paramf;
    parama.i(locala);
    parama.i(paramLottieDrawable);
    parama.i(paramf);
    locala.a(this);
    paramLottieDrawable.a(this);
    paramf.a(this);
  }
  
  private void e()
  {
    this.k = false;
    this.e.invalidateSelf();
  }
  
  public void a()
  {
    e();
  }
  
  public void b(List<c> paramList1, List<c> paramList2)
  {
    for (int m = 0; m < paramList1.size(); m++)
    {
      c localc = (c)paramList1.get(m);
      if ((localc instanceof u))
      {
        paramList2 = (u)localc;
        if (paramList2.j() == ShapeTrimPath.Type.SIMULTANEOUSLY)
        {
          this.i.a(paramList2);
          paramList2.e(this);
          continue;
        }
      }
      if ((localc instanceof q)) {
        this.j = ((q)localc).h();
      }
    }
  }
  
  public void f(e1.d paramd1, int paramInt, List<e1.d> paramList, e1.d paramd2)
  {
    g.k(paramd1, paramInt, paramList, paramd2, this);
  }
  
  public String getName()
  {
    return this.c;
  }
  
  public Path getPath()
  {
    if (this.k) {
      return this.a;
    }
    this.a.reset();
    if (this.d)
    {
      this.k = true;
      return this.a;
    }
    Object localObject = (PointF)this.g.h();
    float f1 = ((PointF)localObject).x / 2.0F;
    float f2 = ((PointF)localObject).y / 2.0F;
    localObject = this.h;
    if (localObject == null) {
      f3 = 0.0F;
    } else {
      f3 = ((c1.d)localObject).p();
    }
    float f4 = f3;
    if (f3 == 0.0F)
    {
      localObject = this.j;
      f4 = f3;
      if (localObject != null) {
        f4 = Math.min(((Float)((c1.a)localObject).h()).floatValue(), Math.min(f1, f2));
      }
    }
    float f5 = Math.min(f1, f2);
    float f3 = f4;
    if (f4 > f5) {
      f3 = f5;
    }
    localObject = (PointF)this.f.h();
    this.a.moveTo(((PointF)localObject).x + f1, ((PointF)localObject).y - f2 + f3);
    this.a.lineTo(((PointF)localObject).x + f1, ((PointF)localObject).y + f2 - f3);
    boolean bool = f3 < 0.0F;
    RectF localRectF;
    float f6;
    if (bool)
    {
      localRectF = this.b;
      f4 = ((PointF)localObject).x;
      f6 = f3 * 2.0F;
      f5 = ((PointF)localObject).y;
      localRectF.set(f4 + f1 - f6, f5 + f2 - f6, f4 + f1, f5 + f2);
      this.a.arcTo(this.b, 0.0F, 90.0F, false);
    }
    this.a.lineTo(((PointF)localObject).x - f1 + f3, ((PointF)localObject).y + f2);
    if (bool)
    {
      localRectF = this.b;
      f4 = ((PointF)localObject).x;
      f6 = ((PointF)localObject).y;
      f5 = f3 * 2.0F;
      localRectF.set(f4 - f1, f6 + f2 - f5, f4 - f1 + f5, f6 + f2);
      this.a.arcTo(this.b, 90.0F, 90.0F, false);
    }
    this.a.lineTo(((PointF)localObject).x - f1, ((PointF)localObject).y - f2 + f3);
    if (bool)
    {
      localRectF = this.b;
      f4 = ((PointF)localObject).x;
      f6 = ((PointF)localObject).y;
      f5 = f3 * 2.0F;
      localRectF.set(f4 - f1, f6 - f2, f4 - f1 + f5, f6 - f2 + f5);
      this.a.arcTo(this.b, 180.0F, 90.0F, false);
    }
    this.a.lineTo(((PointF)localObject).x + f1 - f3, ((PointF)localObject).y - f2);
    if (bool)
    {
      localRectF = this.b;
      f4 = ((PointF)localObject).x;
      f5 = f3 * 2.0F;
      f3 = ((PointF)localObject).y;
      localRectF.set(f4 + f1 - f5, f3 - f2, f4 + f1, f3 - f2 + f5);
      this.a.arcTo(this.b, 270.0F, 90.0F, false);
    }
    this.a.close();
    this.i.b(this.a);
    this.k = true;
    return this.a;
  }
  
  public <T> void h(T paramT, l1.c<T> paramc)
  {
    if (paramT == h0.l) {
      this.g.n(paramc);
    } else if (paramT == h0.n) {
      this.f.n(paramc);
    } else if (paramT == h0.m) {
      this.h.n(paramc);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b1.o
 * JD-Core Version:    0.7.0.1
 */