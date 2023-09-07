package b1;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.MaskFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import c1.f;
import c1.q;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.h0;
import com.airbnb.lottie.model.content.ShapeTrimPath.Type;
import f1.b;
import java.util.ArrayList;
import java.util.List;
import java.util.List<Lb1.c;>;
import k1.g;
import k1.h;

public abstract class a
  implements c1.a.b, k, e
{
  private final PathMeasure a = new PathMeasure();
  private final Path b = new Path();
  private final Path c = new Path();
  private final RectF d = new RectF();
  private final LottieDrawable e;
  protected final com.airbnb.lottie.model.layer.a f;
  private final List<b> g = new ArrayList();
  private final float[] h;
  final Paint i;
  private final c1.a<?, Float> j;
  private final c1.a<?, Integer> k;
  private final List<c1.a<?, Float>> l;
  private final c1.a<?, Float> m;
  private c1.a<ColorFilter, ColorFilter> n;
  private c1.a<Float, Float> o;
  float p;
  private c1.c q;
  
  a(LottieDrawable paramLottieDrawable, com.airbnb.lottie.model.layer.a parama, Paint.Cap paramCap, Paint.Join paramJoin, float paramFloat, f1.d paramd, b paramb1, List<b> paramList, b paramb2)
  {
    a1.a locala = new a1.a(1);
    this.i = locala;
    this.p = 0.0F;
    this.e = paramLottieDrawable;
    this.f = parama;
    locala.setStyle(Paint.Style.STROKE);
    locala.setStrokeCap(paramCap);
    locala.setStrokeJoin(paramJoin);
    locala.setStrokeMiter(paramFloat);
    this.k = paramd.m();
    this.j = paramb1.m();
    if (paramb2 == null) {
      this.m = null;
    } else {
      this.m = paramb2.m();
    }
    this.l = new ArrayList(paramList.size());
    this.h = new float[paramList.size()];
    int i1 = 0;
    for (int i2 = 0; i2 < paramList.size(); i2++) {
      this.l.add(((b)paramList.get(i2)).m());
    }
    parama.i(this.k);
    parama.i(this.j);
    for (i2 = 0; i2 < this.l.size(); i2++) {
      parama.i((c1.a)this.l.get(i2));
    }
    paramLottieDrawable = this.m;
    if (paramLottieDrawable != null) {
      parama.i(paramLottieDrawable);
    }
    this.k.a(this);
    this.j.a(this);
    for (i2 = i1; i2 < paramList.size(); i2++) {
      ((c1.a)this.l.get(i2)).a(this);
    }
    paramLottieDrawable = this.m;
    if (paramLottieDrawable != null) {
      paramLottieDrawable.a(this);
    }
    if (parama.v() != null)
    {
      paramLottieDrawable = parama.v().a().m();
      this.o = paramLottieDrawable;
      paramLottieDrawable.a(this);
      parama.i(this.o);
    }
    if (parama.x() != null) {
      this.q = new c1.c(this, parama, parama.x());
    }
  }
  
  private void e(Matrix paramMatrix)
  {
    com.airbnb.lottie.c.a("StrokeContent#applyDashPattern");
    if (this.l.isEmpty())
    {
      com.airbnb.lottie.c.b("StrokeContent#applyDashPattern");
      return;
    }
    float f1 = h.g(paramMatrix);
    for (int i1 = 0; i1 < this.l.size(); i1++)
    {
      this.h[i1] = ((Float)((c1.a)this.l.get(i1)).h()).floatValue();
      if (i1 % 2 == 0)
      {
        paramMatrix = this.h;
        if (paramMatrix[i1] < 1.0F) {
          paramMatrix[i1] = 1.0F;
        }
      }
      else
      {
        paramMatrix = this.h;
        if (paramMatrix[i1] < 0.1F) {
          paramMatrix[i1] = 0.1F;
        }
      }
      paramMatrix = this.h;
      paramMatrix[i1] *= f1;
    }
    paramMatrix = this.m;
    if (paramMatrix == null) {
      f1 = 0.0F;
    } else {
      f1 *= ((Float)paramMatrix.h()).floatValue();
    }
    this.i.setPathEffect(new DashPathEffect(this.h, f1));
    com.airbnb.lottie.c.b("StrokeContent#applyDashPattern");
  }
  
  private void i(Canvas paramCanvas, b paramb, Matrix paramMatrix)
  {
    com.airbnb.lottie.c.a("StrokeContent#applyTrimPath");
    if (b.b(paramb) == null)
    {
      com.airbnb.lottie.c.b("StrokeContent#applyTrimPath");
      return;
    }
    this.b.reset();
    for (int i1 = b.a(paramb).size() - 1; i1 >= 0; i1--) {
      this.b.addPath(((m)b.a(paramb).get(i1)).getPath(), paramMatrix);
    }
    float f1 = ((Float)b.b(paramb).i().h()).floatValue() / 100.0F;
    float f2 = ((Float)b.b(paramb).f().h()).floatValue() / 100.0F;
    float f3 = ((Float)b.b(paramb).h().h()).floatValue() / 360.0F;
    if ((f1 < 0.01F) && (f2 > 0.99F))
    {
      paramCanvas.drawPath(this.b, this.i);
      com.airbnb.lottie.c.b("StrokeContent#applyTrimPath");
      return;
    }
    this.a.setPath(this.b, false);
    for (float f4 = this.a.getLength(); this.a.nextContour(); f4 += this.a.getLength()) {}
    f3 *= f4;
    float f5 = f1 * f4 + f3;
    float f6 = Math.min(f2 * f4 + f3, f5 + f4 - 1.0F);
    i1 = b.a(paramb).size() - 1;
    f2 = 0.0F;
    while (i1 >= 0)
    {
      this.c.set(((m)b.a(paramb).get(i1)).getPath());
      this.c.transform(paramMatrix);
      this.a.setPath(this.c, false);
      float f7 = this.a.getLength();
      if (f6 > f4)
      {
        f3 = f6 - f4;
        if ((f3 < f2 + f7) && (f2 < f3))
        {
          if (f5 > f4) {
            f1 = (f5 - f4) / f7;
          } else {
            f1 = 0.0F;
          }
          f3 = Math.min(f3 / f7, 1.0F);
          h.a(this.c, f1, f3, 0.0F);
          paramCanvas.drawPath(this.c, this.i);
          break label559;
        }
      }
      f3 = f2 + f7;
      if ((f3 >= f5) && (f2 <= f6)) {
        if ((f3 <= f6) && (f5 < f2))
        {
          paramCanvas.drawPath(this.c, this.i);
        }
        else
        {
          if (f5 < f2) {
            f1 = 0.0F;
          } else {
            f1 = (f5 - f2) / f7;
          }
          if (f6 > f3) {
            f3 = 1.0F;
          } else {
            f3 = (f6 - f2) / f7;
          }
          h.a(this.c, f1, f3, 0.0F);
          paramCanvas.drawPath(this.c, this.i);
        }
      }
      label559:
      f2 += f7;
      i1--;
    }
    com.airbnb.lottie.c.b("StrokeContent#applyTrimPath");
  }
  
  public void a()
  {
    this.e.invalidateSelf();
  }
  
  public void b(List<c> paramList1, List<c> paramList2)
  {
    int i1 = paramList1.size() - 1;
    Object localObject2;
    Object localObject3;
    for (Object localObject1 = null; i1 >= 0; localObject1 = localObject3)
    {
      localObject2 = (c)paramList1.get(i1);
      localObject3 = localObject1;
      if ((localObject2 instanceof u))
      {
        localObject2 = (u)localObject2;
        localObject3 = localObject1;
        if (((u)localObject2).j() == ShapeTrimPath.Type.INDIVIDUALLY) {
          localObject3 = localObject2;
        }
      }
      i1--;
    }
    if (localObject1 != null) {
      localObject1.e(this);
    }
    i1 = paramList2.size() - 1;
    for (paramList1 = null; i1 >= 0; paramList1 = (List<c>)localObject3)
    {
      localObject2 = (c)paramList2.get(i1);
      if ((localObject2 instanceof u))
      {
        u localu = (u)localObject2;
        if (localu.j() == ShapeTrimPath.Type.INDIVIDUALLY)
        {
          if (paramList1 != null) {
            this.g.add(paramList1);
          }
          localObject3 = new b(localu, null);
          localu.e(this);
          break label222;
        }
      }
      localObject3 = paramList1;
      if ((localObject2 instanceof m))
      {
        localObject3 = paramList1;
        if (paramList1 == null) {
          localObject3 = new b(localObject1, null);
        }
        b.a((b)localObject3).add((m)localObject2);
      }
      label222:
      i1--;
    }
    if (paramList1 != null) {
      this.g.add(paramList1);
    }
  }
  
  public void c(RectF paramRectF, Matrix paramMatrix, boolean paramBoolean)
  {
    com.airbnb.lottie.c.a("StrokeContent#getBounds");
    this.b.reset();
    for (int i1 = 0; i1 < this.g.size(); i1++)
    {
      b localb = (b)this.g.get(i1);
      for (int i2 = 0; i2 < b.a(localb).size(); i2++) {
        this.b.addPath(((m)b.a(localb).get(i2)).getPath(), paramMatrix);
      }
    }
    this.b.computeBounds(this.d, false);
    float f1 = ((c1.d)this.j).p();
    paramMatrix = this.d;
    float f2 = paramMatrix.left;
    f1 /= 2.0F;
    paramMatrix.set(f2 - f1, paramMatrix.top - f1, paramMatrix.right + f1, paramMatrix.bottom + f1);
    paramRectF.set(this.d);
    paramRectF.set(paramRectF.left - 1.0F, paramRectF.top - 1.0F, paramRectF.right + 1.0F, paramRectF.bottom + 1.0F);
    com.airbnb.lottie.c.b("StrokeContent#getBounds");
  }
  
  public void f(e1.d paramd1, int paramInt, List<e1.d> paramList, e1.d paramd2)
  {
    g.k(paramd1, paramInt, paramList, paramd2, this);
  }
  
  public void g(Canvas paramCanvas, Matrix paramMatrix, int paramInt)
  {
    com.airbnb.lottie.c.a("StrokeContent#draw");
    if (h.h(paramMatrix))
    {
      com.airbnb.lottie.c.b("StrokeContent#draw");
      return;
    }
    paramInt = (int)(paramInt / 255.0F * ((f)this.k).p() / 100.0F * 255.0F);
    Object localObject = this.i;
    int i1 = 0;
    ((Paint)localObject).setAlpha(g.c(paramInt, 0, 255));
    this.i.setStrokeWidth(((c1.d)this.j).p() * h.g(paramMatrix));
    if (this.i.getStrokeWidth() <= 0.0F)
    {
      com.airbnb.lottie.c.b("StrokeContent#draw");
      return;
    }
    e(paramMatrix);
    localObject = this.n;
    if (localObject != null) {
      this.i.setColorFilter((ColorFilter)((c1.a)localObject).h());
    }
    localObject = this.o;
    if (localObject != null)
    {
      float f1 = ((Float)((c1.a)localObject).h()).floatValue();
      if (f1 == 0.0F)
      {
        this.i.setMaskFilter(null);
      }
      else if (f1 != this.p)
      {
        localObject = this.f.w(f1);
        this.i.setMaskFilter((MaskFilter)localObject);
      }
      this.p = f1;
    }
    localObject = this.q;
    paramInt = i1;
    if (localObject != null) {
      ((c1.c)localObject).b(this.i);
    }
    for (paramInt = i1; paramInt < this.g.size(); paramInt++)
    {
      localObject = (b)this.g.get(paramInt);
      if (b.b((b)localObject) != null)
      {
        i(paramCanvas, (b)localObject, paramMatrix);
      }
      else
      {
        com.airbnb.lottie.c.a("StrokeContent#buildPath");
        this.b.reset();
        for (i1 = b.a((b)localObject).size() - 1; i1 >= 0; i1--) {
          this.b.addPath(((m)b.a((b)localObject).get(i1)).getPath(), paramMatrix);
        }
        com.airbnb.lottie.c.b("StrokeContent#buildPath");
        com.airbnb.lottie.c.a("StrokeContent#drawPath");
        paramCanvas.drawPath(this.b, this.i);
        com.airbnb.lottie.c.b("StrokeContent#drawPath");
      }
    }
    com.airbnb.lottie.c.b("StrokeContent#draw");
  }
  
  public <T> void h(T paramT, l1.c<T> paramc)
  {
    if (paramT == h0.d)
    {
      this.k.n(paramc);
    }
    else if (paramT == h0.s)
    {
      this.j.n(paramc);
    }
    else if (paramT == h0.K)
    {
      paramT = this.n;
      if (paramT != null) {
        this.f.G(paramT);
      }
      if (paramc == null)
      {
        this.n = null;
      }
      else
      {
        paramT = new q(paramc);
        this.n = paramT;
        paramT.a(this);
        this.f.i(this.n);
      }
    }
    else if (paramT == h0.j)
    {
      paramT = this.o;
      if (paramT != null)
      {
        paramT.n(paramc);
      }
      else
      {
        paramT = new q(paramc);
        this.o = paramT;
        paramT.a(this);
        this.f.i(this.o);
      }
    }
    else
    {
      c1.c localc;
      if (paramT == h0.e)
      {
        localc = this.q;
        if (localc != null)
        {
          localc.c(paramc);
          return;
        }
      }
      if (paramT == h0.G)
      {
        localc = this.q;
        if (localc != null)
        {
          localc.f(paramc);
          return;
        }
      }
      if (paramT == h0.H)
      {
        localc = this.q;
        if (localc != null)
        {
          localc.d(paramc);
          return;
        }
      }
      if (paramT == h0.I)
      {
        localc = this.q;
        if (localc != null)
        {
          localc.e(paramc);
          return;
        }
      }
      if (paramT == h0.J)
      {
        paramT = this.q;
        if (paramT != null) {
          paramT.g(paramc);
        }
      }
    }
  }
  
  private static final class b
  {
    private final List<m> a = new ArrayList();
    private final u b;
    
    private b(u paramu)
    {
      this.b = paramu;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b1.a
 * JD-Core Version:    0.7.0.1
 */