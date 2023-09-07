package j2;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.FontMetricsInt;
import android.graphics.Rect;
import android.text.style.ReplacementSpan;
import com.android.ex.chips.r;

public class b
  extends ReplacementSpan
  implements a
{
  private static final Rect b = new Rect(0, 0, 0, 0);
  private final d a;
  
  public b(r paramr)
  {
    this.a = new d(paramr);
  }
  
  public boolean a()
  {
    return this.a.h();
  }
  
  public void b(String paramString)
  {
    this.a.i(paramString);
  }
  
  public long c()
  {
    return this.a.a();
  }
  
  public Rect d()
  {
    return b;
  }
  
  public void draw(Canvas paramCanvas) {}
  
  public void draw(Canvas paramCanvas, CharSequence paramCharSequence, int paramInt1, int paramInt2, float paramFloat, int paramInt3, int paramInt4, int paramInt5, Paint paramPaint) {}
  
  public CharSequence e()
  {
    return this.a.f();
  }
  
  public String f()
  {
    return this.a.e();
  }
  
  public long g()
  {
    return this.a.b();
  }
  
  public Rect getBounds()
  {
    return b;
  }
  
  public int getSize(Paint paramPaint, CharSequence paramCharSequence, int paramInt1, int paramInt2, Paint.FontMetricsInt paramFontMetricsInt)
  {
    return 0;
  }
  
  public CharSequence getValue()
  {
    return this.a.g();
  }
  
  public r h()
  {
    return this.a.d();
  }
  
  public Long i()
  {
    return this.a.c();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j2.b
 * JD-Core Version:    0.7.0.1
 */