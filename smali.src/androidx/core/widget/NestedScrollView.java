package androidx.core.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.AbsSavedState;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityRecord;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.OverScroller;
import android.widget.ScrollView;
import androidx.core.view.a0;
import androidx.core.view.accessibility.g;
import androidx.core.view.accessibility.g.a;
import androidx.core.view.accessibility.i;
import androidx.core.view.n;
import androidx.core.view.o;
import androidx.core.view.q;
import androidx.core.view.s;
import androidx.core.view.t;
import java.util.ArrayList;
import java.util.List;

public class NestedScrollView
  extends FrameLayout
  implements s, o
{
  private static final a G = new a();
  private static final int[] H = { 16843130 };
  private final q D;
  private float E;
  private c F;
  private long a;
  private final Rect b = new Rect();
  private OverScroller c;
  public EdgeEffect d;
  public EdgeEffect e;
  private int f;
  private boolean g = true;
  private boolean h = false;
  private View i = null;
  private boolean j = false;
  private VelocityTracker k;
  private boolean l;
  private boolean m = true;
  private int n;
  private int o;
  private int p;
  private int q = -1;
  private final int[] r = new int[2];
  private final int[] v = new int[2];
  private int w;
  private int x;
  private SavedState y;
  private final t z;
  
  public NestedScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, t.a.c);
  }
  
  public NestedScrollView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.d = e.a(paramContext, paramAttributeSet);
    this.e = e.a(paramContext, paramAttributeSet);
    s();
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, H, paramInt, 0);
    setFillViewport(paramContext.getBoolean(0, false));
    paramContext.recycle();
    this.z = new t(this);
    this.D = new q(this);
    setNestedScrollingEnabled(true);
    a0.l0(this, G);
  }
  
  private void B()
  {
    VelocityTracker localVelocityTracker = this.k;
    if (localVelocityTracker != null)
    {
      localVelocityTracker.recycle();
      this.k = null;
    }
  }
  
  private int C(int paramInt, float paramFloat)
  {
    float f1 = paramFloat / getWidth();
    float f2 = paramInt / getHeight();
    float f3 = e.b(this.d);
    paramFloat = 0.0F;
    if (f3 != 0.0F)
    {
      f1 = -e.d(this.d, -f2, f1);
      paramFloat = f1;
      if (e.b(this.d) == 0.0F)
      {
        this.d.onRelease();
        paramFloat = f1;
      }
    }
    for (;;)
    {
      break;
      if (e.b(this.e) == 0.0F) {
        break;
      }
      f1 = e.d(this.e, f2, 1.0F - f1);
      paramFloat = f1;
      if (e.b(this.e) == 0.0F)
      {
        this.e.onRelease();
        paramFloat = f1;
      }
    }
    paramInt = Math.round(paramFloat * getHeight());
    if (paramInt != 0) {
      invalidate();
    }
    return paramInt;
  }
  
  private void D(boolean paramBoolean)
  {
    if (paramBoolean) {
      L(2, 1);
    } else {
      N(1);
    }
    this.x = getScrollY();
    a0.c0(this);
  }
  
  private boolean E(int paramInt1, int paramInt2, int paramInt3)
  {
    int i1 = getHeight();
    int i2 = getScrollY();
    i1 += i2;
    boolean bool1 = false;
    boolean bool2;
    if (paramInt1 == 33) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    View localView = m(bool2, paramInt2, paramInt3);
    Object localObject = localView;
    if (localView == null) {
      localObject = this;
    }
    if ((paramInt2 >= i2) && (paramInt3 <= i1))
    {
      bool2 = bool1;
    }
    else
    {
      if (bool2) {
        paramInt2 -= i2;
      } else {
        paramInt2 = paramInt3 - i1;
      }
      i(paramInt2);
      bool2 = true;
    }
    if (localObject != findFocus()) {
      ((View)localObject).requestFocus(paramInt1);
    }
    return bool2;
  }
  
  private void F(View paramView)
  {
    paramView.getDrawingRect(this.b);
    offsetDescendantRectToMyCoords(paramView, this.b);
    int i1 = f(this.b);
    if (i1 != 0) {
      scrollBy(0, i1);
    }
  }
  
  private boolean G(Rect paramRect, boolean paramBoolean)
  {
    int i1 = f(paramRect);
    boolean bool;
    if (i1 != 0) {
      bool = true;
    } else {
      bool = false;
    }
    if (bool) {
      if (paramBoolean) {
        scrollBy(0, i1);
      } else {
        H(0, i1);
      }
    }
    return bool;
  }
  
  private void I(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    if (getChildCount() == 0) {
      return;
    }
    if (AnimationUtils.currentAnimationTimeMillis() - this.a > 250L)
    {
      View localView = getChildAt(0);
      FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView.getLayoutParams();
      int i1 = localView.getHeight();
      int i2 = localLayoutParams.topMargin;
      int i3 = localLayoutParams.bottomMargin;
      int i4 = getHeight();
      int i5 = getPaddingTop();
      int i6 = getPaddingBottom();
      paramInt1 = getScrollY();
      paramInt2 = Math.max(0, Math.min(paramInt2 + paramInt1, Math.max(0, i1 + i2 + i3 - (i4 - i5 - i6))));
      this.c.startScroll(getScrollX(), paramInt1, 0, paramInt2 - paramInt1, paramInt3);
      D(paramBoolean);
    }
    else
    {
      if (!this.c.isFinished()) {
        a();
      }
      scrollBy(paramInt1, paramInt2);
    }
    this.a = AnimationUtils.currentAnimationTimeMillis();
  }
  
  private boolean M(MotionEvent paramMotionEvent)
  {
    float f1 = e.b(this.d);
    boolean bool1 = true;
    boolean bool2;
    if (f1 != 0.0F)
    {
      e.d(this.d, 0.0F, paramMotionEvent.getX() / getWidth());
      bool2 = true;
    }
    else
    {
      bool2 = false;
    }
    if (e.b(this.e) != 0.0F)
    {
      e.d(this.e, 0.0F, 1.0F - paramMotionEvent.getX() / getWidth());
      bool2 = bool1;
    }
    return bool2;
  }
  
  private void a()
  {
    this.c.abortAnimation();
    N(1);
  }
  
  private boolean c()
  {
    int i1 = getOverScrollMode();
    boolean bool1 = true;
    boolean bool2 = bool1;
    if (i1 != 0) {
      if ((i1 == 1) && (getScrollRange() > 0)) {
        bool2 = bool1;
      } else {
        bool2 = false;
      }
    }
    return bool2;
  }
  
  private boolean d()
  {
    int i1 = getChildCount();
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (i1 > 0)
    {
      View localView = getChildAt(0);
      FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView.getLayoutParams();
      bool2 = bool1;
      if (localView.getHeight() + localLayoutParams.topMargin + localLayoutParams.bottomMargin > getHeight() - getPaddingTop() - getPaddingBottom()) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  private static int e(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt2 < paramInt3) && (paramInt1 >= 0))
    {
      if (paramInt2 + paramInt1 > paramInt3) {
        return paramInt3 - paramInt2;
      }
      return paramInt1;
    }
    return 0;
  }
  
  private float getVerticalScrollFactorCompat()
  {
    if (this.E == 0.0F)
    {
      TypedValue localTypedValue = new TypedValue();
      Context localContext = getContext();
      if (localContext.getTheme().resolveAttribute(16842829, localTypedValue, true)) {
        this.E = localTypedValue.getDimension(localContext.getResources().getDisplayMetrics());
      } else {
        throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
      }
    }
    return this.E;
  }
  
  private void i(int paramInt)
  {
    if (paramInt != 0) {
      if (this.m) {
        H(0, paramInt);
      } else {
        scrollBy(0, paramInt);
      }
    }
  }
  
  private boolean j(int paramInt)
  {
    if (e.b(this.d) != 0.0F)
    {
      this.d.onAbsorb(paramInt);
    }
    else
    {
      if (e.b(this.e) == 0.0F) {
        break label49;
      }
      this.e.onAbsorb(-paramInt);
    }
    boolean bool = true;
    return bool;
    label49:
    bool = false;
    return bool;
  }
  
  private void k()
  {
    this.j = false;
    B();
    N(0);
    this.d.onRelease();
    this.e.onRelease();
  }
  
  private View m(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    ArrayList localArrayList = getFocusables(2);
    int i1 = localArrayList.size();
    Object localObject1 = null;
    int i2 = 0;
    int i6;
    for (int i3 = i2; i2 < i1; i3 = i6)
    {
      View localView = (View)localArrayList.get(i2);
      int i4 = localView.getTop();
      int i5 = localView.getBottom();
      Object localObject2 = localObject1;
      i6 = i3;
      if (paramInt1 < i5)
      {
        localObject2 = localObject1;
        i6 = i3;
        if (i4 < paramInt2)
        {
          int i7;
          if ((paramInt1 < i4) && (i5 < paramInt2)) {
            i7 = 1;
          } else {
            i7 = 0;
          }
          if (localObject1 == null)
          {
            localObject2 = localView;
            i6 = i7;
          }
          else
          {
            if (((paramBoolean) && (i4 < localObject1.getTop())) || ((!paramBoolean) && (i5 > localObject1.getBottom()))) {
              i4 = 1;
            } else {
              i4 = 0;
            }
            if (i3 != 0)
            {
              localObject2 = localObject1;
              i6 = i3;
              if (i7 == 0) {
                break label233;
              }
              localObject2 = localObject1;
              i6 = i3;
              if (i4 == 0) {
                break label233;
              }
            }
            else
            {
              if (i7 != 0)
              {
                localObject2 = localView;
                i6 = 1;
                break label233;
              }
              localObject2 = localObject1;
              i6 = i3;
              if (i4 == 0) {
                break label233;
              }
            }
            localObject2 = localView;
            i6 = i3;
          }
        }
      }
      label233:
      i2++;
      localObject1 = localObject2;
    }
    return localObject1;
  }
  
  private boolean q(int paramInt1, int paramInt2)
  {
    int i1 = getChildCount();
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (i1 > 0)
    {
      i1 = getScrollY();
      View localView = getChildAt(0);
      bool2 = bool1;
      if (paramInt2 >= localView.getTop() - i1)
      {
        bool2 = bool1;
        if (paramInt2 < localView.getBottom() - i1)
        {
          bool2 = bool1;
          if (paramInt1 >= localView.getLeft())
          {
            bool2 = bool1;
            if (paramInt1 < localView.getRight()) {
              bool2 = true;
            }
          }
        }
      }
    }
    return bool2;
  }
  
  private void r()
  {
    VelocityTracker localVelocityTracker = this.k;
    if (localVelocityTracker == null) {
      this.k = VelocityTracker.obtain();
    } else {
      localVelocityTracker.clear();
    }
  }
  
  private void s()
  {
    this.c = new OverScroller(getContext());
    setFocusable(true);
    setDescendantFocusability(262144);
    setWillNotDraw(false);
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(getContext());
    this.n = localViewConfiguration.getScaledTouchSlop();
    this.o = localViewConfiguration.getScaledMinimumFlingVelocity();
    this.p = localViewConfiguration.getScaledMaximumFlingVelocity();
  }
  
  private void t()
  {
    if (this.k == null) {
      this.k = VelocityTracker.obtain();
    }
  }
  
  private boolean u(View paramView)
  {
    return w(paramView, 0, getHeight()) ^ true;
  }
  
  private static boolean v(View paramView1, View paramView2)
  {
    boolean bool = true;
    if (paramView1 == paramView2) {
      return true;
    }
    paramView1 = paramView1.getParent();
    if ((!(paramView1 instanceof ViewGroup)) || (!v((View)paramView1, paramView2))) {
      bool = false;
    }
    return bool;
  }
  
  private boolean w(View paramView, int paramInt1, int paramInt2)
  {
    paramView.getDrawingRect(this.b);
    offsetDescendantRectToMyCoords(paramView, this.b);
    boolean bool;
    if ((this.b.bottom + paramInt1 >= getScrollY()) && (this.b.top - paramInt1 <= getScrollY() + paramInt2)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void x(int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    int i1 = getScrollY();
    scrollBy(0, paramInt1);
    i1 = getScrollY() - i1;
    if (paramArrayOfInt != null) {
      paramArrayOfInt[1] += i1;
    }
    this.D.e(0, i1, 0, paramInt1 - i1, null, paramInt2, paramArrayOfInt);
  }
  
  private void y(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getActionIndex();
    if (paramMotionEvent.getPointerId(i1) == this.q)
    {
      if (i1 == 0) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      this.f = ((int)paramMotionEvent.getY(i1));
      this.q = paramMotionEvent.getPointerId(i1);
      paramMotionEvent = this.k;
      if (paramMotionEvent != null) {
        paramMotionEvent.clear();
      }
    }
  }
  
  public boolean A(int paramInt)
  {
    if (paramInt == 130) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    int i2 = getHeight();
    if (i1 != 0)
    {
      this.b.top = (getScrollY() + i2);
      i1 = getChildCount();
      if (i1 > 0)
      {
        localObject = getChildAt(i1 - 1);
        FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)((View)localObject).getLayoutParams();
        i1 = ((View)localObject).getBottom() + localLayoutParams.bottomMargin + getPaddingBottom();
        localObject = this.b;
        if (((Rect)localObject).top + i2 > i1) {
          ((Rect)localObject).top = (i1 - i2);
        }
      }
    }
    else
    {
      this.b.top = (getScrollY() - i2);
      localObject = this.b;
      if (((Rect)localObject).top < 0) {
        ((Rect)localObject).top = 0;
      }
    }
    Object localObject = this.b;
    int i1 = ((Rect)localObject).top;
    i2 += i1;
    ((Rect)localObject).bottom = i2;
    return E(paramInt, i1, i2);
  }
  
  public final void H(int paramInt1, int paramInt2)
  {
    I(paramInt1, paramInt2, 250, false);
  }
  
  void J(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    I(paramInt1 - getScrollX(), paramInt2 - getScrollY(), paramInt3, paramBoolean);
  }
  
  void K(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    J(paramInt1, paramInt2, 250, paramBoolean);
  }
  
  public boolean L(int paramInt1, int paramInt2)
  {
    return this.D.q(paramInt1, paramInt2);
  }
  
  public void N(int paramInt)
  {
    this.D.s(paramInt);
  }
  
  public void addView(View paramView)
  {
    if (getChildCount() <= 0)
    {
      super.addView(paramView);
      return;
    }
    throw new IllegalStateException("ScrollView can host only one direct child");
  }
  
  public void addView(View paramView, int paramInt)
  {
    if (getChildCount() <= 0)
    {
      super.addView(paramView, paramInt);
      return;
    }
    throw new IllegalStateException("ScrollView can host only one direct child");
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (getChildCount() <= 0)
    {
      super.addView(paramView, paramInt, paramLayoutParams);
      return;
    }
    throw new IllegalStateException("ScrollView can host only one direct child");
  }
  
  public void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (getChildCount() <= 0)
    {
      super.addView(paramView, paramLayoutParams);
      return;
    }
    throw new IllegalStateException("ScrollView can host only one direct child");
  }
  
  public boolean b(int paramInt)
  {
    Object localObject1 = findFocus();
    Object localObject2 = localObject1;
    if (localObject1 == this) {
      localObject2 = null;
    }
    localObject1 = FocusFinder.getInstance().findNextFocus(this, localObject2, paramInt);
    int i1 = getMaxScrollAmount();
    if ((localObject1 != null) && (w((View)localObject1, i1, getHeight())))
    {
      ((View)localObject1).getDrawingRect(this.b);
      offsetDescendantRectToMyCoords((View)localObject1, this.b);
      i(f(this.b));
      ((View)localObject1).requestFocus(paramInt);
    }
    else
    {
      int i2;
      if ((paramInt == 33) && (getScrollY() < i1))
      {
        i2 = getScrollY();
      }
      else
      {
        i2 = i1;
        if (paramInt == 130)
        {
          i2 = i1;
          if (getChildCount() > 0)
          {
            View localView = getChildAt(0);
            localObject1 = (FrameLayout.LayoutParams)localView.getLayoutParams();
            i2 = Math.min(localView.getBottom() + ((FrameLayout.LayoutParams)localObject1).bottomMargin - (getScrollY() + getHeight() - getPaddingBottom()), i1);
          }
        }
      }
      if (i2 == 0) {
        return false;
      }
      if (paramInt != 130) {
        i2 = -i2;
      }
      i(i2);
    }
    if ((localObject2 != null) && (localObject2.isFocused()) && (u(localObject2)))
    {
      paramInt = getDescendantFocusability();
      setDescendantFocusability(131072);
      requestFocus();
      setDescendantFocusability(paramInt);
    }
    return true;
  }
  
  public int computeHorizontalScrollExtent()
  {
    return super.computeHorizontalScrollExtent();
  }
  
  public int computeHorizontalScrollOffset()
  {
    return super.computeHorizontalScrollOffset();
  }
  
  public int computeHorizontalScrollRange()
  {
    return super.computeHorizontalScrollRange();
  }
  
  public void computeScroll()
  {
    if (this.c.isFinished()) {
      return;
    }
    this.c.computeScrollOffset();
    int i1 = this.c.getCurrY();
    int i2 = i1 - this.x;
    this.x = i1;
    int[] arrayOfInt = this.v;
    int i3 = 0;
    arrayOfInt[1] = 0;
    g(0, i2, arrayOfInt, null, 1);
    i1 = i2 - this.v[1];
    int i4 = getScrollRange();
    i2 = i1;
    if (i1 != 0)
    {
      i2 = getScrollY();
      z(0, i1, getScrollX(), i2, 0, i4, 0, 0, false);
      i2 = getScrollY() - i2;
      i1 -= i2;
      arrayOfInt = this.v;
      arrayOfInt[1] = 0;
      h(0, i2, 0, i1, this.r, 1, arrayOfInt);
      i2 = i1 - this.v[1];
    }
    if (i2 != 0)
    {
      int i5 = getOverScrollMode();
      if (i5 != 0)
      {
        i1 = i3;
        if (i5 == 1)
        {
          i1 = i3;
          if (i4 <= 0) {}
        }
      }
      else
      {
        i1 = 1;
      }
      if (i1 != 0) {
        if (i2 < 0)
        {
          if (this.d.isFinished()) {
            this.d.onAbsorb((int)this.c.getCurrVelocity());
          }
        }
        else if (this.e.isFinished()) {
          this.e.onAbsorb((int)this.c.getCurrVelocity());
        }
      }
      a();
    }
    if (!this.c.isFinished()) {
      a0.c0(this);
    } else {
      N(1);
    }
  }
  
  public int computeVerticalScrollExtent()
  {
    return super.computeVerticalScrollExtent();
  }
  
  public int computeVerticalScrollOffset()
  {
    return Math.max(0, super.computeVerticalScrollOffset());
  }
  
  public int computeVerticalScrollRange()
  {
    int i1 = getChildCount();
    int i2 = getHeight() - getPaddingBottom() - getPaddingTop();
    if (i1 == 0) {
      return i2;
    }
    View localView = getChildAt(0);
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView.getLayoutParams();
    i1 = localView.getBottom() + localLayoutParams.bottomMargin;
    int i3 = getScrollY();
    int i4 = Math.max(0, i1 - i2);
    if (i3 < 0)
    {
      i2 = i1 - i3;
    }
    else
    {
      i2 = i1;
      if (i3 > i4) {
        i2 = i1 + (i3 - i4);
      }
    }
    return i2;
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    boolean bool;
    if ((!super.dispatchKeyEvent(paramKeyEvent)) && (!l(paramKeyEvent))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public boolean dispatchNestedFling(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    return this.D.a(paramFloat1, paramFloat2, paramBoolean);
  }
  
  public boolean dispatchNestedPreFling(float paramFloat1, float paramFloat2)
  {
    return this.D.b(paramFloat1, paramFloat2);
  }
  
  public boolean dispatchNestedPreScroll(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    return g(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2, 0);
  }
  
  public boolean dispatchNestedScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    return this.D.f(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt);
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int i1 = getScrollY();
    boolean bool = this.d.isFinished();
    int i2 = 0;
    int i3;
    int i4;
    int i5;
    int i6;
    int i7;
    int i8;
    int i9;
    if (!bool)
    {
      i3 = paramCanvas.save();
      i4 = getWidth();
      i5 = getHeight();
      i6 = Math.min(0, i1);
      if (b.a(this))
      {
        i4 -= getPaddingLeft() + getPaddingRight();
        i7 = getPaddingLeft() + 0;
      }
      else
      {
        i7 = 0;
      }
      i8 = i5;
      i9 = i6;
      if (b.a(this))
      {
        i8 = i5 - (getPaddingTop() + getPaddingBottom());
        i9 = i6 + getPaddingTop();
      }
      paramCanvas.translate(i7, i9);
      this.d.setSize(i4, i8);
      if (this.d.draw(paramCanvas)) {
        a0.c0(this);
      }
      paramCanvas.restoreToCount(i3);
    }
    if (!this.e.isFinished())
    {
      i3 = paramCanvas.save();
      i9 = getWidth();
      i5 = getHeight();
      i6 = Math.max(getScrollRange(), i1) + i5;
      i4 = i2;
      i7 = i9;
      if (b.a(this))
      {
        i7 = i9 - (getPaddingLeft() + getPaddingRight());
        i4 = 0 + getPaddingLeft();
      }
      i8 = i6;
      i9 = i5;
      if (b.a(this))
      {
        i9 = i5 - (getPaddingTop() + getPaddingBottom());
        i8 = i6 - getPaddingBottom();
      }
      paramCanvas.translate(i4 - i7, i8);
      paramCanvas.rotate(180.0F, i7, 0.0F);
      this.e.setSize(i7, i9);
      if (this.e.draw(paramCanvas)) {
        a0.c0(this);
      }
      paramCanvas.restoreToCount(i3);
    }
  }
  
  protected int f(Rect paramRect)
  {
    int i1 = getChildCount();
    int i2 = 0;
    if (i1 == 0) {
      return 0;
    }
    int i3 = getHeight();
    i1 = getScrollY();
    int i4 = i1 + i3;
    int i5 = getVerticalFadingEdgeLength();
    int i6 = i1;
    if (paramRect.top > 0) {
      i6 = i1 + i5;
    }
    View localView = getChildAt(0);
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView.getLayoutParams();
    if (paramRect.bottom < localView.getHeight() + localLayoutParams.topMargin + localLayoutParams.bottomMargin) {
      i5 = i4 - i5;
    } else {
      i5 = i4;
    }
    int i7 = paramRect.bottom;
    if ((i7 > i5) && (paramRect.top > i6))
    {
      if (paramRect.height() > i3) {
        i1 = paramRect.top - i6;
      } else {
        i1 = paramRect.bottom - i5;
      }
      i1 = Math.min(i1 + 0, localView.getBottom() + localLayoutParams.bottomMargin - i4);
    }
    else
    {
      i1 = i2;
      if (paramRect.top < i6)
      {
        i1 = i2;
        if (i7 < i5)
        {
          if (paramRect.height() > i3) {
            i1 = 0 - (i5 - paramRect.bottom);
          } else {
            i1 = 0 - (i6 - paramRect.top);
          }
          i1 = Math.max(i1, -getScrollY());
        }
      }
    }
    return i1;
  }
  
  public boolean g(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt3)
  {
    return this.D.d(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2, paramInt3);
  }
  
  protected float getBottomFadingEdgeStrength()
  {
    if (getChildCount() == 0) {
      return 0.0F;
    }
    View localView = getChildAt(0);
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView.getLayoutParams();
    int i1 = getVerticalFadingEdgeLength();
    int i2 = getHeight();
    int i3 = getPaddingBottom();
    i2 = localView.getBottom() + localLayoutParams.bottomMargin - getScrollY() - (i2 - i3);
    if (i2 < i1) {
      return i2 / i1;
    }
    return 1.0F;
  }
  
  public int getMaxScrollAmount()
  {
    return (int)(getHeight() * 0.5F);
  }
  
  public int getNestedScrollAxes()
  {
    return this.z.a();
  }
  
  int getScrollRange()
  {
    int i1 = getChildCount();
    int i2 = 0;
    if (i1 > 0)
    {
      View localView = getChildAt(0);
      FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView.getLayoutParams();
      i2 = Math.max(0, localView.getHeight() + localLayoutParams.topMargin + localLayoutParams.bottomMargin - (getHeight() - getPaddingTop() - getPaddingBottom()));
    }
    return i2;
  }
  
  protected float getTopFadingEdgeStrength()
  {
    if (getChildCount() == 0) {
      return 0.0F;
    }
    int i1 = getVerticalFadingEdgeLength();
    int i2 = getScrollY();
    if (i2 < i1) {
      return i2 / i1;
    }
    return 1.0F;
  }
  
  public void h(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt1, int paramInt5, int[] paramArrayOfInt2)
  {
    this.D.e(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt1, paramInt5, paramArrayOfInt2);
  }
  
  public boolean hasNestedScrollingParent()
  {
    return p(0);
  }
  
  public boolean isNestedScrollingEnabled()
  {
    return this.D.m();
  }
  
  public boolean l(KeyEvent paramKeyEvent)
  {
    this.b.setEmpty();
    boolean bool1 = d();
    boolean bool2 = false;
    boolean bool3 = false;
    int i1 = 130;
    if (!bool1)
    {
      bool1 = bool3;
      if (isFocused())
      {
        bool1 = bool3;
        if (paramKeyEvent.getKeyCode() != 4)
        {
          View localView = findFocus();
          paramKeyEvent = localView;
          if (localView == this) {
            paramKeyEvent = null;
          }
          paramKeyEvent = FocusFinder.getInstance().findNextFocus(this, paramKeyEvent, 130);
          bool1 = bool3;
          if (paramKeyEvent != null)
          {
            bool1 = bool3;
            if (paramKeyEvent != this)
            {
              bool1 = bool3;
              if (paramKeyEvent.requestFocus(130)) {
                bool1 = true;
              }
            }
          }
        }
      }
      return bool1;
    }
    bool1 = bool2;
    if (paramKeyEvent.getAction() == 0)
    {
      int i2 = paramKeyEvent.getKeyCode();
      if (i2 != 19)
      {
        if (i2 != 20)
        {
          if (i2 != 62)
          {
            bool1 = bool2;
          }
          else
          {
            if (paramKeyEvent.isShiftPressed()) {
              i1 = 33;
            }
            A(i1);
            bool1 = bool2;
          }
        }
        else if (!paramKeyEvent.isAltPressed()) {
          bool1 = b(130);
        } else {
          bool1 = o(130);
        }
      }
      else if (!paramKeyEvent.isAltPressed()) {
        bool1 = b(33);
      } else {
        bool1 = o(33);
      }
    }
    return bool1;
  }
  
  protected void measureChild(View paramView, int paramInt1, int paramInt2)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    paramView.measure(ViewGroup.getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight(), localLayoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
  }
  
  protected void measureChildWithMargins(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    paramView.measure(ViewGroup.getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + localMarginLayoutParams.leftMargin + localMarginLayoutParams.rightMargin + paramInt2, localMarginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(localMarginLayoutParams.topMargin + localMarginLayoutParams.bottomMargin, 0));
  }
  
  public void n(int paramInt)
  {
    if (getChildCount() > 0)
    {
      this.c.fling(getScrollX(), getScrollY(), 0, paramInt, 0, 0, -2147483648, 2147483647, 0, 0);
      D(true);
    }
  }
  
  public boolean o(int paramInt)
  {
    int i1;
    if (paramInt == 130) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    int i2 = getHeight();
    Object localObject = this.b;
    ((Rect)localObject).top = 0;
    ((Rect)localObject).bottom = i2;
    if (i1 != 0)
    {
      i1 = getChildCount();
      if (i1 > 0)
      {
        View localView = getChildAt(i1 - 1);
        localObject = (FrameLayout.LayoutParams)localView.getLayoutParams();
        this.b.bottom = (localView.getBottom() + ((FrameLayout.LayoutParams)localObject).bottomMargin + getPaddingBottom());
        localObject = this.b;
        ((Rect)localObject).top = (((Rect)localObject).bottom - i2);
      }
    }
    localObject = this.b;
    return E(paramInt, ((Rect)localObject).top, ((Rect)localObject).bottom);
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.h = false;
  }
  
  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getAction();
    int i2 = 0;
    boolean bool = false;
    if ((i1 == 8) && (!this.j))
    {
      float f1;
      if (n.a(paramMotionEvent, 2)) {
        f1 = paramMotionEvent.getAxisValue(9);
      } else if (n.a(paramMotionEvent, 4194304)) {
        f1 = paramMotionEvent.getAxisValue(26);
      } else {
        f1 = 0.0F;
      }
      if (f1 != 0.0F)
      {
        i1 = (int)(f1 * getVerticalScrollFactorCompat());
        int i3 = getScrollRange();
        int i4 = getScrollY();
        int i5 = i4 - i1;
        if (i5 < 0)
        {
          if ((c()) && (!n.a(paramMotionEvent, 8194))) {
            i1 = 1;
          } else {
            i1 = 0;
          }
          if (i1 != 0)
          {
            e.d(this.d, -i5 / getHeight(), 0.5F);
            this.d.onRelease();
            invalidate();
            bool = true;
            i1 = i2;
          }
          else
          {
            bool = false;
            i1 = i2;
          }
        }
        else if (i5 > i3)
        {
          if ((c()) && (!n.a(paramMotionEvent, 8194))) {
            i1 = 1;
          } else {
            i1 = 0;
          }
          if (i1 != 0)
          {
            e.d(this.e, (i5 - i3) / getHeight(), 0.5F);
            this.e.onRelease();
            invalidate();
            bool = true;
          }
          i1 = i3;
        }
        else
        {
          bool = false;
          i1 = i5;
        }
        if (i1 != i4)
        {
          super.scrollTo(getScrollX(), i1);
          return true;
        }
        return bool;
      }
    }
    return false;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getAction();
    boolean bool1 = true;
    boolean bool2 = true;
    if ((i1 == 2) && (this.j)) {
      return true;
    }
    i1 &= 0xFF;
    if (i1 != 0)
    {
      if (i1 != 1) {
        if (i1 != 2)
        {
          if (i1 != 3)
          {
            if (i1 != 6) {
              break label407;
            }
            y(paramMotionEvent);
            break label407;
          }
        }
        else
        {
          i1 = this.q;
          if (i1 == -1) {
            break label407;
          }
          int i2 = paramMotionEvent.findPointerIndex(i1);
          if (i2 == -1)
          {
            paramMotionEvent = new StringBuilder();
            paramMotionEvent.append("Invalid pointerId=");
            paramMotionEvent.append(i1);
            paramMotionEvent.append(" in onInterceptTouchEvent");
            Log.e("NestedScrollView", paramMotionEvent.toString());
            break label407;
          }
          i1 = (int)paramMotionEvent.getY(i2);
          if ((Math.abs(i1 - this.f) <= this.n) || ((0x2 & getNestedScrollAxes()) != 0)) {
            break label407;
          }
          this.j = true;
          this.f = i1;
          t();
          this.k.addMovement(paramMotionEvent);
          this.w = 0;
          paramMotionEvent = getParent();
          if (paramMotionEvent == null) {
            break label407;
          }
          paramMotionEvent.requestDisallowInterceptTouchEvent(true);
          break label407;
        }
      }
      this.j = false;
      this.q = -1;
      B();
      if (this.c.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
        a0.c0(this);
      }
      N(0);
    }
    else
    {
      i1 = (int)paramMotionEvent.getY();
      boolean bool3;
      if (!q((int)paramMotionEvent.getX(), i1))
      {
        bool3 = bool2;
        if (!M(paramMotionEvent)) {
          if (!this.c.isFinished()) {
            bool3 = bool2;
          } else {
            bool3 = false;
          }
        }
        this.j = bool3;
        B();
      }
      else
      {
        this.f = i1;
        this.q = paramMotionEvent.getPointerId(0);
        r();
        this.k.addMovement(paramMotionEvent);
        this.c.computeScrollOffset();
        bool3 = bool1;
        if (!M(paramMotionEvent)) {
          if (!this.c.isFinished()) {
            bool3 = bool1;
          } else {
            bool3 = false;
          }
        }
        this.j = bool3;
        L(2, 0);
      }
    }
    label407:
    return this.j;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    paramInt1 = 0;
    this.g = false;
    Object localObject = this.i;
    if ((localObject != null) && (v((View)localObject, this))) {
      F(this.i);
    }
    this.i = null;
    if (!this.h)
    {
      if (this.y != null)
      {
        scrollTo(getScrollX(), this.y.scrollPosition);
        this.y = null;
      }
      if (getChildCount() > 0)
      {
        View localView = getChildAt(0);
        localObject = (FrameLayout.LayoutParams)localView.getLayoutParams();
        paramInt1 = localView.getMeasuredHeight() + ((FrameLayout.LayoutParams)localObject).topMargin + ((FrameLayout.LayoutParams)localObject).bottomMargin;
      }
      int i1 = getPaddingTop();
      int i2 = getPaddingBottom();
      paramInt3 = getScrollY();
      paramInt1 = e(paramInt3, paramInt4 - paramInt2 - i1 - i2, paramInt1);
      if (paramInt1 != paramInt3) {
        scrollTo(getScrollX(), paramInt1);
      }
    }
    scrollTo(getScrollX(), getScrollY());
    this.h = true;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (!this.l) {
      return;
    }
    if (View.MeasureSpec.getMode(paramInt2) == 0) {
      return;
    }
    if (getChildCount() > 0)
    {
      View localView = getChildAt(0);
      FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView.getLayoutParams();
      paramInt2 = localView.getMeasuredHeight();
      int i1 = getMeasuredHeight() - getPaddingTop() - getPaddingBottom() - localLayoutParams.topMargin - localLayoutParams.bottomMargin;
      if (paramInt2 < i1) {
        localView.measure(ViewGroup.getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + localLayoutParams.leftMargin + localLayoutParams.rightMargin, localLayoutParams.width), View.MeasureSpec.makeMeasureSpec(i1, 1073741824));
      }
    }
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      dispatchNestedFling(0.0F, paramFloat2, true);
      n((int)paramFloat2);
      return true;
    }
    return false;
  }
  
  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2)
  {
    return dispatchNestedPreFling(paramFloat1, paramFloat2);
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    onNestedPreScroll(paramView, paramInt1, paramInt2, paramArrayOfInt, 0);
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    g(paramInt1, paramInt2, paramArrayOfInt, null, paramInt3);
  }
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    x(paramInt4, 0, null);
  }
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    x(paramInt4, paramInt5, null);
  }
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int[] paramArrayOfInt)
  {
    x(paramInt4, paramInt5, paramArrayOfInt);
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt)
  {
    onNestedScrollAccepted(paramView1, paramView2, paramInt, 0);
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt1, int paramInt2)
  {
    this.z.c(paramView1, paramView2, paramInt1, paramInt2);
    L(2, paramInt2);
  }
  
  protected void onOverScrolled(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    super.scrollTo(paramInt1, paramInt2);
  }
  
  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    int i1;
    if (paramInt == 2)
    {
      i1 = 130;
    }
    else
    {
      i1 = paramInt;
      if (paramInt == 1) {
        i1 = 33;
      }
    }
    View localView;
    if (paramRect == null) {
      localView = FocusFinder.getInstance().findNextFocus(this, null, i1);
    } else {
      localView = FocusFinder.getInstance().findNextFocusFromRect(this, paramRect, i1);
    }
    if (localView == null) {
      return false;
    }
    if (u(localView)) {
      return false;
    }
    return localView.requestFocus(i1, paramRect);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    this.y = paramParcelable;
    requestLayout();
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    localSavedState.scrollPosition = getScrollY();
    return localSavedState;
  }
  
  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    c localc = this.F;
    if (localc != null) {
      localc.a(this, paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    View localView = findFocus();
    if ((localView != null) && (this != localView) && (w(localView, 0, paramInt4)))
    {
      localView.getDrawingRect(this.b);
      offsetDescendantRectToMyCoords(localView, this.b);
      i(f(this.b));
    }
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    return onStartNestedScroll(paramView1, paramView2, paramInt, 0);
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt1, int paramInt2)
  {
    boolean bool;
    if ((paramInt1 & 0x2) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void onStopNestedScroll(View paramView)
  {
    onStopNestedScroll(paramView, 0);
  }
  
  public void onStopNestedScroll(View paramView, int paramInt)
  {
    this.z.d(paramView, paramInt);
    N(paramInt);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    t();
    int i1 = paramMotionEvent.getActionMasked();
    int i2 = 0;
    if (i1 == 0) {
      this.w = 0;
    }
    MotionEvent localMotionEvent = MotionEvent.obtain(paramMotionEvent);
    localMotionEvent.offsetLocation(0.0F, this.w);
    Object localObject;
    if (i1 != 0)
    {
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
                y(paramMotionEvent);
                this.f = ((int)paramMotionEvent.getY(paramMotionEvent.findPointerIndex(this.q)));
              }
            }
            else
            {
              i1 = paramMotionEvent.getActionIndex();
              this.f = ((int)paramMotionEvent.getY(i1));
              this.q = paramMotionEvent.getPointerId(i1);
            }
          }
          else
          {
            if ((this.j) && (getChildCount() > 0) && (this.c.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange()))) {
              a0.c0(this);
            }
            this.q = -1;
            k();
          }
        }
        else
        {
          int i3 = paramMotionEvent.findPointerIndex(this.q);
          if (i3 == -1)
          {
            paramMotionEvent = new StringBuilder();
            paramMotionEvent.append("Invalid pointerId=");
            paramMotionEvent.append(this.q);
            paramMotionEvent.append(" in onTouchEvent");
            Log.e("NestedScrollView", paramMotionEvent.toString());
          }
          else
          {
            int i4 = (int)paramMotionEvent.getY(i3);
            i1 = this.f - i4;
            int i5 = i1 - C(i1, paramMotionEvent.getX(i3));
            i1 = i5;
            if (!this.j)
            {
              i1 = i5;
              if (Math.abs(i5) > this.n)
              {
                localObject = getParent();
                if (localObject != null) {
                  ((ViewParent)localObject).requestDisallowInterceptTouchEvent(true);
                }
                this.j = true;
                if (i5 > 0) {
                  i1 = i5 - this.n;
                } else {
                  i1 = i5 + this.n;
                }
              }
            }
            if (this.j)
            {
              i5 = i1;
              if (g(0, i1, this.v, this.r, 0))
              {
                i5 = i1 - this.v[1];
                this.w += this.r[1];
              }
              this.f = (i4 - this.r[1]);
              int i6 = getScrollY();
              int i7 = getScrollRange();
              i1 = getOverScrollMode();
              if ((i1 != 0) && ((i1 != 1) || (i7 <= 0))) {
                i4 = 0;
              } else {
                i4 = 1;
              }
              if ((z(0, i5, 0, getScrollY(), 0, i7, 0, 0, true)) && (!p(0))) {
                i1 = 1;
              } else {
                i1 = 0;
              }
              int i8 = getScrollY() - i6;
              localObject = this.v;
              localObject[1] = 0;
              h(0, i8, 0, i5 - i8, this.r, 0, (int[])localObject);
              i8 = this.f;
              int i9 = this.r[1];
              this.f = (i8 - i9);
              this.w += i9;
              if (i4 != 0)
              {
                i5 -= this.v[1];
                i4 = i6 + i5;
                if (i4 < 0)
                {
                  e.d(this.d, -i5 / getHeight(), paramMotionEvent.getX(i3) / getWidth());
                  if (!this.e.isFinished()) {
                    this.e.onRelease();
                  }
                }
                else if (i4 > i7)
                {
                  e.d(this.e, i5 / getHeight(), 1.0F - paramMotionEvent.getX(i3) / getWidth());
                  if (!this.d.isFinished()) {
                    this.d.onRelease();
                  }
                }
                if ((!this.d.isFinished()) || (!this.e.isFinished()))
                {
                  a0.c0(this);
                  i1 = i2;
                }
              }
              if (i1 != 0) {
                this.k.clear();
              }
            }
          }
        }
      }
      else
      {
        paramMotionEvent = this.k;
        paramMotionEvent.computeCurrentVelocity(1000, this.p);
        i1 = (int)paramMotionEvent.getYVelocity(this.q);
        if (Math.abs(i1) >= this.o)
        {
          if (!j(i1))
          {
            i1 = -i1;
            float f1 = i1;
            if (!dispatchNestedPreFling(0.0F, f1))
            {
              dispatchNestedFling(0.0F, f1, true);
              n(i1);
            }
          }
        }
        else if (this.c.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
          a0.c0(this);
        }
        this.q = -1;
        k();
      }
    }
    else
    {
      if (getChildCount() == 0) {
        return false;
      }
      if (this.j)
      {
        localObject = getParent();
        if (localObject != null) {
          ((ViewParent)localObject).requestDisallowInterceptTouchEvent(true);
        }
      }
      if (!this.c.isFinished()) {
        a();
      }
      this.f = ((int)paramMotionEvent.getY());
      this.q = paramMotionEvent.getPointerId(0);
      L(2, 0);
    }
    paramMotionEvent = this.k;
    if (paramMotionEvent != null) {
      paramMotionEvent.addMovement(localMotionEvent);
    }
    localMotionEvent.recycle();
    return true;
  }
  
  public boolean p(int paramInt)
  {
    return this.D.l(paramInt);
  }
  
  public void requestChildFocus(View paramView1, View paramView2)
  {
    if (!this.g) {
      F(paramView2);
    } else {
      this.i = paramView2;
    }
    super.requestChildFocus(paramView1, paramView2);
  }
  
  public boolean requestChildRectangleOnScreen(View paramView, Rect paramRect, boolean paramBoolean)
  {
    paramRect.offset(paramView.getLeft() - paramView.getScrollX(), paramView.getTop() - paramView.getScrollY());
    return G(paramRect, paramBoolean);
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    if (paramBoolean) {
      B();
    }
    super.requestDisallowInterceptTouchEvent(paramBoolean);
  }
  
  public void requestLayout()
  {
    this.g = true;
    super.requestLayout();
  }
  
  public void scrollTo(int paramInt1, int paramInt2)
  {
    if (getChildCount() > 0)
    {
      View localView = getChildAt(0);
      FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView.getLayoutParams();
      int i1 = getWidth();
      int i2 = getPaddingLeft();
      int i3 = getPaddingRight();
      int i4 = localView.getWidth();
      int i5 = localLayoutParams.leftMargin;
      int i6 = localLayoutParams.rightMargin;
      int i7 = getHeight();
      int i8 = getPaddingTop();
      int i9 = getPaddingBottom();
      int i10 = localView.getHeight();
      int i11 = localLayoutParams.topMargin;
      int i12 = localLayoutParams.bottomMargin;
      paramInt1 = e(paramInt1, i1 - i2 - i3, i4 + i5 + i6);
      paramInt2 = e(paramInt2, i7 - i8 - i9, i10 + i11 + i12);
      if ((paramInt1 != getScrollX()) || (paramInt2 != getScrollY())) {
        super.scrollTo(paramInt1, paramInt2);
      }
    }
  }
  
  public void setFillViewport(boolean paramBoolean)
  {
    if (paramBoolean != this.l)
    {
      this.l = paramBoolean;
      requestLayout();
    }
  }
  
  public void setNestedScrollingEnabled(boolean paramBoolean)
  {
    this.D.n(paramBoolean);
  }
  
  public void setOnScrollChangeListener(c paramc)
  {
    this.F = paramc;
  }
  
  public void setSmoothScrollingEnabled(boolean paramBoolean)
  {
    this.m = paramBoolean;
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return true;
  }
  
  public boolean startNestedScroll(int paramInt)
  {
    return L(paramInt, 0);
  }
  
  public void stopNestedScroll()
  {
    N(0);
  }
  
  boolean z(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, boolean paramBoolean)
  {
    int i1 = getOverScrollMode();
    int i2 = computeHorizontalScrollRange();
    int i3 = computeHorizontalScrollExtent();
    boolean bool1 = false;
    if (i2 > i3) {
      i3 = 1;
    } else {
      i3 = 0;
    }
    if (computeVerticalScrollRange() > computeVerticalScrollExtent()) {
      i2 = 1;
    } else {
      i2 = 0;
    }
    if ((i1 != 0) && ((i1 != 1) || (i3 == 0))) {
      i3 = 0;
    } else {
      i3 = 1;
    }
    if ((i1 != 0) && ((i1 != 1) || (i2 == 0))) {
      i2 = 0;
    } else {
      i2 = 1;
    }
    paramInt3 += paramInt1;
    if (i3 == 0) {
      paramInt1 = 0;
    } else {
      paramInt1 = paramInt7;
    }
    paramInt4 += paramInt2;
    if (i2 == 0) {
      paramInt2 = 0;
    } else {
      paramInt2 = paramInt8;
    }
    paramInt7 = -paramInt1;
    paramInt1 += paramInt5;
    paramInt5 = -paramInt2;
    paramInt2 += paramInt6;
    if (paramInt3 > paramInt1)
    {
      paramBoolean = true;
    }
    else if (paramInt3 < paramInt7)
    {
      paramBoolean = true;
      paramInt1 = paramInt7;
    }
    else
    {
      paramBoolean = false;
      paramInt1 = paramInt3;
    }
    boolean bool2;
    if (paramInt4 > paramInt2)
    {
      bool2 = true;
    }
    else if (paramInt4 < paramInt5)
    {
      bool2 = true;
      paramInt2 = paramInt5;
    }
    else
    {
      bool2 = false;
      paramInt2 = paramInt4;
    }
    if ((bool2) && (!p(1))) {
      this.c.springBack(paramInt1, paramInt2, 0, 0, 0, getScrollRange());
    }
    onOverScrolled(paramInt1, paramInt2, paramBoolean, bool2);
    if (!paramBoolean)
    {
      paramBoolean = bool1;
      if (!bool2) {}
    }
    else
    {
      paramBoolean = true;
    }
    return paramBoolean;
  }
  
  static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new a();
    public int scrollPosition;
    
    SavedState(Parcel paramParcel)
    {
      super();
      this.scrollPosition = paramParcel.readInt();
    }
    
    SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("HorizontalScrollView.SavedState{");
      localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
      localStringBuilder.append(" scrollPosition=");
      localStringBuilder.append(this.scrollPosition);
      localStringBuilder.append("}");
      return localStringBuilder.toString();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(this.scrollPosition);
    }
    
    class a
      implements Parcelable.Creator<NestedScrollView.SavedState>
    {
      public NestedScrollView.SavedState a(Parcel paramParcel)
      {
        return new NestedScrollView.SavedState(paramParcel);
      }
      
      public NestedScrollView.SavedState[] b(int paramInt)
      {
        return new NestedScrollView.SavedState[paramInt];
      }
    }
  }
  
  static class a
    extends androidx.core.view.a
  {
    public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
      paramView = (NestedScrollView)paramView;
      paramAccessibilityEvent.setClassName(ScrollView.class.getName());
      boolean bool;
      if (paramView.getScrollRange() > 0) {
        bool = true;
      } else {
        bool = false;
      }
      paramAccessibilityEvent.setScrollable(bool);
      paramAccessibilityEvent.setScrollX(paramView.getScrollX());
      paramAccessibilityEvent.setScrollY(paramView.getScrollY());
      i.a(paramAccessibilityEvent, paramView.getScrollX());
      i.b(paramAccessibilityEvent, paramView.getScrollRange());
    }
    
    public void onInitializeAccessibilityNodeInfo(View paramView, g paramg)
    {
      super.onInitializeAccessibilityNodeInfo(paramView, paramg);
      paramView = (NestedScrollView)paramView;
      paramg.R(ScrollView.class.getName());
      if (paramView.isEnabled())
      {
        int i = paramView.getScrollRange();
        if (i > 0)
        {
          paramg.l0(true);
          if (paramView.getScrollY() > 0)
          {
            paramg.b(g.a.r);
            paramg.b(g.a.C);
          }
          if (paramView.getScrollY() < i)
          {
            paramg.b(g.a.q);
            paramg.b(g.a.E);
          }
        }
      }
    }
    
    public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
    {
      if (super.performAccessibilityAction(paramView, paramInt, paramBundle)) {
        return true;
      }
      paramView = (NestedScrollView)paramView;
      if (!paramView.isEnabled()) {
        return false;
      }
      int i = paramView.getHeight();
      paramBundle = new Rect();
      int j = i;
      if (paramView.getMatrix().isIdentity())
      {
        j = i;
        if (paramView.getGlobalVisibleRect(paramBundle)) {
          j = paramBundle.height();
        }
      }
      if (paramInt != 4096) {
        if ((paramInt != 8192) && (paramInt != 16908344))
        {
          if (paramInt != 16908346) {
            return false;
          }
        }
        else
        {
          i = paramView.getPaddingBottom();
          paramInt = paramView.getPaddingTop();
          paramInt = Math.max(paramView.getScrollY() - (j - i - paramInt), 0);
          if (paramInt != paramView.getScrollY())
          {
            paramView.K(0, paramInt, true);
            return true;
          }
          return false;
        }
      }
      i = paramView.getPaddingBottom();
      paramInt = paramView.getPaddingTop();
      paramInt = Math.min(paramView.getScrollY() + (j - i - paramInt), paramView.getScrollRange());
      if (paramInt != paramView.getScrollY())
      {
        paramView.K(0, paramInt, true);
        return true;
      }
      return false;
    }
  }
  
  static class b
  {
    static boolean a(ViewGroup paramViewGroup)
    {
      return paramViewGroup.getClipToPadding();
    }
  }
  
  public static abstract interface c
  {
    public abstract void a(NestedScrollView paramNestedScrollView, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.widget.NestedScrollView
 * JD-Core Version:    0.7.0.1
 */