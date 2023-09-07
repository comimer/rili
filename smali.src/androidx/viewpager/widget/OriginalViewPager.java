package androidx.viewpager.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import androidx.core.view.a0;
import androidx.customview.view.AbsSavedState;
import java.lang.annotation.Annotation;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import miuix.androidbasewidget.widget.SpringScroller;

public class OriginalViewPager
  extends ViewGroup
{
  static final int[] n0 = { 16842931 };
  private static final Comparator<d> o0 = new a();
  private static final Interpolator p0 = new b();
  private static final j q0 = new j();
  private int D;
  private boolean E;
  private boolean F;
  private int G;
  private int H;
  private int I;
  private float J;
  private float K;
  private float L;
  private float M;
  private int N;
  private VelocityTracker O;
  private int P;
  private int Q;
  private int R;
  private int S;
  private boolean T;
  private EdgeEffect U;
  private EdgeEffect V;
  private boolean W;
  private int a;
  private boolean a0;
  private final ArrayList<d> b;
  private boolean b0;
  private final d c;
  private int c0;
  private final Rect d;
  private List<g> d0;
  b e;
  private g e0;
  int f;
  private g f0;
  private int g;
  private List<f> g0;
  private Parcelable h;
  private h h0;
  private ClassLoader i;
  private int i0;
  private SpringScroller j;
  private int j0;
  private boolean k;
  private ArrayList<View> k0;
  private i l;
  private final Runnable l0;
  private int m;
  private int m0;
  private Drawable n;
  private int o;
  private int p;
  private float q;
  private float r;
  private int v;
  private int w;
  private boolean x;
  private boolean y;
  private boolean z;
  
  private void C(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt2 > 0) && (!this.b.isEmpty()))
    {
      if (!this.j.isFinished())
      {
        this.j.setFinalX(getCurrentItem() * getClientWidth());
      }
      else
      {
        int i1 = getPaddingLeft();
        int i2 = getPaddingRight();
        int i3 = getPaddingLeft();
        int i4 = getPaddingRight();
        scrollTo((int)(getScrollX() / (paramInt2 - i3 - i4 + paramInt4) * (paramInt1 - i1 - i2 + paramInt3)), getScrollY());
      }
    }
    else
    {
      d locald = r(this.f);
      float f1;
      if (locald != null) {
        f1 = Math.min(locald.e, this.r);
      } else {
        f1 = 0.0F;
      }
      paramInt1 = (int)(f1 * (paramInt1 - getPaddingLeft() - getPaddingRight()));
      if (paramInt1 != getScrollX())
      {
        e(false);
        scrollTo(paramInt1, getScrollY());
      }
    }
  }
  
  private void D()
  {
    int i2;
    for (int i1 = 0; i1 < getChildCount(); i1 = i2 + 1)
    {
      i2 = i1;
      if (!((e)getChildAt(i1).getLayoutParams()).a)
      {
        removeViewAt(i1);
        i2 = i1 - 1;
      }
    }
  }
  
  private void E(boolean paramBoolean)
  {
    ViewParent localViewParent = getParent();
    if (localViewParent != null) {
      localViewParent.requestDisallowInterceptTouchEvent(paramBoolean);
    }
  }
  
  private boolean F()
  {
    this.N = -1;
    l();
    this.U.onRelease();
    this.V.onRelease();
    boolean bool;
    if ((!this.U.isFinished()) && (!this.V.isFinished())) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private void G(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2)
  {
    d locald = r(paramInt1);
    int i1;
    if (locald != null) {
      i1 = (int)(getClientWidth() * Math.max(this.q, Math.min(locald.e, this.r)));
    } else {
      i1 = 0;
    }
    if (paramBoolean1)
    {
      K(i1, 0, paramInt2);
      if (paramBoolean2) {
        i(paramInt1);
      }
    }
    else
    {
      if (paramBoolean2) {
        i(paramInt1);
      }
      e(false);
      scrollTo(i1, 0);
      y(i1);
    }
  }
  
  private void L()
  {
    if (this.j0 != 0)
    {
      Object localObject = this.k0;
      if (localObject == null) {
        this.k0 = new ArrayList();
      } else {
        ((ArrayList)localObject).clear();
      }
      int i1 = getChildCount();
      for (int i2 = 0; i2 < i1; i2++)
      {
        localObject = getChildAt(i2);
        this.k0.add(localObject);
      }
      Collections.sort(this.k0, q0);
    }
  }
  
  private void c(d paramd1, int paramInt, d paramd2)
  {
    int i1 = this.e.d();
    int i2 = getClientWidth();
    float f1;
    if (i2 > 0) {
      f1 = this.m / i2;
    } else {
      f1 = 0.0F;
    }
    float f3;
    if (paramd2 != null)
    {
      i2 = paramd2.b;
      i3 = paramd1.b;
      if (i2 < i3)
      {
        f2 = paramd2.e + paramd2.d + f1;
        i2++;
        i3 = 0;
        while ((i2 <= paramd1.b) && (i3 < this.b.size()))
        {
          for (paramd2 = (d)this.b.get(i3);; paramd2 = (d)this.b.get(i3))
          {
            i4 = i2;
            f3 = f2;
            if (i2 <= paramd2.b) {
              break;
            }
            i4 = i2;
            f3 = f2;
            if (i3 >= this.b.size() - 1) {
              break;
            }
            i3++;
          }
          while (i4 < paramd2.b)
          {
            f3 += this.e.g(i4) + f1;
            i4++;
          }
          paramd2.e = f3;
          f2 = f3 + (paramd2.d + f1);
          i2 = i4 + 1;
        }
      }
      if (i2 > i3)
      {
        i3 = this.b.size() - 1;
        f2 = paramd2.e;
        i2--;
        while ((i2 >= paramd1.b) && (i3 >= 0))
        {
          for (paramd2 = (d)this.b.get(i3);; paramd2 = (d)this.b.get(i3))
          {
            i4 = i2;
            f3 = f2;
            if (i2 >= paramd2.b) {
              break;
            }
            i4 = i2;
            f3 = f2;
            if (i3 <= 0) {
              break;
            }
            i3--;
          }
          while (i4 > paramd2.b)
          {
            f3 -= this.e.g(i4) + f1;
            i4--;
          }
          f2 = f3 - (paramd2.d + f1);
          paramd2.e = f2;
          i2 = i4 - 1;
        }
      }
    }
    int i4 = this.b.size();
    float f2 = paramd1.e;
    int i3 = paramd1.b;
    i2 = i3 - 1;
    if (i3 == 0) {
      f3 = f2;
    } else {
      f3 = -3.402824E+038F;
    }
    this.q = f3;
    i1--;
    if (i3 == i1) {
      f3 = paramd1.d + f2 - 1.0F;
    } else {
      f3 = 3.4028235E+38F;
    }
    this.r = f3;
    i3 = paramInt - 1;
    while (i3 >= 0)
    {
      paramd2 = (d)this.b.get(i3);
      int i5;
      for (;;)
      {
        i5 = paramd2.b;
        if (i2 <= i5) {
          break;
        }
        f2 -= this.e.g(i2) + f1;
        i2--;
      }
      f2 -= paramd2.d + f1;
      paramd2.e = f2;
      if (i5 == 0) {
        this.q = f2;
      }
      i3--;
      i2--;
    }
    f2 = paramd1.e + paramd1.d + f1;
    i3 = paramd1.b + 1;
    i2 = paramInt + 1;
    for (paramInt = i3; i2 < i4; paramInt++)
    {
      paramd1 = (d)this.b.get(i2);
      for (;;)
      {
        i3 = paramd1.b;
        if (paramInt >= i3) {
          break;
        }
        f2 += this.e.g(paramInt) + f1;
        paramInt++;
      }
      if (i3 == i1) {
        this.r = (paramd1.d + f2 - 1.0F);
      }
      paramd1.e = f2;
      f2 += paramd1.d + f1;
      i2++;
    }
    this.a0 = false;
  }
  
  private void e(boolean paramBoolean)
  {
    int i1;
    if (this.m0 == 2) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    if (i1 != 0)
    {
      setScrollingCacheEnabled(false);
      if ((this.j.isFinished() ^ true))
      {
        this.j.abortAnimation();
        int i2 = getScrollX();
        i3 = getScrollY();
        int i4 = this.j.getCurrX();
        int i5 = this.j.getCurrY();
        if ((i2 != i4) || (i3 != i5))
        {
          scrollTo(i4, i5);
          if (i4 != i2) {
            y(i4);
          }
        }
      }
    }
    this.z = false;
    for (int i3 = 0; i3 < this.b.size(); i3++)
    {
      d locald = (d)this.b.get(i3);
      if (locald.c)
      {
        locald.c = false;
        i1 = 1;
      }
    }
    if (i1 != 0) {
      if (paramBoolean) {
        a0.d0(this, this.l0);
      } else {
        this.l0.run();
      }
    }
  }
  
  private int g(int paramInt1, float paramFloat, int paramInt2, int paramInt3)
  {
    if ((Math.abs(paramInt3) > this.R) && (Math.abs(paramInt2) > this.P))
    {
      if (paramInt2 <= 0) {
        paramInt1++;
      }
    }
    else
    {
      float f1;
      if (paramInt1 >= this.f) {
        f1 = 0.4F;
      } else {
        f1 = 0.6F;
      }
      paramInt1 += (int)(paramFloat + f1);
    }
    paramInt2 = paramInt1;
    if (this.b.size() > 0)
    {
      d locald = (d)this.b.get(0);
      Object localObject = this.b;
      localObject = (d)((ArrayList)localObject).get(((ArrayList)localObject).size() - 1);
      paramInt2 = Math.max(locald.b, Math.min(paramInt1, ((d)localObject).b));
    }
    return paramInt2;
  }
  
  private int getClientWidth()
  {
    return getMeasuredWidth() - getPaddingLeft() - getPaddingRight();
  }
  
  private void h(int paramInt1, float paramFloat, int paramInt2)
  {
    Object localObject = this.e0;
    if (localObject != null) {
      ((g)localObject).onPageScrolled(paramInt1, paramFloat, paramInt2);
    }
    localObject = this.d0;
    if (localObject != null)
    {
      int i1 = 0;
      int i2 = ((List)localObject).size();
      while (i1 < i2)
      {
        localObject = (g)this.d0.get(i1);
        if (localObject != null) {
          ((g)localObject).onPageScrolled(paramInt1, paramFloat, paramInt2);
        }
        i1++;
      }
    }
    localObject = this.f0;
    if (localObject != null) {
      ((g)localObject).onPageScrolled(paramInt1, paramFloat, paramInt2);
    }
  }
  
  private void i(int paramInt)
  {
    Object localObject = this.e0;
    if (localObject != null) {
      ((g)localObject).onPageSelected(paramInt);
    }
    localObject = this.d0;
    if (localObject != null)
    {
      int i1 = 0;
      int i2 = ((List)localObject).size();
      while (i1 < i2)
      {
        localObject = (g)this.d0.get(i1);
        if (localObject != null) {
          ((g)localObject).onPageSelected(paramInt);
        }
        i1++;
      }
    }
    localObject = this.f0;
    if (localObject != null) {
      ((g)localObject).onPageSelected(paramInt);
    }
  }
  
  private void j(int paramInt)
  {
    Object localObject = this.e0;
    if (localObject != null) {
      ((g)localObject).onPageScrollStateChanged(paramInt);
    }
    localObject = this.d0;
    if (localObject != null)
    {
      int i1 = 0;
      int i2 = ((List)localObject).size();
      while (i1 < i2)
      {
        localObject = (g)this.d0.get(i1);
        if (localObject != null) {
          ((g)localObject).onPageScrollStateChanged(paramInt);
        }
        i1++;
      }
    }
    localObject = this.f0;
    if (localObject != null) {
      ((g)localObject).onPageScrollStateChanged(paramInt);
    }
  }
  
  private void k(boolean paramBoolean)
  {
    int i1 = getChildCount();
    for (int i2 = 0; i2 < i1; i2++)
    {
      int i3;
      if (paramBoolean) {
        i3 = this.i0;
      } else {
        i3 = 0;
      }
      getChildAt(i2).setLayerType(i3, null);
    }
  }
  
  private void l()
  {
    this.E = false;
    this.F = false;
    VelocityTracker localVelocityTracker = this.O;
    if (localVelocityTracker != null)
    {
      localVelocityTracker.recycle();
      this.O = null;
    }
  }
  
  private Rect n(Rect paramRect, View paramView)
  {
    Rect localRect = paramRect;
    if (paramRect == null) {
      localRect = new Rect();
    }
    if (paramView == null)
    {
      localRect.set(0, 0, 0, 0);
      return localRect;
    }
    localRect.left = paramView.getLeft();
    localRect.right = paramView.getRight();
    localRect.top = paramView.getTop();
    localRect.bottom = paramView.getBottom();
    for (paramRect = paramView.getParent(); ((paramRect instanceof ViewGroup)) && (paramRect != this); paramRect = paramRect.getParent())
    {
      paramRect = (ViewGroup)paramRect;
      localRect.left += paramRect.getLeft();
      localRect.right += paramRect.getRight();
      localRect.top += paramRect.getTop();
      localRect.bottom += paramRect.getBottom();
    }
    return localRect;
  }
  
  private d q()
  {
    int i1 = getClientWidth();
    float f1 = 0.0F;
    float f2;
    if (i1 > 0) {
      f2 = getScrollX() / i1;
    } else {
      f2 = 0.0F;
    }
    float f3;
    if (i1 > 0) {
      f3 = this.m / i1;
    } else {
      f3 = 0.0F;
    }
    Object localObject = null;
    i1 = 0;
    int i2 = -1;
    int i3 = 1;
    float f4 = 0.0F;
    while (i1 < this.b.size())
    {
      d locald1 = (d)this.b.get(i1);
      int i4 = i1;
      d locald2 = locald1;
      if (i3 == 0)
      {
        int i5 = locald1.b;
        i2++;
        i4 = i1;
        locald2 = locald1;
        if (i5 != i2)
        {
          locald2 = this.c;
          locald2.e = (f1 + f4 + f3);
          locald2.b = i2;
          locald2.d = this.e.g(i2);
          i4 = i1 - 1;
        }
      }
      f1 = locald2.e;
      f4 = locald2.d;
      if ((i3 == 0) && (f2 < f1)) {
        return localObject;
      }
      if ((f2 >= f4 + f1 + f3) && (i4 != this.b.size() - 1))
      {
        i2 = locald2.b;
        f4 = locald2.d;
        i1 = i4 + 1;
        i3 = 0;
        localObject = locald2;
      }
      else
      {
        return locald2;
      }
    }
    return localObject;
  }
  
  private static boolean s(View paramView)
  {
    boolean bool;
    if (paramView.getClass().getAnnotation(c.class) != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void setScrollingCacheEnabled(boolean paramBoolean)
  {
    if (this.y != paramBoolean) {
      this.y = paramBoolean;
    }
  }
  
  private boolean t(float paramFloat1, float paramFloat2)
  {
    boolean bool;
    if (((paramFloat1 < this.H) && (paramFloat2 > 0.0F)) || ((paramFloat1 > getWidth() - this.H) && (paramFloat2 < 0.0F))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void v(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getActionIndex();
    if (paramMotionEvent.getPointerId(i1) == this.N)
    {
      if (i1 == 0) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      this.J = paramMotionEvent.getX(i1);
      this.N = paramMotionEvent.getPointerId(i1);
      paramMotionEvent = this.O;
      if (paramMotionEvent != null) {
        paramMotionEvent.clear();
      }
    }
  }
  
  private boolean y(int paramInt)
  {
    if (this.b.size() == 0)
    {
      if (this.W) {
        return false;
      }
      this.b0 = false;
      u(0, 0.0F, 0);
      if (this.b0) {
        return false;
      }
      throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }
    d locald = q();
    int i1 = getClientWidth();
    int i2 = this.m;
    float f1 = i2;
    float f2 = i1;
    f1 /= f2;
    int i3 = locald.b;
    f2 = (paramInt / f2 - locald.e) / (locald.d + f1);
    paramInt = (int)((i1 + i2) * f2);
    this.b0 = false;
    u(i3, f2, paramInt);
    if (this.b0) {
      return true;
    }
    throw new IllegalStateException("onPageScrolled did not call superclass implementation");
  }
  
  private boolean z(float paramFloat)
  {
    float f1 = this.J;
    this.J = paramFloat;
    float f2 = getScrollX() + (f1 - paramFloat);
    float f3 = getClientWidth();
    paramFloat = this.q * f3;
    f1 = this.r * f3;
    Object localObject1 = this.b;
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    localObject1 = (d)((ArrayList)localObject1).get(0);
    Object localObject2 = this.b;
    localObject2 = (d)((ArrayList)localObject2).get(((ArrayList)localObject2).size() - 1);
    if (((d)localObject1).b != 0)
    {
      paramFloat = ((d)localObject1).e * f3;
      i1 = 0;
    }
    else
    {
      i1 = 1;
    }
    int i2;
    if (((d)localObject2).b != this.e.d() - 1)
    {
      f1 = ((d)localObject2).e * f3;
      i2 = 0;
    }
    else
    {
      i2 = 1;
    }
    if (f2 < paramFloat)
    {
      if (i1 != 0)
      {
        this.U.onPull(Math.abs(paramFloat - f2) / f3);
        bool3 = true;
      }
    }
    else
    {
      bool3 = bool2;
      paramFloat = f2;
      if (f2 > f1)
      {
        bool3 = bool1;
        if (i2 != 0)
        {
          this.V.onPull(Math.abs(f2 - f1) / f3);
          bool3 = true;
        }
        paramFloat = f1;
      }
    }
    f1 = this.J;
    int i1 = (int)paramFloat;
    this.J = (f1 + (paramFloat - i1));
    scrollTo(i1, getScrollY());
    y(i1);
    return bool3;
  }
  
  void A()
  {
    B(this.f);
  }
  
  void B(int paramInt)
  {
    int i1 = this.f;
    if (i1 != paramInt)
    {
      localObject1 = r(i1);
      this.f = paramInt;
    }
    else
    {
      localObject1 = null;
    }
    if (this.e == null)
    {
      L();
      return;
    }
    if (this.z)
    {
      L();
      return;
    }
    if (getWindowToken() == null) {
      return;
    }
    this.e.r(this);
    paramInt = this.D;
    int i2 = Math.max(0, this.f - paramInt);
    int i3 = this.e.d();
    int i4 = Math.min(i3 - 1, this.f + paramInt);
    Object localObject2;
    if (i3 == this.a)
    {
      int i5;
      for (paramInt = 0; paramInt < this.b.size(); paramInt++)
      {
        localObject2 = (d)this.b.get(paramInt);
        i5 = ((d)localObject2).b;
        i1 = this.f;
        if (i5 >= i1)
        {
          if (i5 != i1) {
            break;
          }
          break label178;
        }
      }
      localObject2 = null;
      label178:
      Object localObject3 = localObject2;
      if (localObject2 == null)
      {
        localObject3 = localObject2;
        if (i3 > 0) {
          localObject3 = a(this.f, paramInt);
        }
      }
      if (localObject3 != null)
      {
        i1 = paramInt - 1;
        if (i1 >= 0) {
          localObject2 = (d)this.b.get(i1);
        } else {
          localObject2 = null;
        }
        int i6 = getClientWidth();
        float f1;
        if (i6 <= 0) {
          f1 = 0.0F;
        } else {
          f1 = 2.0F - ((d)localObject3).d + getPaddingLeft() / i6;
        }
        int i7 = this.f - 1;
        int i8;
        Object localObject4;
        float f3;
        for (float f2 = 0.0F; i7 >= 0; f2 = f3)
        {
          if ((f2 >= f1) && (i7 < i2))
          {
            if (localObject2 == null) {
              break;
            }
            i8 = paramInt;
            i5 = i1;
            localObject4 = localObject2;
            f3 = f2;
            if (i7 != ((d)localObject2).b) {
              break label559;
            }
            i8 = paramInt;
            i5 = i1;
            localObject4 = localObject2;
            f3 = f2;
            if (((d)localObject2).c) {
              break label559;
            }
            this.b.remove(i1);
            this.e.a(this, i7, ((d)localObject2).a);
            i1--;
            paramInt--;
            i5 = paramInt;
            i8 = i1;
            f3 = f2;
            if (i1 >= 0)
            {
              localObject2 = (d)this.b.get(i1);
              f3 = f2;
              break label549;
            }
          }
          else if ((localObject2 != null) && (i7 == ((d)localObject2).b))
          {
            f2 += ((d)localObject2).d;
            i1--;
            i5 = paramInt;
            i8 = i1;
            f3 = f2;
            if (i1 >= 0)
            {
              localObject2 = (d)this.b.get(i1);
              f3 = f2;
              break label549;
            }
          }
          else
          {
            f2 += a(i7, i1 + 1).d;
            paramInt++;
            i5 = paramInt;
            i8 = i1;
            f3 = f2;
            if (i1 >= 0)
            {
              localObject2 = (d)this.b.get(i1);
              f3 = f2;
              break label549;
            }
          }
          localObject2 = null;
          i1 = i8;
          paramInt = i5;
          label549:
          localObject4 = localObject2;
          i5 = i1;
          i8 = paramInt;
          label559:
          i7--;
          paramInt = i8;
          i1 = i5;
          localObject2 = localObject4;
        }
        f2 = ((d)localObject3).d;
        i5 = paramInt + 1;
        if (f2 < 2.0F)
        {
          if (i5 < this.b.size()) {
            localObject2 = (d)this.b.get(i5);
          } else {
            localObject2 = null;
          }
          if (i6 <= 0) {
            f1 = 0.0F;
          } else {
            f1 = getPaddingRight() / i6 + 2.0F;
          }
          i1 = this.f;
          localObject4 = localObject2;
          for (;;)
          {
            i8 = i1 + 1;
            if (i8 >= i3) {
              break;
            }
            if ((f2 >= f1) && (i8 > i4))
            {
              if (localObject4 == null) {
                break;
              }
              f3 = f2;
              i1 = i5;
              localObject2 = localObject4;
              if (i8 != localObject4.b) {
                break label946;
              }
              f3 = f2;
              i1 = i5;
              localObject2 = localObject4;
              if (localObject4.c) {
                break label946;
              }
              this.b.remove(i5);
              this.e.a(this, i8, localObject4.a);
              f3 = f2;
              i1 = i5;
              if (i5 < this.b.size())
              {
                localObject2 = (d)this.b.get(i5);
                f3 = f2;
                i1 = i5;
                break label946;
              }
            }
            do
            {
              do
              {
                localObject2 = null;
                break label946;
                if ((localObject4 == null) || (i8 != localObject4.b)) {
                  break;
                }
                f2 += localObject4.d;
                i5++;
                f3 = f2;
                i1 = i5;
              } while (i5 >= this.b.size());
              localObject2 = (d)this.b.get(i5);
              f3 = f2;
              i1 = i5;
              break;
              localObject2 = a(i8, i5);
              i5++;
              f2 += ((d)localObject2).d;
              f3 = f2;
              i1 = i5;
            } while (i5 >= this.b.size());
            localObject2 = (d)this.b.get(i5);
            i1 = i5;
            f3 = f2;
            label946:
            f2 = f3;
            i5 = i1;
            localObject4 = localObject2;
            i1 = i8;
          }
        }
        c((d)localObject3, paramInt, (d)localObject1);
        this.e.o(this, this.f, ((d)localObject3).a);
      }
      this.e.c(this);
      i1 = getChildCount();
      for (paramInt = 0; paramInt < i1; paramInt++)
      {
        localObject1 = getChildAt(paramInt);
        localObject2 = (e)((View)localObject1).getLayoutParams();
        ((e)localObject2).f = paramInt;
        if ((!((e)localObject2).a) && (((e)localObject2).c == 0.0F))
        {
          localObject1 = p((View)localObject1);
          if (localObject1 != null)
          {
            ((e)localObject2).c = ((d)localObject1).d;
            ((e)localObject2).e = ((d)localObject1).b;
          }
        }
      }
      L();
      if (hasFocus())
      {
        localObject2 = findFocus();
        if (localObject2 != null) {
          localObject2 = o((View)localObject2);
        } else {
          localObject2 = null;
        }
        if ((localObject2 == null) || (((d)localObject2).b != this.f)) {
          for (paramInt = 0; paramInt < getChildCount(); paramInt++)
          {
            localObject1 = getChildAt(paramInt);
            localObject2 = p((View)localObject1);
            if ((localObject2 != null) && (((d)localObject2).b == this.f) && (((View)localObject1).requestFocus(2))) {
              break;
            }
          }
        }
      }
      return;
    }
    String str;
    try
    {
      localObject2 = getResources().getResourceName(getId());
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      str = Integer.toHexString(getId());
    }
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: ");
    ((StringBuilder)localObject1).append(this.a);
    ((StringBuilder)localObject1).append(", found: ");
    ((StringBuilder)localObject1).append(i3);
    ((StringBuilder)localObject1).append(" Pager id: ");
    ((StringBuilder)localObject1).append(str);
    ((StringBuilder)localObject1).append(" Pager class: ");
    ((StringBuilder)localObject1).append(getClass());
    ((StringBuilder)localObject1).append(" Problematic adapter: ");
    ((StringBuilder)localObject1).append(this.e.getClass());
    throw new IllegalStateException(((StringBuilder)localObject1).toString());
  }
  
  public void H(int paramInt, boolean paramBoolean)
  {
    this.z = false;
    I(paramInt, paramBoolean, false);
  }
  
  void I(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    J(paramInt, paramBoolean1, paramBoolean2, 0);
  }
  
  void J(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2)
  {
    b localb = this.e;
    boolean bool = false;
    if ((localb != null) && (localb.d() > 0))
    {
      if ((!paramBoolean2) && (this.f == paramInt1) && (this.b.size() != 0))
      {
        setScrollingCacheEnabled(false);
        return;
      }
      int i1;
      if (paramInt1 < 0)
      {
        i1 = 0;
      }
      else
      {
        i1 = paramInt1;
        if (paramInt1 >= this.e.d()) {
          i1 = this.e.d() - 1;
        }
      }
      int i2 = this.D;
      paramInt1 = this.f;
      if ((i1 > paramInt1 + i2) || (i1 < paramInt1 - i2)) {
        for (paramInt1 = 0; paramInt1 < this.b.size(); paramInt1++) {
          ((d)this.b.get(paramInt1)).c = true;
        }
      }
      paramBoolean2 = bool;
      if (this.f != i1) {
        paramBoolean2 = true;
      }
      if (this.W)
      {
        this.f = i1;
        if (paramBoolean2) {
          i(i1);
        }
        requestLayout();
      }
      else
      {
        B(i1);
        G(i1, paramBoolean1, paramInt2, paramBoolean2);
      }
      return;
    }
    setScrollingCacheEnabled(false);
  }
  
  void K(int paramInt1, int paramInt2, int paramInt3)
  {
    if (getChildCount() == 0)
    {
      setScrollingCacheEnabled(false);
      return;
    }
    SpringScroller localSpringScroller = this.j;
    int i1;
    if ((localSpringScroller != null) && (!localSpringScroller.isFinished())) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    if (i1 != 0)
    {
      if (this.k) {
        i1 = this.j.getCurrX();
      } else {
        i1 = this.j.getStartX();
      }
      this.j.abortAnimation();
      setScrollingCacheEnabled(false);
    }
    else
    {
      i1 = getScrollX();
    }
    int i2 = getScrollY();
    if ((paramInt1 - i1 == 0) && (paramInt2 - i2 == 0))
    {
      e(false);
      A();
      setScrollState(0);
      return;
    }
    setScrollingCacheEnabled(true);
    setScrollState(2);
    this.k = false;
    this.j.startScroll(i1, paramInt1, i2, paramInt2, -paramInt3);
    a0.c0(this);
  }
  
  d a(int paramInt1, int paramInt2)
  {
    d locald = new d();
    locald.b = paramInt1;
    locald.a = this.e.h(this, paramInt1);
    locald.d = this.e.g(paramInt1);
    if ((paramInt2 >= 0) && (paramInt2 < this.b.size())) {
      this.b.add(paramInt2, locald);
    } else {
      this.b.add(locald);
    }
    return locald;
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    int i1 = paramArrayList.size();
    int i2 = getDescendantFocusability();
    if (i2 != 393216) {
      for (int i3 = 0; i3 < getChildCount(); i3++)
      {
        View localView = getChildAt(i3);
        if (localView.getVisibility() == 0)
        {
          d locald = p(localView);
          if ((locald != null) && (locald.b == this.f)) {
            localView.addFocusables(paramArrayList, paramInt1, paramInt2);
          }
        }
      }
    }
    if ((i2 != 262144) || (i1 == paramArrayList.size()))
    {
      if (!isFocusable()) {
        return;
      }
      if (((paramInt2 & 0x1) == 1) && (isInTouchMode()) && (!isFocusableInTouchMode())) {
        return;
      }
      paramArrayList.add(this);
    }
  }
  
  public void addTouchables(ArrayList<View> paramArrayList)
  {
    for (int i1 = 0; i1 < getChildCount(); i1++)
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 0)
      {
        d locald = p(localView);
        if ((locald != null) && (locald.b == this.f)) {
          localView.addTouchables(paramArrayList);
        }
      }
    }
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    ViewGroup.LayoutParams localLayoutParams = paramLayoutParams;
    if (!checkLayoutParams(paramLayoutParams)) {
      localLayoutParams = generateLayoutParams(paramLayoutParams);
    }
    paramLayoutParams = (e)localLayoutParams;
    boolean bool = paramLayoutParams.a | s(paramView);
    paramLayoutParams.a = bool;
    if (this.x)
    {
      if (!bool)
      {
        paramLayoutParams.d = true;
        addViewInLayout(paramView, paramInt, localLayoutParams);
      }
      else
      {
        throw new IllegalStateException("Cannot add pager decor view during layout");
      }
    }
    else {
      super.addView(paramView, paramInt, localLayoutParams);
    }
  }
  
  public boolean b(int paramInt)
  {
    View localView = findFocus();
    boolean bool = false;
    if (localView == this) {}
    Object localObject;
    int i1;
    for (;;)
    {
      localObject = null;
      break;
      localObject = localView;
      if (localView == null) {
        break;
      }
      for (localObject = localView.getParent(); (localObject instanceof ViewGroup); localObject = ((ViewParent)localObject).getParent()) {
        if (localObject == this)
        {
          i1 = 1;
          break label66;
        }
      }
      i1 = 0;
      label66:
      localObject = localView;
      if (i1 != 0) {
        break;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(localView.getClass().getSimpleName());
      for (localObject = localView.getParent(); (localObject instanceof ViewGroup); localObject = ((ViewParent)localObject).getParent())
      {
        localStringBuilder.append(" => ");
        localStringBuilder.append(localObject.getClass().getSimpleName());
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("arrowScroll tried to find focus based on non-child current focused view ");
      ((StringBuilder)localObject).append(localStringBuilder.toString());
      Log.e("ViewPager", ((StringBuilder)localObject).toString());
    }
    localView = FocusFinder.getInstance().findNextFocus(this, (View)localObject, paramInt);
    int i2;
    if ((localView != null) && (localView != localObject)) {
      if (paramInt == 17)
      {
        i1 = n(this.d, localView).left;
        i2 = n(this.d, (View)localObject).left;
        if ((localObject != null) && (i1 >= i2)) {
          bool = w();
        } else {
          bool = localView.requestFocus();
        }
      }
    }
    for (;;)
    {
      break;
      if (paramInt == 66)
      {
        i1 = n(this.d, localView).left;
        i2 = n(this.d, (View)localObject).left;
        if ((localObject != null) && (i1 <= i2))
        {
          bool = x();
        }
        else
        {
          bool = localView.requestFocus();
          continue;
          if ((paramInt != 17) && (paramInt != 1))
          {
            if ((paramInt == 66) || (paramInt == 2)) {
              bool = x();
            }
          }
          else {
            bool = w();
          }
        }
      }
    }
    if (bool) {
      playSoundEffect(SoundEffectConstants.getContantForFocusDirection(paramInt));
    }
    return bool;
  }
  
  public boolean canScrollHorizontally(int paramInt)
  {
    b localb = this.e;
    boolean bool1 = false;
    boolean bool2 = false;
    if (localb == null) {
      return false;
    }
    int i1 = getClientWidth();
    int i2 = getScrollX();
    if (paramInt < 0)
    {
      if (i2 > (int)(i1 * this.q)) {
        bool2 = true;
      }
      return bool2;
    }
    bool2 = bool1;
    if (paramInt > 0)
    {
      bool2 = bool1;
      if (i2 < (int)(i1 * this.r)) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    boolean bool;
    if (((paramLayoutParams instanceof e)) && (super.checkLayoutParams(paramLayoutParams))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void computeScroll()
  {
    this.k = true;
    if ((!this.j.isFinished()) && (this.j.computeScrollOffset()))
    {
      int i1 = getScrollX();
      int i2 = getScrollY();
      int i3 = this.j.getCurrX();
      int i4 = this.j.getCurrY();
      if ((i1 != i3) || (i2 != i4))
      {
        scrollTo(i3, i4);
        if (!y(i3))
        {
          this.j.abortAnimation();
          scrollTo(0, i4);
        }
      }
      a0.c0(this);
      return;
    }
    e(true);
  }
  
  protected boolean d(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    boolean bool1 = paramView instanceof ViewGroup;
    boolean bool2 = true;
    if (bool1)
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      int i1 = paramView.getScrollX();
      int i2 = paramView.getScrollY();
      for (int i3 = localViewGroup.getChildCount() - 1; i3 >= 0; i3--)
      {
        View localView = localViewGroup.getChildAt(i3);
        int i4 = paramInt2 + i1;
        if ((i4 >= localView.getLeft()) && (i4 < localView.getRight()))
        {
          int i5 = paramInt3 + i2;
          if ((i5 >= localView.getTop()) && (i5 < localView.getBottom()) && (d(localView, true, paramInt1, i4 - localView.getLeft(), i5 - localView.getTop()))) {
            return true;
          }
        }
      }
    }
    if ((paramBoolean) && (paramView.canScrollHorizontally(-paramInt1))) {
      paramBoolean = bool2;
    } else {
      paramBoolean = false;
    }
    return paramBoolean;
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    boolean bool;
    if ((!super.dispatchKeyEvent(paramKeyEvent)) && (!m(paramKeyEvent))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    if (paramAccessibilityEvent.getEventType() == 4096) {
      return super.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent);
    }
    int i1 = getChildCount();
    for (int i2 = 0; i2 < i1; i2++)
    {
      View localView = getChildAt(i2);
      if (localView.getVisibility() == 0)
      {
        d locald = p(localView);
        if ((locald != null) && (locald.b == this.f) && (localView.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent))) {
          return true;
        }
      }
    }
    return false;
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int i1 = getOverScrollMode();
    int i2 = 0;
    int i3 = 0;
    if (i1 != 0) {
      if (i1 == 1)
      {
        b localb = this.e;
        if ((localb != null) && (localb.d() > 1)) {}
      }
      else
      {
        this.U.finish();
        this.V.finish();
        break label256;
      }
    }
    int i4;
    if (!this.U.isFinished())
    {
      i2 = paramCanvas.save();
      i1 = getHeight() - getPaddingTop() - getPaddingBottom();
      i3 = getWidth();
      paramCanvas.rotate(270.0F);
      paramCanvas.translate(-i1 + getPaddingTop(), this.q * i3);
      this.U.setSize(i1, i3);
      i4 = false | this.U.draw(paramCanvas);
      paramCanvas.restoreToCount(i2);
    }
    i2 = i4;
    boolean bool;
    if (!this.V.isFinished())
    {
      i1 = paramCanvas.save();
      int i5 = getWidth();
      int i6 = getHeight();
      int i7 = getPaddingTop();
      i2 = getPaddingBottom();
      paramCanvas.rotate(90.0F);
      paramCanvas.translate(-getPaddingTop(), -(this.r + 1.0F) * i5);
      this.V.setSize(i6 - i7 - i2, i5);
      bool = i4 | this.V.draw(paramCanvas);
      paramCanvas.restoreToCount(i1);
    }
    label256:
    if (bool) {
      a0.c0(this);
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    Drawable localDrawable = this.n;
    if ((localDrawable != null) && (localDrawable.isStateful())) {
      localDrawable.setState(getDrawableState());
    }
  }
  
  void f()
  {
    int i1 = this.e.d();
    this.a = i1;
    int i2;
    if ((this.b.size() < this.D * 2 + 1) && (this.b.size() < i1)) {
      i2 = 1;
    } else {
      i2 = 0;
    }
    int i3 = this.f;
    int i4 = 0;
    int i5 = i4;
    int i6 = i2;
    Object localObject;
    while (i4 < this.b.size())
    {
      localObject = (d)this.b.get(i4);
      int i7 = this.e.e(((d)localObject).a);
      int i8;
      int i9;
      if (i7 == -1)
      {
        i2 = i3;
        i8 = i4;
        i9 = i5;
      }
      else
      {
        if (i7 == -2)
        {
          this.b.remove(i4);
          i6 = i4 - 1;
          i2 = i5;
          if (i5 == 0)
          {
            this.e.r(this);
            i2 = 1;
          }
          this.e.a(this, ((d)localObject).b, ((d)localObject).a);
          i9 = this.f;
          i4 = i6;
          i5 = i2;
          if (i9 == ((d)localObject).b)
          {
            i3 = Math.max(0, Math.min(i9, i1 - 1));
            i5 = i2;
            i4 = i6;
          }
        }
        for (;;)
        {
          i6 = 1;
          i2 = i3;
          i8 = i4;
          i9 = i5;
          break;
          int i10 = ((d)localObject).b;
          i2 = i3;
          i8 = i4;
          i9 = i5;
          if (i10 == i7) {
            break;
          }
          if (i10 == this.f) {
            i3 = i7;
          }
          ((d)localObject).b = i7;
        }
      }
      i4 = i8 + 1;
      i3 = i2;
      i5 = i9;
    }
    if (i5 != 0) {
      this.e.c(this);
    }
    Collections.sort(this.b, o0);
    if (i6 != 0)
    {
      i4 = getChildCount();
      for (i5 = 0; i5 < i4; i5++)
      {
        localObject = (e)getChildAt(i5).getLayoutParams();
        if (!((e)localObject).a) {
          ((e)localObject).c = 0.0F;
        }
      }
      I(i3, false, true);
      requestLayout();
    }
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new e();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new e(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return generateDefaultLayoutParams();
  }
  
  public b getAdapter()
  {
    return this.e;
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    int i1 = paramInt2;
    if (this.j0 == 2) {
      i1 = paramInt1 - 1 - paramInt2;
    }
    return ((e)((View)this.k0.get(i1)).getLayoutParams()).f;
  }
  
  public int getCurrentItem()
  {
    return this.f;
  }
  
  public int getOffscreenPageLimit()
  {
    return this.D;
  }
  
  public int getPageMargin()
  {
    return this.m;
  }
  
  public boolean m(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getAction() == 0)
    {
      int i1 = paramKeyEvent.getKeyCode();
      if (i1 != 21)
      {
        if (i1 != 22)
        {
          if (i1 == 61)
          {
            if (paramKeyEvent.hasNoModifiers()) {
              return b(2);
            }
            if (paramKeyEvent.hasModifiers(1)) {
              return b(1);
            }
          }
        }
        else
        {
          if (paramKeyEvent.hasModifiers(2)) {
            return x();
          }
          return b(66);
        }
      }
      else
      {
        if (paramKeyEvent.hasModifiers(2)) {
          return w();
        }
        return b(17);
      }
    }
    boolean bool = false;
    return bool;
  }
  
  d o(View paramView)
  {
    for (;;)
    {
      ViewParent localViewParent = paramView.getParent();
      if (localViewParent == this) {
        break label34;
      }
      if ((localViewParent == null) || (!(localViewParent instanceof View))) {
        break;
      }
      paramView = (View)localViewParent;
    }
    return null;
    label34:
    return p(paramView);
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.W = true;
  }
  
  protected void onDetachedFromWindow()
  {
    removeCallbacks(this.l0);
    SpringScroller localSpringScroller = this.j;
    if ((localSpringScroller != null) && (!localSpringScroller.isFinished())) {
      this.j.abortAnimation();
    }
    super.onDetachedFromWindow();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((this.m > 0) && (this.n != null) && (this.b.size() > 0) && (this.e != null))
    {
      int i1 = getScrollX();
      int i2 = getWidth();
      float f1 = this.m;
      float f2 = i2;
      float f3 = f1 / f2;
      Object localObject = this.b;
      int i3 = 0;
      localObject = (d)((ArrayList)localObject).get(0);
      f1 = ((d)localObject).e;
      int i4 = this.b.size();
      int i5 = ((d)localObject).b;
      int i6 = ((d)this.b.get(i4 - 1)).b;
      while (i5 < i6)
      {
        int i7;
        for (;;)
        {
          i7 = ((d)localObject).b;
          if ((i5 <= i7) || (i3 >= i4)) {
            break;
          }
          localObject = this.b;
          i3++;
          localObject = (d)((ArrayList)localObject).get(i3);
        }
        float f4;
        float f5;
        if (i5 == i7)
        {
          f4 = ((d)localObject).e;
          f1 = ((d)localObject).d;
          f5 = (f4 + f1) * f2;
          f1 = f4 + f1 + f3;
        }
        else
        {
          f4 = this.e.g(i5);
          f5 = (f1 + f4) * f2;
          f1 += f4 + f3;
        }
        if (this.m + f5 > i1)
        {
          this.n.setBounds(Math.round(f5), this.o, Math.round(this.m + f5), this.p);
          this.n.draw(paramCanvas);
        }
        if (f5 > i1 + i2) {
          break;
        }
        i5++;
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getAction() & 0xFF;
    if ((i1 != 3) && (i1 != 1))
    {
      if (i1 != 0)
      {
        if (this.E) {
          return true;
        }
        if (this.F) {
          return false;
        }
      }
      float f3;
      if (i1 != 0)
      {
        if (i1 != 2)
        {
          if (i1 == 6) {
            v(paramMotionEvent);
          }
        }
        else
        {
          i1 = this.N;
          if (i1 != -1)
          {
            i1 = paramMotionEvent.findPointerIndex(i1);
            if ((i1 >= 0) && (i1 < paramMotionEvent.getPointerCount()))
            {
              float f1 = paramMotionEvent.getX(i1);
              float f2 = f1 - this.J;
              f3 = Math.abs(f2);
              float f4 = paramMotionEvent.getY(i1);
              float f5 = Math.abs(f4 - this.M);
              boolean bool = f2 < 0.0F;
              if ((bool) && (!t(this.J, f2)) && (d(this, false, (int)f2, (int)f1, (int)f4)))
              {
                this.J = f1;
                this.K = f4;
                this.F = true;
                return false;
              }
              int i2 = this.I;
              if ((f3 > i2) && (f3 * 0.5F > f5))
              {
                this.E = true;
                E(true);
                setScrollState(1);
                if (bool) {
                  f3 = this.L + this.I;
                } else {
                  f3 = this.L - this.I;
                }
                this.J = f3;
                this.K = f4;
                setScrollingCacheEnabled(true);
              }
              else if (f5 > i2)
              {
                this.F = true;
              }
              if ((this.E) && (z(f1))) {
                a0.c0(this);
              }
            }
          }
        }
      }
      else
      {
        f3 = paramMotionEvent.getX();
        this.L = f3;
        this.J = f3;
        f3 = paramMotionEvent.getY();
        this.M = f3;
        this.K = f3;
        this.N = paramMotionEvent.getPointerId(0);
        this.F = false;
        this.k = true;
        this.j.computeScrollOffset();
        if ((this.m0 == 2) && (Math.abs(this.j.getFinalX() - this.j.getCurrX()) > this.S))
        {
          this.j.abortAnimation();
          this.z = false;
          A();
          this.E = true;
          E(true);
          setScrollState(1);
        }
        else
        {
          e(false);
          this.E = false;
        }
      }
      if (this.O == null) {
        this.O = VelocityTracker.obtain();
      }
      this.O.addMovement(paramMotionEvent);
      return this.E;
    }
    F();
    return false;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = getChildCount();
    int i2 = paramInt3 - paramInt1;
    int i3 = paramInt4 - paramInt2;
    paramInt2 = getPaddingLeft();
    paramInt1 = getPaddingTop();
    paramInt4 = getPaddingRight();
    paramInt3 = getPaddingBottom();
    int i4 = getScrollX();
    int i5 = 0;
    Object localObject;
    e locale;
    for (int i6 = 0; i5 < i1; i6 = i11)
    {
      localObject = getChildAt(i5);
      int i7 = paramInt2;
      int i8 = paramInt1;
      int i9 = paramInt4;
      int i10 = paramInt3;
      i11 = i6;
      if (((View)localObject).getVisibility() != 8)
      {
        locale = (e)((View)localObject).getLayoutParams();
        i7 = paramInt2;
        i8 = paramInt1;
        i9 = paramInt4;
        i10 = paramInt3;
        i11 = i6;
        if (locale.a)
        {
          i10 = locale.b;
          i11 = i10 & 0x7;
          i9 = i10 & 0x70;
          if (i11 != 1)
          {
            if (i11 != 3)
            {
              if (i11 != 5)
              {
                i11 = paramInt2;
                i10 = paramInt2;
                paramInt2 = i11;
                break label246;
              }
              i11 = i2 - paramInt4 - ((View)localObject).getMeasuredWidth();
              paramInt4 += ((View)localObject).getMeasuredWidth();
            }
            else
            {
              i11 = ((View)localObject).getMeasuredWidth() + paramInt2;
              i10 = paramInt2;
              paramInt2 = i11;
              break label246;
            }
          }
          else {
            i11 = Math.max((i2 - ((View)localObject).getMeasuredWidth()) / 2, paramInt2);
          }
          i10 = i11;
          label246:
          if (i9 != 16)
          {
            if (i9 != 48)
            {
              if (i9 != 80)
              {
                i9 = paramInt1;
                i11 = paramInt1;
                paramInt1 = i9;
              }
              else
              {
                i11 = i3 - paramInt3 - ((View)localObject).getMeasuredHeight();
                paramInt3 += ((View)localObject).getMeasuredHeight();
              }
            }
            else
            {
              i9 = ((View)localObject).getMeasuredHeight() + paramInt1;
              i11 = paramInt1;
              paramInt1 = i9;
            }
          }
          else {
            i11 = Math.max((i3 - ((View)localObject).getMeasuredHeight()) / 2, paramInt1);
          }
          i10 += i4;
          ((View)localObject).layout(i10, i11, ((View)localObject).getMeasuredWidth() + i10, i11 + ((View)localObject).getMeasuredHeight());
          i11 = i6 + 1;
          i10 = paramInt3;
          i9 = paramInt4;
          i8 = paramInt1;
          i7 = paramInt2;
        }
      }
      i5++;
      paramInt2 = i7;
      paramInt1 = i8;
      paramInt4 = i9;
      paramInt3 = i10;
    }
    for (int i11 = 0; i11 < i1; i11++)
    {
      View localView = getChildAt(i11);
      if (localView.getVisibility() != 8)
      {
        locale = (e)localView.getLayoutParams();
        if (!locale.a)
        {
          localObject = p(localView);
          if (localObject != null)
          {
            float f1 = i2 - paramInt2 - paramInt4;
            i5 = (int)(((d)localObject).e * f1) + paramInt2;
            if (locale.d)
            {
              locale.d = false;
              localView.measure(View.MeasureSpec.makeMeasureSpec((int)(f1 * locale.c), 1073741824), View.MeasureSpec.makeMeasureSpec(i3 - paramInt1 - paramInt3, 1073741824));
            }
            localView.layout(i5, paramInt1, localView.getMeasuredWidth() + i5, localView.getMeasuredHeight() + paramInt1);
          }
        }
      }
    }
    this.o = paramInt1;
    this.p = (i3 - paramInt3);
    this.c0 = i6;
    if (this.W) {
      G(this.f, false, 0, false);
    }
    this.W = false;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = 0;
    setMeasuredDimension(View.getDefaultSize(0, paramInt1), View.getDefaultSize(0, paramInt2));
    paramInt1 = getMeasuredWidth();
    this.H = Math.min(paramInt1 / 10, this.G);
    paramInt1 = paramInt1 - getPaddingLeft() - getPaddingRight();
    paramInt2 = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
    int i2 = getChildCount();
    int i3 = 0;
    View localView;
    e locale;
    for (;;)
    {
      int i4 = 1;
      int i5 = 1073741824;
      if (i3 >= i2) {
        break;
      }
      localView = getChildAt(i3);
      int i6 = paramInt1;
      i7 = paramInt2;
      if (localView.getVisibility() != 8)
      {
        locale = (e)localView.getLayoutParams();
        i6 = paramInt1;
        i7 = paramInt2;
        if (locale != null)
        {
          i6 = paramInt1;
          i7 = paramInt2;
          if (locale.a)
          {
            i6 = locale.b;
            i7 = i6 & 0x7;
            i6 &= 0x70;
            int i8;
            if ((i6 != 48) && (i6 != 80)) {
              i8 = 0;
            } else {
              i8 = 1;
            }
            int i9 = i4;
            if (i7 != 3) {
              if (i7 == 5) {
                i9 = i4;
              } else {
                i9 = 0;
              }
            }
            i6 = -2147483648;
            if (i8 != 0)
            {
              i7 = -2147483648;
              i6 = 1073741824;
            }
            else if (i9 != 0)
            {
              i7 = 1073741824;
            }
            else
            {
              i7 = -2147483648;
            }
            i4 = locale.width;
            int i10;
            if (i4 != -2)
            {
              if (i4 != -1) {
                i6 = i4;
              } else {
                i6 = paramInt1;
              }
              i4 = 1073741824;
              i10 = i6;
            }
            else
            {
              i10 = paramInt1;
              i4 = i6;
            }
            i6 = locale.height;
            if (i6 != -2)
            {
              if (i6 != -1) {
                i7 = i6;
              } else {
                i7 = paramInt2;
              }
            }
            else
            {
              i6 = paramInt2;
              i5 = i7;
              i7 = i6;
            }
            localView.measure(View.MeasureSpec.makeMeasureSpec(i10, i4), View.MeasureSpec.makeMeasureSpec(i7, i5));
            if (i8 != 0)
            {
              i7 = paramInt2 - localView.getMeasuredHeight();
              i6 = paramInt1;
            }
            else
            {
              i6 = paramInt1;
              i7 = paramInt2;
              if (i9 != 0)
              {
                i6 = paramInt1 - localView.getMeasuredWidth();
                i7 = paramInt2;
              }
            }
          }
        }
      }
      i3++;
      paramInt1 = i6;
      paramInt2 = i7;
    }
    this.v = View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824);
    this.w = View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
    this.x = true;
    A();
    this.x = false;
    int i7 = getChildCount();
    for (paramInt2 = i1; paramInt2 < i7; paramInt2++)
    {
      localView = getChildAt(paramInt2);
      if (localView.getVisibility() != 8)
      {
        locale = (e)localView.getLayoutParams();
        if ((locale == null) || (!locale.a)) {
          localView.measure(View.MeasureSpec.makeMeasureSpec((int)(paramInt1 * locale.c), 1073741824), this.w);
        }
      }
    }
  }
  
  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    int i1 = getChildCount();
    int i2 = -1;
    int i3;
    if ((paramInt & 0x2) != 0)
    {
      i2 = i1;
      i1 = 0;
      i3 = 1;
    }
    else
    {
      i1--;
      i3 = -1;
    }
    while (i1 != i2)
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 0)
      {
        d locald = p(localView);
        if ((locald != null) && (locald.b == this.f) && (localView.requestFocus(paramInt, paramRect))) {
          return true;
        }
      }
      i1 += i3;
    }
    return false;
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    b localb = this.e;
    if (localb != null)
    {
      localb.l(paramParcelable.adapterState, paramParcelable.loader);
      I(paramParcelable.position, false, true);
    }
    else
    {
      this.g = paramParcelable.position;
      this.h = paramParcelable.adapterState;
      this.i = paramParcelable.loader;
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    localSavedState.position = this.f;
    b localb = this.e;
    if (localb != null) {
      localSavedState.adapterState = localb.m();
    }
    return localSavedState;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3)
    {
      paramInt2 = this.m;
      C(paramInt1, paramInt3, paramInt2, paramInt2);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.T) {
      return true;
    }
    int i1 = paramMotionEvent.getAction();
    boolean bool = false;
    if ((i1 == 0) && (paramMotionEvent.getEdgeFlags() != 0)) {
      return false;
    }
    Object localObject = this.e;
    if ((localObject != null) && (((b)localObject).d() != 0))
    {
      if (this.O == null) {
        this.O = VelocityTracker.obtain();
      }
      this.O.addMovement(paramMotionEvent);
      i1 = paramMotionEvent.getAction() & 0xFF;
      float f1;
      if (i1 != 0)
      {
        float f3;
        if (i1 != 1)
        {
          if (i1 != 2)
          {
            if (i1 != 3)
            {
              if (i1 != 5)
              {
                if (i1 == 6)
                {
                  v(paramMotionEvent);
                  this.J = paramMotionEvent.getX(paramMotionEvent.findPointerIndex(this.N));
                }
              }
              else
              {
                i1 = paramMotionEvent.getActionIndex();
                this.J = paramMotionEvent.getX(i1);
                this.N = paramMotionEvent.getPointerId(i1);
              }
            }
            else if (this.E)
            {
              G(this.f, true, 0, false);
              bool = F();
            }
          }
          else
          {
            if (!this.E)
            {
              i1 = paramMotionEvent.findPointerIndex(this.N);
              if (i1 == -1)
              {
                bool = F();
                break label601;
              }
              f1 = paramMotionEvent.getX(i1);
              float f2 = Math.abs(f1 - this.J);
              f3 = paramMotionEvent.getY(i1);
              float f4 = Math.abs(f3 - this.K);
              if ((f2 > this.I) && (f2 > f4))
              {
                this.E = true;
                E(true);
                f2 = this.L;
                if (f1 - f2 > 0.0F) {
                  f1 = f2 + this.I;
                } else {
                  f1 = f2 - this.I;
                }
                this.J = f1;
                this.K = f3;
                setScrollState(1);
                setScrollingCacheEnabled(true);
                localObject = getParent();
                if (localObject != null) {
                  ((ViewParent)localObject).requestDisallowInterceptTouchEvent(true);
                }
              }
            }
            if (this.E) {
              bool = false | z(paramMotionEvent.getX(paramMotionEvent.findPointerIndex(this.N)));
            }
          }
        }
        else if (this.E)
        {
          localObject = this.O;
          ((VelocityTracker)localObject).computeCurrentVelocity(1000, this.Q);
          int i2 = (int)((VelocityTracker)localObject).getXVelocity(this.N);
          this.z = true;
          int i3 = getClientWidth();
          i1 = getScrollX();
          localObject = q();
          f3 = this.m;
          f1 = i3;
          f3 /= f1;
          J(g(((d)localObject).b, (i1 / f1 - ((d)localObject).e) / (((d)localObject).d + f3), i2, (int)(paramMotionEvent.getX(paramMotionEvent.findPointerIndex(this.N)) - this.L)), true, true, i2);
          bool = F();
        }
      }
      else
      {
        this.j.abortAnimation();
        this.z = false;
        A();
        f1 = paramMotionEvent.getX();
        this.L = f1;
        this.J = f1;
        f1 = paramMotionEvent.getY();
        this.M = f1;
        this.K = f1;
        this.N = paramMotionEvent.getPointerId(0);
      }
      label601:
      if (bool) {
        a0.c0(this);
      }
      return true;
    }
    return false;
  }
  
  d p(View paramView)
  {
    for (int i1 = 0; i1 < this.b.size(); i1++)
    {
      d locald = (d)this.b.get(i1);
      if (this.e.i(paramView, locald.a)) {
        return locald;
      }
    }
    return null;
  }
  
  d r(int paramInt)
  {
    for (int i1 = 0; i1 < this.b.size(); i1++)
    {
      d locald = (d)this.b.get(i1);
      if (locald.b == paramInt) {
        return locald;
      }
    }
    return null;
  }
  
  public void removeView(View paramView)
  {
    if (this.x) {
      removeViewInLayout(paramView);
    } else {
      super.removeView(paramView);
    }
  }
  
  public void setAdapter(b paramb)
  {
    Object localObject = this.e;
    int i1 = 0;
    int i2;
    if (localObject != null)
    {
      ((b)localObject).p(null);
      this.e.r(this);
      for (i2 = 0; i2 < this.b.size(); i2++)
      {
        localObject = (d)this.b.get(i2);
        this.e.a(this, ((d)localObject).b, ((d)localObject).a);
      }
      this.e.c(this);
      this.b.clear();
      D();
      this.f = 0;
      scrollTo(0, 0);
    }
    b localb = this.e;
    this.e = paramb;
    this.a = 0;
    if (paramb != null)
    {
      if (this.l == null) {
        this.l = new i();
      }
      this.e.p(this.l);
      this.z = false;
      boolean bool = this.W;
      this.W = true;
      this.a = this.e.d();
      if (this.g >= 0)
      {
        this.e.l(this.h, this.i);
        I(this.g, false, true);
        this.g = -1;
        this.h = null;
        this.i = null;
      }
      else if (!bool)
      {
        A();
      }
      else
      {
        requestLayout();
      }
    }
    localObject = this.g0;
    if ((localObject != null) && (!((List)localObject).isEmpty()))
    {
      int i3 = this.g0.size();
      for (i2 = i1; i2 < i3; i2++) {
        ((f)this.g0.get(i2)).a((qb.a)this, localb, paramb);
      }
    }
  }
  
  public void setCurrentItem(int paramInt)
  {
    this.z = false;
    I(paramInt, this.W ^ true, false);
  }
  
  public void setOffscreenPageLimit(int paramInt)
  {
    int i1 = paramInt;
    if (paramInt < 2)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Requested offscreen page limit ");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(" too small; defaulting to ");
      localStringBuilder.append(2);
      Log.w("ViewPager", localStringBuilder.toString());
      i1 = 2;
    }
    if (i1 != this.D)
    {
      this.D = i1;
      A();
    }
  }
  
  @Deprecated
  public void setOnPageChangeListener(g paramg)
  {
    this.e0 = paramg;
  }
  
  public void setPageMargin(int paramInt)
  {
    int i1 = this.m;
    this.m = paramInt;
    int i2 = getWidth();
    C(i2, i2, paramInt, i1);
    requestLayout();
  }
  
  public void setPageMarginDrawable(int paramInt)
  {
    setPageMarginDrawable(androidx.core.content.a.e(getContext(), paramInt));
  }
  
  public void setPageMarginDrawable(Drawable paramDrawable)
  {
    this.n = paramDrawable;
    if (paramDrawable != null) {
      refreshDrawableState();
    }
    boolean bool;
    if (paramDrawable == null) {
      bool = true;
    } else {
      bool = false;
    }
    setWillNotDraw(bool);
    invalidate();
  }
  
  void setScrollState(int paramInt)
  {
    if (this.m0 == paramInt) {
      return;
    }
    this.m0 = paramInt;
    if (this.h0 != null)
    {
      boolean bool;
      if (paramInt != 0) {
        bool = true;
      } else {
        bool = false;
      }
      k(bool);
    }
    j(paramInt);
  }
  
  protected void u(int paramInt1, float paramFloat, int paramInt2)
  {
    int i1 = this.c0;
    int i2 = 0;
    View localView;
    if (i1 > 0)
    {
      int i3 = getScrollX();
      i1 = getPaddingLeft();
      int i4 = getPaddingRight();
      int i5 = getWidth();
      int i6 = getChildCount();
      for (int i7 = 0; i7 < i6; i7++)
      {
        localView = getChildAt(i7);
        e locale = (e)localView.getLayoutParams();
        if (locale.a)
        {
          int i8 = locale.b & 0x7;
          if (i8 != 1)
          {
            int i9;
            if (i8 != 3)
            {
              if (i8 != 5)
              {
                i9 = i1;
                i8 = i1;
                i1 = i9;
              }
              else
              {
                i8 = i5 - i4 - localView.getMeasuredWidth();
                i4 += localView.getMeasuredWidth();
              }
            }
            else
            {
              i9 = localView.getWidth() + i1;
              i8 = i1;
              i1 = i9;
            }
          }
          else
          {
            i8 = Math.max((i5 - localView.getMeasuredWidth()) / 2, i1);
          }
          i8 = i8 + i3 - localView.getLeft();
          if (i8 != 0) {
            localView.offsetLeftAndRight(i8);
          }
        }
      }
    }
    h(paramInt1, paramFloat, paramInt2);
    if (this.h0 != null)
    {
      paramInt2 = getScrollX();
      i1 = getChildCount();
      for (paramInt1 = i2; paramInt1 < i1; paramInt1++)
      {
        localView = getChildAt(paramInt1);
        if (!((e)localView.getLayoutParams()).a)
        {
          paramFloat = (localView.getLeft() - paramInt2) / getClientWidth();
          this.h0.a(localView, paramFloat);
        }
      }
    }
    this.b0 = true;
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    boolean bool;
    if ((!super.verifyDrawable(paramDrawable)) && (paramDrawable != this.n)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  boolean w()
  {
    int i1 = this.f;
    if (i1 > 0)
    {
      H(i1 - 1, true);
      return true;
    }
    return false;
  }
  
  boolean x()
  {
    b localb = this.e;
    if ((localb != null) && (this.f < localb.d() - 1))
    {
      H(this.f + 1, true);
      return true;
    }
    return false;
  }
  
  public static class SavedState
    extends AbsSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new a();
    Parcelable adapterState;
    ClassLoader loader;
    int position;
    
    SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      ClassLoader localClassLoader = paramClassLoader;
      if (paramClassLoader == null) {
        localClassLoader = getClass().getClassLoader();
      }
      this.position = paramParcel.readInt();
      this.adapterState = paramParcel.readParcelable(localClassLoader);
      this.loader = localClassLoader;
    }
    
    public SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("FragmentPager.SavedState{");
      localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
      localStringBuilder.append(" position=");
      localStringBuilder.append(this.position);
      localStringBuilder.append("}");
      return localStringBuilder.toString();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(this.position);
      paramParcel.writeParcelable(this.adapterState, paramInt);
    }
    
    class a
      implements Parcelable.ClassLoaderCreator<OriginalViewPager.SavedState>
    {
      public OriginalViewPager.SavedState a(Parcel paramParcel)
      {
        return new OriginalViewPager.SavedState(paramParcel, null);
      }
      
      public OriginalViewPager.SavedState b(Parcel paramParcel, ClassLoader paramClassLoader)
      {
        return new OriginalViewPager.SavedState(paramParcel, paramClassLoader);
      }
      
      public OriginalViewPager.SavedState[] c(int paramInt)
      {
        return new OriginalViewPager.SavedState[paramInt];
      }
    }
  }
  
  class a
    implements Comparator<OriginalViewPager.d>
  {
    public int a(OriginalViewPager.d paramd1, OriginalViewPager.d paramd2)
    {
      return paramd1.b - paramd2.b;
    }
  }
  
  class b
    implements Interpolator
  {
    public float getInterpolation(float paramFloat)
    {
      paramFloat -= 1.0F;
      return paramFloat * paramFloat * paramFloat * paramFloat * paramFloat + 1.0F;
    }
  }
  
  @Inherited
  @Retention(RetentionPolicy.RUNTIME)
  @Target({java.lang.annotation.ElementType.TYPE})
  public static @interface c {}
  
  static class d
  {
    Object a;
    int b;
    boolean c;
    float d;
    float e;
  }
  
  public static class e
    extends ViewGroup.LayoutParams
  {
    public boolean a;
    public int b;
    float c = 0.0F;
    boolean d;
    int e;
    int f;
    
    public e()
    {
      super(-1);
    }
    
    public e(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, OriginalViewPager.n0);
      this.b = paramContext.getInteger(0, 48);
      paramContext.recycle();
    }
  }
  
  public static abstract interface f
  {
    public abstract void a(qb.a parama, b paramb1, b paramb2);
  }
  
  public static abstract interface g
  {
    public abstract void onPageScrollStateChanged(int paramInt);
    
    public abstract void onPageScrolled(int paramInt1, float paramFloat, int paramInt2);
    
    public abstract void onPageSelected(int paramInt);
  }
  
  public static abstract interface h
  {
    public abstract void a(View paramView, float paramFloat);
  }
  
  private class i
    extends DataSetObserver
  {
    i() {}
    
    public void onChanged()
    {
      OriginalViewPager.this.f();
    }
    
    public void onInvalidated()
    {
      OriginalViewPager.this.f();
    }
  }
  
  static class j
    implements Comparator<View>
  {
    public int a(View paramView1, View paramView2)
    {
      paramView1 = (OriginalViewPager.e)paramView1.getLayoutParams();
      paramView2 = (OriginalViewPager.e)paramView2.getLayoutParams();
      boolean bool = paramView1.a;
      if (bool != paramView2.a)
      {
        int i;
        if (bool) {
          i = 1;
        } else {
          i = -1;
        }
        return i;
      }
      return paramView1.e - paramView2.e;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.viewpager.widget.OriginalViewPager
 * JD-Core Version:    0.7.0.1
 */