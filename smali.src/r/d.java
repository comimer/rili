package r;

import android.view.View;
import p.a;
import p.c;
import p.f;

public abstract class d
  extends f
{
  public float a(float paramFloat, long paramLong, View paramView, c paramc)
  {
    this.a.c(paramFloat, this.g);
    paramView = this.g;
    paramFloat = paramView[1];
    if (paramFloat == 0.0F)
    {
      this.h = false;
      return paramView[2];
    }
    if (Float.isNaN(this.j)) {
      throw null;
    }
    long l = this.i;
    this.j = ((float)((this.j + (paramLong - l) * 1.E-009D * paramFloat) % 1.0D));
    throw null;
  }
  
  public abstract boolean b(View paramView, float paramFloat, long paramLong, c paramc);
  
  public static class a
    extends d
  {
    public boolean b(View paramView, float paramFloat, long paramLong, c paramc)
    {
      return this.h;
    }
    
    public boolean c(View paramView, c paramc, float paramFloat, long paramLong, double paramDouble1, double paramDouble2)
    {
      paramView.setRotation(a(paramFloat, paramLong, paramView, paramc) + (float)Math.toDegrees(Math.atan2(paramDouble2, paramDouble1)));
      return this.h;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r.d
 * JD-Core Version:    0.7.0.1
 */