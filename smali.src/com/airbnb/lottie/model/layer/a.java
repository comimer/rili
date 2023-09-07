package com.airbnb.lottie.model.layer;

import android.graphics.BlurMaskFilter;
import android.graphics.BlurMaskFilter.Blur;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build.VERSION;
import c1.a.b;
import c1.p;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.l0;
import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.model.content.Mask.MaskMode;
import f1.l;
import g1.i;
import j1.j;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public abstract class a
  implements b1.e, a.b, e1.e
{
  private Paint A;
  float B;
  BlurMaskFilter C;
  private final Path a = new Path();
  private final Matrix b = new Matrix();
  private final Matrix c = new Matrix();
  private final Paint d = new a1.a(1);
  private final Paint e = new a1.a(1, PorterDuff.Mode.DST_IN);
  private final Paint f = new a1.a(1, PorterDuff.Mode.DST_OUT);
  private final Paint g;
  private final Paint h;
  private final RectF i;
  private final RectF j;
  private final RectF k;
  private final RectF l;
  private final RectF m;
  private final String n;
  final Matrix o;
  final LottieDrawable p;
  final Layer q;
  private c1.h r;
  private c1.d s;
  private a t;
  private a u;
  private List<a> v;
  private final List<c1.a<?, ?>> w;
  final p x;
  private boolean y;
  private boolean z;
  
  a(LottieDrawable paramLottieDrawable, Layer paramLayer)
  {
    a1.a locala = new a1.a(1);
    this.g = locala;
    this.h = new a1.a(PorterDuff.Mode.CLEAR);
    this.i = new RectF();
    this.j = new RectF();
    this.k = new RectF();
    this.l = new RectF();
    this.m = new RectF();
    this.o = new Matrix();
    this.w = new ArrayList();
    this.y = true;
    this.B = 0.0F;
    this.p = paramLottieDrawable;
    this.q = paramLayer;
    paramLottieDrawable = new StringBuilder();
    paramLottieDrawable.append(paramLayer.i());
    paramLottieDrawable.append("#draw");
    this.n = paramLottieDrawable.toString();
    if (paramLayer.h() == Layer.MatteType.INVERT) {
      locala.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    } else {
      locala.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
    }
    paramLottieDrawable = paramLayer.w().b();
    this.x = paramLottieDrawable;
    paramLottieDrawable.b(this);
    if ((paramLayer.g() != null) && (!paramLayer.g().isEmpty()))
    {
      paramLottieDrawable = new c1.h(paramLayer.g());
      this.r = paramLottieDrawable;
      paramLottieDrawable = paramLottieDrawable.a().iterator();
      while (paramLottieDrawable.hasNext()) {
        ((c1.a)paramLottieDrawable.next()).a(this);
      }
      paramLayer = this.r.c().iterator();
      while (paramLayer.hasNext())
      {
        paramLottieDrawable = (c1.a)paramLayer.next();
        i(paramLottieDrawable);
        paramLottieDrawable.a(this);
      }
    }
    N();
  }
  
  private void B(RectF paramRectF, Matrix paramMatrix)
  {
    this.k.set(0.0F, 0.0F, 0.0F, 0.0F);
    if (!z()) {
      return;
    }
    int i1 = this.r.b().size();
    int i2 = 0;
    while (i2 < i1)
    {
      Mask localMask = (Mask)this.r.b().get(i2);
      Object localObject = (Path)((c1.a)this.r.a().get(i2)).h();
      if (localObject != null)
      {
        this.a.set((Path)localObject);
        this.a.transform(paramMatrix);
        int i3 = a.b[localMask.a().ordinal()];
        if ((i3 == 1) || (i3 == 2)) {
          break label274;
        }
        if (((i3 == 3) || (i3 == 4)) && (localMask.d())) {
          return;
        }
        this.a.computeBounds(this.m, false);
        if (i2 == 0)
        {
          this.k.set(this.m);
        }
        else
        {
          localObject = this.k;
          ((RectF)localObject).set(Math.min(((RectF)localObject).left, this.m.left), Math.min(this.k.top, this.m.top), Math.max(this.k.right, this.m.right), Math.max(this.k.bottom, this.m.bottom));
        }
      }
      i2++;
      continue;
      label274:
      return;
    }
    if (!paramRectF.intersect(this.k)) {
      paramRectF.set(0.0F, 0.0F, 0.0F, 0.0F);
    }
  }
  
  private void C(RectF paramRectF, Matrix paramMatrix)
  {
    if (!A()) {
      return;
    }
    if (this.q.h() == Layer.MatteType.INVERT) {
      return;
    }
    this.l.set(0.0F, 0.0F, 0.0F, 0.0F);
    this.t.c(this.l, paramMatrix, true);
    if (!paramRectF.intersect(this.l)) {
      paramRectF.set(0.0F, 0.0F, 0.0F, 0.0F);
    }
  }
  
  private void D()
  {
    this.p.invalidateSelf();
  }
  
  private void F(float paramFloat)
  {
    this.p.E().n().a(this.q.i(), paramFloat);
  }
  
  private void M(boolean paramBoolean)
  {
    if (paramBoolean != this.y)
    {
      this.y = paramBoolean;
      D();
    }
  }
  
  private void N()
  {
    boolean bool1 = this.q.e().isEmpty();
    boolean bool2 = true;
    if (!bool1)
    {
      c1.d locald = new c1.d(this.q.e());
      this.s = locald;
      locald.l();
      this.s.a(new h1.a(this));
      if (((Float)this.s.h()).floatValue() != 1.0F) {
        bool2 = false;
      }
      M(bool2);
      i(this.s);
    }
    else
    {
      M(true);
    }
  }
  
  private void j(Canvas paramCanvas, Matrix paramMatrix, c1.a<i, Path> parama, c1.a<Integer, Integer> parama1)
  {
    parama = (Path)parama.h();
    this.a.set(parama);
    this.a.transform(paramMatrix);
    this.d.setAlpha((int)(((Integer)parama1.h()).intValue() * 2.55F));
    paramCanvas.drawPath(this.a, this.d);
  }
  
  private void k(Canvas paramCanvas, Matrix paramMatrix, c1.a<i, Path> parama, c1.a<Integer, Integer> parama1)
  {
    k1.h.m(paramCanvas, this.i, this.e);
    parama = (Path)parama.h();
    this.a.set(parama);
    this.a.transform(paramMatrix);
    this.d.setAlpha((int)(((Integer)parama1.h()).intValue() * 2.55F));
    paramCanvas.drawPath(this.a, this.d);
    paramCanvas.restore();
  }
  
  private void l(Canvas paramCanvas, Matrix paramMatrix, c1.a<i, Path> parama, c1.a<Integer, Integer> parama1)
  {
    k1.h.m(paramCanvas, this.i, this.d);
    paramCanvas.drawRect(this.i, this.d);
    parama = (Path)parama.h();
    this.a.set(parama);
    this.a.transform(paramMatrix);
    this.d.setAlpha((int)(((Integer)parama1.h()).intValue() * 2.55F));
    paramCanvas.drawPath(this.a, this.f);
    paramCanvas.restore();
  }
  
  private void m(Canvas paramCanvas, Matrix paramMatrix, c1.a<i, Path> parama, c1.a<Integer, Integer> parama1)
  {
    k1.h.m(paramCanvas, this.i, this.e);
    paramCanvas.drawRect(this.i, this.d);
    this.f.setAlpha((int)(((Integer)parama1.h()).intValue() * 2.55F));
    parama = (Path)parama.h();
    this.a.set(parama);
    this.a.transform(paramMatrix);
    paramCanvas.drawPath(this.a, this.f);
    paramCanvas.restore();
  }
  
  private void n(Canvas paramCanvas, Matrix paramMatrix, c1.a<i, Path> parama, c1.a<Integer, Integer> parama1)
  {
    k1.h.m(paramCanvas, this.i, this.f);
    paramCanvas.drawRect(this.i, this.d);
    this.f.setAlpha((int)(((Integer)parama1.h()).intValue() * 2.55F));
    parama = (Path)parama.h();
    this.a.set(parama);
    this.a.transform(paramMatrix);
    paramCanvas.drawPath(this.a, this.f);
    paramCanvas.restore();
  }
  
  private void o(Canvas paramCanvas, Matrix paramMatrix)
  {
    com.airbnb.lottie.c.a("Layer#saveLayer");
    k1.h.n(paramCanvas, this.i, this.e, 19);
    if (Build.VERSION.SDK_INT < 28) {
      s(paramCanvas);
    }
    com.airbnb.lottie.c.b("Layer#saveLayer");
    for (int i1 = 0; i1 < this.r.b().size(); i1++)
    {
      Mask localMask = (Mask)this.r.b().get(i1);
      c1.a locala1 = (c1.a)this.r.a().get(i1);
      c1.a locala2 = (c1.a)this.r.c().get(i1);
      int i2 = a.b[localMask.a().ordinal()];
      if (i2 != 1)
      {
        if (i2 != 2)
        {
          if (i2 != 3)
          {
            if (i2 == 4) {
              if (localMask.d()) {
                l(paramCanvas, paramMatrix, locala1, locala2);
              } else {
                j(paramCanvas, paramMatrix, locala1, locala2);
              }
            }
          }
          else if (localMask.d()) {
            m(paramCanvas, paramMatrix, locala1, locala2);
          } else {
            k(paramCanvas, paramMatrix, locala1, locala2);
          }
        }
        else
        {
          if (i1 == 0)
          {
            this.d.setColor(-16777216);
            this.d.setAlpha(255);
            paramCanvas.drawRect(this.i, this.d);
          }
          if (localMask.d()) {
            n(paramCanvas, paramMatrix, locala1, locala2);
          } else {
            p(paramCanvas, paramMatrix, locala1);
          }
        }
      }
      else if (q())
      {
        this.d.setAlpha(255);
        paramCanvas.drawRect(this.i, this.d);
      }
    }
    com.airbnb.lottie.c.a("Layer#restoreLayer");
    paramCanvas.restore();
    com.airbnb.lottie.c.b("Layer#restoreLayer");
  }
  
  private void p(Canvas paramCanvas, Matrix paramMatrix, c1.a<i, Path> parama)
  {
    parama = (Path)parama.h();
    this.a.set(parama);
    this.a.transform(paramMatrix);
    paramCanvas.drawPath(this.a, this.f);
  }
  
  private boolean q()
  {
    if (this.r.a().isEmpty()) {
      return false;
    }
    for (int i1 = 0; i1 < this.r.b().size(); i1++) {
      if (((Mask)this.r.b().get(i1)).a() != Mask.MaskMode.MASK_MODE_NONE) {
        return false;
      }
    }
    return true;
  }
  
  private void r()
  {
    if (this.v != null) {
      return;
    }
    if (this.u == null)
    {
      this.v = Collections.emptyList();
      return;
    }
    this.v = new ArrayList();
    for (a locala = this.u; locala != null; locala = locala.u) {
      this.v.add(locala);
    }
  }
  
  private void s(Canvas paramCanvas)
  {
    com.airbnb.lottie.c.a("Layer#clearLayer");
    RectF localRectF = this.i;
    paramCanvas.drawRect(localRectF.left - 1.0F, localRectF.top - 1.0F, localRectF.right + 1.0F, localRectF.bottom + 1.0F, this.h);
    com.airbnb.lottie.c.b("Layer#clearLayer");
  }
  
  static a u(b paramb, Layer paramLayer, LottieDrawable paramLottieDrawable, com.airbnb.lottie.h paramh)
  {
    switch (a.a[paramLayer.f().ordinal()])
    {
    default: 
      paramb = new StringBuilder();
      paramb.append("Unknown layer type ");
      paramb.append(paramLayer.f());
      k1.d.c(paramb.toString());
      return null;
    case 6: 
      return new g(paramLottieDrawable, paramLayer);
    case 5: 
      return new d(paramLottieDrawable, paramLayer);
    case 4: 
      return new c(paramLottieDrawable, paramLayer);
    case 3: 
      return new f(paramLottieDrawable, paramLayer);
    case 2: 
      return new b(paramLottieDrawable, paramLayer, paramh.o(paramLayer.m()), paramh);
    }
    return new e(paramLottieDrawable, paramLayer, paramb);
  }
  
  boolean A()
  {
    boolean bool;
    if (this.t != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void G(c1.a<?, ?> parama)
  {
    this.w.remove(parama);
  }
  
  void H(e1.d paramd1, int paramInt, List<e1.d> paramList, e1.d paramd2) {}
  
  void I(a parama)
  {
    this.t = parama;
  }
  
  void J(boolean paramBoolean)
  {
    if ((paramBoolean) && (this.A == null)) {
      this.A = new a1.a();
    }
    this.z = paramBoolean;
  }
  
  void K(a parama)
  {
    this.u = parama;
  }
  
  void L(float paramFloat)
  {
    this.x.j(paramFloat);
    Object localObject = this.r;
    int i1 = 0;
    if (localObject != null) {
      for (i2 = 0; i2 < this.r.a().size(); i2++) {
        ((c1.a)this.r.a().get(i2)).m(paramFloat);
      }
    }
    localObject = this.s;
    if (localObject != null) {
      ((c1.a)localObject).m(paramFloat);
    }
    localObject = this.t;
    int i2 = i1;
    if (localObject != null) {
      ((a)localObject).L(paramFloat);
    }
    for (i2 = i1; i2 < this.w.size(); i2++) {
      ((c1.a)this.w.get(i2)).m(paramFloat);
    }
  }
  
  public void a()
  {
    D();
  }
  
  public void b(List<b1.c> paramList1, List<b1.c> paramList2) {}
  
  public void c(RectF paramRectF, Matrix paramMatrix, boolean paramBoolean)
  {
    this.i.set(0.0F, 0.0F, 0.0F, 0.0F);
    r();
    this.o.set(paramMatrix);
    if (paramBoolean)
    {
      paramRectF = this.v;
      if (paramRectF != null) {
        for (int i1 = paramRectF.size() - 1; i1 >= 0; i1--) {
          this.o.preConcat(((a)this.v.get(i1)).x.f());
        }
      }
      paramRectF = this.u;
      if (paramRectF != null) {
        this.o.preConcat(paramRectF.x.f());
      }
    }
    this.o.preConcat(this.x.f());
  }
  
  public void f(e1.d paramd1, int paramInt, List<e1.d> paramList, e1.d paramd2)
  {
    Object localObject = this.t;
    if (localObject != null)
    {
      localObject = paramd2.a(((a)localObject).getName());
      if (paramd1.c(this.t.getName(), paramInt)) {
        paramList.add(((e1.d)localObject).i(this.t));
      }
      if (paramd1.h(getName(), paramInt))
      {
        int i1 = paramd1.e(this.t.getName(), paramInt);
        this.t.H(paramd1, i1 + paramInt, paramList, (e1.d)localObject);
      }
    }
    if (!paramd1.g(getName(), paramInt)) {
      return;
    }
    localObject = paramd2;
    if (!"__container".equals(getName()))
    {
      paramd2 = paramd2.a(getName());
      localObject = paramd2;
      if (paramd1.c(getName(), paramInt))
      {
        paramList.add(paramd2.i(this));
        localObject = paramd2;
      }
    }
    if (paramd1.h(getName(), paramInt)) {
      H(paramd1, paramInt + paramd1.e(getName(), paramInt), paramList, (e1.d)localObject);
    }
  }
  
  public void g(Canvas paramCanvas, Matrix paramMatrix, int paramInt)
  {
    com.airbnb.lottie.c.a(this.n);
    if ((this.y) && (!this.q.x()))
    {
      r();
      com.airbnb.lottie.c.a("Layer#parentMatrix");
      this.b.reset();
      this.b.set(paramMatrix);
      for (int i1 = this.v.size() - 1; i1 >= 0; i1--) {
        this.b.preConcat(((a)this.v.get(i1)).x.f());
      }
      com.airbnb.lottie.c.b("Layer#parentMatrix");
      if (this.x.h() == null) {
        i1 = 100;
      } else {
        i1 = ((Integer)this.x.h().h()).intValue();
      }
      paramInt = (int)(paramInt / 255.0F * i1 / 100.0F * 255.0F);
      if ((!A()) && (!z()))
      {
        this.b.preConcat(this.x.f());
        com.airbnb.lottie.c.a("Layer#drawLayer");
        t(paramCanvas, this.b, paramInt);
        com.airbnb.lottie.c.b("Layer#drawLayer");
        F(com.airbnb.lottie.c.b(this.n));
        return;
      }
      com.airbnb.lottie.c.a("Layer#computeBounds");
      c(this.i, this.b, false);
      C(this.i, paramMatrix);
      this.b.preConcat(this.x.f());
      B(this.i, this.b);
      this.j.set(0.0F, 0.0F, paramCanvas.getWidth(), paramCanvas.getHeight());
      paramCanvas.getMatrix(this.c);
      if (!this.c.isIdentity())
      {
        Matrix localMatrix = this.c;
        localMatrix.invert(localMatrix);
        this.c.mapRect(this.j);
      }
      if (!this.i.intersect(this.j)) {
        this.i.set(0.0F, 0.0F, 0.0F, 0.0F);
      }
      com.airbnb.lottie.c.b("Layer#computeBounds");
      if ((this.i.width() >= 1.0F) && (this.i.height() >= 1.0F))
      {
        com.airbnb.lottie.c.a("Layer#saveLayer");
        this.d.setAlpha(255);
        k1.h.m(paramCanvas, this.i, this.d);
        com.airbnb.lottie.c.b("Layer#saveLayer");
        s(paramCanvas);
        com.airbnb.lottie.c.a("Layer#drawLayer");
        t(paramCanvas, this.b, paramInt);
        com.airbnb.lottie.c.b("Layer#drawLayer");
        if (z()) {
          o(paramCanvas, this.b);
        }
        if (A())
        {
          com.airbnb.lottie.c.a("Layer#drawMatte");
          com.airbnb.lottie.c.a("Layer#saveLayer");
          k1.h.n(paramCanvas, this.i, this.g, 19);
          com.airbnb.lottie.c.b("Layer#saveLayer");
          s(paramCanvas);
          this.t.g(paramCanvas, paramMatrix, paramInt);
          com.airbnb.lottie.c.a("Layer#restoreLayer");
          paramCanvas.restore();
          com.airbnb.lottie.c.b("Layer#restoreLayer");
          com.airbnb.lottie.c.b("Layer#drawMatte");
        }
        com.airbnb.lottie.c.a("Layer#restoreLayer");
        paramCanvas.restore();
        com.airbnb.lottie.c.b("Layer#restoreLayer");
      }
      if (this.z)
      {
        paramMatrix = this.A;
        if (paramMatrix != null)
        {
          paramMatrix.setStyle(Paint.Style.STROKE);
          this.A.setColor(-251901);
          this.A.setStrokeWidth(4.0F);
          paramCanvas.drawRect(this.i, this.A);
          this.A.setStyle(Paint.Style.FILL);
          this.A.setColor(1357638635);
          paramCanvas.drawRect(this.i, this.A);
        }
      }
      F(com.airbnb.lottie.c.b(this.n));
      return;
    }
    com.airbnb.lottie.c.b(this.n);
  }
  
  public String getName()
  {
    return this.q.i();
  }
  
  public <T> void h(T paramT, l1.c<T> paramc)
  {
    this.x.c(paramT, paramc);
  }
  
  public void i(c1.a<?, ?> parama)
  {
    if (parama == null) {
      return;
    }
    this.w.add(parama);
  }
  
  abstract void t(Canvas paramCanvas, Matrix paramMatrix, int paramInt);
  
  public g1.a v()
  {
    return this.q.a();
  }
  
  public BlurMaskFilter w(float paramFloat)
  {
    if (this.B == paramFloat) {
      return this.C;
    }
    BlurMaskFilter localBlurMaskFilter = new BlurMaskFilter(paramFloat / 2.0F, BlurMaskFilter.Blur.NORMAL);
    this.C = localBlurMaskFilter;
    this.B = paramFloat;
    return localBlurMaskFilter;
  }
  
  public j x()
  {
    return this.q.c();
  }
  
  Layer y()
  {
    return this.q;
  }
  
  boolean z()
  {
    c1.h localh = this.r;
    boolean bool;
    if ((localh != null) && (!localh.a().isEmpty())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.model.layer.a
 * JD-Core Version:    0.7.0.1
 */