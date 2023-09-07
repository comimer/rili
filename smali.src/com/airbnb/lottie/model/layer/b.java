package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import c1.q;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.h0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class b
  extends a
{
  private c1.a<Float, Float> D;
  private final List<a> E = new ArrayList();
  private final RectF F = new RectF();
  private final RectF G = new RectF();
  private final Paint H = new Paint();
  private boolean I = true;
  
  public b(LottieDrawable paramLottieDrawable, Layer paramLayer, List<Layer> paramList, com.airbnb.lottie.h paramh)
  {
    super(paramLottieDrawable, paramLayer);
    paramLayer = paramLayer.u();
    if (paramLayer != null)
    {
      paramLayer = paramLayer.m();
      this.D = paramLayer;
      i(paramLayer);
      this.D.a(this);
    }
    else
    {
      this.D = null;
    }
    n.d locald = new n.d(paramh.k().size());
    int i = paramList.size() - 1;
    paramLayer = null;
    int j;
    for (;;)
    {
      j = 0;
      if (i < 0) {
        break;
      }
      Layer localLayer = (Layer)paramList.get(i);
      a locala = a.u(this, localLayer, paramLottieDrawable, paramh);
      if (locala != null)
      {
        locald.l(locala.y().d(), locala);
        if (paramLayer != null)
        {
          paramLayer.I(locala);
          paramLayer = null;
        }
        else
        {
          this.E.add(0, locala);
          j = a.a[localLayer.h().ordinal()];
          if ((j == 1) || (j == 2)) {
            paramLayer = locala;
          }
        }
      }
      i--;
    }
    while (j < locald.p())
    {
      paramLayer = (a)locald.f(locald.k(j));
      if (paramLayer != null)
      {
        paramLottieDrawable = (a)locald.f(paramLayer.y().j());
        if (paramLottieDrawable != null) {
          paramLayer.K(paramLottieDrawable);
        }
      }
      j++;
    }
  }
  
  protected void H(e1.d paramd1, int paramInt, List<e1.d> paramList, e1.d paramd2)
  {
    for (int i = 0; i < this.E.size(); i++) {
      ((a)this.E.get(i)).f(paramd1, paramInt, paramList, paramd2);
    }
  }
  
  public void J(boolean paramBoolean)
  {
    super.J(paramBoolean);
    Iterator localIterator = this.E.iterator();
    while (localIterator.hasNext()) {
      ((a)localIterator.next()).J(paramBoolean);
    }
  }
  
  public void L(float paramFloat)
  {
    super.L(paramFloat);
    float f = paramFloat;
    if (this.D != null)
    {
      paramFloat = this.p.E().e();
      f = this.q.b().p();
      f = (((Float)this.D.h()).floatValue() * this.q.b().i() - f) / (paramFloat + 0.01F);
    }
    paramFloat = f;
    if (this.D == null) {
      paramFloat = f - this.q.r();
    }
    f = paramFloat;
    if (this.q.v() != 0.0F)
    {
      f = paramFloat;
      if (!"__container".equals(this.q.i())) {
        f = paramFloat / this.q.v();
      }
    }
    for (int i = this.E.size() - 1; i >= 0; i--) {
      ((a)this.E.get(i)).L(f);
    }
  }
  
  public void O(boolean paramBoolean)
  {
    this.I = paramBoolean;
  }
  
  public void c(RectF paramRectF, Matrix paramMatrix, boolean paramBoolean)
  {
    super.c(paramRectF, paramMatrix, paramBoolean);
    for (int i = this.E.size() - 1; i >= 0; i--)
    {
      this.F.set(0.0F, 0.0F, 0.0F, 0.0F);
      ((a)this.E.get(i)).c(this.F, this.o, true);
      paramRectF.union(this.F);
    }
  }
  
  public <T> void h(T paramT, l1.c<T> paramc)
  {
    super.h(paramT, paramc);
    if (paramT == h0.E) {
      if (paramc == null)
      {
        paramT = this.D;
        if (paramT != null) {
          paramT.n(null);
        }
      }
      else
      {
        paramT = new q(paramc);
        this.D = paramT;
        paramT.a(this);
        i(this.D);
      }
    }
  }
  
  void t(Canvas paramCanvas, Matrix paramMatrix, int paramInt)
  {
    com.airbnb.lottie.c.a("CompositionLayer#draw");
    this.G.set(0.0F, 0.0F, this.q.l(), this.q.k());
    paramMatrix.mapRect(this.G);
    if ((this.p.Z()) && (this.E.size() > 1) && (paramInt != 255)) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0)
    {
      this.H.setAlpha(paramInt);
      k1.h.m(paramCanvas, this.G, this.H);
    }
    else
    {
      paramCanvas.save();
    }
    if (i != 0) {
      paramInt = 255;
    }
    for (int i = this.E.size() - 1; i >= 0; i--)
    {
      int j;
      if ((!this.I) && ("__container".equals(this.q.i()))) {
        j = 1;
      } else {
        j = 0;
      }
      boolean bool;
      if ((j == 0) && (!this.G.isEmpty())) {
        bool = paramCanvas.clipRect(this.G);
      } else {
        bool = true;
      }
      if (bool) {
        ((a)this.E.get(i)).g(paramCanvas, paramMatrix, paramInt);
      }
    }
    paramCanvas.restore();
    com.airbnb.lottie.c.b("CompositionLayer#draw");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.model.layer.b
 * JD-Core Version:    0.7.0.1
 */