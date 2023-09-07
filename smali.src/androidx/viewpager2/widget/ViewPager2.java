package androidx.viewpager2.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.AbsSavedState;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityRecord;
import androidx.core.view.a0;
import androidx.core.view.accessibility.g;
import androidx.core.view.accessibility.g.a;
import androidx.core.view.accessibility.g.b;
import androidx.core.view.accessibility.j;
import androidx.core.view.accessibility.j.a;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.g;
import androidx.recyclerview.widget.RecyclerView.i;
import androidx.recyclerview.widget.RecyclerView.l;
import androidx.recyclerview.widget.RecyclerView.o;
import androidx.recyclerview.widget.RecyclerView.p;
import androidx.recyclerview.widget.RecyclerView.q;
import androidx.recyclerview.widget.RecyclerView.v;
import androidx.recyclerview.widget.RecyclerView.z;
import androidx.recyclerview.widget.l;
import androidx.recyclerview.widget.s;
import p0.a;

public final class ViewPager2
  extends ViewGroup
{
  static boolean x = true;
  private final Rect a = new Rect();
  private final Rect b = new Rect();
  private b c = new b(3);
  int d;
  boolean e = false;
  private RecyclerView.i f = new a();
  private LinearLayoutManager g;
  private int h = -1;
  private Parcelable i;
  RecyclerView j;
  private l k;
  e l;
  private b m;
  private c n;
  private d o;
  private RecyclerView.l p = null;
  private boolean q = false;
  private boolean r = true;
  private int v = -1;
  e w;
  
  public ViewPager2(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    b(paramContext, paramAttributeSet);
  }
  
  private RecyclerView.q a()
  {
    return new d();
  }
  
  private void b(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (x) {
      localObject = new j();
    } else {
      localObject = new f();
    }
    this.w = ((e)localObject);
    Object localObject = new m(paramContext);
    this.j = ((RecyclerView)localObject);
    ((View)localObject).setId(a0.j());
    this.j.setDescendantFocusability(131072);
    localObject = new h(paramContext);
    this.g = ((LinearLayoutManager)localObject);
    this.j.setLayoutManager((RecyclerView.o)localObject);
    this.j.setScrollingTouchSlop(1);
    l(paramContext, paramAttributeSet);
    this.j.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    this.j.addOnChildAttachStateChangeListener(a());
    paramContext = new e(this);
    this.l = paramContext;
    this.n = new c(this, paramContext, this.j);
    paramContext = new l();
    this.k = paramContext;
    paramContext.b(this.j);
    this.j.addOnScrollListener(this.l);
    paramContext = new b(3);
    this.m = paramContext;
    this.l.m(paramContext);
    paramAttributeSet = new b();
    paramContext = new c();
    this.m.a(paramAttributeSet);
    this.m.a(paramContext);
    this.w.h(this.m, this.j);
    this.m.a(this.c);
    paramContext = new d(this.g);
    this.o = paramContext;
    this.m.a(paramContext);
    paramContext = this.j;
    attachViewToParent(paramContext, 0, paramContext.getLayoutParams());
  }
  
  private void f(RecyclerView.g<?> paramg)
  {
    if (paramg != null) {
      paramg.registerAdapterDataObserver(this.f);
    }
  }
  
  private void i()
  {
    if (this.h == -1) {
      return;
    }
    RecyclerView.g localg = getAdapter();
    if (localg == null) {
      return;
    }
    Parcelable localParcelable = this.i;
    if (localParcelable != null)
    {
      if ((localg instanceof androidx.viewpager2.adapter.b)) {
        ((androidx.viewpager2.adapter.b)localg).c(localParcelable);
      }
      this.i = null;
    }
    int i1 = Math.max(0, Math.min(this.h, localg.getItemCount() - 1));
    this.d = i1;
    this.h = -1;
    this.j.scrollToPosition(i1);
    this.w.m();
  }
  
  private void l(Context paramContext, AttributeSet paramAttributeSet)
  {
    int[] arrayOfInt = a.g;
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, arrayOfInt);
    if (Build.VERSION.SDK_INT >= 29) {
      saveAttributeDataForStyleable(paramContext, arrayOfInt, paramAttributeSet, localTypedArray, 0, 0);
    }
    try
    {
      setOrientation(localTypedArray.getInt(a.h, 0));
      return;
    }
    finally
    {
      localTypedArray.recycle();
    }
  }
  
  private void m(RecyclerView.g<?> paramg)
  {
    if (paramg != null) {
      paramg.unregisterAdapterDataObserver(this.f);
    }
  }
  
  public boolean c()
  {
    return this.n.a();
  }
  
  public boolean canScrollHorizontally(int paramInt)
  {
    return this.j.canScrollHorizontally(paramInt);
  }
  
  public boolean canScrollVertically(int paramInt)
  {
    return this.j.canScrollVertically(paramInt);
  }
  
  boolean d()
  {
    int i1 = this.g.getLayoutDirection();
    boolean bool = true;
    if (i1 != 1) {
      bool = false;
    }
    return bool;
  }
  
  protected void dispatchRestoreInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    Parcelable localParcelable = (Parcelable)paramSparseArray.get(getId());
    if ((localParcelable instanceof SavedState))
    {
      int i1 = ((SavedState)localParcelable).mRecyclerViewId;
      paramSparseArray.put(this.j.getId(), paramSparseArray.get(i1));
      paramSparseArray.remove(i1);
    }
    super.dispatchRestoreInstanceState(paramSparseArray);
    i();
  }
  
  public boolean e()
  {
    return this.r;
  }
  
  public void g(i parami)
  {
    this.c.a(parami);
  }
  
  public CharSequence getAccessibilityClassName()
  {
    if (this.w.a()) {
      return this.w.g();
    }
    return super.getAccessibilityClassName();
  }
  
  public RecyclerView.g getAdapter()
  {
    return this.j.getAdapter();
  }
  
  public int getCurrentItem()
  {
    return this.d;
  }
  
  public int getItemDecorationCount()
  {
    return this.j.getItemDecorationCount();
  }
  
  public int getOffscreenPageLimit()
  {
    return this.v;
  }
  
  public int getOrientation()
  {
    return this.g.getOrientation();
  }
  
  int getPageSize()
  {
    RecyclerView localRecyclerView = this.j;
    int i1;
    int i2;
    if (getOrientation() == 0)
    {
      i1 = localRecyclerView.getWidth() - localRecyclerView.getPaddingLeft();
      i2 = localRecyclerView.getPaddingRight();
    }
    else
    {
      i1 = localRecyclerView.getHeight() - localRecyclerView.getPaddingTop();
      i2 = localRecyclerView.getPaddingBottom();
    }
    return i1 - i2;
  }
  
  public int getScrollState()
  {
    return this.l.f();
  }
  
  public void h()
  {
    if (this.o.a() == null) {
      return;
    }
    double d1 = this.l.e();
    int i1 = (int)d1;
    float f1 = (float)(d1 - i1);
    int i2 = Math.round(getPageSize() * f1);
    this.o.onPageScrolled(i1, f1, i2);
  }
  
  public void j(int paramInt, boolean paramBoolean)
  {
    if (!c())
    {
      k(paramInt, paramBoolean);
      return;
    }
    throw new IllegalStateException("Cannot change current item when ViewPager2 is fake dragging");
  }
  
  void k(int paramInt, boolean paramBoolean)
  {
    Object localObject = getAdapter();
    if (localObject == null)
    {
      if (this.h != -1) {
        this.h = Math.max(paramInt, 0);
      }
      return;
    }
    if (((RecyclerView.g)localObject).getItemCount() <= 0) {
      return;
    }
    int i1 = Math.min(Math.max(paramInt, 0), ((RecyclerView.g)localObject).getItemCount() - 1);
    if ((i1 == this.d) && (this.l.h())) {
      return;
    }
    paramInt = this.d;
    if ((i1 == paramInt) && (paramBoolean)) {
      return;
    }
    double d1 = paramInt;
    this.d = i1;
    this.w.q();
    if (!this.l.h()) {
      d1 = this.l.e();
    }
    this.l.k(i1, paramBoolean);
    if (!paramBoolean)
    {
      this.j.scrollToPosition(i1);
      return;
    }
    double d2 = i1;
    if (Math.abs(d2 - d1) > 3.0D)
    {
      localObject = this.j;
      if (d2 > d1) {
        paramInt = i1 - 3;
      } else {
        paramInt = i1 + 3;
      }
      ((RecyclerView)localObject).scrollToPosition(paramInt);
      localObject = this.j;
      ((View)localObject).post(new n(i1, (RecyclerView)localObject));
    }
    else
    {
      this.j.smoothScrollToPosition(i1);
    }
  }
  
  public void n(i parami)
  {
    this.c.b(parami);
  }
  
  void o()
  {
    Object localObject = this.k;
    if (localObject != null)
    {
      localObject = ((l)localObject).h(this.g);
      if (localObject == null) {
        return;
      }
      int i1 = this.g.getPosition((View)localObject);
      if ((i1 != this.d) && (getScrollState() == 0)) {
        this.m.onPageSelected(i1);
      }
      this.e = false;
      return;
    }
    throw new IllegalStateException("Design assumption violated.");
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    this.w.i(paramAccessibilityNodeInfo);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = this.j.getMeasuredWidth();
    int i2 = this.j.getMeasuredHeight();
    this.a.left = getPaddingLeft();
    this.a.right = (paramInt3 - paramInt1 - getPaddingRight());
    this.a.top = getPaddingTop();
    this.a.bottom = (paramInt4 - paramInt2 - getPaddingBottom());
    Gravity.apply(8388659, i1, i2, this.a, this.b);
    RecyclerView localRecyclerView = this.j;
    Rect localRect = this.b;
    localRecyclerView.layout(localRect.left, localRect.top, localRect.right, localRect.bottom);
    if (this.e) {
      o();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    measureChild(this.j, paramInt1, paramInt2);
    int i1 = this.j.getMeasuredWidth();
    int i2 = this.j.getMeasuredHeight();
    int i3 = this.j.getMeasuredState();
    int i4 = getPaddingLeft();
    int i5 = getPaddingRight();
    int i6 = getPaddingTop();
    int i7 = getPaddingBottom();
    i4 = Math.max(i1 + (i4 + i5), getSuggestedMinimumWidth());
    i6 = Math.max(i2 + (i6 + i7), getSuggestedMinimumHeight());
    setMeasuredDimension(View.resolveSizeAndState(i4, paramInt1, i3), View.resolveSizeAndState(i6, paramInt2, i3 << 16));
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
    this.h = paramParcelable.mCurrentItem;
    this.i = paramParcelable.mAdapterState;
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    localSavedState.mRecyclerViewId = this.j.getId();
    int i1 = this.h;
    int i2 = i1;
    if (i1 == -1) {
      i2 = this.d;
    }
    localSavedState.mCurrentItem = i2;
    Object localObject = this.i;
    if (localObject != null)
    {
      localSavedState.mAdapterState = ((Parcelable)localObject);
    }
    else
    {
      localObject = this.j.getAdapter();
      if ((localObject instanceof androidx.viewpager2.adapter.b)) {
        localSavedState.mAdapterState = ((androidx.viewpager2.adapter.b)localObject).a();
      }
    }
    return localSavedState;
  }
  
  public void onViewAdded(View paramView)
  {
    paramView = new StringBuilder();
    paramView.append(ViewPager2.class.getSimpleName());
    paramView.append(" does not support direct child views");
    throw new IllegalStateException(paramView.toString());
  }
  
  public boolean performAccessibilityAction(int paramInt, Bundle paramBundle)
  {
    if (this.w.c(paramInt, paramBundle)) {
      return this.w.l(paramInt, paramBundle);
    }
    return super.performAccessibilityAction(paramInt, paramBundle);
  }
  
  public void setAdapter(RecyclerView.g paramg)
  {
    RecyclerView.g localg = this.j.getAdapter();
    this.w.f(localg);
    m(localg);
    this.j.setAdapter(paramg);
    this.d = 0;
    i();
    this.w.e(paramg);
    f(paramg);
  }
  
  public void setCurrentItem(int paramInt)
  {
    j(paramInt, true);
  }
  
  public void setLayoutDirection(int paramInt)
  {
    super.setLayoutDirection(paramInt);
    this.w.p();
  }
  
  public void setOffscreenPageLimit(int paramInt)
  {
    if ((paramInt < 1) && (paramInt != -1)) {
      throw new IllegalArgumentException("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
    }
    this.v = paramInt;
    this.j.requestLayout();
  }
  
  public void setOrientation(int paramInt)
  {
    this.g.setOrientation(paramInt);
    this.w.r();
  }
  
  public void setPageTransformer(k paramk)
  {
    if (paramk != null)
    {
      if (!this.q)
      {
        this.p = this.j.getItemAnimator();
        this.q = true;
      }
      this.j.setItemAnimator(null);
    }
    else if (this.q)
    {
      this.j.setItemAnimator(this.p);
      this.p = null;
      this.q = false;
    }
    if (paramk == this.o.a()) {
      return;
    }
    this.o.b(paramk);
    h();
  }
  
  public void setUserInputEnabled(boolean paramBoolean)
  {
    this.r = paramBoolean;
    this.w.s();
  }
  
  static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new a();
    Parcelable mAdapterState;
    int mCurrentItem;
    int mRecyclerViewId;
    
    SavedState(Parcel paramParcel)
    {
      super();
      readValues(paramParcel, null);
    }
    
    SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      readValues(paramParcel, paramClassLoader);
    }
    
    SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    private void readValues(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      this.mRecyclerViewId = paramParcel.readInt();
      this.mCurrentItem = paramParcel.readInt();
      this.mAdapterState = paramParcel.readParcelable(paramClassLoader);
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(this.mRecyclerViewId);
      paramParcel.writeInt(this.mCurrentItem);
      paramParcel.writeParcelable(this.mAdapterState, paramInt);
    }
    
    static final class a
      implements Parcelable.ClassLoaderCreator<ViewPager2.SavedState>
    {
      public ViewPager2.SavedState a(Parcel paramParcel)
      {
        return b(paramParcel, null);
      }
      
      public ViewPager2.SavedState b(Parcel paramParcel, ClassLoader paramClassLoader)
      {
        return new ViewPager2.SavedState(paramParcel, paramClassLoader);
      }
      
      public ViewPager2.SavedState[] c(int paramInt)
      {
        return new ViewPager2.SavedState[paramInt];
      }
    }
  }
  
  class a
    extends ViewPager2.g
  {
    a()
    {
      super();
    }
    
    public void onChanged()
    {
      ViewPager2 localViewPager2 = ViewPager2.this;
      localViewPager2.e = true;
      localViewPager2.l.j();
    }
  }
  
  class b
    extends ViewPager2.i
  {
    b() {}
    
    public void onPageScrollStateChanged(int paramInt)
    {
      if (paramInt == 0) {
        ViewPager2.this.o();
      }
    }
    
    public void onPageSelected(int paramInt)
    {
      ViewPager2 localViewPager2 = ViewPager2.this;
      if (localViewPager2.d != paramInt)
      {
        localViewPager2.d = paramInt;
        localViewPager2.w.q();
      }
    }
  }
  
  class c
    extends ViewPager2.i
  {
    c() {}
    
    public void onPageSelected(int paramInt)
    {
      ViewPager2.this.clearFocus();
      if (ViewPager2.this.hasFocus()) {
        ViewPager2.this.j.requestFocus(2);
      }
    }
  }
  
  class d
    implements RecyclerView.q
  {
    d() {}
    
    public void a(View paramView) {}
    
    public void b(View paramView)
    {
      paramView = (RecyclerView.p)paramView.getLayoutParams();
      if ((paramView.width == -1) && (paramView.height == -1)) {
        return;
      }
      throw new IllegalStateException("Pages must fill the whole ViewPager2 (use match_parent)");
    }
  }
  
  private abstract class e
  {
    private e() {}
    
    boolean a()
    {
      return false;
    }
    
    boolean b(int paramInt)
    {
      return false;
    }
    
    boolean c(int paramInt, Bundle paramBundle)
    {
      return false;
    }
    
    boolean d()
    {
      return false;
    }
    
    void e(RecyclerView.g<?> paramg) {}
    
    void f(RecyclerView.g<?> paramg) {}
    
    String g()
    {
      throw new IllegalStateException("Not implemented.");
    }
    
    void h(b paramb, RecyclerView paramRecyclerView) {}
    
    void i(AccessibilityNodeInfo paramAccessibilityNodeInfo) {}
    
    void j(g paramg) {}
    
    boolean k(int paramInt)
    {
      throw new IllegalStateException("Not implemented.");
    }
    
    boolean l(int paramInt, Bundle paramBundle)
    {
      throw new IllegalStateException("Not implemented.");
    }
    
    void m() {}
    
    CharSequence n()
    {
      throw new IllegalStateException("Not implemented.");
    }
    
    void o(AccessibilityEvent paramAccessibilityEvent) {}
    
    void p() {}
    
    void q() {}
    
    void r() {}
    
    void s() {}
  }
  
  class f
    extends ViewPager2.e
  {
    f()
    {
      super(null);
    }
    
    public boolean b(int paramInt)
    {
      boolean bool;
      if (((paramInt == 8192) || (paramInt == 4096)) && (!ViewPager2.this.e())) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public boolean d()
    {
      return true;
    }
    
    public void j(g paramg)
    {
      if (!ViewPager2.this.e())
      {
        paramg.K(g.a.r);
        paramg.K(g.a.q);
        paramg.l0(false);
      }
    }
    
    public boolean k(int paramInt)
    {
      if (b(paramInt)) {
        return false;
      }
      throw new IllegalStateException();
    }
    
    public CharSequence n()
    {
      if (d()) {
        return "androidx.viewpager.widget.ViewPager";
      }
      throw new IllegalStateException();
    }
  }
  
  private static abstract class g
    extends RecyclerView.i
  {
    public abstract void onChanged();
    
    public final void onItemRangeChanged(int paramInt1, int paramInt2)
    {
      onChanged();
    }
    
    public final void onItemRangeChanged(int paramInt1, int paramInt2, Object paramObject)
    {
      onChanged();
    }
    
    public final void onItemRangeInserted(int paramInt1, int paramInt2)
    {
      onChanged();
    }
    
    public final void onItemRangeMoved(int paramInt1, int paramInt2, int paramInt3)
    {
      onChanged();
    }
    
    public final void onItemRangeRemoved(int paramInt1, int paramInt2)
    {
      onChanged();
    }
  }
  
  private class h
    extends LinearLayoutManager
  {
    h(Context paramContext)
    {
      super();
    }
    
    protected void calculateExtraLayoutSpace(RecyclerView.z paramz, int[] paramArrayOfInt)
    {
      int i = ViewPager2.this.getOffscreenPageLimit();
      if (i == -1)
      {
        super.calculateExtraLayoutSpace(paramz, paramArrayOfInt);
        return;
      }
      i = ViewPager2.this.getPageSize() * i;
      paramArrayOfInt[0] = i;
      paramArrayOfInt[1] = i;
    }
    
    public void onInitializeAccessibilityNodeInfo(RecyclerView.v paramv, RecyclerView.z paramz, g paramg)
    {
      super.onInitializeAccessibilityNodeInfo(paramv, paramz, paramg);
      ViewPager2.this.w.j(paramg);
    }
    
    public boolean performAccessibilityAction(RecyclerView.v paramv, RecyclerView.z paramz, int paramInt, Bundle paramBundle)
    {
      if (ViewPager2.this.w.b(paramInt)) {
        return ViewPager2.this.w.k(paramInt);
      }
      return super.performAccessibilityAction(paramv, paramz, paramInt, paramBundle);
    }
    
    public boolean requestChildRectangleOnScreen(RecyclerView paramRecyclerView, View paramView, Rect paramRect, boolean paramBoolean1, boolean paramBoolean2)
    {
      return false;
    }
  }
  
  public static abstract class i
  {
    public void onPageScrollStateChanged(int paramInt) {}
    
    public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
    
    public void onPageSelected(int paramInt) {}
  }
  
  class j
    extends ViewPager2.e
  {
    private final j b = new a();
    private final j c = new b();
    private RecyclerView.i d;
    
    j()
    {
      super(null);
    }
    
    private void t(AccessibilityNodeInfo paramAccessibilityNodeInfo)
    {
      int i;
      int j;
      if (ViewPager2.this.getAdapter() != null)
      {
        if (ViewPager2.this.getOrientation() == 1)
        {
          i = ViewPager2.this.getAdapter().getItemCount();
          j = 0;
        }
        else
        {
          j = ViewPager2.this.getAdapter().getItemCount();
          i = 0;
        }
      }
      else
      {
        i = 0;
        j = i;
      }
      g.s0(paramAccessibilityNodeInfo).T(g.b.b(i, j, false, 0));
    }
    
    private void u(AccessibilityNodeInfo paramAccessibilityNodeInfo)
    {
      RecyclerView.g localg = ViewPager2.this.getAdapter();
      if (localg == null) {
        return;
      }
      int i = localg.getItemCount();
      if ((i != 0) && (ViewPager2.this.e()))
      {
        if (ViewPager2.this.d > 0) {
          paramAccessibilityNodeInfo.addAction(8192);
        }
        if (ViewPager2.this.d < i - 1) {
          paramAccessibilityNodeInfo.addAction(4096);
        }
        paramAccessibilityNodeInfo.setScrollable(true);
      }
    }
    
    public boolean a()
    {
      return true;
    }
    
    public boolean c(int paramInt, Bundle paramBundle)
    {
      boolean bool;
      if ((paramInt != 8192) && (paramInt != 4096)) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
    
    public void e(RecyclerView.g<?> paramg)
    {
      w();
      if (paramg != null) {
        paramg.registerAdapterDataObserver(this.d);
      }
    }
    
    public void f(RecyclerView.g<?> paramg)
    {
      if (paramg != null) {
        paramg.unregisterAdapterDataObserver(this.d);
      }
    }
    
    public String g()
    {
      if (a()) {
        return "androidx.viewpager.widget.ViewPager";
      }
      throw new IllegalStateException();
    }
    
    public void h(b paramb, RecyclerView paramRecyclerView)
    {
      a0.w0(paramRecyclerView, 2);
      this.d = new c();
      if (a0.x(ViewPager2.this) == 0) {
        a0.w0(ViewPager2.this, 1);
      }
    }
    
    public void i(AccessibilityNodeInfo paramAccessibilityNodeInfo)
    {
      t(paramAccessibilityNodeInfo);
      u(paramAccessibilityNodeInfo);
    }
    
    public boolean l(int paramInt, Bundle paramBundle)
    {
      if (c(paramInt, paramBundle))
      {
        if (paramInt == 8192) {
          paramInt = ViewPager2.this.getCurrentItem() - 1;
        } else {
          paramInt = ViewPager2.this.getCurrentItem() + 1;
        }
        v(paramInt);
        return true;
      }
      throw new IllegalStateException();
    }
    
    public void m()
    {
      w();
    }
    
    public void o(AccessibilityEvent paramAccessibilityEvent)
    {
      paramAccessibilityEvent.setSource(ViewPager2.this);
      paramAccessibilityEvent.setClassName(g());
    }
    
    public void p()
    {
      w();
    }
    
    public void q()
    {
      w();
    }
    
    public void r()
    {
      w();
    }
    
    public void s()
    {
      w();
    }
    
    void v(int paramInt)
    {
      if (ViewPager2.this.e()) {
        ViewPager2.this.k(paramInt, true);
      }
    }
    
    void w()
    {
      ViewPager2 localViewPager2 = ViewPager2.this;
      int i = 16908360;
      a0.f0(localViewPager2, 16908360);
      a0.f0(localViewPager2, 16908361);
      a0.f0(localViewPager2, 16908358);
      a0.f0(localViewPager2, 16908359);
      if (ViewPager2.this.getAdapter() == null) {
        return;
      }
      int j = ViewPager2.this.getAdapter().getItemCount();
      if (j == 0) {
        return;
      }
      if (!ViewPager2.this.e()) {
        return;
      }
      if (ViewPager2.this.getOrientation() == 0)
      {
        boolean bool = ViewPager2.this.d();
        int k;
        if (bool) {
          k = 16908360;
        } else {
          k = 16908361;
        }
        if (bool) {
          i = 16908361;
        }
        if (ViewPager2.this.d < j - 1) {
          a0.h0(localViewPager2, new g.a(k, null), null, this.b);
        }
        if (ViewPager2.this.d > 0) {
          a0.h0(localViewPager2, new g.a(i, null), null, this.c);
        }
      }
      else
      {
        if (ViewPager2.this.d < j - 1) {
          a0.h0(localViewPager2, new g.a(16908359, null), null, this.b);
        }
        if (ViewPager2.this.d > 0) {
          a0.h0(localViewPager2, new g.a(16908358, null), null, this.c);
        }
      }
    }
    
    class a
      implements j
    {
      a() {}
      
      public boolean perform(View paramView, j.a parama)
      {
        paramView = (ViewPager2)paramView;
        ViewPager2.j.this.v(paramView.getCurrentItem() + 1);
        return true;
      }
    }
    
    class b
      implements j
    {
      b() {}
      
      public boolean perform(View paramView, j.a parama)
      {
        paramView = (ViewPager2)paramView;
        ViewPager2.j.this.v(paramView.getCurrentItem() - 1);
        return true;
      }
    }
    
    class c
      extends ViewPager2.g
    {
      c()
      {
        super();
      }
      
      public void onChanged()
      {
        ViewPager2.j.this.w();
      }
    }
  }
  
  public static abstract interface k
  {
    public abstract void a(View paramView, float paramFloat);
  }
  
  private class l
    extends l
  {
    l() {}
    
    public View h(RecyclerView.o paramo)
    {
      if (ViewPager2.this.c()) {
        paramo = null;
      } else {
        paramo = super.h(paramo);
      }
      return paramo;
    }
  }
  
  private class m
    extends RecyclerView
  {
    m(Context paramContext)
    {
      super();
    }
    
    public CharSequence getAccessibilityClassName()
    {
      if (ViewPager2.this.w.d()) {
        return ViewPager2.this.w.n();
      }
      return super.getAccessibilityClassName();
    }
    
    public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
    {
      super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
      paramAccessibilityEvent.setFromIndex(ViewPager2.this.d);
      paramAccessibilityEvent.setToIndex(ViewPager2.this.d);
      ViewPager2.this.w.o(paramAccessibilityEvent);
    }
    
    public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
    {
      boolean bool;
      if ((ViewPager2.this.e()) && (super.onInterceptTouchEvent(paramMotionEvent))) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent paramMotionEvent)
    {
      boolean bool;
      if ((ViewPager2.this.e()) && (super.onTouchEvent(paramMotionEvent))) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
  
  private static class n
    implements Runnable
  {
    private final int a;
    private final RecyclerView b;
    
    n(int paramInt, RecyclerView paramRecyclerView)
    {
      this.a = paramInt;
      this.b = paramRecyclerView;
    }
    
    public void run()
    {
      this.b.smoothScrollToPosition(this.a);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.viewpager2.widget.ViewPager2
 * JD-Core Version:    0.7.0.1
 */