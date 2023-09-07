package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.graphics.Paint;
import android.graphics.Paint.FontMetricsInt;
import android.text.style.ReplacementSpan;

public abstract class h
  extends ReplacementSpan
{
  private final Paint.FontMetricsInt a = new Paint.FontMetricsInt();
  private final f b;
  private short c = (short)-1;
  private short d = (short)-1;
  private float e = 1.0F;
  
  h(f paramf)
  {
    androidx.core.util.h.h(paramf, "metadata cannot be null");
    this.b = paramf;
  }
  
  public final f a()
  {
    return this.b;
  }
  
  final int b()
  {
    return this.c;
  }
  
  public int getSize(Paint paramPaint, @SuppressLint({"UnknownNullness"}) CharSequence paramCharSequence, int paramInt1, int paramInt2, Paint.FontMetricsInt paramFontMetricsInt)
  {
    paramPaint.getFontMetricsInt(this.a);
    paramPaint = this.a;
    this.e = (Math.abs(paramPaint.descent - paramPaint.ascent) * 1.0F / this.b.e());
    this.d = ((short)(short)(int)(this.b.e() * this.e));
    paramInt1 = (short)(int)(this.b.i() * this.e);
    this.c = ((short)paramInt1);
    if (paramFontMetricsInt != null)
    {
      paramPaint = this.a;
      paramFontMetricsInt.ascent = paramPaint.ascent;
      paramFontMetricsInt.descent = paramPaint.descent;
      paramFontMetricsInt.top = paramPaint.top;
      paramFontMetricsInt.bottom = paramPaint.bottom;
    }
    return paramInt1;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.emoji2.text.h
 * JD-Core Version:    0.7.0.1
 */