package v4;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.style.DynamicDrawableSpan;
import android.text.style.ImageSpan;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import x4.a;
import x4.c;

public class b
  extends ImageSpan
  implements w4.b
{
  private WeakReference<Drawable> a;
  private int b;
  private Rect c = new Rect();
  private String d;
  private int e;
  private boolean f;
  private boolean g;
  private int h;
  private int i;
  private int j;
  
  public b(String paramString, c paramc)
  {
    super(paramc.h(), paramc.g(), 1);
    this.b = paramc.b();
    this.d = paramString;
    this.e = paramc.f();
    this.g = paramc.k();
  }
  
  private Drawable b()
  {
    Object localObject1 = this.a;
    if (localObject1 != null) {
      localObject1 = (Drawable)((Reference)localObject1).get();
    } else {
      localObject1 = null;
    }
    Object localObject2 = localObject1;
    if (localObject1 == null)
    {
      localObject2 = getDrawable();
      this.a = new WeakReference(localObject2);
    }
    return localObject2;
  }
  
  public void a(boolean paramBoolean, int paramInt)
  {
    this.f = paramBoolean;
    this.h = paramInt;
  }
  
  public void draw(Canvas paramCanvas, CharSequence paramCharSequence, int paramInt1, int paramInt2, float paramFloat, int paramInt3, int paramInt4, int paramInt5, Paint paramPaint)
  {
    Drawable localDrawable = b();
    int k = localDrawable.getIntrinsicHeight();
    int m = localDrawable.getIntrinsicWidth();
    Object localObject = this.d;
    paramPaint.getTextBounds((String)localObject, 0, ((String)localObject).length(), this.c);
    float f1 = paramInt5 - paramInt3;
    float f2 = paramInt5 - f1;
    if ((this.g) && (this.f))
    {
      n = this.h;
      if (n != 0)
      {
        paramPaint.setColor(n);
        paramCanvas.drawRect(paramFloat, f2, paramFloat + m, f2 + f1, paramPaint);
        break label154;
      }
    }
    int n = this.e;
    if (n != 0)
    {
      paramPaint.setColor(n);
      paramCanvas.drawRect(paramFloat, f2, paramFloat + m, f2 + f1, paramPaint);
    }
    label154:
    if (k > this.c.height())
    {
      super.draw(paramCanvas, paramCharSequence, paramInt1, paramInt2, paramFloat, paramInt3, paramInt4, paramInt5, paramPaint);
      return;
    }
    paramCanvas.save();
    if (this.i <= 0)
    {
      localObject = new Rect();
      paramCharSequence = this.d;
      paramPaint.getTextBounds(paramCharSequence, 0, paramCharSequence.length(), (Rect)localObject);
      this.i = ((Rect)localObject).height();
      this.j = ((Rect)localObject).bottom;
    }
    f2 = paramInt4;
    paramInt1 = this.b;
    if (paramInt1 != 1)
    {
      if (paramInt1 != 2)
      {
        if (paramInt1 == 3) {
          paramCanvas.translate(paramFloat, f2 - (k - this.j));
        }
      }
      else {
        paramCanvas.translate(paramFloat, f2 - (this.i / 2 + k / 2 - this.j));
      }
    }
    else {
      paramCanvas.translate(paramFloat, f2 - (this.i - this.j));
    }
    localDrawable.draw(paramCanvas);
    paramCanvas.restore();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     v4.b
 * JD-Core Version:    0.7.0.1
 */