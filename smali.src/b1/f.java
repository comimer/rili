package b1;

import android.graphics.Path;
import android.graphics.PointF;
import c1.a.b;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.h0;
import com.airbnb.lottie.model.content.ShapeTrimPath.Type;
import e1.d;
import java.util.List;
import k1.g;

public class f
  implements m, a.b, k
{
  private final Path a = new Path();
  private final String b;
  private final LottieDrawable c;
  private final c1.a<?, PointF> d;
  private final c1.a<?, PointF> e;
  private final g1.b f;
  private final b g = new b();
  private boolean h;
  
  public f(LottieDrawable paramLottieDrawable, com.airbnb.lottie.model.layer.a parama, g1.b paramb)
  {
    this.b = paramb.b();
    this.c = paramLottieDrawable;
    c1.a locala = paramb.d().m();
    this.d = locala;
    paramLottieDrawable = paramb.c().m();
    this.e = paramLottieDrawable;
    this.f = paramb;
    parama.i(locala);
    parama.i(paramLottieDrawable);
    locala.a(this);
    paramLottieDrawable.a(this);
  }
  
  private void e()
  {
    this.h = false;
    this.c.invalidateSelf();
  }
  
  public void a()
  {
    e();
  }
  
  public void b(List<c> paramList1, List<c> paramList2)
  {
    for (int i = 0; i < paramList1.size(); i++)
    {
      paramList2 = (c)paramList1.get(i);
      if ((paramList2 instanceof u))
      {
        paramList2 = (u)paramList2;
        if (paramList2.j() == ShapeTrimPath.Type.SIMULTANEOUSLY)
        {
          this.g.a(paramList2);
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
    if (this.h) {
      return this.a;
    }
    this.a.reset();
    if (this.f.e())
    {
      this.h = true;
      return this.a;
    }
    Object localObject = (PointF)this.d.h();
    float f1 = ((PointF)localObject).x / 2.0F;
    float f2 = ((PointF)localObject).y / 2.0F;
    float f3 = f1 * 0.55228F;
    float f4 = 0.55228F * f2;
    this.a.reset();
    float f5;
    float f6;
    float f8;
    if (this.f.f())
    {
      localObject = this.a;
      f5 = -f2;
      ((Path)localObject).moveTo(0.0F, f5);
      localObject = this.a;
      f6 = 0.0F - f3;
      float f7 = -f1;
      f8 = 0.0F - f4;
      ((Path)localObject).cubicTo(f6, f5, f7, f8, f7, 0.0F);
      localObject = this.a;
      f4 += 0.0F;
      ((Path)localObject).cubicTo(f7, f4, f6, f2, 0.0F, f2);
      localObject = this.a;
      f3 += 0.0F;
      ((Path)localObject).cubicTo(f3, f2, f1, f4, f1, 0.0F);
      this.a.cubicTo(f1, f8, f3, f5, 0.0F, f5);
    }
    else
    {
      localObject = this.a;
      f5 = -f2;
      ((Path)localObject).moveTo(0.0F, f5);
      localObject = this.a;
      f6 = f3 + 0.0F;
      f8 = 0.0F - f4;
      ((Path)localObject).cubicTo(f6, f5, f1, f8, f1, 0.0F);
      localObject = this.a;
      f4 += 0.0F;
      ((Path)localObject).cubicTo(f1, f4, f6, f2, 0.0F, f2);
      localObject = this.a;
      f3 = 0.0F - f3;
      f1 = -f1;
      ((Path)localObject).cubicTo(f3, f2, f1, f4, f1, 0.0F);
      this.a.cubicTo(f1, f8, f3, f5, 0.0F, f5);
    }
    localObject = (PointF)this.e.h();
    this.a.offset(((PointF)localObject).x, ((PointF)localObject).y);
    this.a.close();
    this.g.b(this.a);
    this.h = true;
    return this.a;
  }
  
  public <T> void h(T paramT, l1.c<T> paramc)
  {
    if (paramT == h0.k) {
      this.d.n(paramc);
    } else if (paramT == h0.n) {
      this.e.n(paramc);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b1.f
 * JD-Core Version:    0.7.0.1
 */