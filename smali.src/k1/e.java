package k1;

import android.animation.ValueAnimator;
import android.view.Choreographer;
import android.view.Choreographer.FrameCallback;
import com.airbnb.lottie.c;
import com.airbnb.lottie.h;

public class e
  extends a
  implements Choreographer.FrameCallback
{
  private float c = 1.0F;
  private boolean d = false;
  private long e = 0L;
  private float f = 0.0F;
  private int g = 0;
  private float h = -2.147484E+009F;
  private float i = 2.147484E+009F;
  private h j;
  protected boolean k = false;
  
  private void G()
  {
    if (this.j == null) {
      return;
    }
    float f1 = this.f;
    if ((f1 >= this.h) && (f1 <= this.i)) {
      return;
    }
    throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", new Object[] { Float.valueOf(this.h), Float.valueOf(this.i), Float.valueOf(this.f) }));
  }
  
  private float l()
  {
    h localh = this.j;
    if (localh == null) {
      return 3.4028235E+38F;
    }
    return 1.0E+009F / localh.i() / Math.abs(this.c);
  }
  
  private boolean r()
  {
    boolean bool;
    if (p() < 0.0F) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void A(h paramh)
  {
    int m;
    if (this.j == null) {
      m = 1;
    } else {
      m = 0;
    }
    this.j = paramh;
    if (m != 0) {
      D(Math.max(this.h, paramh.p()), Math.min(this.i, paramh.f()));
    } else {
      D((int)paramh.p(), (int)paramh.f());
    }
    float f1 = this.f;
    this.f = 0.0F;
    B((int)f1);
    f();
  }
  
  public void B(float paramFloat)
  {
    if (this.f == paramFloat) {
      return;
    }
    this.f = g.b(paramFloat, o(), n());
    this.e = 0L;
    f();
  }
  
  public void C(float paramFloat)
  {
    D(this.h, paramFloat);
  }
  
  public void D(float paramFloat1, float paramFloat2)
  {
    if (paramFloat1 <= paramFloat2)
    {
      h localh = this.j;
      float f1;
      if (localh == null) {
        f1 = -3.402824E+038F;
      } else {
        f1 = localh.p();
      }
      localh = this.j;
      float f2;
      if (localh == null) {
        f2 = 3.4028235E+38F;
      } else {
        f2 = localh.f();
      }
      paramFloat1 = g.b(paramFloat1, f1, f2);
      paramFloat2 = g.b(paramFloat2, f1, f2);
      if ((paramFloat1 != this.h) || (paramFloat2 != this.i))
      {
        this.h = paramFloat1;
        this.i = paramFloat2;
        B((int)g.b(this.f, paramFloat1, paramFloat2));
      }
      return;
    }
    throw new IllegalArgumentException(String.format("minFrame (%s) must be <= maxFrame (%s)", new Object[] { Float.valueOf(paramFloat1), Float.valueOf(paramFloat2) }));
  }
  
  public void E(int paramInt)
  {
    D(paramInt, (int)this.i);
  }
  
  public void F(float paramFloat)
  {
    this.c = paramFloat;
  }
  
  void a()
  {
    super.a();
    b(r());
  }
  
  public void cancel()
  {
    a();
    w();
  }
  
  public void doFrame(long paramLong)
  {
    v();
    if ((this.j != null) && (isRunning()))
    {
      c.a("LottieValueAnimator#doFrame");
      long l1 = this.e;
      long l2 = 0L;
      if (l1 != 0L) {
        l2 = paramLong - l1;
      }
      float f1 = l();
      float f2 = (float)l2 / f1;
      float f3 = this.f;
      f1 = f2;
      if (r()) {
        f1 = -f2;
      }
      f1 = f3 + f1;
      this.f = f1;
      boolean bool = g.d(f1, o(), n());
      this.f = g.b(this.f, o(), n());
      this.e = paramLong;
      f();
      if ((bool ^ true)) {
        if ((getRepeatCount() != -1) && (this.g >= getRepeatCount()))
        {
          if (this.c < 0.0F) {
            f1 = o();
          } else {
            f1 = n();
          }
          this.f = f1;
          w();
          b(r());
        }
        else
        {
          d();
          this.g += 1;
          if (getRepeatMode() == 2)
          {
            this.d ^= true;
            z();
          }
          else
          {
            if (r()) {
              f1 = n();
            } else {
              f1 = o();
            }
            this.f = f1;
          }
          this.e = paramLong;
        }
      }
      G();
      c.b("LottieValueAnimator#doFrame");
    }
  }
  
  public void g()
  {
    this.j = null;
    this.h = -2.147484E+009F;
    this.i = 2.147484E+009F;
  }
  
  public float getAnimatedFraction()
  {
    if (this.j == null) {
      return 0.0F;
    }
    float f1;
    float f2;
    if (r())
    {
      f1 = n() - this.f;
      f2 = n();
    }
    for (float f3 = o();; f3 = o())
    {
      return f1 / (f2 - f3);
      f1 = this.f - o();
      f2 = n();
    }
  }
  
  public Object getAnimatedValue()
  {
    return Float.valueOf(i());
  }
  
  public long getDuration()
  {
    h localh = this.j;
    long l;
    if (localh == null) {
      l = 0L;
    } else {
      l = localh.d();
    }
    return l;
  }
  
  public void h()
  {
    w();
    b(r());
  }
  
  public float i()
  {
    h localh = this.j;
    if (localh == null) {
      return 0.0F;
    }
    return (this.f - localh.p()) / (this.j.f() - this.j.p());
  }
  
  public boolean isRunning()
  {
    return this.k;
  }
  
  public float k()
  {
    return this.f;
  }
  
  public float n()
  {
    h localh = this.j;
    if (localh == null) {
      return 0.0F;
    }
    float f1 = this.i;
    float f2 = f1;
    if (f1 == 2.147484E+009F) {
      f2 = localh.f();
    }
    return f2;
  }
  
  public float o()
  {
    h localh = this.j;
    if (localh == null) {
      return 0.0F;
    }
    float f1 = this.h;
    float f2 = f1;
    if (f1 == -2.147484E+009F) {
      f2 = localh.p();
    }
    return f2;
  }
  
  public float p()
  {
    return this.c;
  }
  
  public void setRepeatMode(int paramInt)
  {
    super.setRepeatMode(paramInt);
    if ((paramInt != 2) && (this.d))
    {
      this.d = false;
      z();
    }
  }
  
  public void t()
  {
    w();
  }
  
  public void u()
  {
    this.k = true;
    e(r());
    float f1;
    if (r()) {
      f1 = n();
    } else {
      f1 = o();
    }
    B((int)f1);
    this.e = 0L;
    this.g = 0;
    v();
  }
  
  protected void v()
  {
    if (isRunning())
    {
      x(false);
      Choreographer.getInstance().postFrameCallback(this);
    }
  }
  
  protected void w()
  {
    x(true);
  }
  
  protected void x(boolean paramBoolean)
  {
    Choreographer.getInstance().removeFrameCallback(this);
    if (paramBoolean) {
      this.k = false;
    }
  }
  
  public void y()
  {
    this.k = true;
    v();
    this.e = 0L;
    if ((r()) && (k() == o())) {
      this.f = n();
    } else if ((!r()) && (k() == n())) {
      this.f = o();
    }
  }
  
  public void z()
  {
    F(-p());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     k1.e
 * JD-Core Version:    0.7.0.1
 */