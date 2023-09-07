package v4;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.FontMetricsInt;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.ThumbnailUtils;
import android.text.style.ReplacementSpan;
import com.miui.calendar.util.w;
import w4.b;
import x4.a;
import x4.d;

public class c
  extends ReplacementSpan
  implements b
{
  private int D;
  private d a;
  private String b;
  private float c;
  private float d;
  private int e = 0;
  private float f = 0.0F;
  private int g = 0;
  private int h = 0;
  private int i = 0;
  private float j;
  private Bitmap k;
  private String l;
  private int m = 0;
  private int n = 0;
  private int o = 0;
  private int p = 0;
  private boolean q = true;
  private boolean r = false;
  private RectF v;
  private boolean w = true;
  private int x;
  private boolean y;
  private boolean z;
  
  public c(String paramString, d paramd)
  {
    this.a = paramd;
    this.b = paramd.d();
    this.l = paramString;
    this.z = this.a.t();
    this.x = this.a.f();
    paramString = this.a.g();
    this.k = paramString;
    if (paramString == null)
    {
      float f1 = this.a.l();
      this.j = f1;
      if (f1 > 0.0F) {
        this.v = new RectF();
      }
    }
    else
    {
      this.r = true;
    }
    d();
  }
  
  private float b(Paint paramPaint)
  {
    if (this.d <= 0.0F)
    {
      int i1 = this.a.k();
      Rect localRect = new Rect();
      String str = this.l;
      paramPaint.getTextBounds(str, 0, str.length(), localRect);
      this.g = localRect.height();
      this.h = localRect.bottom;
      float f1 = this.a.o();
      if ((f1 > 0.0F) && (f1 != paramPaint.getTextSize())) {
        paramPaint.setTextSize(f1);
      }
      str = this.b;
      paramPaint.getTextBounds(str, 0, str.length(), localRect);
      int i2 = localRect.height();
      this.e = i2;
      this.i = localRect.bottom;
      if ((i1 > 0) && (i1 > i2) && (i1 <= this.g)) {
        this.d = i1;
      } else {
        this.d = (i2 + this.m + this.n);
      }
      f1 = this.d;
      i2 = this.g;
      if (f1 > i2) {
        this.d = i2;
      }
    }
    return this.d;
  }
  
  private float c(Paint paramPaint)
  {
    if (this.c <= 0.0F)
    {
      float f1 = this.a.o();
      if ((f1 > 0.0F) && (f1 != paramPaint.getTextSize())) {
        paramPaint.setTextSize(f1);
      }
      int i1 = this.a.m();
      String str = this.b;
      f1 = paramPaint.measureText(str, 0, str.length());
      this.f = f1;
      if (i1 > 0)
      {
        float f2 = i1;
        if (f2 > f1)
        {
          this.c = f2;
          break label110;
        }
      }
      this.c = (f1 + this.o + this.p);
    }
    label110:
    return this.c;
  }
  
  private void d()
  {
    if ((this.a.k() <= 0) && (this.a.m() <= 0))
    {
      this.m = this.a.s();
      this.n = this.a.p();
      this.o = this.a.q();
      int i1 = this.a.r();
      this.p = i1;
      if ((this.m > 0) || (this.n > 0) || (this.o > 0) || (i1 > 0)) {
        this.q = false;
      }
    }
  }
  
  public void a(boolean paramBoolean, int paramInt)
  {
    this.y = paramBoolean;
    this.D = paramInt;
  }
  
  public void draw(Canvas paramCanvas, CharSequence paramCharSequence, int paramInt1, int paramInt2, float paramFloat, int paramInt3, int paramInt4, int paramInt5, Paint paramPaint)
  {
    float f1 = paramInt5 - paramInt3;
    float f2 = paramInt5 - f1;
    if ((this.z) && (this.y))
    {
      paramInt1 = this.D;
      if (paramInt1 != 0)
      {
        paramPaint.setColor(paramInt1);
        paramCanvas.drawRect(paramFloat, f2, paramFloat + this.c, f2 + f1, paramPaint);
        break label107;
      }
    }
    paramInt1 = this.x;
    if (paramInt1 != 0)
    {
      paramPaint.setColor(paramInt1);
      paramCanvas.drawRect(paramFloat, f2, paramFloat + this.c, f2 + f1, paramPaint);
    }
    label107:
    f1 = this.a.o();
    if ((f1 > 0.0F) && (f1 != paramPaint.getTextSize())) {
      paramPaint.setTextSize(f1);
    }
    f1 = paramInt4;
    paramInt1 = this.a.b();
    if (paramInt1 != 1)
    {
      if (paramInt1 != 2)
      {
        if (paramInt1 != 3) {
          break label326;
        }
        f2 = this.d;
        paramInt2 = this.h;
        f1 -= f2 - paramInt2;
        paramInt1 = this.n;
        paramInt2 -= this.i;
      }
      else
      {
        paramInt1 = this.g;
        f2 = paramInt1 / 2;
        float f3 = this.d / 2.0F;
        paramInt2 = this.h;
        f1 -= f2 + f3 - paramInt2;
        paramInt1 = paramInt1 / 2 - this.e / 2 - (paramInt2 - this.i);
        break label320;
      }
    }
    else
    {
      paramInt2 = this.g;
      paramInt1 = this.h;
      f1 -= paramInt2 - paramInt1;
      paramInt1 = paramInt2 - this.e - (paramInt1 - this.i);
      paramInt2 = this.m;
    }
    paramInt1 -= paramInt2;
    label320:
    paramInt4 -= paramInt1;
    label326:
    if (this.r)
    {
      paramCanvas.drawBitmap(this.k, paramFloat, f1, paramPaint);
    }
    else
    {
      paramPaint.setColor(this.a.j());
      if (this.j > 0.0F)
      {
        paramCharSequence = this.v;
        paramCharSequence.top = f1;
        paramCharSequence.bottom = (this.d + f1);
        paramCharSequence.left = paramFloat;
        paramCharSequence.right = (this.c + paramFloat);
        if (this.a.u())
        {
          f2 = this.a.h();
          paramCanvas.drawRect(paramFloat, f1, paramFloat + this.c, f1 + this.d, paramPaint);
          paramPaint.setColor(this.a.i());
          paramPaint.setStyle(Paint.Style.STROKE);
          paramPaint.setStrokeWidth(f2);
          paramCharSequence = this.v;
          f1 = this.j;
          paramCanvas.drawRoundRect(paramCharSequence, f1, f1, paramPaint);
          paramPaint.setStyle(Paint.Style.FILL);
        }
        else
        {
          paramCharSequence = this.v;
          f1 = this.j;
          paramCanvas.drawRoundRect(paramCharSequence, f1, f1, paramPaint);
        }
      }
      else
      {
        paramCanvas.drawRect(paramFloat, f1, paramFloat + this.c, f1 + this.d, paramPaint);
        if (this.a.u())
        {
          paramPaint.setColor(this.a.i());
          paramPaint.setStyle(Paint.Style.STROKE);
          paramPaint.setStrokeWidth(this.a.h());
          paramCanvas.drawRect(paramFloat, f1, paramFloat + this.c, f1 + this.d, paramPaint);
          paramPaint.setStyle(Paint.Style.FILL);
        }
      }
    }
    paramPaint.setColor(this.a.n());
    if (this.q) {
      paramInt1 = Math.round(this.c / 2.0F - this.f / 2.0F);
    } else {
      paramInt1 = this.o;
    }
    f1 = paramInt1;
    if (this.a.v()) {
      paramPaint.setTypeface(w.c());
    }
    paramCanvas.drawText(this.b, paramFloat + f1, paramInt4, paramPaint);
  }
  
  public int getSize(Paint paramPaint, CharSequence paramCharSequence, int paramInt1, int paramInt2, Paint.FontMetricsInt paramFontMetricsInt)
  {
    if (this.w)
    {
      this.w = false;
      b(paramPaint);
      c(paramPaint);
      if (this.r)
      {
        paramPaint = ThumbnailUtils.extractThumbnail(this.k, Math.round(this.c), Math.round(this.d));
        if (paramPaint != null)
        {
          this.k.recycle();
          this.k = paramPaint;
        }
      }
    }
    return Math.round(this.c);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     v4.c
 * JD-Core Version:    0.7.0.1
 */