package g1;

import b1.q;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.layer.a;
import f1.m;

public class h
  implements c
{
  private final String a;
  private final m<Float, Float> b;
  
  public h(String paramString, m<Float, Float> paramm)
  {
    this.a = paramString;
    this.b = paramm;
  }
  
  public b1.c a(LottieDrawable paramLottieDrawable, a parama)
  {
    return new q(paramLottieDrawable, parama, this);
  }
  
  public m<Float, Float> b()
  {
    return this.b;
  }
  
  public String c()
  {
    return this.a;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g1.h
 * JD-Core Version:    0.7.0.1
 */