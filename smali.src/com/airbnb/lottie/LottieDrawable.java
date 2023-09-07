package com.airbnb.lottie;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class LottieDrawable
  extends Drawable
  implements Drawable.Callback, Animatable
{
  private Bitmap D;
  private Canvas E;
  private Rect F;
  private RectF G;
  private Paint H;
  private Rect I;
  private Rect J;
  private RectF K;
  private RectF L;
  private Matrix M;
  private Matrix N;
  private boolean O;
  private h a;
  private final k1.e b;
  private boolean c;
  private boolean d;
  private boolean e;
  private OnVisibleAction f;
  private final ArrayList<b> g;
  private final ValueAnimator.AnimatorUpdateListener h;
  private d1.b i;
  private String j;
  private b k;
  private d1.a l;
  private boolean m;
  private boolean n;
  private boolean o;
  private com.airbnb.lottie.model.layer.b p;
  private int q;
  private boolean r;
  private boolean v;
  private boolean w;
  private RenderMode x;
  private boolean y;
  private final Matrix z;
  
  public LottieDrawable()
  {
    k1.e locale = new k1.e();
    this.b = locale;
    this.c = true;
    this.d = false;
    this.e = false;
    this.f = OnVisibleAction.NONE;
    this.g = new ArrayList();
    a locala = new a();
    this.h = locala;
    this.n = false;
    this.o = true;
    this.q = 255;
    this.x = RenderMode.AUTOMATIC;
    this.y = false;
    this.z = new Matrix();
    this.O = false;
    locale.addUpdateListener(locala);
  }
  
  private void A(int paramInt1, int paramInt2)
  {
    Bitmap localBitmap = this.D;
    if ((localBitmap != null) && (localBitmap.getWidth() >= paramInt1) && (this.D.getHeight() >= paramInt2))
    {
      if ((this.D.getWidth() > paramInt1) || (this.D.getHeight() > paramInt2))
      {
        localBitmap = Bitmap.createBitmap(this.D, 0, 0, paramInt1, paramInt2);
        this.D = localBitmap;
        this.E.setBitmap(localBitmap);
        this.O = true;
      }
    }
    else
    {
      localBitmap = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
      this.D = localBitmap;
      this.E.setBitmap(localBitmap);
      this.O = true;
    }
  }
  
  private void B()
  {
    if (this.E != null) {
      return;
    }
    this.E = new Canvas();
    this.L = new RectF();
    this.M = new Matrix();
    this.N = new Matrix();
    this.F = new Rect();
    this.G = new RectF();
    this.H = new a1.a();
    this.I = new Rect();
    this.J = new Rect();
    this.K = new RectF();
  }
  
  private Context F()
  {
    Drawable.Callback localCallback = getCallback();
    if (localCallback == null) {
      return null;
    }
    if ((localCallback instanceof View)) {
      return ((View)localCallback).getContext();
    }
    return null;
  }
  
  private d1.a G()
  {
    if (getCallback() == null) {
      return null;
    }
    if (this.l == null) {
      this.l = new d1.a(getCallback(), null);
    }
    return this.l;
  }
  
  private d1.b I()
  {
    if (getCallback() == null) {
      return null;
    }
    d1.b localb = this.i;
    if ((localb != null) && (!localb.b(F()))) {
      this.i = null;
    }
    if (this.i == null) {
      this.i = new d1.b(getCallback(), this.j, this.k, this.a.j());
    }
    return this.i;
  }
  
  private boolean W()
  {
    Object localObject = getCallback();
    if (!(localObject instanceof View)) {
      return false;
    }
    localObject = ((View)localObject).getParent();
    if ((localObject instanceof ViewGroup)) {
      return ((ViewGroup)localObject).getClipChildren() ^ true;
    }
    return false;
  }
  
  private void p0(Canvas paramCanvas, com.airbnb.lottie.model.layer.b paramb)
  {
    if ((this.a != null) && (paramb != null))
    {
      B();
      paramCanvas.getMatrix(this.M);
      paramCanvas.getClipBounds(this.F);
      u(this.F, this.G);
      this.M.mapRect(this.G);
      v(this.G, this.F);
      if (this.o) {
        this.L.set(0.0F, 0.0F, getIntrinsicWidth(), getIntrinsicHeight());
      } else {
        paramb.c(this.L, null, false);
      }
      this.M.mapRect(this.L);
      Object localObject1 = getBounds();
      float f1 = ((Rect)localObject1).width() / getIntrinsicWidth();
      float f2 = ((Rect)localObject1).height() / getIntrinsicHeight();
      s0(this.L, f1, f2);
      Object localObject2;
      if (!W())
      {
        localObject1 = this.L;
        localObject2 = this.F;
        ((RectF)localObject1).intersect(((Rect)localObject2).left, ((Rect)localObject2).top, ((Rect)localObject2).right, ((Rect)localObject2).bottom);
      }
      int i1 = (int)Math.ceil(this.L.width());
      int i2 = (int)Math.ceil(this.L.height());
      if ((i1 != 0) && (i2 != 0))
      {
        A(i1, i2);
        if (this.O)
        {
          this.z.set(this.M);
          this.z.preScale(f1, f2);
          localObject2 = this.z;
          localObject1 = this.L;
          ((Matrix)localObject2).postTranslate(-((RectF)localObject1).left, -((RectF)localObject1).top);
          this.D.eraseColor(0);
          paramb.g(this.E, this.z, this.q);
          this.M.invert(this.N);
          this.N.mapRect(this.K, this.L);
          v(this.K, this.J);
        }
        this.I.set(0, 0, i1, i2);
        paramCanvas.drawBitmap(this.D, this.I, this.J, this.H);
      }
    }
  }
  
  private boolean q()
  {
    boolean bool;
    if ((!this.c) && (!this.d)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private void r()
  {
    Object localObject = this.a;
    if (localObject == null) {
      return;
    }
    localObject = new com.airbnb.lottie.model.layer.b(this, j1.v.a((h)localObject), ((h)localObject).k(), (h)localObject);
    this.p = ((com.airbnb.lottie.model.layer.b)localObject);
    if (this.v) {
      ((com.airbnb.lottie.model.layer.b)localObject).J(true);
    }
    this.p.O(this.o);
  }
  
  private void s0(RectF paramRectF, float paramFloat1, float paramFloat2)
  {
    paramRectF.set(paramRectF.left * paramFloat1, paramRectF.top * paramFloat2, paramRectF.right * paramFloat1, paramRectF.bottom * paramFloat2);
  }
  
  private void t()
  {
    h localh = this.a;
    if (localh == null) {
      return;
    }
    this.y = this.x.useSoftwareRendering(Build.VERSION.SDK_INT, localh.q(), localh.m());
  }
  
  private void u(Rect paramRect, RectF paramRectF)
  {
    paramRectF.set(paramRect.left, paramRect.top, paramRect.right, paramRect.bottom);
  }
  
  private void v(RectF paramRectF, Rect paramRect)
  {
    paramRect.set((int)Math.floor(paramRectF.left), (int)Math.floor(paramRectF.top), (int)Math.ceil(paramRectF.right), (int)Math.ceil(paramRectF.bottom));
  }
  
  private void w(Canvas paramCanvas)
  {
    com.airbnb.lottie.model.layer.b localb = this.p;
    h localh = this.a;
    if ((localb != null) && (localh != null))
    {
      this.z.reset();
      Rect localRect = getBounds();
      if (!localRect.isEmpty())
      {
        float f1 = localRect.width() / localh.b().width();
        float f2 = localRect.height() / localh.b().height();
        this.z.preScale(f1, f2);
      }
      localb.g(paramCanvas, this.z, this.q);
    }
  }
  
  public void A0(String paramString)
  {
    this.j = paramString;
  }
  
  public void B0(boolean paramBoolean)
  {
    this.n = paramBoolean;
  }
  
  public Bitmap C(String paramString)
  {
    d1.b localb = I();
    if (localb != null) {
      return localb.a(paramString);
    }
    return null;
  }
  
  public void C0(int paramInt)
  {
    if (this.a == null)
    {
      this.g.add(new w(this, paramInt));
      return;
    }
    this.b.C(paramInt + 0.99F);
  }
  
  public boolean D()
  {
    return this.o;
  }
  
  public void D0(String paramString)
  {
    Object localObject = this.a;
    if (localObject == null)
    {
      this.g.add(new y(this, paramString));
      return;
    }
    localObject = ((h)localObject).l(paramString);
    if (localObject != null)
    {
      C0((int)(((e1.g)localObject).b + ((e1.g)localObject).c));
      return;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Cannot find marker with name ");
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append(".");
    throw new IllegalArgumentException(((StringBuilder)localObject).toString());
  }
  
  public h E()
  {
    return this.a;
  }
  
  public void E0(float paramFloat)
  {
    h localh = this.a;
    if (localh == null)
    {
      this.g.add(new a0(this, paramFloat));
      return;
    }
    this.b.C(k1.g.i(localh.p(), this.a.f(), paramFloat));
  }
  
  public void F0(int paramInt1, int paramInt2)
  {
    if (this.a == null)
    {
      this.g.add(new t(this, paramInt1, paramInt2));
      return;
    }
    this.b.D(paramInt1, paramInt2 + 0.99F);
  }
  
  public void G0(String paramString)
  {
    Object localObject = this.a;
    if (localObject == null)
    {
      this.g.add(new r(this, paramString));
      return;
    }
    localObject = ((h)localObject).l(paramString);
    if (localObject != null)
    {
      int i1 = (int)((e1.g)localObject).b;
      F0(i1, (int)((e1.g)localObject).c + i1);
      return;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Cannot find marker with name ");
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append(".");
    throw new IllegalArgumentException(((StringBuilder)localObject).toString());
  }
  
  public int H()
  {
    return (int)this.b.k();
  }
  
  public void H0(int paramInt)
  {
    if (this.a == null)
    {
      this.g.add(new u(this, paramInt));
      return;
    }
    this.b.E(paramInt);
  }
  
  public void I0(String paramString)
  {
    Object localObject = this.a;
    if (localObject == null)
    {
      this.g.add(new z(this, paramString));
      return;
    }
    localObject = ((h)localObject).l(paramString);
    if (localObject != null)
    {
      H0((int)((e1.g)localObject).b);
      return;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Cannot find marker with name ");
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append(".");
    throw new IllegalArgumentException(((StringBuilder)localObject).toString());
  }
  
  public String J()
  {
    return this.j;
  }
  
  public void J0(float paramFloat)
  {
    h localh = this.a;
    if (localh == null)
    {
      this.g.add(new v(this, paramFloat));
      return;
    }
    H0((int)k1.g.i(localh.p(), this.a.f(), paramFloat));
  }
  
  public d0 K(String paramString)
  {
    h localh = this.a;
    if (localh == null) {
      return null;
    }
    return (d0)localh.j().get(paramString);
  }
  
  public void K0(boolean paramBoolean)
  {
    if (this.v == paramBoolean) {
      return;
    }
    this.v = paramBoolean;
    com.airbnb.lottie.model.layer.b localb = this.p;
    if (localb != null) {
      localb.J(paramBoolean);
    }
  }
  
  public boolean L()
  {
    return this.n;
  }
  
  public void L0(boolean paramBoolean)
  {
    this.r = paramBoolean;
    h localh = this.a;
    if (localh != null) {
      localh.v(paramBoolean);
    }
  }
  
  public float M()
  {
    return this.b.n();
  }
  
  public void M0(float paramFloat)
  {
    if (this.a == null)
    {
      this.g.add(new q(this, paramFloat));
      return;
    }
    c.a("Drawable#setProgress");
    this.b.B(this.a.h(paramFloat));
    c.b("Drawable#setProgress");
  }
  
  public float N()
  {
    return this.b.o();
  }
  
  public void N0(RenderMode paramRenderMode)
  {
    this.x = paramRenderMode;
    t();
  }
  
  public l0 O()
  {
    h localh = this.a;
    if (localh != null) {
      return localh.n();
    }
    return null;
  }
  
  public void O0(int paramInt)
  {
    this.b.setRepeatCount(paramInt);
  }
  
  public float P()
  {
    return this.b.i();
  }
  
  public void P0(int paramInt)
  {
    this.b.setRepeatMode(paramInt);
  }
  
  public RenderMode Q()
  {
    RenderMode localRenderMode;
    if (this.y) {
      localRenderMode = RenderMode.SOFTWARE;
    } else {
      localRenderMode = RenderMode.HARDWARE;
    }
    return localRenderMode;
  }
  
  public void Q0(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }
  
  public int R()
  {
    return this.b.getRepeatCount();
  }
  
  public void R0(float paramFloat)
  {
    this.b.F(paramFloat);
  }
  
  @SuppressLint({"WrongConstant"})
  public int S()
  {
    return this.b.getRepeatMode();
  }
  
  public void S0(Boolean paramBoolean)
  {
    this.c = paramBoolean.booleanValue();
  }
  
  public float T()
  {
    return this.b.p();
  }
  
  public void T0(p0 paramp0) {}
  
  public p0 U()
  {
    return null;
  }
  
  public boolean U0()
  {
    boolean bool;
    if (this.a.c().n() > 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public Typeface V(String paramString1, String paramString2)
  {
    d1.a locala = G();
    if (locala != null) {
      return locala.b(paramString1, paramString2);
    }
    return null;
  }
  
  public boolean X()
  {
    k1.e locale = this.b;
    if (locale == null) {
      return false;
    }
    return locale.isRunning();
  }
  
  boolean Y()
  {
    if (isVisible()) {
      return this.b.isRunning();
    }
    OnVisibleAction localOnVisibleAction = this.f;
    boolean bool;
    if ((localOnVisibleAction != OnVisibleAction.PLAY) && (localOnVisibleAction != OnVisibleAction.RESUME)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public boolean Z()
  {
    return this.w;
  }
  
  public void draw(Canvas paramCanvas)
  {
    c.a("Drawable#draw");
    if (this.e) {
      try
      {
        if (this.y) {
          p0(paramCanvas, this.p);
        } else {
          w(paramCanvas);
        }
      }
      finally
      {
        k1.d.b("Lottie crashed in draw!", paramCanvas);
        break label75;
      }
    } else if (this.y) {
      p0(paramCanvas, this.p);
    } else {
      w(paramCanvas);
    }
    label75:
    this.O = false;
    c.b("Drawable#draw");
  }
  
  public int getAlpha()
  {
    return this.q;
  }
  
  public int getIntrinsicHeight()
  {
    h localh = this.a;
    int i1;
    if (localh == null) {
      i1 = -1;
    } else {
      i1 = localh.b().height();
    }
    return i1;
  }
  
  public int getIntrinsicWidth()
  {
    h localh = this.a;
    int i1;
    if (localh == null) {
      i1 = -1;
    } else {
      i1 = localh.b().width();
    }
    return i1;
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  public void invalidateDrawable(Drawable paramDrawable)
  {
    paramDrawable = getCallback();
    if (paramDrawable == null) {
      return;
    }
    paramDrawable.invalidateDrawable(this);
  }
  
  public void invalidateSelf()
  {
    if (this.O) {
      return;
    }
    this.O = true;
    Drawable.Callback localCallback = getCallback();
    if (localCallback != null) {
      localCallback.invalidateDrawable(this);
    }
  }
  
  public boolean isRunning()
  {
    return X();
  }
  
  public void n0()
  {
    this.g.clear();
    this.b.t();
    if (!isVisible()) {
      this.f = OnVisibleAction.NONE;
    }
  }
  
  public void o0()
  {
    if (this.p == null)
    {
      this.g.add(new b0(this));
      return;
    }
    t();
    if ((q()) || (R() == 0)) {
      if (isVisible())
      {
        this.b.u();
        this.f = OnVisibleAction.NONE;
      }
      else
      {
        this.f = OnVisibleAction.PLAY;
      }
    }
    if (!q())
    {
      float f1;
      if (T() < 0.0F) {
        f1 = N();
      } else {
        f1 = M();
      }
      x0((int)f1);
      this.b.h();
      if (!isVisible()) {
        this.f = OnVisibleAction.NONE;
      }
    }
  }
  
  public <T> void p(e1.d paramd, T paramT, l1.c<T> paramc)
  {
    com.airbnb.lottie.model.layer.b localb = this.p;
    if (localb == null)
    {
      this.g.add(new s(this, paramd, paramT, paramc));
      return;
    }
    e1.d locald = e1.d.c;
    int i1 = 1;
    boolean bool;
    if (paramd == locald)
    {
      localb.h(paramT, paramc);
    }
    else if (paramd.d() != null)
    {
      paramd.d().h(paramT, paramc);
    }
    else
    {
      paramd = q0(paramd);
      for (i1 = 0; i1 < paramd.size(); i1++) {
        ((e1.d)paramd.get(i1)).d().h(paramT, paramc);
      }
      bool = true ^ paramd.isEmpty();
    }
    if (bool)
    {
      invalidateSelf();
      if (paramT == h0.E) {
        M0(P());
      }
    }
  }
  
  public List<e1.d> q0(e1.d paramd)
  {
    if (this.p == null)
    {
      k1.d.c("Cannot resolve KeyPath. Composition is not set yet.");
      return Collections.emptyList();
    }
    ArrayList localArrayList = new ArrayList();
    this.p.f(paramd, 0, localArrayList, new e1.d(new String[0]));
    return localArrayList;
  }
  
  public void r0()
  {
    if (this.p == null)
    {
      this.g.add(new x(this));
      return;
    }
    t();
    if ((q()) || (R() == 0)) {
      if (isVisible())
      {
        this.b.y();
        this.f = OnVisibleAction.NONE;
      }
      else
      {
        this.f = OnVisibleAction.RESUME;
      }
    }
    if (!q())
    {
      float f1;
      if (T() < 0.0F) {
        f1 = N();
      } else {
        f1 = M();
      }
      x0((int)f1);
      this.b.h();
      if (!isVisible()) {
        this.f = OnVisibleAction.NONE;
      }
    }
  }
  
  public void s()
  {
    if (this.b.isRunning())
    {
      this.b.cancel();
      if (!isVisible()) {
        this.f = OnVisibleAction.NONE;
      }
    }
    this.a = null;
    this.p = null;
    this.i = null;
    this.b.g();
    invalidateSelf();
  }
  
  public void scheduleDrawable(Drawable paramDrawable, Runnable paramRunnable, long paramLong)
  {
    paramDrawable = getCallback();
    if (paramDrawable == null) {
      return;
    }
    paramDrawable.scheduleDrawable(this, paramRunnable, paramLong);
  }
  
  public void setAlpha(int paramInt)
  {
    this.q = paramInt;
    invalidateSelf();
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    k1.d.c("Use addColorFilter instead.");
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool = isVisible();
    paramBoolean2 = super.setVisible(paramBoolean1, paramBoolean2);
    if (paramBoolean1)
    {
      OnVisibleAction localOnVisibleAction = this.f;
      if (localOnVisibleAction == OnVisibleAction.PLAY) {
        o0();
      } else if (localOnVisibleAction == OnVisibleAction.RESUME) {
        r0();
      }
    }
    else if (this.b.isRunning())
    {
      n0();
      this.f = OnVisibleAction.RESUME;
    }
    else if (!(bool ^ true))
    {
      this.f = OnVisibleAction.NONE;
    }
    return paramBoolean2;
  }
  
  public void start()
  {
    Drawable.Callback localCallback = getCallback();
    if (((localCallback instanceof View)) && (((View)localCallback).isInEditMode())) {
      return;
    }
    o0();
  }
  
  public void stop()
  {
    z();
  }
  
  public void t0(boolean paramBoolean)
  {
    this.w = paramBoolean;
  }
  
  public void u0(boolean paramBoolean)
  {
    if (paramBoolean != this.o)
    {
      this.o = paramBoolean;
      com.airbnb.lottie.model.layer.b localb = this.p;
      if (localb != null) {
        localb.O(paramBoolean);
      }
      invalidateSelf();
    }
  }
  
  public void unscheduleDrawable(Drawable paramDrawable, Runnable paramRunnable)
  {
    paramDrawable = getCallback();
    if (paramDrawable == null) {
      return;
    }
    paramDrawable.unscheduleDrawable(this, paramRunnable);
  }
  
  public boolean v0(h paramh)
  {
    if (this.a == paramh) {
      return false;
    }
    this.O = true;
    s();
    this.a = paramh;
    r();
    this.b.A(paramh);
    M0(this.b.getAnimatedFraction());
    Iterator localIterator = new ArrayList(this.g).iterator();
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      if (localb != null) {
        localb.a(paramh);
      }
      localIterator.remove();
    }
    this.g.clear();
    paramh.v(this.r);
    t();
    paramh = getCallback();
    if ((paramh instanceof ImageView))
    {
      paramh = (ImageView)paramh;
      paramh.setImageDrawable(null);
      paramh.setImageDrawable(this);
    }
    return true;
  }
  
  public void w0(a parama)
  {
    d1.a locala = this.l;
    if (locala != null) {
      locala.c(parama);
    }
  }
  
  public void x(boolean paramBoolean)
  {
    if (this.m == paramBoolean) {
      return;
    }
    this.m = paramBoolean;
    if (this.a != null) {
      r();
    }
  }
  
  public void x0(int paramInt)
  {
    if (this.a == null)
    {
      this.g.add(new c0(this, paramInt));
      return;
    }
    this.b.B(paramInt);
  }
  
  public boolean y()
  {
    return this.m;
  }
  
  public void y0(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }
  
  public void z()
  {
    this.g.clear();
    this.b.h();
    if (!isVisible()) {
      this.f = OnVisibleAction.NONE;
    }
  }
  
  public void z0(b paramb)
  {
    this.k = paramb;
    d1.b localb = this.i;
    if (localb != null) {
      localb.d(paramb);
    }
  }
  
  private static enum OnVisibleAction
  {
    static
    {
      OnVisibleAction localOnVisibleAction1 = new OnVisibleAction("NONE", 0);
      NONE = localOnVisibleAction1;
      OnVisibleAction localOnVisibleAction2 = new OnVisibleAction("PLAY", 1);
      PLAY = localOnVisibleAction2;
      OnVisibleAction localOnVisibleAction3 = new OnVisibleAction("RESUME", 2);
      RESUME = localOnVisibleAction3;
      $VALUES = new OnVisibleAction[] { localOnVisibleAction1, localOnVisibleAction2, localOnVisibleAction3 };
    }
    
    private OnVisibleAction() {}
  }
  
  class a
    implements ValueAnimator.AnimatorUpdateListener
  {
    a() {}
    
    public void onAnimationUpdate(ValueAnimator paramValueAnimator)
    {
      if (LottieDrawable.n(LottieDrawable.this) != null) {
        LottieDrawable.n(LottieDrawable.this).L(LottieDrawable.o(LottieDrawable.this).i());
      }
    }
  }
  
  private static abstract interface b
  {
    public abstract void a(h paramh);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.LottieDrawable
 * JD-Core Version:    0.7.0.1
 */