package com.airbnb.lottie.model.layer;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import c1.q;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.d0;
import com.airbnb.lottie.h0;
import k1.h;

public class c
  extends a
{
  private final Paint D = new a1.a(3);
  private final Rect E = new Rect();
  private final Rect F = new Rect();
  private final d0 G;
  private c1.a<ColorFilter, ColorFilter> H;
  private c1.a<Bitmap, Bitmap> I;
  
  c(LottieDrawable paramLottieDrawable, Layer paramLayer)
  {
    super(paramLottieDrawable, paramLayer);
    this.G = paramLottieDrawable.K(paramLayer.m());
  }
  
  private Bitmap O()
  {
    Object localObject = this.I;
    if (localObject != null)
    {
      localObject = (Bitmap)((c1.a)localObject).h();
      if (localObject != null) {
        return localObject;
      }
    }
    localObject = this.q.m();
    localObject = this.p.C((String)localObject);
    if (localObject != null) {
      return localObject;
    }
    localObject = this.G;
    if (localObject != null) {
      return ((d0)localObject).a();
    }
    return null;
  }
  
  public void c(RectF paramRectF, Matrix paramMatrix, boolean paramBoolean)
  {
    super.c(paramRectF, paramMatrix, paramBoolean);
    if (this.G != null)
    {
      float f = h.e();
      paramRectF.set(0.0F, 0.0F, this.G.e() * f, this.G.c() * f);
      this.o.mapRect(paramRectF);
    }
  }
  
  public <T> void h(T paramT, l1.c<T> paramc)
  {
    super.h(paramT, paramc);
    if (paramT == h0.K)
    {
      if (paramc == null) {
        this.H = null;
      } else {
        this.H = new q(paramc);
      }
    }
    else if (paramT == h0.N) {
      if (paramc == null) {
        this.I = null;
      } else {
        this.I = new q(paramc);
      }
    }
  }
  
  public void t(Canvas paramCanvas, Matrix paramMatrix, int paramInt)
  {
    Bitmap localBitmap = O();
    if ((localBitmap != null) && (!localBitmap.isRecycled()) && (this.G != null))
    {
      float f = h.e();
      this.D.setAlpha(paramInt);
      c1.a locala = this.H;
      if (locala != null) {
        this.D.setColorFilter((ColorFilter)locala.h());
      }
      paramCanvas.save();
      paramCanvas.concat(paramMatrix);
      this.E.set(0, 0, localBitmap.getWidth(), localBitmap.getHeight());
      if (this.p.L()) {
        this.F.set(0, 0, (int)(this.G.e() * f), (int)(this.G.c() * f));
      } else {
        this.F.set(0, 0, (int)(localBitmap.getWidth() * f), (int)(localBitmap.getHeight() * f));
      }
      paramCanvas.drawBitmap(localBitmap, this.E, this.F, this.D);
      paramCanvas.restore();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.model.layer.c
 * JD-Core Version:    0.7.0.1
 */