package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewPropertyAnimator;
import android.view.Window.Callback;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.appcompat.view.menu.m.a;
import androidx.core.graphics.d;
import androidx.core.view.a0;
import androidx.core.view.e1;
import androidx.core.view.e1.b;
import androidx.core.view.r;
import androidx.core.view.s;
import androidx.core.view.t;
import d.a;
import d.f;

@SuppressLint({"UnknownNullness"})
public class ActionBarOverlayLayout
  extends ViewGroup
  implements b0, r, s
{
  static final int[] L = { a.b, 16842841 };
  private e1 D;
  private d E;
  private OverScroller F;
  ViewPropertyAnimator G;
  final AnimatorListenerAdapter H;
  private final Runnable I;
  private final Runnable J;
  private final t K;
  private int a;
  private int b = 0;
  private ContentFrameLayout c;
  ActionBarContainer d;
  private c0 e;
  private Drawable f;
  private boolean g;
  private boolean h;
  private boolean i;
  private boolean j;
  boolean k;
  private int l;
  private int m;
  private final Rect n = new Rect();
  private final Rect o = new Rect();
  private final Rect p = new Rect();
  private final Rect q = new Rect();
  private final Rect r = new Rect();
  private final Rect v = new Rect();
  private final Rect w = new Rect();
  private e1 x;
  private e1 y;
  private e1 z;
  
  public ActionBarOverlayLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramAttributeSet = e1.b;
    this.x = paramAttributeSet;
    this.y = paramAttributeSet;
    this.z = paramAttributeSet;
    this.D = paramAttributeSet;
    this.H = new a();
    this.I = new b();
    this.J = new c();
    p(paramContext);
    this.K = new t(this);
  }
  
  private void j()
  {
    o();
    this.J.run();
  }
  
  private boolean k(View paramView, Rect paramRect, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    paramView = (e)paramView.getLayoutParams();
    boolean bool1 = true;
    int i1;
    int i2;
    if (paramBoolean1)
    {
      i1 = paramView.leftMargin;
      i2 = paramRect.left;
      if (i1 != i2)
      {
        paramView.leftMargin = i2;
        bool2 = true;
        break label49;
      }
    }
    boolean bool2 = false;
    label49:
    paramBoolean1 = bool2;
    if (paramBoolean2)
    {
      i1 = paramView.topMargin;
      i2 = paramRect.top;
      paramBoolean1 = bool2;
      if (i1 != i2)
      {
        paramView.topMargin = i2;
        paramBoolean1 = true;
      }
    }
    paramBoolean2 = paramBoolean1;
    if (paramBoolean4)
    {
      i1 = paramView.rightMargin;
      i2 = paramRect.right;
      paramBoolean2 = paramBoolean1;
      if (i1 != i2)
      {
        paramView.rightMargin = i2;
        paramBoolean2 = true;
      }
    }
    if (paramBoolean3)
    {
      i1 = paramView.bottomMargin;
      i2 = paramRect.bottom;
      if (i1 != i2)
      {
        paramView.bottomMargin = i2;
        return bool1;
      }
    }
    paramBoolean1 = paramBoolean2;
    return paramBoolean1;
  }
  
  private c0 n(View paramView)
  {
    if ((paramView instanceof c0)) {
      return (c0)paramView;
    }
    if ((paramView instanceof Toolbar)) {
      return ((Toolbar)paramView).getWrapper();
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Can't make a decor toolbar out of ");
    localStringBuilder.append(paramView.getClass().getSimpleName());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  private void p(Context paramContext)
  {
    TypedArray localTypedArray = getContext().getTheme().obtainStyledAttributes(L);
    boolean bool1 = false;
    this.a = localTypedArray.getDimensionPixelSize(0, 0);
    Drawable localDrawable = localTypedArray.getDrawable(1);
    this.f = localDrawable;
    if (localDrawable == null) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    setWillNotDraw(bool2);
    localTypedArray.recycle();
    boolean bool2 = bool1;
    if (paramContext.getApplicationInfo().targetSdkVersion < 19) {
      bool2 = true;
    }
    this.g = bool2;
    this.F = new OverScroller(paramContext);
  }
  
  private void r()
  {
    o();
    postDelayed(this.J, 600L);
  }
  
  private void s()
  {
    o();
    postDelayed(this.I, 600L);
  }
  
  private void u()
  {
    o();
    this.I.run();
  }
  
  private boolean v(float paramFloat)
  {
    this.F.fling(0, 0, 0, (int)paramFloat, 0, 0, -2147483648, 2147483647);
    boolean bool;
    if (this.F.getFinalY() > this.d.getHeight()) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void a(Menu paramMenu, m.a parama)
  {
    t();
    this.e.a(paramMenu, parama);
  }
  
  public boolean b()
  {
    t();
    return this.e.b();
  }
  
  public void c()
  {
    t();
    this.e.c();
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof e;
  }
  
  public boolean d()
  {
    t();
    return this.e.d();
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if ((this.f != null) && (!this.g))
    {
      int i1;
      if (this.d.getVisibility() == 0) {
        i1 = (int)(this.d.getBottom() + this.d.getTranslationY() + 0.5F);
      } else {
        i1 = 0;
      }
      this.f.setBounds(0, i1, getWidth(), this.f.getIntrinsicHeight() + i1);
      this.f.draw(paramCanvas);
    }
  }
  
  public boolean e()
  {
    t();
    return this.e.e();
  }
  
  public boolean f()
  {
    t();
    return this.e.f();
  }
  
  protected boolean fitSystemWindows(Rect paramRect)
  {
    return super.fitSystemWindows(paramRect);
  }
  
  public boolean g()
  {
    t();
    return this.e.g();
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new e(paramLayoutParams);
  }
  
  public int getActionBarHideOffset()
  {
    ActionBarContainer localActionBarContainer = this.d;
    int i1;
    if (localActionBarContainer != null) {
      i1 = -(int)localActionBarContainer.getTranslationY();
    } else {
      i1 = 0;
    }
    return i1;
  }
  
  public int getNestedScrollAxes()
  {
    return this.K.a();
  }
  
  public CharSequence getTitle()
  {
    t();
    return this.e.getTitle();
  }
  
  public void h(int paramInt)
  {
    t();
    if (paramInt != 2)
    {
      if (paramInt != 5)
      {
        if (paramInt == 109) {
          setOverlayMode(true);
        }
      }
      else {
        this.e.v();
      }
    }
    else {
      this.e.u();
    }
  }
  
  public void i()
  {
    t();
    this.e.h();
  }
  
  protected e l()
  {
    return new e(-1, -1);
  }
  
  public e m(AttributeSet paramAttributeSet)
  {
    return new e(getContext(), paramAttributeSet);
  }
  
  void o()
  {
    removeCallbacks(this.I);
    removeCallbacks(this.J);
    ViewPropertyAnimator localViewPropertyAnimator = this.G;
    if (localViewPropertyAnimator != null) {
      localViewPropertyAnimator.cancel();
    }
  }
  
  public WindowInsets onApplyWindowInsets(WindowInsets paramWindowInsets)
  {
    t();
    paramWindowInsets = e1.w(paramWindowInsets, this);
    Object localObject = new Rect(paramWindowInsets.i(), paramWindowInsets.k(), paramWindowInsets.j(), paramWindowInsets.h());
    boolean bool1 = k(this.d, (Rect)localObject, true, true, false, true);
    a0.e(this, paramWindowInsets, this.n);
    localObject = this.n;
    localObject = paramWindowInsets.m(((Rect)localObject).left, ((Rect)localObject).top, ((Rect)localObject).right, ((Rect)localObject).bottom);
    this.x = ((e1)localObject);
    boolean bool2 = this.y.equals(localObject);
    boolean bool3 = true;
    if (!bool2)
    {
      this.y = this.x;
      bool1 = true;
    }
    if (!this.o.equals(this.n))
    {
      this.o.set(this.n);
      bool1 = bool3;
    }
    if (bool1) {
      requestLayout();
    }
    return paramWindowInsets.a().c().b().u();
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    p(getContext());
    a0.i0(this);
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    o();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt3 = getChildCount();
    paramInt4 = getPaddingLeft();
    paramInt2 = getPaddingTop();
    for (paramInt1 = 0; paramInt1 < paramInt3; paramInt1++)
    {
      View localView = getChildAt(paramInt1);
      if (localView.getVisibility() != 8)
      {
        e locale = (e)localView.getLayoutParams();
        int i1 = localView.getMeasuredWidth();
        int i2 = localView.getMeasuredHeight();
        int i3 = locale.leftMargin + paramInt4;
        int i4 = locale.topMargin + paramInt2;
        localView.layout(i3, i4, i1 + i3, i2 + i4);
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    t();
    measureChildWithMargins(this.d, paramInt1, 0, paramInt2, 0);
    Object localObject = (e)this.d.getLayoutParams();
    int i1 = Math.max(0, this.d.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams)localObject).leftMargin + ((ViewGroup.MarginLayoutParams)localObject).rightMargin);
    int i2 = Math.max(0, this.d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams)localObject).topMargin + ((ViewGroup.MarginLayoutParams)localObject).bottomMargin);
    int i3 = View.combineMeasuredStates(0, this.d.getMeasuredState());
    if ((a0.I(this) & 0x100) != 0) {
      i4 = 1;
    } else {
      i4 = 0;
    }
    if (i4 != 0)
    {
      i5 = this.a;
      i6 = i5;
      if (this.i)
      {
        i6 = i5;
        if (this.d.getTabContainer() != null) {
          i6 = i5 + this.a;
        }
      }
    }
    else if (this.d.getVisibility() != 8)
    {
      i6 = this.d.getMeasuredHeight();
    }
    else
    {
      i6 = 0;
    }
    this.p.set(this.n);
    localObject = this.x;
    this.z = ((e1)localObject);
    if ((!this.h) && (i4 == 0))
    {
      Rect localRect = this.p;
      localRect.top += i6;
      localRect.bottom += 0;
      this.z = ((e1)localObject).m(0, i6, 0, 0);
    }
    else
    {
      localObject = d.b(((e1)localObject).i(), this.z.k() + i6, this.z.j(), this.z.h() + 0);
      this.z = new e1.b(this.z).c((d)localObject).a();
    }
    k(this.c, this.p, true, true, true, true);
    if (!this.D.equals(this.z))
    {
      localObject = this.z;
      this.D = ((e1)localObject);
      a0.f(this.c, (e1)localObject);
    }
    measureChildWithMargins(this.c, paramInt1, 0, paramInt2, 0);
    localObject = (e)this.c.getLayoutParams();
    int i6 = Math.max(i1, this.c.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams)localObject).leftMargin + ((ViewGroup.MarginLayoutParams)localObject).rightMargin);
    i2 = Math.max(i2, this.c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams)localObject).topMargin + ((ViewGroup.MarginLayoutParams)localObject).bottomMargin);
    int i4 = View.combineMeasuredStates(i3, this.c.getMeasuredState());
    int i5 = getPaddingLeft();
    i3 = getPaddingRight();
    i2 = Math.max(i2 + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight());
    setMeasuredDimension(View.resolveSizeAndState(Math.max(i6 + (i5 + i3), getSuggestedMinimumWidth()), paramInt1, i4), View.resolveSizeAndState(i2, paramInt2, i4 << 16));
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if ((this.j) && (paramBoolean))
    {
      if (v(paramFloat2)) {
        j();
      } else {
        u();
      }
      this.k = true;
      return true;
    }
    return false;
  }
  
  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2)
  {
    return false;
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt) {}
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    if (paramInt3 == 0) {
      onNestedPreScroll(paramView, paramInt1, paramInt2, paramArrayOfInt);
    }
  }
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt1 = this.l + paramInt2;
    this.l = paramInt1;
    setActionBarHideOffset(paramInt1);
  }
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    if (paramInt5 == 0) {
      onNestedScroll(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int[] paramArrayOfInt)
  {
    onNestedScroll(paramView, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt)
  {
    this.K.b(paramView1, paramView2, paramInt);
    this.l = getActionBarHideOffset();
    o();
    paramView1 = this.E;
    if (paramView1 != null) {
      paramView1.e();
    }
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0) {
      onNestedScrollAccepted(paramView1, paramView2, paramInt1);
    }
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    if (((paramInt & 0x2) != 0) && (this.d.getVisibility() == 0)) {
      return this.j;
    }
    return false;
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt1, int paramInt2)
  {
    boolean bool;
    if ((paramInt2 == 0) && (onStartNestedScroll(paramView1, paramView2, paramInt1))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void onStopNestedScroll(View paramView)
  {
    if ((this.j) && (!this.k)) {
      if (this.l <= this.d.getHeight()) {
        s();
      } else {
        r();
      }
    }
    paramView = this.E;
    if (paramView != null) {
      paramView.b();
    }
  }
  
  public void onStopNestedScroll(View paramView, int paramInt)
  {
    if (paramInt == 0) {
      onStopNestedScroll(paramView);
    }
  }
  
  @Deprecated
  public void onWindowSystemUiVisibilityChanged(int paramInt)
  {
    super.onWindowSystemUiVisibilityChanged(paramInt);
    t();
    int i1 = this.m;
    this.m = paramInt;
    int i2 = 0;
    int i3;
    if ((paramInt & 0x4) == 0) {
      i3 = 1;
    } else {
      i3 = 0;
    }
    if ((paramInt & 0x100) != 0) {
      i2 = 1;
    }
    d locald = this.E;
    if (locald != null)
    {
      locald.c(i2 ^ 0x1);
      if ((i3 == 0) && (i2 != 0)) {
        this.E.d();
      } else {
        this.E.a();
      }
    }
    if ((((i1 ^ paramInt) & 0x100) != 0) && (this.E != null)) {
      a0.i0(this);
    }
  }
  
  protected void onWindowVisibilityChanged(int paramInt)
  {
    super.onWindowVisibilityChanged(paramInt);
    this.b = paramInt;
    d locald = this.E;
    if (locald != null) {
      locald.f(paramInt);
    }
  }
  
  public boolean q()
  {
    return this.h;
  }
  
  public void setActionBarHideOffset(int paramInt)
  {
    o();
    paramInt = Math.max(0, Math.min(paramInt, this.d.getHeight()));
    this.d.setTranslationY(-paramInt);
  }
  
  public void setActionBarVisibilityCallback(d paramd)
  {
    this.E = paramd;
    if (getWindowToken() != null)
    {
      this.E.f(this.b);
      int i1 = this.m;
      if (i1 != 0)
      {
        onWindowSystemUiVisibilityChanged(i1);
        a0.i0(this);
      }
    }
  }
  
  public void setHasNonEmbeddedTabs(boolean paramBoolean)
  {
    this.i = paramBoolean;
  }
  
  public void setHideOnContentScrollEnabled(boolean paramBoolean)
  {
    if (paramBoolean != this.j)
    {
      this.j = paramBoolean;
      if (!paramBoolean)
      {
        o();
        setActionBarHideOffset(0);
      }
    }
  }
  
  public void setIcon(int paramInt)
  {
    t();
    this.e.setIcon(paramInt);
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    t();
    this.e.setIcon(paramDrawable);
  }
  
  public void setLogo(int paramInt)
  {
    t();
    this.e.m(paramInt);
  }
  
  public void setOverlayMode(boolean paramBoolean)
  {
    this.h = paramBoolean;
    if ((paramBoolean) && (getContext().getApplicationInfo().targetSdkVersion < 19)) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    }
    this.g = paramBoolean;
  }
  
  public void setShowingForActionMode(boolean paramBoolean) {}
  
  public void setUiOptions(int paramInt) {}
  
  public void setWindowCallback(Window.Callback paramCallback)
  {
    t();
    this.e.setWindowCallback(paramCallback);
  }
  
  public void setWindowTitle(CharSequence paramCharSequence)
  {
    t();
    this.e.setWindowTitle(paramCharSequence);
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
  
  void t()
  {
    if (this.c == null)
    {
      this.c = ((ContentFrameLayout)findViewById(f.b));
      this.d = ((ActionBarContainer)findViewById(f.c));
      this.e = n(findViewById(f.a));
    }
  }
  
  class a
    extends AnimatorListenerAdapter
  {
    a() {}
    
    public void onAnimationCancel(Animator paramAnimator)
    {
      paramAnimator = ActionBarOverlayLayout.this;
      paramAnimator.G = null;
      paramAnimator.k = false;
    }
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      paramAnimator = ActionBarOverlayLayout.this;
      paramAnimator.G = null;
      paramAnimator.k = false;
    }
  }
  
  class b
    implements Runnable
  {
    b() {}
    
    public void run()
    {
      ActionBarOverlayLayout.this.o();
      ActionBarOverlayLayout localActionBarOverlayLayout = ActionBarOverlayLayout.this;
      localActionBarOverlayLayout.G = localActionBarOverlayLayout.d.animate().translationY(0.0F).setListener(ActionBarOverlayLayout.this.H);
    }
  }
  
  class c
    implements Runnable
  {
    c() {}
    
    public void run()
    {
      ActionBarOverlayLayout.this.o();
      ActionBarOverlayLayout localActionBarOverlayLayout = ActionBarOverlayLayout.this;
      localActionBarOverlayLayout.G = localActionBarOverlayLayout.d.animate().translationY(-ActionBarOverlayLayout.this.d.getHeight()).setListener(ActionBarOverlayLayout.this.H);
    }
  }
  
  public static abstract interface d
  {
    public abstract void a();
    
    public abstract void b();
    
    public abstract void c(boolean paramBoolean);
    
    public abstract void d();
    
    public abstract void e();
    
    public abstract void f(int paramInt);
  }
  
  public static class e
    extends ViewGroup.MarginLayoutParams
  {
    public e(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public e(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public e(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.ActionBarOverlayLayout
 * JD-Core Version:    0.7.0.1
 */