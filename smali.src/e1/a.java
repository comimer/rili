package e1;

import android.annotation.SuppressLint;
import android.graphics.PointF;

public class a
{
  private final PointF a;
  private final PointF b;
  private final PointF c;
  
  public a()
  {
    this.a = new PointF();
    this.b = new PointF();
    this.c = new PointF();
  }
  
  public a(PointF paramPointF1, PointF paramPointF2, PointF paramPointF3)
  {
    this.a = paramPointF1;
    this.b = paramPointF2;
    this.c = paramPointF3;
  }
  
  public PointF a()
  {
    return this.a;
  }
  
  public PointF b()
  {
    return this.b;
  }
  
  public PointF c()
  {
    return this.c;
  }
  
  public void d(float paramFloat1, float paramFloat2)
  {
    this.a.set(paramFloat1, paramFloat2);
  }
  
  public void e(float paramFloat1, float paramFloat2)
  {
    this.b.set(paramFloat1, paramFloat2);
  }
  
  public void f(float paramFloat1, float paramFloat2)
  {
    this.c.set(paramFloat1, paramFloat2);
  }
  
  @SuppressLint({"DefaultLocale"})
  public String toString()
  {
    return String.format("v=%.2f,%.2f cp1=%.2f,%.2f cp2=%.2f,%.2f", new Object[] { Float.valueOf(this.c.x), Float.valueOf(this.c.y), Float.valueOf(this.a.x), Float.valueOf(this.a.y), Float.valueOf(this.b.x), Float.valueOf(this.b.y) });
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     e1.a
 * JD-Core Version:    0.7.0.1
 */