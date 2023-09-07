package g1;

import b1.p;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.layer.a;
import f1.b;
import f1.l;

public class g
  implements c
{
  private final String a;
  private final b b;
  private final b c;
  private final l d;
  private final boolean e;
  
  public g(String paramString, b paramb1, b paramb2, l paraml, boolean paramBoolean)
  {
    this.a = paramString;
    this.b = paramb1;
    this.c = paramb2;
    this.d = paraml;
    this.e = paramBoolean;
  }
  
  public b1.c a(LottieDrawable paramLottieDrawable, a parama)
  {
    return new p(paramLottieDrawable, parama, this);
  }
  
  public b b()
  {
    return this.b;
  }
  
  public String c()
  {
    return this.a;
  }
  
  public b d()
  {
    return this.c;
  }
  
  public l e()
  {
    return this.d;
  }
  
  public boolean f()
  {
    return this.e;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g1.g
 * JD-Core Version:    0.7.0.1
 */