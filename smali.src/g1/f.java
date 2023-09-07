package g1;

import android.graphics.PointF;
import b1.o;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.layer.a;
import f1.b;
import f1.m;

public class f
  implements c
{
  private final String a;
  private final m<PointF, PointF> b;
  private final m<PointF, PointF> c;
  private final b d;
  private final boolean e;
  
  public f(String paramString, m<PointF, PointF> paramm1, m<PointF, PointF> paramm2, b paramb, boolean paramBoolean)
  {
    this.a = paramString;
    this.b = paramm1;
    this.c = paramm2;
    this.d = paramb;
    this.e = paramBoolean;
  }
  
  public b1.c a(LottieDrawable paramLottieDrawable, a parama)
  {
    return new o(paramLottieDrawable, parama, this);
  }
  
  public b b()
  {
    return this.d;
  }
  
  public String c()
  {
    return this.a;
  }
  
  public m<PointF, PointF> d()
  {
    return this.b;
  }
  
  public m<PointF, PointF> e()
  {
    return this.c;
  }
  
  public boolean f()
  {
    return this.e;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("RectangleShape{position=");
    localStringBuilder.append(this.b);
    localStringBuilder.append(", size=");
    localStringBuilder.append(this.c);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g1.f
 * JD-Core Version:    0.7.0.1
 */