package g1;

import android.graphics.Path.FillType;
import b1.g;
import com.airbnb.lottie.LottieDrawable;
import f1.d;

public class j
  implements c
{
  private final boolean a;
  private final Path.FillType b;
  private final String c;
  private final f1.a d;
  private final d e;
  private final boolean f;
  
  public j(String paramString, boolean paramBoolean1, Path.FillType paramFillType, f1.a parama, d paramd, boolean paramBoolean2)
  {
    this.c = paramString;
    this.a = paramBoolean1;
    this.b = paramFillType;
    this.d = parama;
    this.e = paramd;
    this.f = paramBoolean2;
  }
  
  public b1.c a(LottieDrawable paramLottieDrawable, com.airbnb.lottie.model.layer.a parama)
  {
    return new g(paramLottieDrawable, parama, this);
  }
  
  public f1.a b()
  {
    return this.d;
  }
  
  public Path.FillType c()
  {
    return this.b;
  }
  
  public String d()
  {
    return this.c;
  }
  
  public d e()
  {
    return this.e;
  }
  
  public boolean f()
  {
    return this.f;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("ShapeFill{color=, fillEnabled=");
    localStringBuilder.append(this.a);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g1.j
 * JD-Core Version:    0.7.0.1
 */