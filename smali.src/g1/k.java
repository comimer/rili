package g1;

import b1.d;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.layer.a;
import java.util.Arrays;
import java.util.List;

public class k
  implements c
{
  private final String a;
  private final List<c> b;
  private final boolean c;
  
  public k(String paramString, List<c> paramList, boolean paramBoolean)
  {
    this.a = paramString;
    this.b = paramList;
    this.c = paramBoolean;
  }
  
  public b1.c a(LottieDrawable paramLottieDrawable, a parama)
  {
    return new d(paramLottieDrawable, parama, this);
  }
  
  public List<c> b()
  {
    return this.b;
  }
  
  public String c()
  {
    return this.a;
  }
  
  public boolean d()
  {
    return this.c;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("ShapeGroup{name='");
    localStringBuilder.append(this.a);
    localStringBuilder.append("' Shapes: ");
    localStringBuilder.append(Arrays.toString(this.b.toArray()));
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g1.k
 * JD-Core Version:    0.7.0.1
 */