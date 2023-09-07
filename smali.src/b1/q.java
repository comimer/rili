package b1;

import android.graphics.PointF;
import c1.a.b;
import com.airbnb.lottie.LottieDrawable;
import f1.m;
import g1.h;
import g1.i;
import java.util.ArrayList;
import java.util.List;

public class q
  implements s, a.b
{
  private final LottieDrawable a;
  private final String b;
  private final c1.a<Float, Float> c;
  private i d;
  
  public q(LottieDrawable paramLottieDrawable, com.airbnb.lottie.model.layer.a parama, h paramh)
  {
    this.a = paramLottieDrawable;
    this.b = paramh.c();
    paramLottieDrawable = paramh.b().m();
    this.c = paramLottieDrawable;
    parama.i(paramLottieDrawable);
    paramLottieDrawable.a(this);
  }
  
  private static int e(int paramInt1, int paramInt2)
  {
    int i = paramInt1 / paramInt2;
    int j = i;
    if ((paramInt1 ^ paramInt2) < 0)
    {
      j = i;
      if (paramInt2 * i != paramInt1) {
        j = i - 1;
      }
    }
    return j;
  }
  
  private static int f(int paramInt1, int paramInt2)
  {
    return paramInt1 - e(paramInt1, paramInt2) * paramInt2;
  }
  
  private i i(i parami)
  {
    List localList = parami.a();
    boolean bool = parami.d();
    int i = localList.size() - 1;
    int j = 0;
    while (i >= 0)
    {
      Object localObject1 = (e1.a)localList.get(i);
      Object localObject2 = (e1.a)localList.get(f(i - 1, localList.size()));
      PointF localPointF;
      if ((i == 0) && (!bool)) {
        localPointF = parami.b();
      } else {
        localPointF = ((e1.a)localObject2).c();
      }
      if ((i == 0) && (!bool)) {
        localObject2 = localPointF;
      } else {
        localObject2 = ((e1.a)localObject2).b();
      }
      localObject1 = ((e1.a)localObject1).a();
      int k;
      if ((!parami.d()) && (i == 0) && (i == localList.size() - 1)) {
        k = 1;
      } else {
        k = 0;
      }
      if ((((PointF)localObject2).equals(localPointF)) && (((PointF)localObject1).equals(localPointF)) && (k == 0)) {
        j += 2;
      } else {
        j++;
      }
      i--;
    }
    parami = this.d;
    if ((parami == null) || (parami.a().size() != j))
    {
      parami = new ArrayList(j);
      for (i = 0; i < j; i++) {
        parami.add(new e1.a());
      }
      this.d = new i(new PointF(0.0F, 0.0F), false, parami);
    }
    this.d.e(bool);
    return this.d;
  }
  
  public void a()
  {
    this.a.invalidateSelf();
  }
  
  public void b(List<c> paramList1, List<c> paramList2) {}
  
  public i d(i parami)
  {
    List localList1 = parami.a();
    if (localList1.size() <= 2) {
      return parami;
    }
    float f1 = ((Float)this.c.h()).floatValue();
    if (f1 == 0.0F) {
      return parami;
    }
    i locali = i(parami);
    locali.f(parami.b().x, parami.b().y);
    List localList2 = locali.a();
    boolean bool = parami.d();
    int i = 0;
    int j = 0;
    while (i < localList1.size())
    {
      e1.a locala1 = (e1.a)localList1.get(i);
      e1.a locala2 = (e1.a)localList1.get(f(i - 1, localList1.size()));
      Object localObject1 = (e1.a)localList1.get(f(i - 2, localList1.size()));
      Object localObject2;
      if ((i == 0) && (!bool)) {
        localObject2 = parami.b();
      } else {
        localObject2 = locala2.c();
      }
      Object localObject3;
      if ((i == 0) && (!bool)) {
        localObject3 = localObject2;
      } else {
        localObject3 = locala2.b();
      }
      PointF localPointF1 = locala1.a();
      localObject1 = ((e1.a)localObject1).c();
      PointF localPointF2 = locala1.c();
      int k;
      if ((!parami.d()) && (i == 0) && (i == localList1.size() - 1)) {
        k = 1;
      } else {
        k = 0;
      }
      if ((((PointF)localObject3).equals(localObject2)) && (localPointF1.equals(localObject2)) && (k == 0))
      {
        float f2 = ((PointF)localObject2).x;
        float f3 = ((PointF)localObject1).x;
        float f4 = ((PointF)localObject2).y;
        float f5 = ((PointF)localObject1).y;
        float f6 = localPointF2.x;
        float f7 = localPointF2.y;
        f3 = (float)Math.hypot(f2 - f3, f4 - f5);
        f7 = (float)Math.hypot(f6 - f2, f7 - f4);
        f3 = Math.min(f1 / f3, 0.5F);
        f2 = Math.min(f1 / f7, 0.5F);
        f4 = ((PointF)localObject2).x;
        f7 = (((PointF)localObject1).x - f4) * f3 + f4;
        f6 = ((PointF)localObject2).y;
        f5 = (((PointF)localObject1).y - f6) * f3 + f6;
        f3 = (localPointF2.x - f4) * f2 + f4;
        f2 = (localPointF2.y - f6) * f2 + f6;
        localObject3 = (e1.a)localList2.get(f(j - 1, localList2.size()));
        localObject2 = (e1.a)localList2.get(j);
        ((e1.a)localObject3).e(f7, f5);
        ((e1.a)localObject3).f(f7, f5);
        if (i == 0) {
          locali.f(f7, f5);
        }
        ((e1.a)localObject2).d(f7 - (f7 - f4) * 0.5519F, f5 - (f5 - f6) * 0.5519F);
        j++;
        localObject3 = (e1.a)localList2.get(j);
        ((e1.a)localObject2).e(f3 - (f3 - f4) * 0.5519F, f2 - (f2 - f6) * 0.5519F);
        ((e1.a)localObject2).f(f3, f2);
        ((e1.a)localObject3).d(f3, f2);
        j++;
      }
      else
      {
        localObject3 = (e1.a)localList2.get(f(j - 1, localList2.size()));
        localObject2 = (e1.a)localList2.get(j);
        ((e1.a)localObject3).e(locala2.c().x, locala2.c().y);
        ((e1.a)localObject3).f(locala2.c().x, locala2.c().y);
        ((e1.a)localObject2).d(locala1.c().x, locala1.c().y);
        j++;
      }
      i++;
    }
    return locali;
  }
  
  public c1.a<Float, Float> h()
  {
    return this.c;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b1.q
 * JD-Core Version:    0.7.0.1
 */