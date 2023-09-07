package b1;

import android.graphics.BlurMaskFilter;
import android.graphics.BlurMaskFilter.Blur;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import c1.a.b;
import c1.q;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.h0;
import com.airbnb.lottie.model.content.GradientType;
import f1.b;
import f1.f;
import java.util.ArrayList;
import java.util.List;
import k1.g;

public class h
  implements e, a.b, k
{
  private final String a;
  private final boolean b;
  private final com.airbnb.lottie.model.layer.a c;
  private final n.d<LinearGradient> d = new n.d();
  private final n.d<RadialGradient> e = new n.d();
  private final Path f;
  private final Paint g;
  private final RectF h;
  private final List<m> i;
  private final GradientType j;
  private final c1.a<g1.d, g1.d> k;
  private final c1.a<Integer, Integer> l;
  private final c1.a<PointF, PointF> m;
  private final c1.a<PointF, PointF> n;
  private c1.a<ColorFilter, ColorFilter> o;
  private q p;
  private final LottieDrawable q;
  private final int r;
  private c1.a<Float, Float> s;
  float t;
  private c1.c u;
  
  public h(LottieDrawable paramLottieDrawable, com.airbnb.lottie.model.layer.a parama, g1.e parame)
  {
    Path localPath = new Path();
    this.f = localPath;
    this.g = new a1.a(1);
    this.h = new RectF();
    this.i = new ArrayList();
    this.t = 0.0F;
    this.c = parama;
    this.a = parame.f();
    this.b = parame.i();
    this.q = paramLottieDrawable;
    this.j = parame.e();
    localPath.setFillType(parame.c());
    this.r = ((int)(paramLottieDrawable.E().d() / 32.0F));
    paramLottieDrawable = parame.d().m();
    this.k = paramLottieDrawable;
    paramLottieDrawable.a(this);
    parama.i(paramLottieDrawable);
    paramLottieDrawable = parame.g().m();
    this.l = paramLottieDrawable;
    paramLottieDrawable.a(this);
    parama.i(paramLottieDrawable);
    paramLottieDrawable = parame.h().m();
    this.m = paramLottieDrawable;
    paramLottieDrawable.a(this);
    parama.i(paramLottieDrawable);
    paramLottieDrawable = parame.b().m();
    this.n = paramLottieDrawable;
    paramLottieDrawable.a(this);
    parama.i(paramLottieDrawable);
    if (parama.v() != null)
    {
      paramLottieDrawable = parama.v().a().m();
      this.s = paramLottieDrawable;
      paramLottieDrawable.a(this);
      parama.i(this.s);
    }
    if (parama.x() != null) {
      this.u = new c1.c(this, parama, parama.x());
    }
  }
  
  private int[] e(int[] paramArrayOfInt)
  {
    Object localObject = this.p;
    int[] arrayOfInt = paramArrayOfInt;
    if (localObject != null)
    {
      localObject = (Integer[])((q)localObject).h();
      int i1 = paramArrayOfInt.length;
      int i2 = localObject.length;
      int i3 = 0;
      int i4 = 0;
      if (i1 == i2) {
        for (;;)
        {
          arrayOfInt = paramArrayOfInt;
          if (i4 >= paramArrayOfInt.length) {
            break;
          }
          paramArrayOfInt[i4] = localObject[i4].intValue();
          i4++;
        }
      }
      paramArrayOfInt = new int[localObject.length];
      for (i4 = i3;; i4++)
      {
        arrayOfInt = paramArrayOfInt;
        if (i4 >= localObject.length) {
          break;
        }
        paramArrayOfInt[i4] = localObject[i4].intValue();
      }
    }
    return arrayOfInt;
  }
  
  private int i()
  {
    int i1 = Math.round(this.m.f() * this.r);
    int i2 = Math.round(this.n.f() * this.r);
    int i3 = Math.round(this.k.f() * this.r);
    if (i1 != 0) {
      i4 = 527 * i1;
    } else {
      i4 = 17;
    }
    i1 = i4;
    if (i2 != 0) {
      i1 = i4 * 31 * i2;
    }
    int i4 = i1;
    if (i3 != 0) {
      i4 = i1 * 31 * i3;
    }
    return i4;
  }
  
  private LinearGradient j()
  {
    int i1 = i();
    Object localObject1 = this.d;
    long l1 = i1;
    localObject1 = (LinearGradient)((n.d)localObject1).f(l1);
    if (localObject1 != null) {
      return localObject1;
    }
    PointF localPointF = (PointF)this.m.h();
    localObject1 = (PointF)this.n.h();
    Object localObject2 = (g1.d)this.k.h();
    int[] arrayOfInt = e(((g1.d)localObject2).a());
    localObject2 = ((g1.d)localObject2).b();
    localObject1 = new LinearGradient(localPointF.x, localPointF.y, ((PointF)localObject1).x, ((PointF)localObject1).y, arrayOfInt, (float[])localObject2, Shader.TileMode.CLAMP);
    this.d.l(l1, localObject1);
    return localObject1;
  }
  
  private RadialGradient k()
  {
    int i1 = i();
    Object localObject1 = this.e;
    long l1 = i1;
    localObject1 = (RadialGradient)((n.d)localObject1).f(l1);
    if (localObject1 != null) {
      return localObject1;
    }
    localObject1 = (PointF)this.m.h();
    PointF localPointF = (PointF)this.n.h();
    Object localObject2 = (g1.d)this.k.h();
    int[] arrayOfInt = e(((g1.d)localObject2).a());
    localObject2 = ((g1.d)localObject2).b();
    float f1 = ((PointF)localObject1).x;
    float f2 = ((PointF)localObject1).y;
    float f3 = localPointF.x;
    float f4 = localPointF.y;
    f4 = (float)Math.hypot(f3 - f1, f4 - f2);
    f3 = f4;
    if (f4 <= 0.0F) {
      f3 = 0.001F;
    }
    localObject1 = new RadialGradient(f1, f2, f3, arrayOfInt, (float[])localObject2, Shader.TileMode.CLAMP);
    this.e.l(l1, localObject1);
    return localObject1;
  }
  
  public void a()
  {
    this.q.invalidateSelf();
  }
  
  public void b(List<c> paramList1, List<c> paramList2)
  {
    for (int i1 = 0; i1 < paramList2.size(); i1++)
    {
      paramList1 = (c)paramList2.get(i1);
      if ((paramList1 instanceof m)) {
        this.i.add((m)paramList1);
      }
    }
  }
  
  public void c(RectF paramRectF, Matrix paramMatrix, boolean paramBoolean)
  {
    this.f.reset();
    for (int i1 = 0; i1 < this.i.size(); i1++) {
      this.f.addPath(((m)this.i.get(i1)).getPath(), paramMatrix);
    }
    this.f.computeBounds(paramRectF, false);
    paramRectF.set(paramRectF.left - 1.0F, paramRectF.top - 1.0F, paramRectF.right + 1.0F, paramRectF.bottom + 1.0F);
  }
  
  public void f(e1.d paramd1, int paramInt, List<e1.d> paramList, e1.d paramd2)
  {
    g.k(paramd1, paramInt, paramList, paramd2, this);
  }
  
  public void g(Canvas paramCanvas, Matrix paramMatrix, int paramInt)
  {
    if (this.b) {
      return;
    }
    com.airbnb.lottie.c.a("GradientFillContent#draw");
    this.f.reset();
    for (int i1 = 0; i1 < this.i.size(); i1++) {
      this.f.addPath(((m)this.i.get(i1)).getPath(), paramMatrix);
    }
    this.f.computeBounds(this.h, false);
    Object localObject;
    if (this.j == GradientType.LINEAR) {
      localObject = j();
    } else {
      localObject = k();
    }
    ((Shader)localObject).setLocalMatrix(paramMatrix);
    this.g.setShader((Shader)localObject);
    paramMatrix = this.o;
    if (paramMatrix != null) {
      this.g.setColorFilter((ColorFilter)paramMatrix.h());
    }
    paramMatrix = this.s;
    if (paramMatrix != null)
    {
      float f1 = ((Float)paramMatrix.h()).floatValue();
      if (f1 == 0.0F)
      {
        this.g.setMaskFilter(null);
      }
      else if (f1 != this.t)
      {
        paramMatrix = new BlurMaskFilter(f1, BlurMaskFilter.Blur.NORMAL);
        this.g.setMaskFilter(paramMatrix);
      }
      this.t = f1;
    }
    paramMatrix = this.u;
    if (paramMatrix != null) {
      paramMatrix.b(this.g);
    }
    paramInt = (int)(paramInt / 255.0F * ((Integer)this.l.h()).intValue() / 100.0F * 255.0F);
    this.g.setAlpha(g.c(paramInt, 0, 255));
    paramCanvas.drawPath(this.f, this.g);
    com.airbnb.lottie.c.b("GradientFillContent#draw");
  }
  
  public String getName()
  {
    return this.a;
  }
  
  public <T> void h(T paramT, l1.c<T> paramc)
  {
    if (paramT == h0.d)
    {
      this.l.n(paramc);
    }
    else if (paramT == h0.K)
    {
      paramT = this.o;
      if (paramT != null) {
        this.c.G(paramT);
      }
      if (paramc == null)
      {
        this.o = null;
      }
      else
      {
        paramT = new q(paramc);
        this.o = paramT;
        paramT.a(this);
        this.c.i(this.o);
      }
    }
    else if (paramT == h0.L)
    {
      paramT = this.p;
      if (paramT != null) {
        this.c.G(paramT);
      }
      if (paramc == null)
      {
        this.p = null;
      }
      else
      {
        this.d.a();
        this.e.a();
        paramT = new q(paramc);
        this.p = paramT;
        paramT.a(this);
        this.c.i(this.p);
      }
    }
    else if (paramT == h0.j)
    {
      paramT = this.s;
      if (paramT != null)
      {
        paramT.n(paramc);
      }
      else
      {
        paramT = new q(paramc);
        this.s = paramT;
        paramT.a(this);
        this.c.i(this.s);
      }
    }
    else
    {
      c1.c localc;
      if (paramT == h0.e)
      {
        localc = this.u;
        if (localc != null)
        {
          localc.c(paramc);
          return;
        }
      }
      if (paramT == h0.G)
      {
        localc = this.u;
        if (localc != null)
        {
          localc.f(paramc);
          return;
        }
      }
      if (paramT == h0.H)
      {
        localc = this.u;
        if (localc != null)
        {
          localc.d(paramc);
          return;
        }
      }
      if (paramT == h0.I)
      {
        localc = this.u;
        if (localc != null)
        {
          localc.e(paramc);
          return;
        }
      }
      if (paramT == h0.J)
      {
        paramT = this.u;
        if (paramT != null) {
          paramT.g(paramc);
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b1.h
 * JD-Core Version:    0.7.0.1
 */