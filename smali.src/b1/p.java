package b1;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import c1.a.b;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.h0;
import f1.b;
import f1.l;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

public class p
  implements e, m, j, a.b, k
{
  private final Matrix a = new Matrix();
  private final Path b = new Path();
  private final LottieDrawable c;
  private final com.airbnb.lottie.model.layer.a d;
  private final String e;
  private final boolean f;
  private final c1.a<Float, Float> g;
  private final c1.a<Float, Float> h;
  private final c1.p i;
  private d j;
  
  public p(LottieDrawable paramLottieDrawable, com.airbnb.lottie.model.layer.a parama, g1.g paramg)
  {
    this.c = paramLottieDrawable;
    this.d = parama;
    this.e = paramg.c();
    this.f = paramg.f();
    paramLottieDrawable = paramg.b().m();
    this.g = paramLottieDrawable;
    parama.i(paramLottieDrawable);
    paramLottieDrawable.a(this);
    paramLottieDrawable = paramg.d().m();
    this.h = paramLottieDrawable;
    parama.i(paramLottieDrawable);
    paramLottieDrawable.a(this);
    paramLottieDrawable = paramg.e().b();
    this.i = paramLottieDrawable;
    paramLottieDrawable.a(parama);
    paramLottieDrawable.b(this);
  }
  
  public void a()
  {
    this.c.invalidateSelf();
  }
  
  public void b(List<c> paramList1, List<c> paramList2)
  {
    this.j.b(paramList1, paramList2);
  }
  
  public void c(RectF paramRectF, Matrix paramMatrix, boolean paramBoolean)
  {
    this.j.c(paramRectF, paramMatrix, paramBoolean);
  }
  
  public void e(ListIterator<c> paramListIterator)
  {
    if (this.j != null) {
      return;
    }
    while ((paramListIterator.hasPrevious()) && (paramListIterator.previous() != this)) {}
    ArrayList localArrayList = new ArrayList();
    while (paramListIterator.hasPrevious())
    {
      localArrayList.add((c)paramListIterator.previous());
      paramListIterator.remove();
    }
    Collections.reverse(localArrayList);
    this.j = new d(this.c, this.d, "Repeater", this.f, localArrayList, null);
  }
  
  public void f(e1.d paramd1, int paramInt, List<e1.d> paramList, e1.d paramd2)
  {
    k1.g.k(paramd1, paramInt, paramList, paramd2, this);
  }
  
  public void g(Canvas paramCanvas, Matrix paramMatrix, int paramInt)
  {
    float f1 = ((Float)this.g.h()).floatValue();
    float f2 = ((Float)this.h.h()).floatValue();
    float f3 = ((Float)this.i.i().h()).floatValue() / 100.0F;
    float f4 = ((Float)this.i.e().h()).floatValue() / 100.0F;
    for (int k = (int)f1 - 1; k >= 0; k--)
    {
      this.a.set(paramMatrix);
      Matrix localMatrix = this.a;
      c1.p localp = this.i;
      float f5 = k;
      localMatrix.preConcat(localp.g(f5 + f2));
      float f6 = paramInt;
      f5 = k1.g.i(f3, f4, f5 / f1);
      this.j.g(paramCanvas, this.a, (int)(f6 * f5));
    }
  }
  
  public String getName()
  {
    return this.e;
  }
  
  public Path getPath()
  {
    Path localPath = this.j.getPath();
    this.b.reset();
    float f1 = ((Float)this.g.h()).floatValue();
    float f2 = ((Float)this.h.h()).floatValue();
    for (int k = (int)f1 - 1; k >= 0; k--)
    {
      this.a.set(this.i.g(k + f2));
      this.b.addPath(localPath, this.a);
    }
    return this.b;
  }
  
  public <T> void h(T paramT, l1.c<T> paramc)
  {
    if (this.i.c(paramT, paramc)) {
      return;
    }
    if (paramT == h0.u) {
      this.g.n(paramc);
    } else if (paramT == h0.v) {
      this.h.n(paramc);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b1.p
 * JD-Core Version:    0.7.0.1
 */