package j2;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.android.ex.chips.r;

public class e
  extends c
  implements a
{
  private final d d;
  private Rect e = new Rect(0, 0, 0, 0);
  
  public e(Drawable paramDrawable, r paramr)
  {
    super(paramDrawable);
    this.d = new d(paramr);
  }
  
  public boolean a()
  {
    return this.d.h();
  }
  
  public void b(String paramString)
  {
    this.d.i(paramString);
  }
  
  public long c()
  {
    return this.d.a();
  }
  
  public Rect d()
  {
    return this.e;
  }
  
  public void draw(Canvas paramCanvas)
  {
    this.a.draw(paramCanvas);
  }
  
  public CharSequence e()
  {
    return this.d.f();
  }
  
  public String f()
  {
    return this.d.e();
  }
  
  public long g()
  {
    return this.d.b();
  }
  
  public Rect getBounds()
  {
    return super.getBounds();
  }
  
  public CharSequence getValue()
  {
    return this.d.g();
  }
  
  public r h()
  {
    return this.d.d();
  }
  
  public Long i()
  {
    return this.d.c();
  }
  
  public void l(Rect paramRect)
  {
    this.e = paramRect;
  }
  
  public String toString()
  {
    return this.d.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j2.e
 * JD-Core Version:    0.7.0.1
 */