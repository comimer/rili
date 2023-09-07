package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.RectF;
import c1.p;
import c1.q;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.h0;
import l1.c;

public class f
  extends a
{
  private final RectF D = new RectF();
  private final Paint E;
  private final float[] F;
  private final Path G;
  private final Layer H;
  private c1.a<ColorFilter, ColorFilter> I;
  
  f(LottieDrawable paramLottieDrawable, Layer paramLayer)
  {
    super(paramLottieDrawable, paramLayer);
    paramLottieDrawable = new a1.a();
    this.E = paramLottieDrawable;
    this.F = new float[8];
    this.G = new Path();
    this.H = paramLayer;
    paramLottieDrawable.setAlpha(0);
    paramLottieDrawable.setStyle(Paint.Style.FILL);
    paramLottieDrawable.setColor(paramLayer.o());
  }
  
  public void c(RectF paramRectF, Matrix paramMatrix, boolean paramBoolean)
  {
    super.c(paramRectF, paramMatrix, paramBoolean);
    this.D.set(0.0F, 0.0F, this.H.q(), this.H.p());
    this.o.mapRect(this.D);
    paramRectF.set(this.D);
  }
  
  public <T> void h(T paramT, c<T> paramc)
  {
    super.h(paramT, paramc);
    if (paramT == h0.K) {
      if (paramc == null) {
        this.I = null;
      } else {
        this.I = new q(paramc);
      }
    }
  }
  
  public void t(Canvas paramCanvas, Matrix paramMatrix, int paramInt)
  {
    int i = Color.alpha(this.H.o());
    if (i == 0) {
      return;
    }
    int j;
    if (this.x.h() == null) {
      j = 100;
    } else {
      j = ((Integer)this.x.h().h()).intValue();
    }
    paramInt = (int)(paramInt / 255.0F * (i / 255.0F * j / 100.0F) * 255.0F);
    this.E.setAlpha(paramInt);
    Object localObject = this.I;
    if (localObject != null) {
      this.E.setColorFilter((ColorFilter)((c1.a)localObject).h());
    }
    if (paramInt > 0)
    {
      localObject = this.F;
      localObject[0] = 0.0F;
      localObject[1] = 0.0F;
      localObject[2] = this.H.q();
      localObject = this.F;
      localObject[3] = 0.0F;
      localObject[4] = this.H.q();
      this.F[5] = this.H.p();
      localObject = this.F;
      localObject[6] = 0.0F;
      localObject[7] = this.H.p();
      paramMatrix.mapPoints(this.F);
      this.G.reset();
      localObject = this.G;
      paramMatrix = this.F;
      ((Path)localObject).moveTo(paramMatrix[0], paramMatrix[1]);
      paramMatrix = this.G;
      localObject = this.F;
      paramMatrix.lineTo(localObject[2], localObject[3]);
      paramMatrix = this.G;
      localObject = this.F;
      paramMatrix.lineTo(localObject[4], localObject[5]);
      paramMatrix = this.G;
      localObject = this.F;
      paramMatrix.lineTo(localObject[6], localObject[7]);
      localObject = this.G;
      paramMatrix = this.F;
      ((Path)localObject).lineTo(paramMatrix[0], paramMatrix[1]);
      this.G.close();
      paramCanvas.drawPath(this.G, this.E);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.model.layer.f
 * JD-Core Version:    0.7.0.1
 */