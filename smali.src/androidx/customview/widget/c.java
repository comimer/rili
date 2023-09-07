package androidx.customview.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.core.view.a0;
import java.util.Arrays;

public class c
{
  private static final Interpolator x = new a();
  private int a;
  private int b;
  private int c = -1;
  private float[] d;
  private float[] e;
  private float[] f;
  private float[] g;
  private int[] h;
  private int[] i;
  private int[] j;
  private int k;
  private VelocityTracker l;
  private float m;
  private float n;
  private int o;
  private final int p;
  private int q;
  private OverScroller r;
  private final c s;
  private View t;
  private boolean u;
  private final ViewGroup v;
  private final Runnable w = new b();
  
  private c(Context paramContext, ViewGroup paramViewGroup, c paramc)
  {
    if (paramViewGroup != null)
    {
      if (paramc != null)
      {
        this.v = paramViewGroup;
        this.s = paramc;
        paramViewGroup = ViewConfiguration.get(paramContext);
        int i1 = (int)(paramContext.getResources().getDisplayMetrics().density * 20.0F + 0.5F);
        this.p = i1;
        this.o = i1;
        this.b = paramViewGroup.getScaledTouchSlop();
        this.m = paramViewGroup.getScaledMaximumFlingVelocity();
        this.n = paramViewGroup.getScaledMinimumFlingVelocity();
        this.r = new OverScroller(paramContext, x);
        return;
      }
      throw new IllegalArgumentException("Callback may not be null");
    }
    throw new IllegalArgumentException("Parent view may not be null");
  }
  
  private void B()
  {
    this.l.computeCurrentVelocity(1000, this.m);
    n(e(this.l.getXVelocity(this.c), this.n, this.m), e(this.l.getYVelocity(this.c), this.n, this.m));
  }
  
  private void C(float paramFloat1, float paramFloat2, int paramInt)
  {
    boolean bool1 = c(paramFloat1, paramFloat2, paramInt, 1);
    boolean bool2 = bool1;
    if (c(paramFloat2, paramFloat1, paramInt, 4)) {
      i2 = bool1 | true;
    }
    bool1 = i2;
    int i1;
    if (c(paramFloat1, paramFloat2, paramInt, 2)) {
      i1 = i2 | 0x2;
    }
    int i2 = i1;
    if (c(paramFloat2, paramFloat1, paramInt, 8)) {
      i2 = i1 | 0x8;
    }
    if (i2 != 0)
    {
      int[] arrayOfInt = this.i;
      arrayOfInt[paramInt] |= i2;
      this.s.onEdgeDragStarted(i2, paramInt);
    }
  }
  
  private void D(float paramFloat1, float paramFloat2, int paramInt)
  {
    q(paramInt);
    float[] arrayOfFloat = this.d;
    this.f[paramInt] = paramFloat1;
    arrayOfFloat[paramInt] = paramFloat1;
    arrayOfFloat = this.e;
    this.g[paramInt] = paramFloat2;
    arrayOfFloat[paramInt] = paramFloat2;
    this.h[paramInt] = t((int)paramFloat1, (int)paramFloat2);
    this.k |= 1 << paramInt;
  }
  
  private void E(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getPointerCount();
    for (int i2 = 0; i2 < i1; i2++)
    {
      int i3 = paramMotionEvent.getPointerId(i2);
      if (y(i3))
      {
        float f1 = paramMotionEvent.getX(i2);
        float f2 = paramMotionEvent.getY(i2);
        this.f[i3] = f1;
        this.g[i3] = f2;
      }
    }
  }
  
