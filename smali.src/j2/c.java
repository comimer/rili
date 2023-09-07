package j2;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.FontMetricsInt;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.style.ReplacementSpan;

public class c
  extends ReplacementSpan
{
  protected static final Paint c = new Paint();
  protected Drawable a;
  private float b;
  
  public c(Drawable paramDrawable)
  {
    this.a = paramDrawable;
  }
  
  private void k(Paint.FontMetricsInt paramFontMetricsInt, Paint paramPaint)
  {
    Paint localPaint = c;
    localPaint.set(paramPaint);
    if (paramFontMetricsInt != null)
    {
      localPaint.getFontMetricsInt(paramFontMetricsInt);
      paramPaint = getBounds();
      int i = paramFontMetricsInt.descent - paramFontMetricsInt.ascent;
      int j = (int)this.b / 2;
      int k = paramFontMetricsInt.top;
      paramFontMetricsInt.ascent = (Math.min(k, (i - paramPaint.bottom) / 2 + k) - j);
      k = paramFontMetricsInt.bottom;
      i = Math.max(k, (paramPaint.bottom - i) / 2 + k) + j;
      paramFontMetricsInt.descent = i;
      paramFontMetricsInt.top = paramFontMetricsInt.ascent;
      paramFontMetricsInt.bottom = i;
    }
  }
  
  public void draw(Canvas paramCanvas, CharSequence paramCharSequence, int paramInt1, int paramInt2, float paramFloat, int paramInt3, int paramInt4, int paramInt5, Paint paramPaint)
  {
    paramCanvas.save();
    paramCanvas.translate(paramFloat, (paramInt5 - this.a.getBounds().bottom + paramInt3) / 2);
    this.a.draw(paramCanvas);
    paramCanvas.restore();
  }
  
  protected Rect getBounds()
  {
    return this.a.getBounds();
  }
  
  public int getSize(Paint paramPaint, CharSequence paramCharSequence, int paramInt1, int paramInt2, Paint.FontMetricsInt paramFontMetricsInt)
  {
    k(paramFontMetricsInt, paramPaint);
    return getBounds().right;
  }
  
  public void j(float paramFloat)
  {
    this.b = paramFloat;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j2.c
 * JD-Core Version:    0.7.0.1
 */