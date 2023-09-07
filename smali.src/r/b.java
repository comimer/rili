package r;

import android.view.View;
import p.d;

public abstract class b
  extends d
{
  public abstract void b(View paramView, float paramFloat);
  
  public static class a
    extends b
  {
    public void b(View paramView, float paramFloat) {}
    
    public void c(View paramView, float paramFloat, double paramDouble1, double paramDouble2)
    {
      paramView.setRotation(a(paramFloat) + (float)Math.toDegrees(Math.atan2(paramDouble2, paramDouble1)));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r.b
 * JD-Core Version:    0.7.0.1
 */