  private boolean c(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    paramFloat1 = Math.abs(paramFloat1);
    paramFloat2 = Math.abs(paramFloat2);
    int i1 = this.h[paramInt1];
    boolean bool1 = false;
    boolean bool2 = bool1;
    if ((i1 & paramInt2) == paramInt2)
    {
      bool2 = bool1;
      if ((this.q & paramInt2) != 0)
      {
        bool2 = bool1;
        if ((this.j[paramInt1] & paramInt2) != paramInt2)
        {
          bool2 = bool1;
          if ((this.i[paramInt1] & paramInt2) != paramInt2)
          {
            i1 = this.b;
            if ((paramFloat1 <= i1) && (paramFloat2 <= i1))
            {
              bool2 = bool1;
            }
            else
            {
              if ((paramFloat1 < paramFloat2 * 0.5F) && (this.s.onEdgeLock(paramInt2)))
              {
                int[] arrayOfInt = this.j;
                arrayOfInt[paramInt1] |= paramInt2;
                return false;
              }
              bool2 = bool1;
              if ((this.i[paramInt1] & paramInt2) == 0)
              {
                bool2 = bool1;
                if (paramFloat1 > this.b) {
                  bool2 = true;
                }
              }
            }
          }
        }
      }
    }
    return bool2;
  }
  
  private boolean d(View paramView, float paramFloat1, float paramFloat2)
  {
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    if (paramView == null) {
      return false;
    }
    int i1;
    if (this.s.getViewHorizontalDragRange(paramView) > 0) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    int i2;
    if (this.s.getViewVerticalDragRange(paramView) > 0) {
      i2 = 1;
    } else {
      i2 = 0;
    }
    if ((i1 != 0) && (i2 != 0))
    {
      i1 = this.b;
      if (paramFloat1 * paramFloat1 + paramFloat2 * paramFloat2 > i1 * i1) {
        bool3 = true;
      }
      return bool3;
    }
    if (i1 != 0)
    {
      bool3 = bool1;
      if (Math.abs(paramFloat1) > this.b) {
        bool3 = true;
      }
      return bool3;
    }
    bool3 = bool2;
    if (i2 != 0)
    {
      bool3 = bool2;
      if (Math.abs(paramFloat2) > this.b) {
        bool3 = true;
      }
    }
    return bool3;
  }
  
  private float e(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f1 = Math.abs(paramFloat1);
    if (f1 < paramFloat2) {
      return 0.0F;
    }
    if (f1 > paramFloat3)
    {
      if (paramFloat1 <= 0.0F) {
        paramFloat3 = -paramFloat3;
      }
      return paramFloat3;
    }
    return paramFloat1;
  }
  
  private int f(int paramInt1, int paramInt2, int paramInt3)
  {
    int i1 = Math.abs(paramInt1);
    if (i1 < paramInt2) {
      return 0;
    }
    if (i1 > paramInt3)
    {
      if (paramInt1 <= 0) {
        paramInt3 = -paramInt3;
      }
      return paramInt3;
    }
    return paramInt1;
  }
  
  private void g()
  {
    float[] arrayOfFloat = this.d;
    if (arrayOfFloat == null) {
      return;
    }
    Arrays.fill(arrayOfFloat, 0.0F);
    Arrays.fill(this.e, 0.0F);
    Arrays.fill(this.f, 0.0F);
    Arrays.fill(this.g, 0.0F);
    Arrays.fill(this.h, 0);
    Arrays.fill(this.i, 0);
    Arrays.fill(this.j, 0);
    this.k = 0;
  }
  
  private void h(int paramInt)
  {
    if ((this.d != null) && (x(paramInt)))
    {
      this.d[paramInt] = 0.0F;
      this.e[paramInt] = 0.0F;
      this.f[paramInt] = 0.0F;
      this.g[paramInt] = 0.0F;
      this.h[paramInt] = 0;
      this.i[paramInt] = 0;
      this.j[paramInt] = 0;
      this.k = (1 << paramInt & this.k);
    }
  }
  
