package b1;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import c1.a.b;
import c1.p;
import com.airbnb.lottie.LottieDrawable;
import f1.l;
import g1.k;
import java.util.ArrayList;
import java.util.List;
import k1.h;

public class d
  implements e, m, a.b, e1.e
{
  private final Paint a = new a1.a();
  private final RectF b = new RectF();
  private final Matrix c = new Matrix();
  private final Path d = new Path();
  private final RectF e = new RectF();
  private final String f;
  private final boolean g;
  private final List<c> h;
  private final LottieDrawable i;
  private List<m> j;
  private p k;
  
  public d(LottieDrawable paramLottieDrawable, com.airbnb.lottie.model.layer.a parama, k paramk)
  {
    this(paramLottieDrawable, parama, paramk.c(), paramk.d(), e(paramLottieDrawable, parama, paramk.b()), i(paramk.b()));
  }
  
  d(LottieDrawable paramLottieDrawable, com.airbnb.lottie.model.layer.a parama, String paramString, boolean paramBoolean, List<c> paramList, l paraml)
  {
    this.f = paramString;
    this.i = paramLottieDrawable;
    this.g = paramBoolean;
    this.h = paramList;
    if (paraml != null)
    {
      paramLottieDrawable = paraml.b();
      this.k = paramLottieDrawable;
      paramLottieDrawable.a(parama);
      this.k.b(this);
    }
    paramLottieDrawable = new ArrayList();
    for (int m = paramList.size() - 1; m >= 0; m--)
    {
      parama = (c)paramList.get(m);
      if ((parama instanceof j)) {
        paramLottieDrawable.add((j)parama);
      }
    }
    for (m = paramLottieDrawable.size() - 1; m >= 0; m--) {
      ((j)paramLottieDrawable.get(m)).e(paramList.listIterator(paramList.size()));
    }
  }
  
  private static List<c> e(LottieDrawable paramLottieDrawable, com.airbnb.lottie.model.layer.a parama, List<g1.c> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    for (int m = 0; m < paramList.size(); m++)
    {
      c localc = ((g1.c)paramList.get(m)).a(paramLottieDrawable, parama);
      if (localc != null) {
        localArrayList.add(localc);
      }
    }
    return localArrayList;
  }
  
  static l i(List<g1.c> paramList)
  {
    for (int m = 0; m < paramList.size(); m++)
    {
      g1.c localc = (g1.c)paramList.get(m);
      if ((localc instanceof l)) {
        return (l)localc;
      }
    }
    return null;
  }
  
  private boolean l()
  {
    int m = 0;
    int i1;
    for (int n = m; m < this.h.size(); n = i1)
    {
      i1 = n;
      if ((this.h.get(m) instanceof e))
      {
        n++;
        i1 = n;
        if (n >= 2) {
          return true;
        }
      }
      m++;
    }
    return false;
  }
  
  public void a()
  {
    this.i.invalidateSelf();
  }
  
  public void b(List<c> paramList1, List<c> paramList2)
  {
    paramList2 = new ArrayList(paramList1.size() + this.h.size());
    paramList2.addAll(paramList1);
    for (int m = this.h.size() - 1; m >= 0; m--)
    {
      paramList1 = (c)this.h.get(m);
      paramList1.b(paramList2, this.h.subList(0, m));
      paramList2.add(paramList1);
    }
  }
  
  public void c(RectF paramRectF, Matrix paramMatrix, boolean paramBoolean)
  {
    this.c.set(paramMatrix);
    paramMatrix = this.k;
    if (paramMatrix != null) {
      this.c.preConcat(paramMatrix.f());
    }
    this.e.set(0.0F, 0.0F, 0.0F, 0.0F);
    for (int m = this.h.size() - 1; m >= 0; m--)
    {
      paramMatrix = (c)this.h.get(m);
      if ((paramMatrix instanceof e))
      {
        ((e)paramMatrix).c(this.e, this.c, paramBoolean);
        paramRectF.union(this.e);
      }
    }
  }
  
  public void f(e1.d paramd1, int paramInt, List<e1.d> paramList, e1.d paramd2)
  {
    if ((!paramd1.g(getName(), paramInt)) && (!"__container".equals(getName()))) {
      return;
    }
    e1.d locald = paramd2;
    if (!"__container".equals(getName()))
    {
      paramd2 = paramd2.a(getName());
      locald = paramd2;
      if (paramd1.c(getName(), paramInt))
      {
        paramList.add(paramd2.i(this));
        locald = paramd2;
      }
    }
    if (paramd1.h(getName(), paramInt))
    {
      int m = paramd1.e(getName(), paramInt);
      for (int n = 0; n < this.h.size(); n++)
      {
        paramd2 = (c)this.h.get(n);
        if ((paramd2 instanceof e1.e)) {
          ((e1.e)paramd2).f(paramd1, paramInt + m, paramList, locald);
        }
      }
    }
  }
  
  public void g(Canvas paramCanvas, Matrix paramMatrix, int paramInt)
  {
    if (this.g) {
      return;
    }
    this.c.set(paramMatrix);
    paramMatrix = this.k;
    int m = paramInt;
    if (paramMatrix != null)
    {
      this.c.preConcat(paramMatrix.f());
      if (this.k.h() == null) {
        m = 100;
      } else {
        m = ((Integer)this.k.h().h()).intValue();
      }
      m = (int)(m / 100.0F * paramInt / 255.0F * 255.0F);
    }
    if ((this.i.Z()) && (l()) && (m != 255)) {
      paramInt = 1;
    } else {
      paramInt = 0;
    }
    if (paramInt != 0)
    {
      this.b.set(0.0F, 0.0F, 0.0F, 0.0F);
      c(this.b, this.c, true);
      this.a.setAlpha(m);
      h.m(paramCanvas, this.b, this.a);
    }
    if (paramInt != 0) {
      m = 255;
    }
    for (int n = this.h.size() - 1; n >= 0; n--)
    {
      paramMatrix = this.h.get(n);
      if ((paramMatrix instanceof e)) {
        ((e)paramMatrix).g(paramCanvas, this.c, m);
      }
    }
    if (paramInt != 0) {
      paramCanvas.restore();
    }
  }
  
  public String getName()
  {
    return this.f;
  }
  
  public Path getPath()
  {
    this.c.reset();
    Object localObject = this.k;
    if (localObject != null) {
      this.c.set(((p)localObject).f());
    }
    this.d.reset();
    if (this.g) {
      return this.d;
    }
    for (int m = this.h.size() - 1; m >= 0; m--)
    {
      localObject = (c)this.h.get(m);
      if ((localObject instanceof m)) {
        this.d.addPath(((m)localObject).getPath(), this.c);
      }
    }
    return this.d;
  }
  
  public <T> void h(T paramT, l1.c<T> paramc)
  {
    p localp = this.k;
    if (localp != null) {
      localp.c(paramT, paramc);
    }
  }
  
  List<m> j()
  {
    if (this.j == null)
    {
      this.j = new ArrayList();
      for (int m = 0; m < this.h.size(); m++)
      {
        c localc = (c)this.h.get(m);
        if ((localc instanceof m)) {
          this.j.add((m)localc);
        }
      }
    }
    return this.j;
  }
  
  Matrix k()
  {
    p localp = this.k;
    if (localp != null) {
      return localp.f();
    }
    this.c.reset();
    return this.c;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b1.d
 * JD-Core Version:    0.7.0.1
 */