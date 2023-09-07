package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;

public class d
  extends a
{
  d(LottieDrawable paramLottieDrawable, Layer paramLayer)
  {
    super(paramLottieDrawable, paramLayer);
  }
  
  public void c(RectF paramRectF, Matrix paramMatrix, boolean paramBoolean)
  {
    super.c(paramRectF, paramMatrix, paramBoolean);
    paramRectF.set(0.0F, 0.0F, 0.0F, 0.0F);
  }
  
  void t(Canvas paramCanvas, Matrix paramMatrix, int paramInt) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.model.layer.d
 * JD-Core Version:    0.7.0.1
 */