  private int i(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 == 0) {
      return 0;
    }
    int i1 = this.v.getWidth();
    int i2 = i1 / 2;
    float f1 = Math.min(1.0F, Math.abs(paramInt1) / i1);
    float f2 = i2;
    f1 = o(f1);
    paramInt2 = Math.abs(paramInt2);
    if (paramInt2 > 0) {
      paramInt1 = Math.round(Math.abs((f2 + f1 * f2) / paramInt2) * 1000.0F) * 4;
    } else {
      paramInt1 = (int)((Math.abs(paramInt1) / paramInt3 + 1.0F) * 256.0F);
    }
    return Math.min(paramInt1, 600);
  }
  
  private int j(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = f(paramInt3, (int)this.n, (int)this.m);
    paramInt3 = f(paramInt4, (int)this.n, (int)this.m);
    int i2 = Math.abs(paramInt1);
    int i3 = Math.abs(paramInt2);
    int i4 = Math.abs(i1);
    int i5 = Math.abs(paramInt3);
    paramInt4 = i4 + i5;
    int i6 = i2 + i3;
    float f2;
    if (i1 != 0)
    {
      f1 = i4;
      f2 = paramInt4;
    }
    else
    {
      f1 = i2;
      f2 = i6;
    }
    float f3 = f1 / f2;
    if (paramInt3 != 0)
    {
      f2 = i5;
      f1 = paramInt4;
    }
    else
    {
      f2 = i3;
      f1 = i6;
    }
    float f1 = f2 / f1;
    paramInt1 = i(paramInt1, i1, this.s.getViewHorizontalDragRange(paramView));
    paramInt2 = i(paramInt2, paramInt3, this.s.getViewVerticalDragRange(paramView));
    return (int)(paramInt1 * f3 + paramInt2 * f1);
  }
  
  public static c l(ViewGroup paramViewGroup, float paramFloat, c paramc)
  {
    paramViewGroup = m(paramViewGroup, paramc);
    paramViewGroup.b = ((int)(paramViewGroup.b * (1.0F / paramFloat)));
    return paramViewGroup;
  }
  
  public static c m(ViewGroup paramViewGroup, c paramc)
  {
    return new c(paramViewGroup.getContext(), paramViewGroup, paramc);
  }
  
  private void n(float paramFloat1, float paramFloat2)
  {
    this.u = true;
    this.s.onViewReleased(this.t, paramFloat1, paramFloat2);
    this.u = false;
    if (this.a == 1) {
      F(0);
    }
  }
  
  private float o(float paramFloat)
  {
    return (float)Math.sin((paramFloat - 0.5F) * 0.4712389F);
  }
  
  private void p(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = this.t.getLeft();
    int i2 = this.t.getTop();
    int i3 = paramInt1;
    if (paramInt3 != 0)
    {
      i3 = this.s.clampViewPositionHorizontal(this.t, paramInt1, paramInt3);
      a0.V(this.t, i3 - i1);
    }
    paramInt1 = paramInt2;
    if (paramInt4 != 0)
    {
      paramInt1 = this.s.clampViewPositionVertical(this.t, paramInt2, paramInt4);
      a0.W(this.t, paramInt1 - i2);
    }
    if ((paramInt3 != 0) || (paramInt4 != 0)) {
      this.s.onViewPositionChanged(this.t, i3, paramInt1, i3 - i1, paramInt1 - i2);
    }
  }
  
  private void q(int paramInt)
  {
    Object localObject = this.d;
    if ((localObject == null) || (localObject.length <= paramInt))
    {
      paramInt++;
      float[] arrayOfFloat1 = new float[paramInt];
      float[] arrayOfFloat2 = new float[paramInt];
      float[] arrayOfFloat3 = new float[paramInt];
      float[] arrayOfFloat4 = new float[paramInt];
      int[] arrayOfInt1 = new int[paramInt];
      int[] arrayOfInt2 = new int[paramInt];
      int[] arrayOfInt3 = new int[paramInt];
      if (localObject != null)
      {
        System.arraycopy(localObject, 0, arrayOfFloat1, 0, localObject.length);
        localObject = this.e;
        System.arraycopy(localObject, 0, arrayOfFloat2, 0, localObject.length);
        localObject = this.f;
        System.arraycopy(localObject, 0, arrayOfFloat3, 0, localObject.length);
        localObject = this.g;
        System.arraycopy(localObject, 0, arrayOfFloat4, 0, localObject.length);
        localObject = this.h;
        System.arraycopy(localObject, 0, arrayOfInt1, 0, localObject.length);
        localObject = this.i;
        System.arraycopy(localObject, 0, arrayOfInt2, 0, localObject.length);
        localObject = this.j;
        System.arraycopy(localObject, 0, arrayOfInt3, 0, localObject.length);
      }
      this.d = arrayOfFloat1;
      this.e = arrayOfFloat2;
      this.f = arrayOfFloat3;
      this.g = arrayOfFloat4;
      this.h = arrayOfInt1;
      this.i = arrayOfInt2;
      this.j = arrayOfInt3;
    }
  }
  
  private boolean s(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = this.t.getLeft();
    int i2 = this.t.getTop();
    paramInt1 -= i1;
    paramInt2 -= i2;
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      this.r.abortAnimation();
      F(0);
      return false;
    }
    paramInt3 = j(this.t, paramInt1, paramInt2, paramInt3, paramInt4);
    this.r.startScroll(i1, i2, paramInt1, paramInt2, paramInt3);
    F(2);
    return true;
  }
  
  private int t(int paramInt1, int paramInt2)
  {
    if (paramInt1 < this.v.getLeft() + this.o) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    int i2 = i1;
    if (paramInt2 < this.v.getTop() + this.o) {
      i2 = i1 | 0x4;
    }
    int i1 = i2;
    if (paramInt1 > this.v.getRight() - this.o) {
      i1 = i2 | 0x2;
    }
    paramInt1 = i1;
    if (paramInt2 > this.v.getBottom() - this.o) {
      paramInt1 = i1 | 0x8;
    }
    return paramInt1;
  }
  
  private boolean y(int paramInt)
  {
    if (!x(paramInt))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Ignoring pointerId=");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(" because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
      Log.e("ViewDragHelper", localStringBuilder.toString());
      return false;
    }
    return true;
  }
  
  public void A(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getActionMasked();
    int i2 = paramMotionEvent.getActionIndex();
    if (i1 == 0) {
      a();
    }
    if (this.l == null) {
      this.l = VelocityTracker.obtain();
    }
    this.l.addMovement(paramMotionEvent);
    int i3 = 0;
    int i4 = 0;
    float f1;
    float f2;
    if (i1 != 0)
    {
      if (i1 != 1)
      {
        Object localObject;
        if (i1 != 2)
        {
          if (i1 != 3)
          {
            if (i1 != 5)
            {
              if (i1 == 6)
              {
                i3 = paramMotionEvent.getPointerId(i2);
                if ((this.a == 1) && (i3 == this.c))
                {
                  i2 = paramMotionEvent.getPointerCount();
                  while (i4 < i2)
                  {
                    i1 = paramMotionEvent.getPointerId(i4);
                    if (i1 != this.c)
                    {
                      f1 = paramMotionEvent.getX(i4);
                      f2 = paramMotionEvent.getY(i4);
                      View localView = r((int)f1, (int)f2);
                      localObject = this.t;
                      if ((localView == localObject) && (J((View)localObject, i1)))
                      {
                        i4 = this.c;
                        break label201;
                      }
                    }
                    i4++;
                  }
                  i4 = -1;
                  label201:
                  if (i4 == -1) {
                    B();
                  }
                }
                h(i3);
              }
            }
            else
            {
              i4 = paramMotionEvent.getPointerId(i2);
              f1 = paramMotionEvent.getX(i2);
              f2 = paramMotionEvent.getY(i2);
              D(f1, f2, i4);
              if (this.a == 0)
              {
                J(r((int)f1, (int)f2), i4);
                i2 = this.h[i4];
                i3 = this.q;
                if ((i2 & i3) != 0) {
                  this.s.onEdgeTouched(i2 & i3, i4);
                }
              }
              else if (w((int)f1, (int)f2))
              {
                J(this.t, i4);
              }
            }
          }
          else
          {
            if (this.a == 1) {
              n(0.0F, 0.0F);
            }
            a();
          }
        }
        else if (this.a == 1)
        {
          if (y(this.c))
          {
            i4 = paramMotionEvent.findPointerIndex(this.c);
            f2 = paramMotionEvent.getX(i4);
            f1 = paramMotionEvent.getY(i4);
            localObject = this.f;
            i3 = this.c;
            i4 = (int)(f2 - localObject[i3]);
            i3 = (int)(f1 - this.g[i3]);
            p(this.t.getLeft() + i4, this.t.getTop() + i3, i4, i3);
            E(paramMotionEvent);
          }
        }
        else
        {
          i2 = paramMotionEvent.getPointerCount();
          for (i4 = i3; i4 < i2; i4++)
          {
            i3 = paramMotionEvent.getPointerId(i4);
            if (y(i3))
            {
              float f3 = paramMotionEvent.getX(i4);
              float f4 = paramMotionEvent.getY(i4);
              f1 = f3 - this.d[i3];
              f2 = f4 - this.e[i3];
              C(f1, f2, i3);
              if (this.a == 1) {
                break;
              }
              localObject = r((int)f3, (int)f4);
              if ((d((View)localObject, f1, f2)) && (J((View)localObject, i3))) {
                break;
              }
            }
          }
          E(paramMotionEvent);
        }
      }
      else
      {
        if (this.a == 1) {
          B();
        }
        a();
      }
    }
    else
    {
      f1 = paramMotionEvent.getX();
      f2 = paramMotionEvent.getY();
      i2 = paramMotionEvent.getPointerId(0);
      paramMotionEvent = r((int)f1, (int)f2);
      D(f1, f2, i2);
      J(paramMotionEvent, i2);
      i3 = this.h[i2];
      i4 = this.q;
      if ((i3 & i4) != 0) {
        this.s.onEdgeTouched(i3 & i4, i2);
      }
    }
  }
  
  void F(int paramInt)
  {
    this.v.removeCallbacks(this.w);
    if (this.a != paramInt)
    {
      this.a = paramInt;
      this.s.onViewDragStateChanged(paramInt);
      if (this.a == 0) {
        this.t = null;
      }
    }
  }
  
  public boolean G(int paramInt1, int paramInt2)
  {
    if (this.u) {
      return s(paramInt1, paramInt2, (int)this.l.getXVelocity(this.c), (int)this.l.getYVelocity(this.c));
    }
    throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
  }
  
  public boolean H(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getActionMasked();
    int i2 = paramMotionEvent.getActionIndex();
    if (i1 == 0) {
      a();
    }
    if (this.l == null) {
      this.l = VelocityTracker.obtain();
    }
    this.l.addMovement(paramMotionEvent);
    float f1;
    float f2;
    int i3;
    if (i1 != 0)
    {
      if (i1 != 1) {
        if (i1 != 2)
        {
          if (i1 == 3) {
            break label493;
          }
          if (i1 != 5) {
            if (i1 != 6) {
              break label595;
            }
          }
        }
      }
      for (;;)
      {
        h(paramMotionEvent.getPointerId(i2));
        continue;
        i1 = paramMotionEvent.getPointerId(i2);
        f1 = paramMotionEvent.getX(i2);
        f2 = paramMotionEvent.getY(i2);
        D(f1, f2, i1);
        i2 = this.a;
        if (i2 == 0)
        {
          i2 = this.h[i1];
          i3 = this.q;
          if ((i2 & i3) != 0) {
            this.s.onEdgeTouched(i2 & i3, i1);
          }
        }
        else if (i2 == 2)
        {
          paramMotionEvent = r((int)f1, (int)f2);
          if (paramMotionEvent == this.t)
          {
            J(paramMotionEvent, i1);
            continue;
            if ((this.d != null) && (this.e != null))
            {
              i3 = paramMotionEvent.getPointerCount();
              for (i1 = 0; i1 < i3; i1++)
              {
                int i4 = paramMotionEvent.getPointerId(i1);
                if (y(i4))
                {
                  f2 = paramMotionEvent.getX(i1);
                  float f3 = paramMotionEvent.getY(i1);
                  float f4 = f2 - this.d[i4];
                  f1 = f3 - this.e[i4];
                  View localView = r((int)f2, (int)f3);
                  if ((localView != null) && (d(localView, f4, f1))) {
                    i2 = 1;
                  } else {
                    i2 = 0;
                  }
                  if (i2 != 0)
                  {
                    int i5 = localView.getLeft();
                    int i6 = (int)f4;
                    int i7 = this.s.clampViewPositionHorizontal(localView, i5 + i6, i6);
                    i6 = localView.getTop();
                    int i8 = (int)f1;
                    i8 = this.s.clampViewPositionVertical(localView, i6 + i8, i8);
                    int i9 = this.s.getViewHorizontalDragRange(localView);
                    int i10 = this.s.getViewVerticalDragRange(localView);
                    if (((i9 == 0) || ((i9 > 0) && (i7 == i5))) && ((i10 == 0) || ((i10 > 0) && (i8 == i6)))) {
                      break;
                    }
                  }
                  else
                  {
                    C(f4, f1, i4);
                    if ((this.a == 1) || ((i2 != 0) && (J(localView, i4)))) {
                      break;
                    }
                  }
                }
              }
              E(paramMotionEvent);
              continue;
              label493:
              a();
            }
          }
        }
      }
    }
    else
    {
      f2 = paramMotionEvent.getX();
      f1 = paramMotionEvent.getY();
      i3 = paramMotionEvent.getPointerId(0);
      D(f2, f1, i3);
      paramMotionEvent = r((int)f2, (int)f1);
      if ((paramMotionEvent == this.t) && (this.a == 2)) {
        J(paramMotionEvent, i3);
      }
      i2 = this.h[i3];
      i1 = this.q;
      if ((i2 & i1) != 0) {
        this.s.onEdgeTouched(i2 & i1, i3);
      }
    }
    label595:
    boolean bool = false;
    if (this.a == 1) {
      bool = true;
    }
    return bool;
  }
  
  public boolean I(View paramView, int paramInt1, int paramInt2)
  {
    this.t = paramView;
    this.c = -1;
    boolean bool = s(paramInt1, paramInt2, 0, 0);
    if ((!bool) && (this.a == 0) && (this.t != null)) {
      this.t = null;
    }
    return bool;
  }
  
  boolean J(View paramView, int paramInt)
  {
    if ((paramView == this.t) && (this.c == paramInt)) {
      return true;
    }
    if ((paramView != null) && (this.s.tryCaptureView(paramView, paramInt)))
    {
      this.c = paramInt;
      b(paramView, paramInt);
      return true;
    }
    return false;
  }
  
  public void a()
  {
    this.c = -1;
    g();
    VelocityTracker localVelocityTracker = this.l;
    if (localVelocityTracker != null)
    {
      localVelocityTracker.recycle();
      this.l = null;
    }
  }
  
  public void b(View paramView, int paramInt)
  {
    if (paramView.getParent() == this.v)
    {
      this.t = paramView;
      this.c = paramInt;
      this.s.onViewCaptured(paramView, paramInt);
      F(1);
      return;
    }
    paramView = new StringBuilder();
    paramView.append("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (");
    paramView.append(this.v);
    paramView.append(")");
    throw new IllegalArgumentException(paramView.toString());
  }
  
  public boolean k(boolean paramBoolean)
  {
    int i1 = this.a;
    boolean bool1 = false;
    if (i1 == 2)
    {
      boolean bool2 = this.r.computeScrollOffset();
      int i2 = this.r.getCurrX();
      i1 = this.r.getCurrY();
      int i3 = i2 - this.t.getLeft();
      int i4 = i1 - this.t.getTop();
      if (i3 != 0) {
        a0.V(this.t, i3);
      }
      if (i4 != 0) {
        a0.W(this.t, i4);
      }
      if ((i3 != 0) || (i4 != 0)) {
        this.s.onViewPositionChanged(this.t, i2, i1, i3, i4);
      }
      boolean bool3 = bool2;
      if (bool2)
      {
        bool3 = bool2;
        if (i2 == this.r.getFinalX())
        {
          bool3 = bool2;
          if (i1 == this.r.getFinalY())
          {
            this.r.abortAnimation();
            bool3 = false;
          }
        }
      }
      if (!bool3) {
        if (paramBoolean) {
          this.v.post(this.w);
        } else {
          F(0);
        }
      }
    }
    paramBoolean = bool1;
    if (this.a == 2) {
      paramBoolean = true;
    }
    return paramBoolean;
  }
  
  public View r(int paramInt1, int paramInt2)
  {
    for (int i1 = this.v.getChildCount() - 1; i1 >= 0; i1--)
    {
      View localView = this.v.getChildAt(this.s.getOrderedChildIndex(i1));
      if ((paramInt1 >= localView.getLeft()) && (paramInt1 < localView.getRight()) && (paramInt2 >= localView.getTop()) && (paramInt2 < localView.getBottom())) {
        return localView;
      }
    }
    return null;
  }
  
  public int u()
  {
    return this.b;
  }
  
  public int v()
  {
    return this.a;
  }
  
  public boolean w(int paramInt1, int paramInt2)
  {
    return z(this.t, paramInt1, paramInt2);
  }
  
  public boolean x(int paramInt)
  {
    int i1 = this.k;
    boolean bool = true;
    if ((1 << paramInt & i1) == 0) {
      bool = false;
    }
    return bool;
  }
  
  public boolean z(View paramView, int paramInt1, int paramInt2)
  {
    boolean bool1 = false;
    if (paramView == null) {
      return false;
    }
    boolean bool2 = bool1;
    if (paramInt1 >= paramView.getLeft())
    {
      bool2 = bool1;
      if (paramInt1 < paramView.getRight())
      {
        bool2 = bool1;
        if (paramInt2 >= paramView.getTop())
        {
          bool2 = bool1;
          if (paramInt2 < paramView.getBottom()) {
            bool2 = true;
          }
        }
      }
    }
    return bool2;
  }
  
  class a
    implements Interpolator
  {
    public float getInterpolation(float paramFloat)
    {
      paramFloat -= 1.0F;
      return paramFloat * paramFloat * paramFloat * paramFloat * paramFloat + 1.0F;
    }
  }
  
  class b
    implements Runnable
  {
    b() {}
    
    public void run()
    {
      c.this.F(0);
    }
  }
  
  public static abstract class c
  {
    public int clampViewPositionHorizontal(View paramView, int paramInt1, int paramInt2)
    {
      return 0;
    }
    
    public int clampViewPositionVertical(View paramView, int paramInt1, int paramInt2)
    {
      return 0;
    }
    
    public int getOrderedChildIndex(int paramInt)
    {
      return paramInt;
    }
    
    public int getViewHorizontalDragRange(View paramView)
    {
      return 0;
    }
    
    public int getViewVerticalDragRange(View paramView)
    {
      return 0;
    }
    
    public void onEdgeDragStarted(int paramInt1, int paramInt2) {}
    
    public boolean onEdgeLock(int paramInt)
    {
      return false;
    }
    
    public void onEdgeTouched(int paramInt1, int paramInt2) {}
    
    public void onViewCaptured(View paramView, int paramInt) {}
    
    public void onViewDragStateChanged(int paramInt) {}
    
    public void onViewPositionChanged(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
    
    public void onViewReleased(View paramView, float paramFloat1, float paramFloat2) {}
    
    public abstract boolean tryCaptureView(View paramView, int paramInt);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.customview.widget.c
 * JD-Core Version:    0.7.0.1
 */