package g1;

import b1.r;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.layer.a;
import f1.h;

public class l
  implements c
{
  private final String a;
  private final int b;
  private final h c;
  private final boolean d;
  
  public l(String paramString, int paramInt, h paramh, boolean paramBoolean)
  {
    this.a = paramString;
    this.b = paramInt;
    this.c = paramh;
    this.d = paramBoolean;
  }
  
  public b1.c a(LottieDrawable paramLottieDrawable, a parama)
  {
    return new r(paramLottieDrawable, parama, this);
  }
  
  public String b()
  {
    return this.a;
  }
  
  public h c()
  {
    return this.c;
  }
  
  public boolean d()
  {
    return this.d;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("ShapePath{name=");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", index=");
    localStringBuilder.append(this.b);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g1.l
 * JD-Core Version:    0.7.0.1
 */