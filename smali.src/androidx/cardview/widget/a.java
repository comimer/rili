package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;

class a
  implements c
{
  private d p(b paramb)
  {
    return (d)paramb.d();
  }
  
  public void a(b paramb, Context paramContext, ColorStateList paramColorStateList, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    paramb.a(new d(paramColorStateList, paramFloat1));
    paramContext = paramb.e();
    paramContext.setClipToOutline(true);
    paramContext.setElevation(paramFloat2);
    o(paramb, paramFloat3);
  }
  
  public void b(b paramb, float paramFloat)
  {
    p(paramb).h(paramFloat);
  }
  
  public float c(b paramb)
  {
    return paramb.e().getElevation();
  }
  
  public float d(b paramb)
  {
    return p(paramb).d();
  }
  
  public void e(b paramb)
  {
    o(paramb, g(paramb));
  }
  
  public void f(b paramb, float paramFloat)
  {
    paramb.e().setElevation(paramFloat);
  }
  
  public float g(b paramb)
  {
    return p(paramb).c();
  }
  
  public ColorStateList h(b paramb)
  {
    return p(paramb).b();
  }
  
  public void i(b paramb)
  {
    if (!paramb.c())
    {
      paramb.setShadowPadding(0, 0, 0, 0);
      return;
    }
    float f1 = g(paramb);
    float f2 = d(paramb);
    int i = (int)Math.ceil(e.a(f1, f2, paramb.b()));
    int j = (int)Math.ceil(e.b(f1, f2, paramb.b()));
    paramb.setShadowPadding(i, j, i, j);
  }
  
  public void j() {}
  
  public float k(b paramb)
  {
    return d(paramb) * 2.0F;
  }
  
  public float l(b paramb)
  {
    return d(paramb) * 2.0F;
  }
  
  public void m(b paramb)
  {
    o(paramb, g(paramb));
  }
  
  public void n(b paramb, ColorStateList paramColorStateList)
  {
    p(paramb).f(paramColorStateList);
  }
  
  public void o(b paramb, float paramFloat)
  {
    p(paramb).g(paramFloat, paramb.c(), paramb.b());
    i(paramb);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.cardview.widget.a
 * JD-Core Version:    0.7.0.1
 */