package g1;

import android.graphics.Path.FillType;
import b1.h;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.model.layer.a;
import f1.b;
import f1.d;
import f1.f;

public class e
  implements c
{
  private final GradientType a;
  private final Path.FillType b;
  private final f1.c c;
  private final d d;
  private final f e;
  private final f f;
  private final String g;
  private final b h;
  private final b i;
  private final boolean j;
  
  public e(String paramString, GradientType paramGradientType, Path.FillType paramFillType, f1.c paramc, d paramd, f paramf1, f paramf2, b paramb1, b paramb2, boolean paramBoolean)
  {
    this.a = paramGradientType;
    this.b = paramFillType;
    this.c = paramc;
    this.d = paramd;
    this.e = paramf1;
    this.f = paramf2;
    this.g = paramString;
    this.h = paramb1;
    this.i = paramb2;
    this.j = paramBoolean;
  }
  
  public b1.c a(LottieDrawable paramLottieDrawable, a parama)
  {
    return new h(paramLottieDrawable, parama, this);
  }
  
  public f b()
  {
    return this.f;
  }
  
  public Path.FillType c()
  {
    return this.b;
  }
  
  public f1.c d()
  {
    return this.c;
  }
  
  public GradientType e()
  {
    return this.a;
  }
  
  public String f()
  {
    return this.g;
  }
  
  public d g()
  {
    return this.d;
  }
  
  public f h()
  {
    return this.e;
  }
  
  public boolean i()
  {
    return this.j;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g1.e
 * JD-Core Version:    0.7.0.1
 */