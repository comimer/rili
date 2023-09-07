package g1;

import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.layer.a;
import f1.m;

public class b
  implements c
{
  private final String a;
  private final m<PointF, PointF> b;
  private final f1.f c;
  private final boolean d;
  private final boolean e;
  
  public b(String paramString, m<PointF, PointF> paramm, f1.f paramf, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.a = paramString;
    this.b = paramm;
    this.c = paramf;
    this.d = paramBoolean1;
    this.e = paramBoolean2;
  }
  
  public b1.c a(LottieDrawable paramLottieDrawable, a parama)
  {
    return new b1.f(paramLottieDrawable, parama, this);
  }
  
  public String b()
  {
    return this.a;
  }
  
  public m<PointF, PointF> c()
  {
    return this.b;
  }
  
  public f1.f d()
  {
    return this.c;
  }
  
  public boolean e()
  {
    return this.e;
  }
  
  public boolean f()
  {
    return this.d;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g1.b
 * JD-Core Version:    0.7.0.1
 */