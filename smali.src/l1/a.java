package l1;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import com.airbnb.lottie.h;

public class a<T>
{
  private final h a;
  public final T b;
  public T c;
  public final Interpolator d;
  public final Interpolator e;
  public final Interpolator f;
  public final float g;
  public Float h;
  private float i = -3987645.8F;
  private float j = -3987645.8F;
  private int k = 784923401;
  private int l = 784923401;
  private float m = 1.4E-45F;
  private float n = 1.4E-45F;
  public PointF o = null;
  public PointF p = null;
  
  public a(h paramh, T paramT1, T paramT2, Interpolator paramInterpolator, float paramFloat, Float paramFloat1)
  {
    this.a = paramh;
    this.b = paramT1;
    this.c = paramT2;
    this.d = paramInterpolator;
    this.e = null;
    this.f = null;
    this.g = paramFloat;
    this.h = paramFloat1;
  }
  
  public a(h paramh, T paramT1, T paramT2, Interpolator paramInterpolator1, Interpolator paramInterpolator2, float paramFloat, Float paramFloat1)
  {
    this.a = paramh;
    this.b = paramT1;
    this.c = paramT2;
    this.d = null;
    this.e = paramInterpolator1;
    this.f = paramInterpolator2;
    this.g = paramFloat;
    this.h = paramFloat1;
  }
  
  protected a(h paramh, T paramT1, T paramT2, Interpolator paramInterpolator1, Interpolator paramInterpolator2, Interpolator paramInterpolator3, float paramFloat, Float paramFloat1)
  {
    this.a = paramh;
    this.b = paramT1;
    this.c = paramT2;
    this.d = paramInterpolator1;
    this.e = paramInterpolator2;
    this.f = paramInterpolator3;
    this.g = paramFloat;
    this.h = paramFloat1;
  }
  
  public a(T paramT)
  {
    this.a = null;
    this.b = paramT;
    this.c = paramT;
    this.d = null;
    this.e = null;
    this.f = null;
    this.g = 1.4E-45F;
    this.h = Float.valueOf(3.4028235E+38F);
  }
  
  public boolean a(float paramFloat)
  {
    boolean bool;
    if ((paramFloat >= e()) && (paramFloat < b())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public float b()
  {
    if (this.a == null) {
      return 1.0F;
    }
    if (this.n == 1.4E-45F) {
      if (this.h == null) {
        this.n = 1.0F;
      } else {
        this.n = (e() + (this.h.floatValue() - this.g) / this.a.e());
      }
    }
    return this.n;
  }
  
  public float c()
  {
    if (this.j == -3987645.8F) {
      this.j = ((Float)this.c).floatValue();
    }
    return this.j;
  }
  
  public int d()
  {
    if (this.l == 784923401) {
      this.l = ((Integer)this.c).intValue();
    }
    return this.l;
  }
  
  public float e()
  {
    h localh = this.a;
    if (localh == null) {
      return 0.0F;
    }
    if (this.m == 1.4E-45F) {
      this.m = ((this.g - localh.p()) / this.a.e());
    }
    return this.m;
  }
  
  public float f()
  {
    if (this.i == -3987645.8F) {
      this.i = ((Float)this.b).floatValue();
    }
    return this.i;
  }
  
  public int g()
  {
    if (this.k == 784923401) {
      this.k = ((Integer)this.b).intValue();
    }
    return this.k;
  }
  
  public boolean h()
  {
    boolean bool;
    if ((this.d == null) && (this.e == null) && (this.f == null)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Keyframe{startValue=");
    localStringBuilder.append(this.b);
    localStringBuilder.append(", endValue=");
    localStringBuilder.append(this.c);
    localStringBuilder.append(", startFrame=");
    localStringBuilder.append(this.g);
    localStringBuilder.append(", endFrame=");
    localStringBuilder.append(this.h);
    localStringBuilder.append(", interpolator=");
    localStringBuilder.append(this.d);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     l1.a
 * JD-Core Version:    0.7.0.1
 */