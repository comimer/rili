package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import g1.k;
import j1.j;
import java.util.Collections;
import java.util.List;

public class e
  extends a
{
  private final b1.d D;
  private final b E;
  
  e(LottieDrawable paramLottieDrawable, Layer paramLayer, b paramb)
  {
    super(paramLottieDrawable, paramLayer);
    this.E = paramb;
    paramLottieDrawable = new b1.d(paramLottieDrawable, this, new k("__container", paramLayer.n(), false));
    this.D = paramLottieDrawable;
    paramLottieDrawable.b(Collections.emptyList(), Collections.emptyList());
  }
  
  protected void H(e1.d paramd1, int paramInt, List<e1.d> paramList, e1.d paramd2)
  {
    this.D.f(paramd1, paramInt, paramList, paramd2);
  }
  
  public void c(RectF paramRectF, Matrix paramMatrix, boolean paramBoolean)
  {
    super.c(paramRectF, paramMatrix, paramBoolean);
    this.D.c(paramRectF, this.o, paramBoolean);
  }
  
  void t(Canvas paramCanvas, Matrix paramMatrix, int paramInt)
  {
    this.D.g(paramCanvas, paramMatrix, paramInt);
  }
  
  public g1.a v()
  {
    g1.a locala = super.v();
    if (locala != null) {
      return locala;
    }
    return this.E.v();
  }
  
  public j x()
  {
    j localj = super.x();
    if (localj != null) {
      return localj;
    }
    return this.E.x();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.model.layer.e
 * JD-Core Version:    0.7.0.1
 */