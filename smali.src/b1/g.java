package b1;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.MaskFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import c1.a.b;
import c1.q;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.h0;
import g1.j;
import java.util.ArrayList;
import java.util.List;

public class g
  implements e, a.b, k
{
  private final Path a;
  private final Paint b;
  private final com.airbnb.lottie.model.layer.a c;
  private final String d;
  private final boolean e;
  private final List<m> f;
  private final c1.a<Integer, Integer> g;
  private final c1.a<Integer, Integer> h;
  private c1.a<ColorFilter, ColorFilter> i;
  private final LottieDrawable j;
  private c1.a<Float, Float> k;
  float l;
  private c1.c m;
  
  public g(LottieDrawable paramLottieDrawable, com.airbnb.lottie.model.layer.a parama, j paramj)
  {
    Path localPath = new Path();
    this.a = localPath;
    this.b = new a1.a(1);
    this.f = new ArrayList();
    this.c = parama;
    this.d = paramj.d();
    this.e = paramj.f();
    this.j = paramLottieDrawable;
    if (parama.v() != null)
    {
      paramLottieDrawable = parama.v().a().m();
      this.k = paramLottieDrawable;
      paramLottieDrawable.a(this);
      parama.i(this.k);
    }
    if (parama.x() != null) {
      this.m = new c1.c(this, parama, parama.x());
    }
    if ((paramj.b() != null) && (paramj.e() != null))
    {
      localPath.setFillType(paramj.c());
      paramLottieDrawable = paramj.b().m();
      this.g = paramLottieDrawable;
      paramLottieDrawable.a(this);
      parama.i(paramLottieDrawable);
      paramLottieDrawable = paramj.e().m();
      this.h = paramLottieDrawable;
      paramLottieDrawable.a(this);
      parama.i(paramLottieDrawable);
      return;
    }
    this.g = null;
    this.h = null;
  }
  
  public void a()
  {
    this.j.invalidateSelf();
  }
  
  public void b(List<c> paramList1, List<c> paramList2)
  {
    for (int n = 0; n < paramList2.size(); n++)
    {
      paramList1 = (c)paramList2.get(n);
      if ((paramList1 instanceof m)) {
        this.f.add((m)paramList1);
      }
    }
  }
  
  public void c(RectF paramRectF, Matrix paramMatrix, boolean paramBoolean)
  {
    this.a.reset();
    for (int n = 0; n < this.f.size(); n++) {
      this.a.addPath(((m)this.f.get(n)).getPath(), paramMatrix);
    }
    this.a.computeBounds(paramRectF, false);
    paramRectF.set(paramRectF.left - 1.0F, paramRectF.top - 1.0F, paramRectF.right + 1.0F, paramRectF.bottom + 1.0F);
  }
  
  public void f(e1.d paramd1, int paramInt, List<e1.d> paramList, e1.d paramd2)
  {
    k1.g.k(paramd1, paramInt, paramList, paramd2, this);
  }
  
  public void g(Canvas paramCanvas, Matrix paramMatrix, int paramInt)
  {
    if (this.e) {
      return;
    }
    com.airbnb.lottie.c.a("FillContent#draw");
    int n = ((c1.b)this.g).p();
    int i1 = (int)(paramInt / 255.0F * ((Integer)this.h.h()).intValue() / 100.0F * 255.0F);
    Object localObject = this.b;
    paramInt = 0;
    ((Paint)localObject).setColor(k1.g.c(i1, 0, 255) << 24 | n & 0xFFFFFF);
    localObject = this.i;
    if (localObject != null) {
      this.b.setColorFilter((ColorFilter)((c1.a)localObject).h());
    }
    localObject = this.k;
    if (localObject != null)
    {
      float f1 = ((Float)((c1.a)localObject).h()).floatValue();
      if (f1 == 0.0F)
      {
        this.b.setMaskFilter(null);
      }
      else if (f1 != this.l)
      {
        localObject = this.c.w(f1);
        this.b.setMaskFilter((MaskFilter)localObject);
      }
      this.l = f1;
    }
    localObject = this.m;
    if (localObject != null) {
      ((c1.c)localObject).b(this.b);
    }
    this.a.reset();
    while (paramInt < this.f.size())
    {
      this.a.addPath(((m)this.f.get(paramInt)).getPath(), paramMatrix);
      paramInt++;
    }
    paramCanvas.drawPath(this.a, this.b);
    com.airbnb.lottie.c.b("FillContent#draw");
  }
  
  public String getName()
  {
    return this.d;
  }
  
  public <T> void h(T paramT, l1.c<T> paramc)
  {
    if (paramT == h0.a)
    {
      this.g.n(paramc);
    }
    else if (paramT == h0.d)
    {
      this.h.n(paramc);
    }
    else if (paramT == h0.K)
    {
      paramT = this.i;
      if (paramT != null) {
        this.c.G(paramT);
      }
      if (paramc == null)
      {
        this.i = null;
      }
      else
      {
        paramT = new q(paramc);
        this.i = paramT;
        paramT.a(this);
        this.c.i(this.i);
      }
    }
    else if (paramT == h0.j)
    {
      paramT = this.k;
      if (paramT != null)
      {
        paramT.n(paramc);
      }
      else
      {
        paramT = new q(paramc);
        this.k = paramT;
        paramT.a(this);
        this.c.i(this.k);
      }
    }
    else
    {
      c1.c localc;
      if (paramT == h0.e)
      {
        localc = this.m;
        if (localc != null)
        {
          localc.c(paramc);
          return;
        }
      }
      if (paramT == h0.G)
      {
        localc = this.m;
        if (localc != null)
        {
          localc.f(paramc);
          return;
        }
      }
      if (paramT == h0.H)
      {
        localc = this.m;
        if (localc != null)
        {
          localc.d(paramc);
          return;
        }
      }
      if (paramT == h0.I)
      {
        localc = this.m;
        if (localc != null)
        {
          localc.e(paramc);
          return;
        }
      }
      if (paramT == h0.J)
      {
        paramT = this.m;
        if (paramT != null) {
          paramT.g(paramc);
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b1.g
 * JD-Core Version:    0.7.0.1
 */