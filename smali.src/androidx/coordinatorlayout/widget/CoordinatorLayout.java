package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region.Op;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewGroup.OnHierarchyChangeListener;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import androidx.core.util.g;
import androidx.core.view.a0;
import androidx.core.view.e1;
import androidx.core.view.r;
import androidx.core.view.s;
import androidx.core.view.t;
import androidx.core.view.u;
import androidx.customview.view.AbsSavedState;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CoordinatorLayout
  extends ViewGroup
  implements r, s
{
  static final Class<?>[] CONSTRUCTOR_PARAMS = { Context.class, AttributeSet.class };
  static final int EVENT_NESTED_SCROLL = 1;
  static final int EVENT_PRE_DRAW = 0;
  static final int EVENT_VIEW_REMOVED = 2;
  static final String TAG = "CoordinatorLayout";
  static final Comparator<View> TOP_SORTED_CHILDREN_COMPARATOR;
  private static final int TYPE_ON_INTERCEPT = 0;
  private static final int TYPE_ON_TOUCH = 1;
  static final String WIDGET_PACKAGE_NAME;
  static final ThreadLocal<Map<String, Constructor<c>>> sConstructors = new ThreadLocal();
  private static final androidx.core.util.e<Rect> sRectPool = new g(12);
  private u mApplyWindowInsetsListener;
  private final int[] mBehaviorConsumed = new int[2];
  private View mBehaviorTouchView;
  private final a<View> mChildDag = new a();
  private final List<View> mDependencySortedChildren = new ArrayList();
  private boolean mDisallowInterceptReset;
  private boolean mDrawStatusBarBackground;
  private boolean mIsAttachedToWindow;
  private int[] mKeylines;
  private e1 mLastInsets;
  private boolean mNeedsPreDrawListener;
  private final t mNestedScrollingParentHelper = new t(this);
  private View mNestedScrollingTarget;
  private final int[] mNestedScrollingV2ConsumedCompat = new int[2];
  ViewGroup.OnHierarchyChangeListener mOnHierarchyChangeListener;
  private g mOnPreDrawListener;
  private Paint mScrimPaint;
  private Drawable mStatusBarBackground;
  private final List<View> mTempDependenciesList = new ArrayList();
  private final List<View> mTempList1 = new ArrayList();
  
  static
  {
    Object localObject = CoordinatorLayout.class.getPackage();
    if (localObject != null) {
      localObject = ((Package)localObject).getName();
    } else {
      localObject = null;
    }
    WIDGET_PACKAGE_NAME = (String)localObject;
    TOP_SORTED_CHILDREN_COMPARATOR = new h();
  }
  
  public CoordinatorLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CoordinatorLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, s.a.a);
  }
  
  public CoordinatorLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    int i = 0;
    TypedArray localTypedArray;
    if (paramInt == 0) {
      localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, s.c.b, 0, s.b.a);
    } else {
      localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, s.c.b, paramInt, 0);
    }
    if (Build.VERSION.SDK_INT >= 29) {
      if (paramInt == 0) {
        saveAttributeDataForStyleable(paramContext, s.c.b, paramAttributeSet, localTypedArray, 0, s.b.a);
      } else {
        saveAttributeDataForStyleable(paramContext, s.c.b, paramAttributeSet, localTypedArray, paramInt, 0);
      }
    }
    paramInt = localTypedArray.getResourceId(s.c.c, 0);
    if (paramInt != 0)
    {
      paramContext = paramContext.getResources();
      this.mKeylines = paramContext.getIntArray(paramInt);
      float f = paramContext.getDisplayMetrics().density;
      int j = this.mKeylines.length;
      for (paramInt = i; paramInt < j; paramInt++)
      {
        paramContext = this.mKeylines;
        paramContext[paramInt] = ((int)(paramContext[paramInt] * f));
      }
    }
    this.mStatusBarBackground = localTypedArray.getDrawable(s.c.d);
    localTypedArray.recycle();
    setupForInsets();
    super.setOnHierarchyChangeListener(new e());
    if (a0.x(this) == 0) {
      a0.w0(this, 1);
    }
  }
  
  private static Rect acquireTempRect()
  {
    Rect localRect1 = (Rect)sRectPool.b();
    Rect localRect2 = localRect1;
    if (localRect1 == null) {
      localRect2 = new Rect();
    }
    return localRect2;
  }
  
  private static int clamp(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 < paramInt2) {
      return paramInt2;
    }
    if (paramInt1 > paramInt3) {
      return paramInt3;
    }
    return paramInt1;
  }
  
  private void constrainChildRect(f paramf, Rect paramRect, int paramInt1, int paramInt2)
  {
    int i = getWidth();
    int j = getHeight();
    i = Math.max(getPaddingLeft() + paramf.leftMargin, Math.min(paramRect.left, i - getPaddingRight() - paramInt1 - paramf.rightMargin));
    j = Math.max(getPaddingTop() + paramf.topMargin, Math.min(paramRect.top, j - getPaddingBottom() - paramInt2 - paramf.bottomMargin));
    paramRect.set(i, j, paramInt1 + i, paramInt2 + j);
  }
  
  private e1 dispatchApplyWindowInsetsToBehaviors(e1 parame1)
  {
    if (parame1.o()) {
      return parame1;
    }
    int i = 0;
    int j = getChildCount();
    e1 locale1;
    for (;;)
    {
      locale1 = parame1;
      if (i >= j) {
        break;
      }
      View localView = getChildAt(i);
      locale1 = parame1;
      if (a0.w(localView))
      {
        c localc = ((f)localView.getLayoutParams()).f();
        locale1 = parame1;
        if (localc != null)
        {
          parame1 = localc.onApplyWindowInsets(this, localView, parame1);
          locale1 = parame1;
          if (parame1.o())
          {
            locale1 = parame1;
            break;
          }
        }
      }
      i++;
      parame1 = locale1;
    }
    return locale1;
  }
  
  private void getDesiredAnchoredChildRectWithoutConstraints(View paramView, int paramInt1, Rect paramRect1, Rect paramRect2, f paramf, int paramInt2, int paramInt3)
  {
    int i = androidx.core.view.e.b(resolveAnchoredChildGravity(paramf.c), paramInt1);
    paramInt1 = androidx.core.view.e.b(resolveGravity(paramf.d), paramInt1);
    int j = i & 0x7;
    int k = i & 0x70;
    int m = paramInt1 & 0x7;
    i = paramInt1 & 0x70;
    if (m != 1)
    {
      if (m != 5) {
        paramInt1 = paramRect1.left;
      } else {
        paramInt1 = paramRect1.right;
      }
    }
    else {
      paramInt1 = paramRect1.left + paramRect1.width() / 2;
    }
    if (i != 16)
    {
      if (i != 80) {
        i = paramRect1.top;
      } else {
        i = paramRect1.bottom;
      }
    }
    else {
      i = paramRect1.top + paramRect1.height() / 2;
    }
    if (j != 1)
    {
      m = paramInt1;
      if (j != 5) {
        m = paramInt1 - paramInt2;
      }
    }
    else
    {
      m = paramInt1 - paramInt2 / 2;
    }
    if (k != 16)
    {
      paramInt1 = i;
      if (k != 80) {
        paramInt1 = i - paramInt3;
      }
    }
    else
    {
      paramInt1 = i - paramInt3 / 2;
    }
    paramRect2.set(m, paramInt1, paramInt2 + m, paramInt3 + paramInt1);
  }
  
  private int getKeyline(int paramInt)
  {
    Object localObject = this.mKeylines;
    if (localObject == null)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("No keylines defined for ");
      ((StringBuilder)localObject).append(this);
      ((StringBuilder)localObject).append(" - attempted index lookup ");
      ((StringBuilder)localObject).append(paramInt);
      Log.e("CoordinatorLayout", ((StringBuilder)localObject).toString());
      return 0;
    }
    if ((paramInt >= 0) && (paramInt < localObject.length)) {
      return localObject[paramInt];
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Keyline index ");
    ((StringBuilder)localObject).append(paramInt);
    ((StringBuilder)localObject).append(" out of range for ");
    ((StringBuilder)localObject).append(this);
    Log.e("CoordinatorLayout", ((StringBuilder)localObject).toString());
    return 0;
  }
  
  private void getTopSortedChildren(List<View> paramList)
  {
    paramList.clear();
    boolean bool = isChildrenDrawingOrderEnabled();
    int i = getChildCount();
    for (int j = i - 1; j >= 0; j--)
    {
      int k;
      if (bool) {
        k = getChildDrawingOrder(i, j);
      } else {
        k = j;
      }
      paramList.add(getChildAt(k));
    }
    Comparator localComparator = TOP_SORTED_CHILDREN_COMPARATOR;
    if (localComparator != null) {
      Collections.sort(paramList, localComparator);
    }
  }
  
  private boolean hasDependencies(View paramView)
  {
    return this.mChildDag.j(paramView);
  }
  
  private void layoutChild(View paramView, int paramInt)
  {
    f localf = (f)paramView.getLayoutParams();
    Rect localRect1 = acquireTempRect();
    localRect1.set(getPaddingLeft() + localf.leftMargin, getPaddingTop() + localf.topMargin, getWidth() - getPaddingRight() - localf.rightMargin, getHeight() - getPaddingBottom() - localf.bottomMargin);
    if ((this.mLastInsets != null) && (a0.w(this)) && (!a0.w(paramView)))
    {
      localRect1.left += this.mLastInsets.i();
      localRect1.top += this.mLastInsets.k();
      localRect1.right -= this.mLastInsets.j();
      localRect1.bottom -= this.mLastInsets.h();
    }
    Rect localRect2 = acquireTempRect();
    androidx.core.view.e.a(resolveGravity(localf.c), paramView.getMeasuredWidth(), paramView.getMeasuredHeight(), localRect1, localRect2, paramInt);
    paramView.layout(localRect2.left, localRect2.top, localRect2.right, localRect2.bottom);
    releaseTempRect(localRect1);
    releaseTempRect(localRect2);
  }
  
  private void layoutChildWithAnchor(View paramView1, View paramView2, int paramInt)
  {
    Rect localRect1 = acquireTempRect();
    Rect localRect2 = acquireTempRect();
    try
    {
      getDescendantRect(paramView2, localRect1);
      getDesiredAnchoredChildRect(paramView1, paramInt, localRect1, localRect2);
      paramView1.layout(localRect2.left, localRect2.top, localRect2.right, localRect2.bottom);
      return;
    }
    finally
    {
      releaseTempRect(localRect1);
      releaseTempRect(localRect2);
    }
  }
  
  private void layoutChildWithKeyline(View paramView, int paramInt1, int paramInt2)
  {
    f localf = (f)paramView.getLayoutParams();
    int i = androidx.core.view.e.b(resolveKeylineGravity(localf.c), paramInt2);
    int j = i & 0x7;
    int k = i & 0x70;
    int m = getWidth();
    int n = getHeight();
    int i1 = paramView.getMeasuredWidth();
    int i2 = paramView.getMeasuredHeight();
    i = paramInt1;
    if (paramInt2 == 1) {
      i = m - paramInt1;
    }
    paramInt1 = getKeyline(i) - i1;
    paramInt2 = 0;
    if (j != 1)
    {
      if (j == 5) {
        paramInt1 += i1;
      }
    }
    else {
      paramInt1 += i1 / 2;
    }
    if (k != 16)
    {
      if (k == 80) {
        paramInt2 = i2 + 0;
      }
    }
    else {
      paramInt2 = 0 + i2 / 2;
    }
    paramInt1 = Math.max(getPaddingLeft() + localf.leftMargin, Math.min(paramInt1, m - getPaddingRight() - i1 - localf.rightMargin));
    paramInt2 = Math.max(getPaddingTop() + localf.topMargin, Math.min(paramInt2, n - getPaddingBottom() - i2 - localf.bottomMargin));
    paramView.layout(paramInt1, paramInt2, i1 + paramInt1, i2 + paramInt2);
  }
  
  private void offsetChildByInset(View paramView, Rect paramRect, int paramInt)
  {
    if (!a0.P(paramView)) {
      return;
    }
    if ((paramView.getWidth() > 0) && (paramView.getHeight() > 0))
    {
      f localf = (f)paramView.getLayoutParams();
      c localc = localf.f();
      Rect localRect1 = acquireTempRect();
      Rect localRect2 = acquireTempRect();
      localRect2.set(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom());
      if ((localc != null) && (localc.getInsetDodgeRect(this, paramView, localRect1)))
      {
        if (!localRect2.contains(localRect1))
        {
          paramView = new StringBuilder();
          paramView.append("Rect should be within the child's bounds. Rect:");
          paramView.append(localRect1.toShortString());
          paramView.append(" | Bounds:");
          paramView.append(localRect2.toShortString());
          throw new IllegalArgumentException(paramView.toString());
        }
      }
      else {
        localRect1.set(localRect2);
      }
      releaseTempRect(localRect2);
      if (localRect1.isEmpty())
      {
        releaseTempRect(localRect1);
        return;
      }
      int i = androidx.core.view.e.b(localf.h, paramInt);
      int j = 1;
      if ((i & 0x30) == 48)
      {
        paramInt = localRect1.top - localf.topMargin - localf.j;
        k = paramRect.top;
        if (paramInt < k)
        {
          setInsetOffsetY(paramView, k - paramInt);
          paramInt = 1;
          break label254;
        }
      }
      paramInt = 0;
      label254:
      int k = paramInt;
      if ((i & 0x50) == 80)
      {
        int m = getHeight() - localRect1.bottom - localf.bottomMargin + localf.j;
        int n = paramRect.bottom;
        k = paramInt;
        if (m < n)
        {
          setInsetOffsetY(paramView, m - n);
          k = 1;
        }
      }
      if (k == 0) {
        setInsetOffsetY(paramView, 0);
      }
      if ((i & 0x3) == 3)
      {
        paramInt = localRect1.left - localf.leftMargin - localf.i;
        k = paramRect.left;
        if (paramInt < k)
        {
          setInsetOffsetX(paramView, k - paramInt);
          paramInt = 1;
          break label385;
        }
      }
      paramInt = 0;
      label385:
      if ((i & 0x5) == 5)
      {
        i = getWidth() - localRect1.right - localf.rightMargin + localf.i;
        k = paramRect.right;
        if (i < k)
        {
          setInsetOffsetX(paramView, i - k);
          paramInt = j;
        }
      }
      if (paramInt == 0) {
        setInsetOffsetX(paramView, 0);
      }
      releaseTempRect(localRect1);
    }
  }
  
  static c parseBehavior(Context paramContext, AttributeSet paramAttributeSet, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    Object localObject1;
    Object localObject2;
    if (paramString.startsWith("."))
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(paramContext.getPackageName());
      ((StringBuilder)localObject1).append(paramString);
      localObject1 = ((StringBuilder)localObject1).toString();
    }
    else if (paramString.indexOf('.') >= 0)
    {
      localObject1 = paramString;
    }
    else
    {
      localObject2 = WIDGET_PACKAGE_NAME;
      localObject1 = paramString;
      if (!TextUtils.isEmpty((CharSequence)localObject2))
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append((String)localObject2);
        ((StringBuilder)localObject1).append('.');
        ((StringBuilder)localObject1).append(paramString);
        localObject1 = ((StringBuilder)localObject1).toString();
      }
    }
    try
    {
      Object localObject3 = sConstructors;
      localObject2 = (Map)((ThreadLocal)localObject3).get();
      paramString = (String)localObject2;
      if (localObject2 == null)
      {
        paramString = new java/util/HashMap;
        paramString.<init>();
        ((ThreadLocal)localObject3).set(paramString);
      }
      localObject3 = (Constructor)paramString.get(localObject1);
      localObject2 = localObject3;
      if (localObject3 == null)
      {
        localObject2 = Class.forName((String)localObject1, false, paramContext.getClassLoader()).getConstructor(CONSTRUCTOR_PARAMS);
        ((AccessibleObject)localObject2).setAccessible(true);
        paramString.put(localObject1, localObject2);
      }
      paramContext = (c)((Constructor)localObject2).newInstance(new Object[] { paramContext, paramAttributeSet });
      return paramContext;
    }
    catch (Exception paramContext)
    {
      paramAttributeSet = new StringBuilder();
      paramAttributeSet.append("Could not inflate Behavior subclass ");
      paramAttributeSet.append((String)localObject1);
      throw new RuntimeException(paramAttributeSet.toString(), paramContext);
    }
  }
  
  private boolean performIntercept(MotionEvent paramMotionEvent, int paramInt)
  {
    int i = paramMotionEvent.getActionMasked();
    List localList = this.mTempList1;
    getTopSortedChildren(localList);
    int j = localList.size();
    Object localObject1 = null;
    int k = 0;
    int m = k;
    int i2;
    for (int i1 = m;; i1 = i2)
    {
      i2 = m;
      if (k >= j) {
        break;
      }
      View localView = (View)localList.get(k);
      Object localObject2 = (f)localView.getLayoutParams();
      c localc = ((f)localObject2).f();
      int i3;
      if (((m != 0) || (i1 != 0)) && (i != 0))
      {
        localObject2 = localObject1;
        i3 = m;
        i2 = i1;
        if (localc != null)
        {
          localObject2 = localObject1;
          if (localObject1 == null)
          {
            long l = SystemClock.uptimeMillis();
            localObject2 = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
          }
          if (paramInt != 0)
          {
            if (paramInt != 1)
            {
              i3 = m;
              i2 = i1;
            }
            else
            {
              localc.onTouchEvent(this, localView, (MotionEvent)localObject2);
              i3 = m;
              i2 = i1;
            }
          }
          else
          {
            localc.onInterceptTouchEvent(this, localView, (MotionEvent)localObject2);
            i3 = m;
            i2 = i1;
          }
        }
      }
      else
      {
        i1 = m;
        if (m == 0)
        {
          i1 = m;
          if (localc != null)
          {
            if (paramInt != 0)
            {
              if (paramInt == 1) {
                n = localc.onTouchEvent(this, localView, paramMotionEvent);
              }
            }
            else {
              n = localc.onInterceptTouchEvent(this, localView, paramMotionEvent);
            }
            i1 = n;
            if (n != 0)
            {
              this.mBehaviorTouchView = localView;
              i1 = n;
            }
          }
        }
        boolean bool1 = ((f)localObject2).c();
        boolean bool2 = ((f)localObject2).i(this, localView);
        if ((bool2) && (!bool1)) {
          n = 1;
        } else {
          n = 0;
        }
        localObject2 = localObject1;
        i3 = i1;
        i2 = n;
        if (bool2)
        {
          localObject2 = localObject1;
          i3 = i1;
          i2 = n;
          if (n == 0)
          {
            i2 = i1;
            break;
          }
        }
      }
      k++;
      localObject1 = localObject2;
      int n = i3;
    }
    localList.clear();
    return i2;
  }
  
  private void prepareChildren()
  {
    this.mDependencySortedChildren.clear();
    this.mChildDag.c();
    int i = getChildCount();
    for (int j = 0; j < i; j++)
    {
      View localView1 = getChildAt(j);
      f localf = getResolvedLayoutParams(localView1);
      localf.d(this, localView1);
      this.mChildDag.b(localView1);
      for (int k = 0; k < i; k++) {
        if (k != j)
        {
          View localView2 = getChildAt(k);
          if (localf.b(this, localView1, localView2))
          {
            if (!this.mChildDag.d(localView2)) {
              this.mChildDag.b(localView2);
            }
            this.mChildDag.a(localView2, localView1);
          }
        }
      }
    }
    this.mDependencySortedChildren.addAll(this.mChildDag.i());
    Collections.reverse(this.mDependencySortedChildren);
  }
  
  private static void releaseTempRect(Rect paramRect)
  {
    paramRect.setEmpty();
    sRectPool.a(paramRect);
  }
  
  private void resetTouchBehaviors(boolean paramBoolean)
  {
    int i = getChildCount();
    for (int j = 0; j < i; j++)
    {
      View localView = getChildAt(j);
      c localc = ((f)localView.getLayoutParams()).f();
      if (localc != null)
      {
        long l = SystemClock.uptimeMillis();
        MotionEvent localMotionEvent = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
        if (paramBoolean) {
          localc.onInterceptTouchEvent(this, localView, localMotionEvent);
        } else {
          localc.onTouchEvent(this, localView, localMotionEvent);
        }
        localMotionEvent.recycle();
      }
    }
    for (j = 0; j < i; j++) {
      ((f)getChildAt(j).getLayoutParams()).m();
    }
    this.mBehaviorTouchView = null;
    this.mDisallowInterceptReset = false;
  }
  
  private static int resolveAnchoredChildGravity(int paramInt)
  {
    int i = paramInt;
    if (paramInt == 0) {
      i = 17;
    }
    return i;
  }
  
  private static int resolveGravity(int paramInt)
  {
    int i = paramInt;
    if ((paramInt & 0x7) == 0) {
      i = paramInt | 0x800003;
    }
    paramInt = i;
    if ((i & 0x70) == 0) {
      paramInt = i | 0x30;
    }
    return paramInt;
  }
  
  private static int resolveKeylineGravity(int paramInt)
  {
    int i = paramInt;
    if (paramInt == 0) {
      i = 8388661;
    }
    return i;
  }
  
  private void setInsetOffsetX(View paramView, int paramInt)
  {
    f localf = (f)paramView.getLayoutParams();
    int i = localf.i;
    if (i != paramInt)
    {
      a0.V(paramView, paramInt - i);
      localf.i = paramInt;
    }
  }
  
  private void setInsetOffsetY(View paramView, int paramInt)
  {
    f localf = (f)paramView.getLayoutParams();
    int i = localf.j;
    if (i != paramInt)
    {
      a0.W(paramView, paramInt - i);
      localf.j = paramInt;
    }
  }
  
  private void setupForInsets()
  {
    if (a0.w(this))
    {
      if (this.mApplyWindowInsetsListener == null) {
        this.mApplyWindowInsetsListener = new a();
      }
      a0.z0(this, this.mApplyWindowInsetsListener);
      setSystemUiVisibility(1280);
    }
    else
    {
      a0.z0(this, null);
    }
  }
  
  void addPreDrawListener()
  {
    if (this.mIsAttachedToWindow)
    {
      if (this.mOnPreDrawListener == null) {
        this.mOnPreDrawListener = new g();
      }
      getViewTreeObserver().addOnPreDrawListener(this.mOnPreDrawListener);
    }
    this.mNeedsPreDrawListener = true;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    boolean bool;
    if (((paramLayoutParams instanceof f)) && (super.checkLayoutParams(paramLayoutParams))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void dispatchDependentViewsChanged(View paramView)
  {
    List localList = this.mChildDag.g(paramView);
    if ((localList != null) && (!localList.isEmpty())) {
      for (int i = 0; i < localList.size(); i++)
      {
        View localView = (View)localList.get(i);
        c localc = ((f)localView.getLayoutParams()).f();
        if (localc != null) {
          localc.onDependentViewChanged(this, localView, paramView);
        }
      }
    }
  }
  
  public boolean doViewsOverlap(View paramView1, View paramView2)
  {
    int i = paramView1.getVisibility();
    boolean bool1 = false;
    if ((i == 0) && (paramView2.getVisibility() == 0))
    {
      Rect localRect = acquireTempRect();
      if (paramView1.getParent() != this) {
        bool2 = true;
      } else {
        bool2 = false;
      }
      getChildRect(paramView1, bool2, localRect);
      paramView1 = acquireTempRect();
      if (paramView2.getParent() != this) {
        bool2 = true;
      } else {
        bool2 = false;
      }
      getChildRect(paramView2, bool2, paramView1);
      boolean bool2 = bool1;
      try
      {
        if (localRect.left <= paramView1.right)
        {
          bool2 = bool1;
          if (localRect.top <= paramView1.bottom)
          {
            bool2 = bool1;
            if (localRect.right >= paramView1.left)
            {
              int j = localRect.bottom;
              i = paramView1.top;
              bool2 = bool1;
              if (j >= i) {
                bool2 = true;
              }
            }
          }
        }
        return bool2;
      }
      finally
      {
        releaseTempRect(localRect);
        releaseTempRect(paramView1);
      }
    }
    return false;
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    f localf = (f)paramView.getLayoutParams();
    c localc = localf.a;
    if (localc != null)
    {
      float f = localc.getScrimOpacity(this, paramView);
      if (f > 0.0F)
      {
        if (this.mScrimPaint == null) {
          this.mScrimPaint = new Paint();
        }
        this.mScrimPaint.setColor(localf.a.getScrimColor(this, paramView));
        this.mScrimPaint.setAlpha(clamp(Math.round(f * 255.0F), 0, 255));
        int i = paramCanvas.save();
        if (paramView.isOpaque()) {
          paramCanvas.clipRect(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom(), Region.Op.DIFFERENCE);
        }
        paramCanvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), this.mScrimPaint);
        paramCanvas.restoreToCount(i);
      }
    }
    return super.drawChild(paramCanvas, paramView, paramLong);
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    int[] arrayOfInt = getDrawableState();
    Drawable localDrawable = this.mStatusBarBackground;
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (localDrawable != null)
    {
      bool2 = bool1;
      if (localDrawable.isStateful()) {
        bool2 = false | localDrawable.setState(arrayOfInt);
      }
    }
    if (bool2) {
      invalidate();
    }
  }
  
  void ensurePreDrawListener()
  {
    int i = getChildCount();
    int j = 0;
    int m;
    for (int k = 0;; k++)
    {
      m = j;
      if (k >= i) {
        break;
      }
      if (hasDependencies(getChildAt(k)))
      {
        m = 1;
        break;
      }
    }
    if (m != this.mNeedsPreDrawListener) {
      if (m != 0) {
        addPreDrawListener();
      } else {
        removePreDrawListener();
      }
    }
  }
  
  protected f generateDefaultLayoutParams()
  {
    return new f(-2, -2);
  }
  
  public f generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new f(getContext(), paramAttributeSet);
  }
  
  protected f generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof f)) {
      return new f((f)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new f((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new f(paramLayoutParams);
  }
  
  void getChildRect(View paramView, boolean paramBoolean, Rect paramRect)
  {
    if ((!paramView.isLayoutRequested()) && (paramView.getVisibility() != 8))
    {
      if (paramBoolean) {
        getDescendantRect(paramView, paramRect);
      } else {
        paramRect.set(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom());
      }
      return;
    }
    paramRect.setEmpty();
  }
  
  public List<View> getDependencies(View paramView)
  {
    paramView = this.mChildDag.h(paramView);
    this.mTempDependenciesList.clear();
    if (paramView != null) {
      this.mTempDependenciesList.addAll(paramView);
    }
    return this.mTempDependenciesList;
  }
  
  final List<View> getDependencySortedChildren()
  {
    prepareChildren();
    return Collections.unmodifiableList(this.mDependencySortedChildren);
  }
  
  public List<View> getDependents(View paramView)
  {
    paramView = this.mChildDag.g(paramView);
    this.mTempDependenciesList.clear();
    if (paramView != null) {
      this.mTempDependenciesList.addAll(paramView);
    }
    return this.mTempDependenciesList;
  }
  
  void getDescendantRect(View paramView, Rect paramRect)
  {
    b.a(this, paramView, paramRect);
  }
  
  void getDesiredAnchoredChildRect(View paramView, int paramInt, Rect paramRect1, Rect paramRect2)
  {
    f localf = (f)paramView.getLayoutParams();
    int i = paramView.getMeasuredWidth();
    int j = paramView.getMeasuredHeight();
    getDesiredAnchoredChildRectWithoutConstraints(paramView, paramInt, paramRect1, paramRect2, localf, i, j);
    constrainChildRect(localf, paramRect2, i, j);
  }
  
  void getLastChildRect(View paramView, Rect paramRect)
  {
    paramRect.set(((f)paramView.getLayoutParams()).h());
  }
  
  public final e1 getLastWindowInsets()
  {
    return this.mLastInsets;
  }
  
  public int getNestedScrollAxes()
  {
    return this.mNestedScrollingParentHelper.a();
  }
  
  f getResolvedLayoutParams(View paramView)
  {
    f localf = (f)paramView.getLayoutParams();
    if (!localf.b) {
      if ((paramView instanceof b))
      {
        paramView = ((b)paramView).getBehavior();
        if (paramView == null) {
          Log.e("CoordinatorLayout", "Attached behavior class is null");
        }
        localf.o(paramView);
        localf.b = true;
      }
      else
      {
        Class localClass = paramView.getClass();
        Object localObject;
        for (paramView = null; localClass != null; paramView = (View)localObject)
        {
          localObject = (d)localClass.getAnnotation(d.class);
          paramView = (View)localObject;
          if (localObject != null) {
            break;
          }
          localClass = localClass.getSuperclass();
        }
        if (paramView != null) {
          try
          {
            localf.o((c)paramView.value().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
          }
          catch (Exception localException)
          {
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("Default behavior class ");
            ((StringBuilder)localObject).append(paramView.value().getName());
            ((StringBuilder)localObject).append(" could not be instantiated. Did you forget a default constructor?");
            Log.e("CoordinatorLayout", ((StringBuilder)localObject).toString(), localException);
          }
        }
        localf.b = true;
      }
    }
    return localf;
  }
  
  public Drawable getStatusBarBackground()
  {
    return this.mStatusBarBackground;
  }
  
  protected int getSuggestedMinimumHeight()
  {
    return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
  }
  
  protected int getSuggestedMinimumWidth()
  {
    return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
  }
  
  public boolean isPointInChildBounds(View paramView, int paramInt1, int paramInt2)
  {
    Rect localRect = acquireTempRect();
    getDescendantRect(paramView, localRect);
    try
    {
      boolean bool = localRect.contains(paramInt1, paramInt2);
      return bool;
    }
    finally
    {
      releaseTempRect(localRect);
    }
  }
  
  void offsetChildToAnchor(View paramView, int paramInt)
  {
    f localf = (f)paramView.getLayoutParams();
    if (localf.k != null)
    {
      Rect localRect1 = acquireTempRect();
      Rect localRect2 = acquireTempRect();
      Rect localRect3 = acquireTempRect();
      getDescendantRect(localf.k, localRect1);
      int i = 0;
      getChildRect(paramView, false, localRect2);
      int j = paramView.getMeasuredWidth();
      int k = paramView.getMeasuredHeight();
      getDesiredAnchoredChildRectWithoutConstraints(paramView, paramInt, localRect1, localRect3, localf, j, k);
      if (localRect3.left == localRect2.left)
      {
        paramInt = i;
        if (localRect3.top == localRect2.top) {}
      }
      else
      {
        paramInt = 1;
      }
      constrainChildRect(localf, localRect3, j, k);
      i = localRect3.left - localRect2.left;
      k = localRect3.top - localRect2.top;
      if (i != 0) {
        a0.V(paramView, i);
      }
      if (k != 0) {
        a0.W(paramView, k);
      }
      if (paramInt != 0)
      {
        c localc = localf.f();
        if (localc != null) {
          localc.onDependentViewChanged(this, paramView, localf.k);
        }
      }
      releaseTempRect(localRect1);
      releaseTempRect(localRect2);
      releaseTempRect(localRect3);
    }
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    resetTouchBehaviors(false);
    if (this.mNeedsPreDrawListener)
    {
      if (this.mOnPreDrawListener == null) {
        this.mOnPreDrawListener = new g();
      }
      getViewTreeObserver().addOnPreDrawListener(this.mOnPreDrawListener);
    }
    if ((this.mLastInsets == null) && (a0.w(this))) {
      a0.i0(this);
    }
    this.mIsAttachedToWindow = true;
  }
  
  final void onChildViewsChanged(int paramInt)
  {
    int i = a0.z(this);
    int j = this.mDependencySortedChildren.size();
    Rect localRect1 = acquireTempRect();
    Rect localRect2 = acquireTempRect();
    Rect localRect3 = acquireTempRect();
    for (int k = 0; k < j; k++)
    {
      View localView = (View)this.mDependencySortedChildren.get(k);
      Object localObject1 = (f)localView.getLayoutParams();
      if ((paramInt != 0) || (localView.getVisibility() != 8))
      {
        Object localObject2;
        for (int m = 0; m < k; m++)
        {
          localObject2 = (View)this.mDependencySortedChildren.get(m);
          if (((f)localObject1).l == localObject2) {
            offsetChildToAnchor(localView, i);
          }
        }
        getChildRect(localView, true, localRect2);
        if ((((f)localObject1).g != 0) && (!localRect2.isEmpty()))
        {
          int n = androidx.core.view.e.b(((f)localObject1).g, i);
          m = n & 0x70;
          if (m != 48)
          {
            if (m == 80) {
              localRect1.bottom = Math.max(localRect1.bottom, getHeight() - localRect2.top);
            }
          }
          else {
            localRect1.top = Math.max(localRect1.top, localRect2.bottom);
          }
          m = n & 0x7;
          if (m != 3)
          {
            if (m == 5) {
              localRect1.right = Math.max(localRect1.right, getWidth() - localRect2.left);
            }
          }
          else {
            localRect1.left = Math.max(localRect1.left, localRect2.right);
          }
        }
        if ((((f)localObject1).h != 0) && (localView.getVisibility() == 0)) {
          offsetChildByInset(localView, localRect1, i);
        }
        if (paramInt != 2)
        {
          getLastChildRect(localView, localRect3);
          if (!localRect3.equals(localRect2)) {
            recordLastChildRect(localView, localRect2);
          }
        }
        else
        {
          for (m = k + 1; m < j; m++)
          {
            localObject1 = (View)this.mDependencySortedChildren.get(m);
            f localf = (f)((View)localObject1).getLayoutParams();
            localObject2 = localf.f();
            if ((localObject2 != null) && (((c)localObject2).layoutDependsOn(this, (View)localObject1, localView))) {
              if ((paramInt == 0) && (localf.g()))
              {
                localf.k();
              }
              else
              {
                boolean bool;
                if (paramInt != 2)
                {
                  bool = ((c)localObject2).onDependentViewChanged(this, (View)localObject1, localView);
                }
                else
                {
                  ((c)localObject2).onDependentViewRemoved(this, (View)localObject1, localView);
                  bool = true;
                }
                if (paramInt == 1) {
                  localf.p(bool);
                }
              }
            }
          }
        }
      }
    }
    releaseTempRect(localRect1);
    releaseTempRect(localRect2);
    releaseTempRect(localRect3);
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    resetTouchBehaviors(false);
    if ((this.mNeedsPreDrawListener) && (this.mOnPreDrawListener != null)) {
      getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener);
    }
    View localView = this.mNestedScrollingTarget;
    if (localView != null) {
      onStopNestedScroll(localView);
    }
    this.mIsAttachedToWindow = false;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((this.mDrawStatusBarBackground) && (this.mStatusBarBackground != null))
    {
      e1 locale1 = this.mLastInsets;
      int i;
      if (locale1 != null) {
        i = locale1.k();
      } else {
        i = 0;
      }
      if (i > 0)
      {
        this.mStatusBarBackground.setBounds(0, 0, getWidth(), i);
        this.mStatusBarBackground.draw(paramCanvas);
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getActionMasked();
    if (i == 0) {
      resetTouchBehaviors(true);
    }
    boolean bool = performIntercept(paramMotionEvent, 0);
    if ((i == 1) || (i == 3)) {
      resetTouchBehaviors(true);
    }
    return bool;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt2 = a0.z(this);
    paramInt3 = this.mDependencySortedChildren.size();
    for (paramInt1 = 0; paramInt1 < paramInt3; paramInt1++)
    {
      View localView = (View)this.mDependencySortedChildren.get(paramInt1);
      if (localView.getVisibility() != 8)
      {
        c localc = ((f)localView.getLayoutParams()).f();
        if ((localc == null) || (!localc.onLayoutChild(this, localView, paramInt2))) {
          onLayoutChild(localView, paramInt2);
        }
      }
    }
  }
  
  public void onLayoutChild(View paramView, int paramInt)
  {
    f localf = (f)paramView.getLayoutParams();
    if (!localf.a())
    {
      View localView = localf.k;
      if (localView != null)
      {
        layoutChildWithAnchor(paramView, localView, paramInt);
      }
      else
      {
        int i = localf.e;
        if (i >= 0) {
          layoutChildWithKeyline(paramView, i, paramInt);
        } else {
          layoutChild(paramView, paramInt);
        }
      }
      return;
    }
    throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    prepareChildren();
    ensurePreDrawListener();
    int i = getPaddingLeft();
    int j = getPaddingTop();
    int k = getPaddingRight();
    int m = getPaddingBottom();
    int n = a0.z(this);
    int i1;
    if (n == 1) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    int i2 = View.MeasureSpec.getMode(paramInt1);
    int i3 = View.MeasureSpec.getSize(paramInt1);
    int i4 = View.MeasureSpec.getMode(paramInt2);
    int i5 = View.MeasureSpec.getSize(paramInt2);
    int i6 = getSuggestedMinimumWidth();
    int i7 = getSuggestedMinimumHeight();
    int i8;
    if ((this.mLastInsets != null) && (a0.w(this))) {
      i8 = 1;
    } else {
      i8 = 0;
    }
    int i9 = this.mDependencySortedChildren.size();
    int i10 = 0;
    int i11 = 0;
    int i13;
    for (int i12 = i;; i12 = i13)
    {
      i13 = i12;
      if (i11 >= i9) {
        break;
      }
      View localView = (View)this.mDependencySortedChildren.get(i11);
      if (localView.getVisibility() != 8)
      {
        f localf = (f)localView.getLayoutParams();
        i12 = localf.e;
        int i14;
        if ((i12 >= 0) && (i2 != 0))
        {
          i14 = getKeyline(i12);
          i12 = androidx.core.view.e.b(resolveKeylineGravity(localf.c), n) & 0x7;
          if (((i12 == 3) && (i1 == 0)) || ((i12 == 5) && (i1 != 0)))
          {
            i12 = Math.max(0, i3 - k - i14);
            break label302;
          }
          if (((i12 == 5) && (i1 == 0)) || ((i12 == 3) && (i1 != 0)))
          {
            i12 = Math.max(0, i14 - i13);
            break label302;
          }
        }
        i12 = 0;
        label302:
        int i15 = i10;
        int i17;
        if ((i8 != 0) && (!a0.w(localView)))
        {
          i10 = this.mLastInsets.i();
          int i16 = this.mLastInsets.j();
          i14 = this.mLastInsets.k();
          i17 = this.mLastInsets.h();
          i10 = View.MeasureSpec.makeMeasureSpec(i3 - (i10 + i16), i2);
          i14 = View.MeasureSpec.makeMeasureSpec(i5 - (i14 + i17), i4);
          i17 = i10;
          i10 = i14;
        }
        else
        {
          i14 = paramInt1;
          i10 = paramInt2;
          i17 = i14;
        }
        c localc = localf.f();
        if (localc != null) {
          if (localc.onMeasureChild(this, localView, i17, i12, i10, 0)) {
            break label452;
          }
        }
        onMeasureChild(localView, i17, i12, i10, 0);
        label452:
        i6 = Math.max(i6, i + k + localView.getMeasuredWidth() + localf.leftMargin + localf.rightMargin);
        i7 = Math.max(i7, j + m + localView.getMeasuredHeight() + localf.topMargin + localf.bottomMargin);
        i10 = View.combineMeasuredStates(i15, localView.getMeasuredState());
      }
      i11++;
    }
    setMeasuredDimension(View.resolveSizeAndState(i6, paramInt1, 0xFF000000 & i10), View.resolveSizeAndState(i7, paramInt2, i10 << 16));
  }
  
  public void onMeasureChild(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    measureChildWithMargins(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    int i = getChildCount();
    int j = 0;
    int n;
    for (int k = j; j < i; k = n)
    {
      View localView = getChildAt(j);
      int m;
      if (localView.getVisibility() == 8)
      {
        m = k;
      }
      else
      {
        Object localObject = (f)localView.getLayoutParams();
        if (!((f)localObject).j(0))
        {
          m = k;
        }
        else
        {
          localObject = ((f)localObject).f();
          m = k;
          if (localObject != null) {
            n = k | ((c)localObject).onNestedFling(this, localView, paramView, paramFloat1, paramFloat2, paramBoolean);
          }
        }
      }
      j++;
    }
    if (k != 0) {
      onChildViewsChanged(1);
    }
    return k;
  }
  
  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2)
  {
    int i = getChildCount();
    int j = 0;
    int n;
    for (int k = j; j < i; k = n)
    {
      View localView = getChildAt(j);
      int m;
      if (localView.getVisibility() == 8)
      {
        m = k;
      }
      else
      {
        Object localObject = (f)localView.getLayoutParams();
        if (!((f)localObject).j(0))
        {
          m = k;
        }
        else
        {
          localObject = ((f)localObject).f();
          m = k;
          if (localObject != null) {
            n = k | ((c)localObject).onNestedPreFling(this, localView, paramView, paramFloat1, paramFloat2);
          }
        }
      }
      j++;
    }
    return k;
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    onNestedPreScroll(paramView, paramInt1, paramInt2, paramArrayOfInt, 0);
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    int i = getChildCount();
    int j = 0;
    int k = j;
    int m = k;
    int n = m;
    int i1 = m;
    m = k;
    while (m < i)
    {
      Object localObject1 = getChildAt(m);
      int i2;
      if (((View)localObject1).getVisibility() == 8)
      {
        i2 = i1;
        k = n;
      }
      else
      {
        Object localObject2 = (f)((View)localObject1).getLayoutParams();
        if (!((f)localObject2).j(paramInt3))
        {
          i2 = i1;
          k = n;
        }
        else
        {
          c localc = ((f)localObject2).f();
          i2 = i1;
          k = n;
          if (localc != null)
          {
            localObject2 = this.mBehaviorConsumed;
            localObject2[0] = 0;
            localObject2[1] = 0;
            localc.onNestedPreScroll(this, (View)localObject1, paramView, paramInt1, paramInt2, (int[])localObject2, paramInt3);
            localObject1 = this.mBehaviorConsumed;
            if (paramInt1 > 0) {
              k = Math.max(i1, localObject1[0]);
            } else {
              k = Math.min(i1, localObject1[0]);
            }
            i1 = k;
            localObject1 = this.mBehaviorConsumed;
            if (paramInt2 > 0) {
              k = Math.max(n, localObject1[1]);
            } else {
              k = Math.min(n, localObject1[1]);
            }
            j = 1;
            i2 = i1;
          }
        }
      }
      m++;
      i1 = i2;
      n = k;
    }
    paramArrayOfInt[0] = i1;
    paramArrayOfInt[1] = n;
    if (j != 0) {
      onChildViewsChanged(1);
    }
  }
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    onNestedScroll(paramView, paramInt1, paramInt2, paramInt3, paramInt4, 0);
  }
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    onNestedScroll(paramView, paramInt1, paramInt2, paramInt3, paramInt4, 0, this.mNestedScrollingV2ConsumedCompat);
  }
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int[] paramArrayOfInt)
  {
    int i = getChildCount();
    int j = 0;
    int k = j;
    int m = k;
    int n = m;
    int i1 = m;
    m = k;
    int i2 = j;
    while (m < i)
    {
      Object localObject1 = getChildAt(m);
      if (((View)localObject1).getVisibility() == 8)
      {
        j = i1;
        k = n;
      }
      else
      {
        Object localObject2 = (f)((View)localObject1).getLayoutParams();
        if (!((f)localObject2).j(paramInt5))
        {
          j = i1;
          k = n;
        }
        else
        {
          c localc = ((f)localObject2).f();
          j = i1;
          k = n;
          if (localc != null)
          {
            localObject2 = this.mBehaviorConsumed;
            localObject2[0] = 0;
            localObject2[1] = 0;
            localc.onNestedScroll(this, (View)localObject1, paramView, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, (int[])localObject2);
            localObject1 = this.mBehaviorConsumed;
            if (paramInt3 > 0) {
              k = Math.max(i1, localObject1[0]);
            } else {
              k = Math.min(i1, localObject1[0]);
            }
            j = k;
            if (paramInt4 > 0) {
              k = Math.max(n, this.mBehaviorConsumed[1]);
            } else {
              k = Math.min(n, this.mBehaviorConsumed[1]);
            }
            i2 = 1;
          }
        }
      }
      m++;
      i1 = j;
      n = k;
    }
    paramArrayOfInt[0] += i1;
    paramArrayOfInt[1] += n;
    if (i2 != 0) {
      onChildViewsChanged(1);
    }
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt)
  {
    onNestedScrollAccepted(paramView1, paramView2, paramInt, 0);
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt1, int paramInt2)
  {
    this.mNestedScrollingParentHelper.c(paramView1, paramView2, paramInt1, paramInt2);
    this.mNestedScrollingTarget = paramView2;
    int i = getChildCount();
    for (int j = 0; j < i; j++)
    {
      View localView = getChildAt(j);
      Object localObject = (f)localView.getLayoutParams();
      if (((f)localObject).j(paramInt2))
      {
        localObject = ((f)localObject).f();
        if (localObject != null) {
          ((c)localObject).onNestedScrollAccepted(this, localView, paramView1, paramView2, paramInt1, paramInt2);
        }
      }
    }
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
    SparseArray localSparseArray = paramParcelable.behaviorStates;
    int i = 0;
    int j = getChildCount();
    while (i < j)
    {
      View localView = getChildAt(i);
      int k = localView.getId();
      c localc = getResolvedLayoutParams(localView).f();
      if ((k != -1) && (localc != null))
      {
        paramParcelable = (Parcelable)localSparseArray.get(k);
        if (paramParcelable != null) {
          localc.onRestoreInstanceState(this, localView, paramParcelable);
        }
      }
      i++;
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    SparseArray localSparseArray = new SparseArray();
    int i = getChildCount();
    for (int j = 0; j < i; j++)
    {
      View localView = getChildAt(j);
      int k = localView.getId();
      Object localObject = ((f)localView.getLayoutParams()).f();
      if ((k != -1) && (localObject != null))
      {
        localObject = ((c)localObject).onSaveInstanceState(this, localView);
        if (localObject != null) {
          localSparseArray.append(k, localObject);
        }
      }
    }
    localSavedState.behaviorStates = localSparseArray;
    return localSavedState;
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    return onStartNestedScroll(paramView1, paramView2, paramInt, 0);
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt1, int paramInt2)
  {
    int i = getChildCount();
    int j = 0;
    int k = j;
    while (j < i)
    {
      View localView = getChildAt(j);
      if (localView.getVisibility() != 8)
      {
        f localf = (f)localView.getLayoutParams();
        c localc = localf.f();
        if (localc != null)
        {
          int m = localc.onStartNestedScroll(this, localView, paramView1, paramView2, paramInt1, paramInt2);
          k |= m;
          localf.r(paramInt2, m);
        }
        else
        {
          localf.r(paramInt2, false);
        }
      }
      j++;
    }
    return k;
  }
  
  public void onStopNestedScroll(View paramView)
  {
    onStopNestedScroll(paramView, 0);
  }
  
  public void onStopNestedScroll(View paramView, int paramInt)
  {
    this.mNestedScrollingParentHelper.d(paramView, paramInt);
    int i = getChildCount();
    for (int j = 0; j < i; j++)
    {
      View localView = getChildAt(j);
      f localf = (f)localView.getLayoutParams();
      if (localf.j(paramInt))
      {
        c localc = localf.f();
        if (localc != null) {
          localc.onStopNestedScroll(this, localView, paramView, paramInt);
        }
        localf.l(paramInt);
        localf.k();
      }
    }
    this.mNestedScrollingTarget = null;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getActionMasked();
    boolean bool1;
    if (this.mBehaviorTouchView == null)
    {
      bool1 = performIntercept(paramMotionEvent, 1);
      bool2 = bool1;
      if (!bool1) {
        break label76;
      }
    }
    else
    {
      bool1 = false;
    }
    c localc = ((f)this.mBehaviorTouchView.getLayoutParams()).f();
    boolean bool2 = bool1;
    boolean bool3;
    if (localc != null)
    {
      bool3 = localc.onTouchEvent(this, this.mBehaviorTouchView, paramMotionEvent);
      bool2 = bool1;
      bool1 = bool3;
    }
    else
    {
      label76:
      bool1 = false;
    }
    View localView = this.mBehaviorTouchView;
    localc = null;
    if (localView == null)
    {
      bool3 = bool1 | super.onTouchEvent(paramMotionEvent);
      paramMotionEvent = localc;
    }
    else
    {
      bool3 = bool1;
      paramMotionEvent = localc;
      if (bool2)
      {
        long l = SystemClock.uptimeMillis();
        paramMotionEvent = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
        super.onTouchEvent(paramMotionEvent);
        bool3 = bool1;
      }
    }
    if (paramMotionEvent != null) {
      paramMotionEvent.recycle();
    }
    if ((i == 1) || (i == 3)) {
      resetTouchBehaviors(false);
    }
    return bool3;
  }
  
  void recordLastChildRect(View paramView, Rect paramRect)
  {
    ((f)paramView.getLayoutParams()).q(paramRect);
  }
  
  void removePreDrawListener()
  {
    if ((this.mIsAttachedToWindow) && (this.mOnPreDrawListener != null)) {
      getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener);
    }
    this.mNeedsPreDrawListener = false;
  }
  
  public boolean requestChildRectangleOnScreen(View paramView, Rect paramRect, boolean paramBoolean)
  {
    c localc = ((f)paramView.getLayoutParams()).f();
    if ((localc != null) && (localc.onRequestChildRectangleOnScreen(this, paramView, paramRect, paramBoolean))) {
      return true;
    }
    return super.requestChildRectangleOnScreen(paramView, paramRect, paramBoolean);
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    super.requestDisallowInterceptTouchEvent(paramBoolean);
    if ((paramBoolean) && (!this.mDisallowInterceptReset))
    {
      resetTouchBehaviors(false);
      this.mDisallowInterceptReset = true;
    }
  }
  
  public void setFitsSystemWindows(boolean paramBoolean)
  {
    super.setFitsSystemWindows(paramBoolean);
    setupForInsets();
  }
  
  public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener paramOnHierarchyChangeListener)
  {
    this.mOnHierarchyChangeListener = paramOnHierarchyChangeListener;
  }
  
  public void setStatusBarBackground(Drawable paramDrawable)
  {
    Drawable localDrawable1 = this.mStatusBarBackground;
    if (localDrawable1 != paramDrawable)
    {
      Drawable localDrawable2 = null;
      if (localDrawable1 != null) {
        localDrawable1.setCallback(null);
      }
      if (paramDrawable != null) {
        localDrawable2 = paramDrawable.mutate();
      }
      this.mStatusBarBackground = localDrawable2;
      if (localDrawable2 != null)
      {
        if (localDrawable2.isStateful()) {
          this.mStatusBarBackground.setState(getDrawableState());
        }
        androidx.core.graphics.drawable.a.m(this.mStatusBarBackground, a0.z(this));
        paramDrawable = this.mStatusBarBackground;
        boolean bool;
        if (getVisibility() == 0) {
          bool = true;
        } else {
          bool = false;
        }
        paramDrawable.setVisible(bool, false);
        this.mStatusBarBackground.setCallback(this);
      }
      a0.c0(this);
    }
  }
  
  public void setStatusBarBackgroundColor(int paramInt)
  {
    setStatusBarBackground(new ColorDrawable(paramInt));
  }
  
  public void setStatusBarBackgroundResource(int paramInt)
  {
    Drawable localDrawable;
    if (paramInt != 0) {
      localDrawable = androidx.core.content.a.e(getContext(), paramInt);
    } else {
      localDrawable = null;
    }
    setStatusBarBackground(localDrawable);
  }
  
  public void setVisibility(int paramInt)
  {
    super.setVisibility(paramInt);
    boolean bool;
    if (paramInt == 0) {
      bool = true;
    } else {
      bool = false;
    }
    Drawable localDrawable = this.mStatusBarBackground;
    if ((localDrawable != null) && (localDrawable.isVisible() != bool)) {
      this.mStatusBarBackground.setVisible(bool, false);
    }
  }
  
  final e1 setWindowInsets(e1 parame1)
  {
    e1 locale1 = parame1;
    if (!androidx.core.util.c.a(this.mLastInsets, parame1))
    {
      this.mLastInsets = parame1;
      boolean bool1 = true;
      boolean bool2;
      if ((parame1 != null) && (parame1.k() > 0)) {
        bool2 = true;
      } else {
        bool2 = false;
      }
      this.mDrawStatusBarBackground = bool2;
      if ((!bool2) && (getBackground() == null)) {
        bool2 = bool1;
      } else {
        bool2 = false;
      }
      setWillNotDraw(bool2);
      locale1 = dispatchApplyWindowInsetsToBehaviors(parame1);
      requestLayout();
    }
    return locale1;
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    boolean bool;
    if ((!super.verifyDrawable(paramDrawable)) && (paramDrawable != this.mStatusBarBackground)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  protected static class SavedState
    extends AbsSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new a();
    SparseArray<Parcelable> behaviorStates;
    
    public SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      int i = paramParcel.readInt();
      int[] arrayOfInt = new int[i];
      paramParcel.readIntArray(arrayOfInt);
      paramParcel = paramParcel.readParcelableArray(paramClassLoader);
      this.behaviorStates = new SparseArray(i);
      for (int j = 0; j < i; j++) {
        this.behaviorStates.append(arrayOfInt[j], paramParcel[j]);
      }
    }
    
    public SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      Object localObject = this.behaviorStates;
      int i = 0;
      int j;
      if (localObject != null) {
        j = ((SparseArray)localObject).size();
      } else {
        j = 0;
      }
      paramParcel.writeInt(j);
      int[] arrayOfInt = new int[j];
      localObject = new Parcelable[j];
      while (i < j)
      {
        arrayOfInt[i] = this.behaviorStates.keyAt(i);
        localObject[i] = ((Parcelable)this.behaviorStates.valueAt(i));
        i++;
      }
      paramParcel.writeIntArray(arrayOfInt);
      paramParcel.writeParcelableArray((Parcelable[])localObject, paramInt);
    }
    
    static final class a
      implements Parcelable.ClassLoaderCreator<CoordinatorLayout.SavedState>
    {
      public CoordinatorLayout.SavedState a(Parcel paramParcel)
      {
        return new CoordinatorLayout.SavedState(paramParcel, null);
      }
      
      public CoordinatorLayout.SavedState b(Parcel paramParcel, ClassLoader paramClassLoader)
      {
        return new CoordinatorLayout.SavedState(paramParcel, paramClassLoader);
      }
      
      public CoordinatorLayout.SavedState[] c(int paramInt)
      {
        return new CoordinatorLayout.SavedState[paramInt];
      }
    }
  }
  
  class a
    implements u
  {
    a() {}
    
    public e1 onApplyWindowInsets(View paramView, e1 parame1)
    {
      return CoordinatorLayout.this.setWindowInsets(parame1);
    }
  }
  
  public static abstract interface b
  {
    public abstract CoordinatorLayout.c getBehavior();
  }
  
  public static abstract class c<V extends View>
  {
    public c() {}
    
    public c(Context paramContext, AttributeSet paramAttributeSet) {}
    
    public static Object getTag(View paramView)
    {
      return ((CoordinatorLayout.f)paramView.getLayoutParams()).r;
    }
    
    public static void setTag(View paramView, Object paramObject)
    {
      ((CoordinatorLayout.f)paramView.getLayoutParams()).r = paramObject;
    }
    
    public boolean blocksInteractionBelow(CoordinatorLayout paramCoordinatorLayout, V paramV)
    {
      boolean bool;
      if (getScrimOpacity(paramCoordinatorLayout, paramV) > 0.0F) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public boolean getInsetDodgeRect(CoordinatorLayout paramCoordinatorLayout, V paramV, Rect paramRect)
    {
      return false;
    }
    
    public int getScrimColor(CoordinatorLayout paramCoordinatorLayout, V paramV)
    {
      return -16777216;
    }
    
    public float getScrimOpacity(CoordinatorLayout paramCoordinatorLayout, V paramV)
    {
      return 0.0F;
    }
    
    public boolean layoutDependsOn(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView)
    {
      return false;
    }
    
    public e1 onApplyWindowInsets(CoordinatorLayout paramCoordinatorLayout, V paramV, e1 parame1)
    {
      return parame1;
    }
    
    public void onAttachedToLayoutParams(CoordinatorLayout.f paramf) {}
    
    public boolean onDependentViewChanged(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView)
    {
      return false;
    }
    
    public void onDependentViewRemoved(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView) {}
    
    public void onDetachedFromLayoutParams() {}
    
    public boolean onInterceptTouchEvent(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
    {
      return false;
    }
    
    public boolean onLayoutChild(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt)
    {
      return false;
    }
    
    public boolean onMeasureChild(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return false;
    }
    
    public boolean onNestedFling(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
    {
      return false;
    }
    
    public boolean onNestedPreFling(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, float paramFloat1, float paramFloat2)
    {
      return false;
    }
    
    @Deprecated
    public void onNestedPreScroll(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt) {}
    
    public void onNestedPreScroll(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
    {
      if (paramInt3 == 0) {
        onNestedPreScroll(paramCoordinatorLayout, paramV, paramView, paramInt1, paramInt2, paramArrayOfInt);
      }
    }
    
    @Deprecated
    public void onNestedScroll(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
    
    @Deprecated
    public void onNestedScroll(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
    {
      if (paramInt5 == 0) {
        onNestedScroll(paramCoordinatorLayout, paramV, paramView, paramInt1, paramInt2, paramInt3, paramInt4);
      }
    }
    
    public void onNestedScroll(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int[] paramArrayOfInt)
    {
      paramArrayOfInt[0] += paramInt3;
      paramArrayOfInt[1] += paramInt4;
      onNestedScroll(paramCoordinatorLayout, paramV, paramView, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
    }
    
    @Deprecated
    public void onNestedScrollAccepted(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView1, View paramView2, int paramInt) {}
    
    public void onNestedScrollAccepted(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView1, View paramView2, int paramInt1, int paramInt2)
    {
      if (paramInt2 == 0) {
        onNestedScrollAccepted(paramCoordinatorLayout, paramV, paramView1, paramView2, paramInt1);
      }
    }
    
    public boolean onRequestChildRectangleOnScreen(CoordinatorLayout paramCoordinatorLayout, V paramV, Rect paramRect, boolean paramBoolean)
    {
      return false;
    }
    
    public void onRestoreInstanceState(CoordinatorLayout paramCoordinatorLayout, V paramV, Parcelable paramParcelable) {}
    
    public Parcelable onSaveInstanceState(CoordinatorLayout paramCoordinatorLayout, V paramV)
    {
      return View.BaseSavedState.EMPTY_STATE;
    }
    
    @Deprecated
    public boolean onStartNestedScroll(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView1, View paramView2, int paramInt)
    {
      return false;
    }
    
    public boolean onStartNestedScroll(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView1, View paramView2, int paramInt1, int paramInt2)
    {
      if (paramInt2 == 0) {
        return onStartNestedScroll(paramCoordinatorLayout, paramV, paramView1, paramView2, paramInt1);
      }
      return false;
    }
    
    @Deprecated
    public void onStopNestedScroll(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView) {}
    
    public void onStopNestedScroll(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, int paramInt)
    {
      if (paramInt == 0) {
        onStopNestedScroll(paramCoordinatorLayout, paramV, paramView);
      }
    }
    
    public boolean onTouchEvent(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
    {
      return false;
    }
  }
  
  @Deprecated
  @Retention(RetentionPolicy.RUNTIME)
  public static @interface d
  {
    Class<? extends CoordinatorLayout.c> value();
  }
  
  private class e
    implements ViewGroup.OnHierarchyChangeListener
  {
    e() {}
    
    public void onChildViewAdded(View paramView1, View paramView2)
    {
      ViewGroup.OnHierarchyChangeListener localOnHierarchyChangeListener = CoordinatorLayout.this.mOnHierarchyChangeListener;
      if (localOnHierarchyChangeListener != null) {
        localOnHierarchyChangeListener.onChildViewAdded(paramView1, paramView2);
      }
    }
    
    public void onChildViewRemoved(View paramView1, View paramView2)
    {
      CoordinatorLayout.this.onChildViewsChanged(2);
      ViewGroup.OnHierarchyChangeListener localOnHierarchyChangeListener = CoordinatorLayout.this.mOnHierarchyChangeListener;
      if (localOnHierarchyChangeListener != null) {
        localOnHierarchyChangeListener.onChildViewRemoved(paramView1, paramView2);
      }
    }
  }
  
  public static class f
    extends ViewGroup.MarginLayoutParams
  {
    CoordinatorLayout.c a;
    boolean b = false;
    public int c = 0;
    public int d = 0;
    public int e = -1;
    int f = -1;
    public int g = 0;
    public int h = 0;
    int i;
    int j;
    View k;
    View l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;
    final Rect q = new Rect();
    Object r;
    
    public f(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    f(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, s.c.e);
      this.c = localTypedArray.getInteger(s.c.f, 0);
      this.f = localTypedArray.getResourceId(s.c.g, -1);
      this.d = localTypedArray.getInteger(s.c.h, 0);
      this.e = localTypedArray.getInteger(s.c.l, -1);
      this.g = localTypedArray.getInt(s.c.k, 0);
      this.h = localTypedArray.getInt(s.c.j, 0);
      int i1 = s.c.i;
      boolean bool = localTypedArray.hasValue(i1);
      this.b = bool;
      if (bool) {
        this.a = CoordinatorLayout.parseBehavior(paramContext, paramAttributeSet, localTypedArray.getString(i1));
      }
      localTypedArray.recycle();
      paramContext = this.a;
      if (paramContext != null) {
        paramContext.onAttachedToLayoutParams(this);
      }
    }
    
    public f(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public f(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
    
    public f(f paramf)
    {
      super();
    }
    
    private void n(View paramView, CoordinatorLayout paramCoordinatorLayout)
    {
      View localView = paramCoordinatorLayout.findViewById(this.f);
      this.k = localView;
      if (localView != null)
      {
        if (localView == paramCoordinatorLayout)
        {
          if (paramCoordinatorLayout.isInEditMode())
          {
            this.l = null;
            this.k = null;
            return;
          }
          throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
        }
        for (localObject = localView.getParent(); (localObject != paramCoordinatorLayout) && (localObject != null); localObject = ((ViewParent)localObject).getParent())
        {
          if (localObject == paramView)
          {
            if (paramCoordinatorLayout.isInEditMode())
            {
              this.l = null;
              this.k = null;
              return;
            }
            throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
          }
          if ((localObject instanceof View)) {
            localView = (View)localObject;
          }
        }
        this.l = localView;
        return;
      }
      if (paramCoordinatorLayout.isInEditMode())
      {
        this.l = null;
        this.k = null;
        return;
      }
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Could not find CoordinatorLayout descendant view with id ");
      ((StringBuilder)localObject).append(paramCoordinatorLayout.getResources().getResourceName(this.f));
      ((StringBuilder)localObject).append(" to anchor view ");
      ((StringBuilder)localObject).append(paramView);
      throw new IllegalStateException(((StringBuilder)localObject).toString());
    }
    
    private boolean s(View paramView, int paramInt)
    {
      int i1 = androidx.core.view.e.b(((f)paramView.getLayoutParams()).g, paramInt);
      boolean bool;
      if ((i1 != 0) && ((androidx.core.view.e.b(this.h, paramInt) & i1) == i1)) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    private boolean t(View paramView, CoordinatorLayout paramCoordinatorLayout)
    {
      if (this.k.getId() != this.f) {
        return false;
      }
      View localView = this.k;
      ViewParent localViewParent = localView.getParent();
      while (localViewParent != paramCoordinatorLayout) {
        if ((localViewParent != null) && (localViewParent != paramView))
        {
          if ((localViewParent instanceof View)) {
            localView = (View)localViewParent;
          }
          localViewParent = localViewParent.getParent();
        }
        else
        {
          this.l = null;
          this.k = null;
          return false;
        }
      }
      this.l = localView;
      return true;
    }
    
    boolean a()
    {
      boolean bool;
      if ((this.k == null) && (this.f != -1)) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    boolean b(CoordinatorLayout paramCoordinatorLayout, View paramView1, View paramView2)
    {
      if ((paramView2 != this.l) && (!s(paramView2, a0.z(paramCoordinatorLayout))))
      {
        CoordinatorLayout.c localc = this.a;
        if ((localc == null) || (!localc.layoutDependsOn(paramCoordinatorLayout, paramView1, paramView2)))
        {
          bool = false;
          break label54;
        }
      }
      boolean bool = true;
      label54:
      return bool;
    }
    
    boolean c()
    {
      if (this.a == null) {
        this.m = false;
      }
      return this.m;
    }
    
    View d(CoordinatorLayout paramCoordinatorLayout, View paramView)
    {
      if (this.f == -1)
      {
        this.l = null;
        this.k = null;
        return null;
      }
      if ((this.k == null) || (!t(paramView, paramCoordinatorLayout))) {
        n(paramView, paramCoordinatorLayout);
      }
      return this.k;
    }
    
    public int e()
    {
      return this.f;
    }
    
    public CoordinatorLayout.c f()
    {
      return this.a;
    }
    
    boolean g()
    {
      return this.p;
    }
    
    Rect h()
    {
      return this.q;
    }
    
    boolean i(CoordinatorLayout paramCoordinatorLayout, View paramView)
    {
      boolean bool1 = this.m;
      if (bool1) {
        return true;
      }
      CoordinatorLayout.c localc = this.a;
      boolean bool2;
      if (localc != null) {
        bool2 = localc.blocksInteractionBelow(paramCoordinatorLayout, paramView);
      } else {
        bool2 = false;
      }
      bool2 |= bool1;
      this.m = bool2;
      return bool2;
    }
    
    boolean j(int paramInt)
    {
      if (paramInt != 0)
      {
        if (paramInt != 1) {
          return false;
        }
        return this.o;
      }
      return this.n;
    }
    
    void k()
    {
      this.p = false;
    }
    
    void l(int paramInt)
    {
      r(paramInt, false);
    }
    
    void m()
    {
      this.m = false;
    }
    
    public void o(CoordinatorLayout.c paramc)
    {
      CoordinatorLayout.c localc = this.a;
      if (localc != paramc)
      {
        if (localc != null) {
          localc.onDetachedFromLayoutParams();
        }
        this.a = paramc;
        this.r = null;
        this.b = true;
        if (paramc != null) {
          paramc.onAttachedToLayoutParams(this);
        }
      }
    }
    
    void p(boolean paramBoolean)
    {
      this.p = paramBoolean;
    }
    
    void q(Rect paramRect)
    {
      this.q.set(paramRect);
    }
    
    void r(int paramInt, boolean paramBoolean)
    {
      if (paramInt != 0)
      {
        if (paramInt == 1) {
          this.o = paramBoolean;
        }
      }
      else {
        this.n = paramBoolean;
      }
    }
  }
  
  class g
    implements ViewTreeObserver.OnPreDrawListener
  {
    g() {}
    
    public boolean onPreDraw()
    {
      CoordinatorLayout.this.onChildViewsChanged(0);
      return true;
    }
  }
  
  static class h
    implements Comparator<View>
  {
    public int a(View paramView1, View paramView2)
    {
      float f1 = a0.J(paramView1);
      float f2 = a0.J(paramView2);
      if (f1 > f2) {
        return -1;
      }
      if (f1 < f2) {
        return 1;
      }
      return 0;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.coordinatorlayout.widget.CoordinatorLayout
 * JD-Core Version:    0.7.0.1
 */