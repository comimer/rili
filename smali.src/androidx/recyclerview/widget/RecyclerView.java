package androidx.recyclerview.widget;

import android.animation.LayoutTransition;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityRecord;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.core.util.h;
import androidx.core.view.a0;
import androidx.core.view.accessibility.g.b;
import androidx.core.view.accessibility.g.c;
import androidx.core.view.n;
import androidx.core.view.o;
import androidx.core.view.p;
import androidx.core.view.q;
import androidx.core.view.u0;
import androidx.customview.view.AbsSavedState;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class RecyclerView
  extends ViewGroup
  implements p, o
{
  static final boolean ALLOW_SIZE_IN_UNSPECIFIED_SPEC;
  static final boolean ALLOW_THREAD_GAP_WORK;
  static final boolean DEBUG = false;
  static final int DEFAULT_ORIENTATION = 1;
  static final boolean DISPATCH_TEMP_DETACH = false;
  private static final boolean FORCE_ABS_FOCUS_SEARCH_DIRECTION;
  static final boolean FORCE_INVALIDATE_DISPLAY_LIST;
  static final long FOREVER_NS = 9223372036854775807L;
  public static final int HORIZONTAL = 0;
  private static final boolean IGNORE_DETACHED_FOCUSED_CHILD;
  private static final int INVALID_POINTER = -1;
  public static final int INVALID_TYPE = -1;
  private static final Class<?>[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE;
  static final int MAX_SCROLL_DURATION = 2000;
  private static final int[] NESTED_SCROLLING_ATTRS = { 16843830 };
  public static final long NO_ID = -1L;
  public static final int NO_POSITION = -1;
  static final boolean POST_UPDATES_ON_ANIMATION;
  public static final int SCROLL_STATE_DRAGGING = 1;
  public static final int SCROLL_STATE_IDLE = 0;
  public static final int SCROLL_STATE_SETTLING = 2;
  static final String TAG = "RecyclerView";
  public static final int TOUCH_SLOP_DEFAULT = 0;
  public static final int TOUCH_SLOP_PAGING = 1;
  static final String TRACE_BIND_VIEW_TAG = "RV OnBindView";
  static final String TRACE_CREATE_VIEW_TAG = "RV CreateView";
  private static final String TRACE_HANDLE_ADAPTER_UPDATES_TAG = "RV PartialInvalidate";
  static final String TRACE_NESTED_PREFETCH_TAG = "RV Nested Prefetch";
  private static final String TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG = "RV FullInvalidate";
  private static final String TRACE_ON_LAYOUT_TAG = "RV OnLayout";
  static final String TRACE_PREFETCH_TAG = "RV Prefetch";
  static final String TRACE_SCROLL_TAG = "RV Scroll";
  public static final int UNDEFINED_DURATION = -2147483648;
  static final boolean VERBOSE_TRACING = false;
  public static final int VERTICAL = 1;
  static final Interpolator sQuinticInterpolator = new c();
  m mAccessibilityDelegate;
  private final AccessibilityManager mAccessibilityManager;
  g mAdapter;
  a mAdapterHelper;
  boolean mAdapterUpdateDuringMeasure;
  private EdgeEffect mBottomGlow;
  private j mChildDrawingOrderCallback;
  b mChildHelper;
  boolean mClipToPadding;
  boolean mDataSetHasChangedAfterLayout = false;
  boolean mDispatchItemsChangedEvent = false;
  private int mDispatchScrollCounter = 0;
  private int mEatenAccessibilityChangeFlags;
  private k mEdgeEffectFactory = new k();
  boolean mEnableFastScroller;
  boolean mFirstLayoutComplete;
  f mGapWorker;
  boolean mHasFixedSize;
  private boolean mIgnoreMotionEventTillDown;
  private int mInitialTouchX;
  private int mInitialTouchY;
  private int mInterceptRequestLayoutDepth = 0;
  private s mInterceptingOnItemTouchListener;
  boolean mIsAttached;
  l mItemAnimator = new c();
  private RecyclerView.l.b mItemAnimatorListener;
  private Runnable mItemAnimatorRunner;
  final ArrayList<n> mItemDecorations = new ArrayList();
  boolean mItemsAddedOrRemoved;
  boolean mItemsChanged;
  private int mLastTouchX;
  private int mLastTouchY;
  o mLayout;
  private int mLayoutOrScrollCounter = 0;
  boolean mLayoutSuppressed;
  boolean mLayoutWasDefered;
  private EdgeEffect mLeftGlow;
  private final int mMaxFlingVelocity;
  private final int mMinFlingVelocity;
  private final int[] mMinMaxLayoutPositions;
  private final int[] mNestedOffsets;
  private final x mObserver = new x();
  private List<q> mOnChildAttachStateListeners;
  private r mOnFlingListener;
  private final ArrayList<s> mOnItemTouchListeners = new ArrayList();
  final List<c0> mPendingAccessibilityImportanceChange;
  private SavedState mPendingSavedState;
  boolean mPostedAnimatorRunner;
  f.b mPrefetchRegistry;
  private boolean mPreserveFocusAfterLayout = true;
  final v mRecycler = new v();
  w mRecyclerListener;
  final int[] mReusableIntPair;
  private EdgeEffect mRightGlow;
  private float mScaledHorizontalScrollFactor = 1.4E-45F;
  private float mScaledVerticalScrollFactor = 1.4E-45F;
  private t mScrollListener;
  private List<t> mScrollListeners;
  private final int[] mScrollOffset;
  private int mScrollPointerId = -1;
  private int mScrollState = 0;
  private q mScrollingChildHelper;
  final z mState;
  final Rect mTempRect = new Rect();
  private final Rect mTempRect2 = new Rect();
  final RectF mTempRectF = new RectF();
  private EdgeEffect mTopGlow;
  private int mTouchSlop;
  final Runnable mUpdateChildViewsRunnable = new a();
  private VelocityTracker mVelocityTracker;
  final b0 mViewFlinger = new b0();
  private final u.b mViewInfoProcessCallback;
  final u mViewInfoStore = new u();
  
  static
  {
    FORCE_INVALIDATE_DISPLAY_LIST = false;
    ALLOW_SIZE_IN_UNSPECIFIED_SPEC = true;
    POST_UPDATES_ON_ANIMATION = true;
    ALLOW_THREAD_GAP_WORK = true;
    FORCE_ABS_FOCUS_SEARCH_DIRECTION = false;
    IGNORE_DETACHED_FOCUSED_CHILD = false;
    Class localClass = Integer.TYPE;
    LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = new Class[] { Context.class, AttributeSet.class, localClass, localClass };
  }
  
  public RecyclerView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public RecyclerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, i0.a.a);
  }
  
  public RecyclerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (ALLOW_THREAD_GAP_WORK) {
      localObject1 = new f.b();
    } else {
      localObject1 = null;
    }
    this.mPrefetchRegistry = ((f.b)localObject1);
    this.mState = new z();
    this.mItemsAddedOrRemoved = false;
    this.mItemsChanged = false;
    this.mItemAnimatorListener = new m();
    this.mPostedAnimatorRunner = false;
    this.mMinMaxLayoutPositions = new int[2];
    this.mScrollOffset = new int[2];
    this.mNestedOffsets = new int[2];
    this.mReusableIntPair = new int[2];
    this.mPendingAccessibilityImportanceChange = new ArrayList();
    this.mItemAnimatorRunner = new b();
    this.mViewInfoProcessCallback = new d();
    setScrollContainer(true);
    setFocusableInTouchMode(true);
    Object localObject1 = ViewConfiguration.get(paramContext);
    this.mTouchSlop = ((ViewConfiguration)localObject1).getScaledTouchSlop();
    this.mScaledHorizontalScrollFactor = u0.a((ViewConfiguration)localObject1, paramContext);
    this.mScaledVerticalScrollFactor = u0.b((ViewConfiguration)localObject1, paramContext);
    this.mMinFlingVelocity = ((ViewConfiguration)localObject1).getScaledMinimumFlingVelocity();
    this.mMaxFlingVelocity = ((ViewConfiguration)localObject1).getScaledMaximumFlingVelocity();
    if (getOverScrollMode() == 2) {
      bool = true;
    } else {
      bool = false;
    }
    setWillNotDraw(bool);
    this.mItemAnimator.v(this.mItemAnimatorListener);
    initAdapterManager();
    initChildrenHelper();
    initAutofill();
    if (a0.x(this) == 0) {
      a0.w0(this, 1);
    }
    this.mAccessibilityManager = ((AccessibilityManager)getContext().getSystemService("accessibility"));
    setAccessibilityDelegateCompat(new m(this));
    Object localObject2 = i0.c.f;
    localObject1 = paramContext.obtainStyledAttributes(paramAttributeSet, (int[])localObject2, paramInt, 0);
    int i = Build.VERSION.SDK_INT;
    if (i >= 29) {
      saveAttributeDataForStyleable(paramContext, (int[])localObject2, paramAttributeSet, (TypedArray)localObject1, paramInt, 0);
    }
    localObject2 = ((TypedArray)localObject1).getString(i0.c.o);
    if (((TypedArray)localObject1).getInt(i0.c.i, -1) == -1) {
      setDescendantFocusability(262144);
    }
    this.mClipToPadding = ((TypedArray)localObject1).getBoolean(i0.c.h, true);
    boolean bool = ((TypedArray)localObject1).getBoolean(i0.c.j, false);
    this.mEnableFastScroller = bool;
    if (bool) {
      initFastScroller((StateListDrawable)((TypedArray)localObject1).getDrawable(i0.c.m), ((TypedArray)localObject1).getDrawable(i0.c.n), (StateListDrawable)((TypedArray)localObject1).getDrawable(i0.c.k), ((TypedArray)localObject1).getDrawable(i0.c.l));
    }
    ((TypedArray)localObject1).recycle();
    createLayoutManager(paramContext, (String)localObject2, paramAttributeSet, paramInt, 0);
    localObject1 = NESTED_SCROLLING_ATTRS;
    localObject2 = paramContext.obtainStyledAttributes(paramAttributeSet, (int[])localObject1, paramInt, 0);
    if (i >= 29) {
      saveAttributeDataForStyleable(paramContext, (int[])localObject1, paramAttributeSet, (TypedArray)localObject2, paramInt, 0);
    }
    bool = ((TypedArray)localObject2).getBoolean(0, true);
    ((TypedArray)localObject2).recycle();
    setNestedScrollingEnabled(bool);
  }
  
  private void addAnimatingView(c0 paramc0)
  {
    View localView = paramc0.itemView;
    int i;
    if (localView.getParent() == this) {
      i = 1;
    } else {
      i = 0;
    }
    this.mRecycler.J(getChildViewHolder(localView));
    if (paramc0.isTmpDetached()) {
      this.mChildHelper.c(localView, -1, localView.getLayoutParams(), true);
    } else if (i == 0) {
      this.mChildHelper.b(localView, true);
    } else {
      this.mChildHelper.k(localView);
    }
  }
  
  private void animateChange(c0 paramc01, c0 paramc02, RecyclerView.l.c paramc1, RecyclerView.l.c paramc2, boolean paramBoolean1, boolean paramBoolean2)
  {
    paramc01.setIsRecyclable(false);
    if (paramBoolean1) {
      addAnimatingView(paramc01);
    }
    if (paramc01 != paramc02)
    {
      if (paramBoolean2) {
        addAnimatingView(paramc02);
      }
      paramc01.mShadowedHolder = paramc02;
      addAnimatingView(paramc01);
      this.mRecycler.J(paramc01);
      paramc02.setIsRecyclable(false);
      paramc02.mShadowingHolder = paramc01;
    }
    if (this.mItemAnimator.b(paramc01, paramc02, paramc1, paramc2)) {
      postAnimationRunner();
    }
  }
  
  private void cancelScroll()
  {
    resetScroll();
    setScrollState(0);
  }
  
  static void clearNestedRecyclerViewIfNotNested(c0 paramc0)
  {
    Object localObject = paramc0.mNestedRecyclerView;
    if (localObject != null)
    {
      localObject = (View)((Reference)localObject).get();
      while (localObject != null)
      {
        if (localObject == paramc0.itemView) {
          return;
        }
        localObject = ((View)localObject).getParent();
        if ((localObject instanceof View)) {
          localObject = (View)localObject;
        } else {
          localObject = null;
        }
      }
      paramc0.mNestedRecyclerView = null;
    }
  }
  
  private void createLayoutManager(Context paramContext, String paramString, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    if (paramString != null)
    {
      paramString = paramString.trim();
      if (!paramString.isEmpty())
      {
        String str = getFullClassName(paramContext, paramString);
        try
        {
          if (isInEditMode()) {
            paramString = getClass().getClassLoader();
          } else {
            paramString = paramContext.getClassLoader();
          }
          Class localClass = Class.forName(str, false, paramString).asSubclass(o.class);
          paramString = null;
          try
          {
            Constructor localConstructor = localClass.getConstructor(LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE);
            paramString = new Object[] { paramContext, paramAttributeSet, Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) };
            paramContext = localConstructor;
          }
          catch (NoSuchMethodException localNoSuchMethodException) {}
          try
          {
            paramContext = localClass.getConstructor(new Class[0]);
            paramContext.setAccessible(true);
            setLayoutManager((o)paramContext.newInstance(paramString));
          }
          catch (NoSuchMethodException paramContext)
          {
            paramContext.initCause(localNoSuchMethodException);
            IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
            paramString = new java/lang/StringBuilder;
            paramString.<init>();
            paramString.append(paramAttributeSet.getPositionDescription());
            paramString.append(": Error creating LayoutManager ");
            paramString.append(str);
            localIllegalStateException.<init>(paramString.toString(), paramContext);
            throw localIllegalStateException;
          }
          return;
        }
        catch (ClassCastException paramContext)
        {
          paramString = new StringBuilder();
          paramString.append(paramAttributeSet.getPositionDescription());
          paramString.append(": Class is not a LayoutManager ");
          paramString.append(str);
          throw new IllegalStateException(paramString.toString(), paramContext);
        }
        catch (IllegalAccessException paramContext)
        {
          paramString = new StringBuilder();
          paramString.append(paramAttributeSet.getPositionDescription());
          paramString.append(": Cannot access non-public constructor ");
          paramString.append(str);
          throw new IllegalStateException(paramString.toString(), paramContext);
        }
        catch (InstantiationException paramString)
        {
          paramContext = new StringBuilder();
          paramContext.append(paramAttributeSet.getPositionDescription());
          paramContext.append(": Could not instantiate the LayoutManager: ");
          paramContext.append(str);
          throw new IllegalStateException(paramContext.toString(), paramString);
        }
        catch (InvocationTargetException paramContext)
        {
          paramString = new StringBuilder();
          paramString.append(paramAttributeSet.getPositionDescription());
          paramString.append(": Could not instantiate the LayoutManager: ");
          paramString.append(str);
          throw new IllegalStateException(paramString.toString(), paramContext);
        }
        catch (ClassNotFoundException paramContext)
        {
          paramString = new StringBuilder();
          paramString.append(paramAttributeSet.getPositionDescription());
          paramString.append(": Unable to find LayoutManager ");
          paramString.append(str);
          throw new IllegalStateException(paramString.toString(), paramContext);
        }
      }
    }
  }
  
  private boolean didChildRangeChange(int paramInt1, int paramInt2)
  {
    findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
    int[] arrayOfInt = this.mMinMaxLayoutPositions;
    boolean bool = false;
    if ((arrayOfInt[0] != paramInt1) || (arrayOfInt[1] != paramInt2)) {
      bool = true;
    }
    return bool;
  }
  
  private void dispatchContentChangedIfNecessary()
  {
    int i = this.mEatenAccessibilityChangeFlags;
    this.mEatenAccessibilityChangeFlags = 0;
    if ((i != 0) && (isAccessibilityEnabled()))
    {
      AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain();
      localAccessibilityEvent.setEventType(2048);
      androidx.core.view.accessibility.b.b(localAccessibilityEvent, i);
      sendAccessibilityEventUnchecked(localAccessibilityEvent);
    }
  }
  
  private void dispatchLayoutStep1()
  {
    Object localObject = this.mState;
    boolean bool = true;
    ((z)localObject).a(1);
    fillRemainingScrollValues(this.mState);
    this.mState.j = false;
    startInterceptRequestLayout();
    this.mViewInfoStore.f();
    onEnterLayoutOrScroll();
    processAdapterUpdatesAndSetAnimationFlags();
    saveFocusInfo();
    localObject = this.mState;
    if ((!((z)localObject).k) || (!this.mItemsChanged)) {
      bool = false;
    }
    ((z)localObject).i = bool;
    this.mItemsChanged = false;
    this.mItemsAddedOrRemoved = false;
    ((z)localObject).h = ((z)localObject).l;
    ((z)localObject).f = this.mAdapter.getItemCount();
    findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
    int i;
    int j;
    RecyclerView.l.c localc;
    if (this.mState.k)
    {
      i = this.mChildHelper.g();
      for (j = 0; j < i; j++)
      {
        localObject = getChildViewHolderInt(this.mChildHelper.f(j));
        if ((!((c0)localObject).shouldIgnore()) && ((!((c0)localObject).isInvalid()) || (this.mAdapter.hasStableIds())))
        {
          localc = this.mItemAnimator.t(this.mState, (c0)localObject, l.e((c0)localObject), ((c0)localObject).getUnmodifiedPayloads());
          this.mViewInfoStore.e((c0)localObject, localc);
          if ((this.mState.i) && (((c0)localObject).isUpdated()) && (!((c0)localObject).isRemoved()) && (!((c0)localObject).shouldIgnore()) && (!((c0)localObject).isInvalid()))
          {
            long l = getChangedHolderKey((c0)localObject);
            this.mViewInfoStore.c(l, (c0)localObject);
          }
        }
      }
    }
    if (this.mState.l)
    {
      saveOldPositions();
      localObject = this.mState;
      bool = ((z)localObject).g;
      ((z)localObject).g = false;
      this.mLayout.onLayoutChildren(this.mRecycler, (z)localObject);
      this.mState.g = bool;
      for (j = 0; j < this.mChildHelper.g(); j++)
      {
        localObject = getChildViewHolderInt(this.mChildHelper.f(j));
        if ((!((c0)localObject).shouldIgnore()) && (!this.mViewInfoStore.i((c0)localObject)))
        {
          int k = l.e((c0)localObject);
          bool = ((c0)localObject).hasAnyOfTheFlags(8192);
          i = k;
          if (!bool) {
            i = k | 0x1000;
          }
          localc = this.mItemAnimator.t(this.mState, (c0)localObject, i, ((c0)localObject).getUnmodifiedPayloads());
          if (bool) {
            recordAnimationInfoIfBouncedHiddenView((c0)localObject, localc);
          } else {
            this.mViewInfoStore.a((c0)localObject, localc);
          }
        }
      }
      clearOldPositions();
    }
    else
    {
      clearOldPositions();
    }
    onExitLayoutOrScroll();
    stopInterceptRequestLayout(false);
    this.mState.e = 2;
  }
  
  private void dispatchLayoutStep2()
  {
    startInterceptRequestLayout();
    onEnterLayoutOrScroll();
    this.mState.a(6);
    this.mAdapterHelper.j();
    this.mState.f = this.mAdapter.getItemCount();
    z localz = this.mState;
    localz.d = 0;
    localz.h = false;
    this.mLayout.onLayoutChildren(this.mRecycler, localz);
    localz = this.mState;
    localz.g = false;
    this.mPendingSavedState = null;
    boolean bool;
    if ((localz.k) && (this.mItemAnimator != null)) {
      bool = true;
    } else {
      bool = false;
    }
    localz.k = bool;
    localz.e = 4;
    onExitLayoutOrScroll();
    stopInterceptRequestLayout(false);
  }
  
  private void dispatchLayoutStep3()
  {
    this.mState.a(4);
    startInterceptRequestLayout();
    onEnterLayoutOrScroll();
    Object localObject = this.mState;
    ((z)localObject).e = 1;
    if (((z)localObject).k)
    {
      for (int i = this.mChildHelper.g() - 1; i >= 0; i--)
      {
        c0 localc0 = getChildViewHolderInt(this.mChildHelper.f(i));
        if (!localc0.shouldIgnore())
        {
          long l = getChangedHolderKey(localc0);
          RecyclerView.l.c localc1 = this.mItemAnimator.s(this.mState, localc0);
          localObject = this.mViewInfoStore.g(l);
          if ((localObject != null) && (!((c0)localObject).shouldIgnore()))
          {
            boolean bool1 = this.mViewInfoStore.h((c0)localObject);
            boolean bool2 = this.mViewInfoStore.h(localc0);
            if ((bool1) && (localObject == localc0))
            {
              this.mViewInfoStore.d(localc0, localc1);
            }
            else
            {
              RecyclerView.l.c localc2 = this.mViewInfoStore.n((c0)localObject);
              this.mViewInfoStore.d(localc0, localc1);
              localc1 = this.mViewInfoStore.m(localc0);
              if (localc2 == null) {
                handleMissingPreInfoForChangeError(l, localc0, (c0)localObject);
              } else {
                animateChange((c0)localObject, localc0, localc2, localc1, bool1, bool2);
              }
            }
          }
          else
          {
            this.mViewInfoStore.d(localc0, localc1);
          }
        }
      }
      this.mViewInfoStore.o(this.mViewInfoProcessCallback);
    }
    this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
    localObject = this.mState;
    ((z)localObject).c = ((z)localObject).f;
    this.mDataSetHasChangedAfterLayout = false;
    this.mDispatchItemsChangedEvent = false;
    ((z)localObject).k = false;
    ((z)localObject).l = false;
    this.mLayout.mRequestedSimpleAnimations = false;
    localObject = this.mRecycler.b;
    if (localObject != null) {
      ((ArrayList)localObject).clear();
    }
    localObject = this.mLayout;
    if (((o)localObject).mPrefetchMaxObservedInInitialPrefetch)
    {
      ((o)localObject).mPrefetchMaxCountObserved = 0;
      ((o)localObject).mPrefetchMaxObservedInInitialPrefetch = false;
      this.mRecycler.K();
    }
    this.mLayout.onLayoutCompleted(this.mState);
    onExitLayoutOrScroll();
    stopInterceptRequestLayout(false);
    this.mViewInfoStore.f();
    localObject = this.mMinMaxLayoutPositions;
    if (didChildRangeChange(localObject[0], localObject[1])) {
      dispatchOnScrolled(0, 0);
    }
    recoverFocusFromState();
    resetFocusInfo();
  }
  
  private boolean dispatchToOnItemTouchListeners(MotionEvent paramMotionEvent)
  {
    s locals = this.mInterceptingOnItemTouchListener;
    if (locals == null)
    {
      if (paramMotionEvent.getAction() == 0) {
        return false;
      }
      return findInterceptingOnItemTouchListener(paramMotionEvent);
    }
    locals.a(this, paramMotionEvent);
    int i = paramMotionEvent.getAction();
    if ((i == 3) || (i == 1)) {
      this.mInterceptingOnItemTouchListener = null;
    }
    return true;
  }
  
  private boolean findInterceptingOnItemTouchListener(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    int j = this.mOnItemTouchListeners.size();
    for (int k = 0; k < j; k++)
    {
      s locals = (s)this.mOnItemTouchListeners.get(k);
      if ((locals.b(this, paramMotionEvent)) && (i != 3))
      {
        this.mInterceptingOnItemTouchListener = locals;
        return true;
      }
    }
    return false;
  }
  
  private void findMinMaxChildLayoutPositions(int[] paramArrayOfInt)
  {
    int i = this.mChildHelper.g();
    if (i == 0)
    {
      paramArrayOfInt[0] = -1;
      paramArrayOfInt[1] = -1;
      return;
    }
    int j = 2147483647;
    int k = -2147483648;
    int m = 0;
    while (m < i)
    {
      c0 localc0 = getChildViewHolderInt(this.mChildHelper.f(m));
      int n;
      if (localc0.shouldIgnore())
      {
        n = k;
      }
      else
      {
        int i1 = localc0.getLayoutPosition();
        int i2 = j;
        if (i1 < j) {
          i2 = i1;
        }
        j = i2;
        n = k;
        if (i1 > k)
        {
          n = i1;
          j = i2;
        }
      }
      m++;
      k = n;
    }
    paramArrayOfInt[0] = j;
    paramArrayOfInt[1] = k;
  }
  
  static RecyclerView findNestedRecyclerView(View paramView)
  {
    if (!(paramView instanceof ViewGroup)) {
      return null;
    }
    if ((paramView instanceof RecyclerView)) {
      return (RecyclerView)paramView;
    }
    paramView = (ViewGroup)paramView;
    int i = paramView.getChildCount();
    for (int j = 0; j < i; j++)
    {
      RecyclerView localRecyclerView = findNestedRecyclerView(paramView.getChildAt(j));
      if (localRecyclerView != null) {
        return localRecyclerView;
      }
    }
    return null;
  }
  
  private View findNextViewToFocus()
  {
    Object localObject = this.mState;
    int i = ((z)localObject).m;
    if (i == -1) {
      i = 0;
    }
    int j = ((z)localObject).b();
    for (int k = i; k < j; k++)
    {
      localObject = findViewHolderForAdapterPosition(k);
      if (localObject == null) {
        break;
      }
      if (((c0)localObject).itemView.hasFocusable()) {
        return ((c0)localObject).itemView;
      }
    }
    for (i = Math.min(j, i) - 1; i >= 0; i--)
    {
      localObject = findViewHolderForAdapterPosition(i);
      if (localObject == null) {
        return null;
      }
      if (((c0)localObject).itemView.hasFocusable()) {
        return ((c0)localObject).itemView;
      }
    }
    return null;
  }
  
  static c0 getChildViewHolderInt(View paramView)
  {
    if (paramView == null) {
      return null;
    }
    return ((p)paramView.getLayoutParams()).mViewHolder;
  }
  
  static void getDecoratedBoundsWithMarginsInt(View paramView, Rect paramRect)
  {
    p localp = (p)paramView.getLayoutParams();
    Rect localRect = localp.mDecorInsets;
    paramRect.set(paramView.getLeft() - localRect.left - localp.leftMargin, paramView.getTop() - localRect.top - localp.topMargin, paramView.getRight() + localRect.right + localp.rightMargin, paramView.getBottom() + localRect.bottom + localp.bottomMargin);
  }
  
  private int getDeepestFocusedViewWithId(View paramView)
  {
    int i = paramView.getId();
    while ((!paramView.isFocused()) && ((paramView instanceof ViewGroup)) && (paramView.hasFocus()))
    {
      View localView = ((ViewGroup)paramView).getFocusedChild();
      paramView = localView;
      if (localView.getId() != -1)
      {
        i = localView.getId();
        paramView = localView;
      }
    }
    return i;
  }
  
  private String getFullClassName(Context paramContext, String paramString)
  {
    if (paramString.charAt(0) == '.')
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramContext.getPackageName());
      localStringBuilder.append(paramString);
      return localStringBuilder.toString();
    }
    if (paramString.contains(".")) {
      return paramString;
    }
    paramContext = new StringBuilder();
    paramContext.append(RecyclerView.class.getPackage().getName());
    paramContext.append('.');
    paramContext.append(paramString);
    return paramContext.toString();
  }
  
  private q getScrollingChildHelper()
  {
    if (this.mScrollingChildHelper == null) {
      this.mScrollingChildHelper = new q(this);
    }
    return this.mScrollingChildHelper;
  }
  
  private void handleMissingPreInfoForChangeError(long paramLong, c0 paramc01, c0 paramc02)
  {
    int i = this.mChildHelper.g();
    for (int j = 0; j < i; j++)
    {
      localObject = getChildViewHolderInt(this.mChildHelper.f(j));
      if ((localObject != paramc01) && (getChangedHolderKey((c0)localObject) == paramLong))
      {
        paramc02 = this.mAdapter;
        if ((paramc02 != null) && (paramc02.hasStableIds()))
        {
          paramc02 = new StringBuilder();
          paramc02.append("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:");
          paramc02.append(localObject);
          paramc02.append(" \n View Holder 2:");
          paramc02.append(paramc01);
          paramc02.append(exceptionLabel());
          throw new IllegalStateException(paramc02.toString());
        }
        paramc02 = new StringBuilder();
        paramc02.append("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:");
        paramc02.append(localObject);
        paramc02.append(" \n View Holder 2:");
        paramc02.append(paramc01);
        paramc02.append(exceptionLabel());
        throw new IllegalStateException(paramc02.toString());
      }
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Problem while matching changed view holders with the newones. The pre-layout information for the change holder ");
    ((StringBuilder)localObject).append(paramc02);
    ((StringBuilder)localObject).append(" cannot be found but it is necessary for ");
    ((StringBuilder)localObject).append(paramc01);
    ((StringBuilder)localObject).append(exceptionLabel());
    Log.e("RecyclerView", ((StringBuilder)localObject).toString());
  }
  
  private boolean hasUpdatedView()
  {
    int i = this.mChildHelper.g();
    for (int j = 0; j < i; j++)
    {
      c0 localc0 = getChildViewHolderInt(this.mChildHelper.f(j));
      if ((localc0 != null) && (!localc0.shouldIgnore()) && (localc0.isUpdated())) {
        return true;
      }
    }
    return false;
  }
  
  @SuppressLint({"InlinedApi"})
  private void initAutofill()
  {
    if (a0.y(this) == 0) {
      a0.x0(this, 8);
    }
  }
  
  private void initChildrenHelper()
  {
    this.mChildHelper = new b(new e());
  }
  
  private boolean isPreferredNextFocus(View paramView1, View paramView2, int paramInt)
  {
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool4 = false;
    boolean bool5 = false;
    boolean bool6 = false;
    boolean bool7 = bool5;
    if (paramView2 != null) {
      if (paramView2 == this)
      {
        bool7 = bool5;
      }
      else
      {
        if (findContainingItemView(paramView2) == null) {
          return false;
        }
        if (paramView1 == null) {
          return true;
        }
        if (findContainingItemView(paramView1) == null) {
          return true;
        }
        this.mTempRect.set(0, 0, paramView1.getWidth(), paramView1.getHeight());
        this.mTempRect2.set(0, 0, paramView2.getWidth(), paramView2.getHeight());
        offsetDescendantRectToMyCoords(paramView1, this.mTempRect);
        offsetDescendantRectToMyCoords(paramView2, this.mTempRect2);
        int i = this.mLayout.getLayoutDirection();
        int j = -1;
        int k;
        if (i == 1) {
          k = -1;
        } else {
          k = 1;
        }
        paramView2 = this.mTempRect;
        int m = paramView2.left;
        paramView1 = this.mTempRect2;
        int n = paramView1.left;
        if (((m < n) || (paramView2.right <= n)) && (paramView2.right < paramView1.right))
        {
          i = 1;
        }
        else
        {
          i1 = paramView2.right;
          i = paramView1.right;
          if (((i1 > i) || (m >= i)) && (m > n)) {
            i = -1;
          } else {
            i = 0;
          }
        }
        int i1 = paramView2.top;
        m = paramView1.top;
        if (((i1 < m) || (paramView2.bottom <= m)) && (paramView2.bottom < paramView1.bottom))
        {
          j = 1;
        }
        else
        {
          int i2 = paramView2.bottom;
          n = paramView1.bottom;
          if (((i2 <= n) && (i1 < n)) || (i1 <= m)) {
            j = 0;
          }
        }
        if (paramInt != 1)
        {
          if (paramInt != 2)
          {
            if (paramInt != 17)
            {
              if (paramInt != 33)
              {
                if (paramInt != 66)
                {
                  if (paramInt == 130)
                  {
                    bool7 = bool6;
                    if (j > 0) {
                      bool7 = true;
                    }
                    return bool7;
                  }
                  paramView1 = new StringBuilder();
                  paramView1.append("Invalid direction: ");
                  paramView1.append(paramInt);
                  paramView1.append(exceptionLabel());
                  throw new IllegalArgumentException(paramView1.toString());
                }
                bool7 = bool1;
                if (i > 0) {
                  bool7 = true;
                }
                return bool7;
              }
              bool7 = bool2;
              if (j < 0) {
                bool7 = true;
              }
              return bool7;
            }
            bool7 = bool3;
            if (i < 0) {
              bool7 = true;
            }
            return bool7;
          }
          if (j <= 0)
          {
            bool7 = bool4;
            if (j == 0)
            {
              bool7 = bool4;
              if (i * k < 0) {}
            }
          }
          else
          {
            bool7 = true;
          }
          return bool7;
        }
        if (j >= 0)
        {
          bool7 = bool5;
          if (j == 0)
          {
            bool7 = bool5;
            if (i * k > 0) {}
          }
        }
        else
        {
          bool7 = true;
        }
      }
    }
    return bool7;
  }
  
  private void onPointerUp(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getActionIndex();
    if (paramMotionEvent.getPointerId(i) == this.mScrollPointerId)
    {
      if (i == 0) {
        i = 1;
      } else {
        i = 0;
      }
      this.mScrollPointerId = paramMotionEvent.getPointerId(i);
      int j = (int)(paramMotionEvent.getX(i) + 0.5F);
      this.mLastTouchX = j;
      this.mInitialTouchX = j;
      i = (int)(paramMotionEvent.getY(i) + 0.5F);
      this.mLastTouchY = i;
      this.mInitialTouchY = i;
    }
  }
  
  private boolean predictiveItemAnimationsEnabled()
  {
    boolean bool;
    if ((this.mItemAnimator != null) && (this.mLayout.supportsPredictiveItemAnimations())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void processAdapterUpdatesAndSetAnimationFlags()
  {
    if (this.mDataSetHasChangedAfterLayout)
    {
      this.mAdapterHelper.y();
      if (this.mDispatchItemsChangedEvent) {
        this.mLayout.onItemsChanged(this);
      }
    }
    if (predictiveItemAnimationsEnabled()) {
      this.mAdapterHelper.w();
    } else {
      this.mAdapterHelper.j();
    }
    boolean bool1 = this.mItemsAddedOrRemoved;
    boolean bool2 = false;
    int i;
    if ((!bool1) && (!this.mItemsChanged)) {
      i = 0;
    } else {
      i = 1;
    }
    z localz = this.mState;
    if ((this.mFirstLayoutComplete) && (this.mItemAnimator != null))
    {
      bool1 = this.mDataSetHasChangedAfterLayout;
      if (((bool1) || (i != 0) || (this.mLayout.mRequestedSimpleAnimations)) && ((!bool1) || (this.mAdapter.hasStableIds())))
      {
        bool1 = true;
        break label145;
      }
    }
    bool1 = false;
    label145:
    localz.k = bool1;
    localz = this.mState;
    bool1 = bool2;
    if (localz.k)
    {
      bool1 = bool2;
      if (i != 0)
      {
        bool1 = bool2;
        if (!this.mDataSetHasChangedAfterLayout)
        {
          bool1 = bool2;
          if (predictiveItemAnimationsEnabled()) {
            bool1 = true;
          }
        }
      }
    }
    localz.l = bool1;
  }
  
  private void pullGlows(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    int i = 1;
    if (paramFloat2 < 0.0F)
    {
      ensureLeftGlow();
      androidx.core.widget.e.c(this.mLeftGlow, -paramFloat2 / getWidth(), 1.0F - paramFloat3 / getHeight());
    }
    for (;;)
    {
      j = 1;
      break label80;
      if (paramFloat2 <= 0.0F) {
        break;
      }
      ensureRightGlow();
      androidx.core.widget.e.c(this.mRightGlow, paramFloat2 / getWidth(), paramFloat3 / getHeight());
    }
    int j = 0;
    label80:
    if (paramFloat4 < 0.0F)
    {
      ensureTopGlow();
      androidx.core.widget.e.c(this.mTopGlow, -paramFloat4 / getHeight(), paramFloat1 / getWidth());
      j = i;
    }
    else if (paramFloat4 > 0.0F)
    {
      ensureBottomGlow();
      androidx.core.widget.e.c(this.mBottomGlow, paramFloat4 / getHeight(), 1.0F - paramFloat1 / getWidth());
      j = i;
    }
    if ((j != 0) || (paramFloat2 != 0.0F) || (paramFloat4 != 0.0F)) {
      a0.c0(this);
    }
  }
  
  private void recoverFocusFromState()
  {
    if ((this.mPreserveFocusAfterLayout) && (this.mAdapter != null) && (hasFocus()) && (getDescendantFocusability() != 393216) && ((getDescendantFocusability() != 131072) || (!isFocused())))
    {
      Object localObject1;
      if (!isFocused())
      {
        localObject1 = getFocusedChild();
        if ((IGNORE_DETACHED_FOCUSED_CHILD) && ((((View)localObject1).getParent() == null) || (!((View)localObject1).hasFocus())))
        {
          if (this.mChildHelper.g() == 0) {
            requestFocus();
          }
        }
        else if (!this.mChildHelper.n((View)localObject1)) {
          return;
        }
      }
      long l = this.mState.n;
      Object localObject2 = null;
      if ((l != -1L) && (this.mAdapter.hasStableIds())) {
        localObject1 = findViewHolderForItemId(this.mState.n);
      } else {
        localObject1 = null;
      }
      if ((localObject1 != null) && (!this.mChildHelper.n(((c0)localObject1).itemView)) && (((c0)localObject1).itemView.hasFocusable()))
      {
        localObject1 = ((c0)localObject1).itemView;
      }
      else
      {
        localObject1 = localObject2;
        if (this.mChildHelper.g() > 0) {
          localObject1 = findNextViewToFocus();
        }
      }
      if (localObject1 != null)
      {
        int i = this.mState.o;
        localObject2 = localObject1;
        if (i != -1L)
        {
          View localView = ((View)localObject1).findViewById(i);
          localObject2 = localObject1;
          if (localView != null)
          {
            localObject2 = localObject1;
            if (localView.isFocusable()) {
              localObject2 = localView;
            }
          }
        }
        localObject2.requestFocus();
      }
    }
  }
  
  private void releaseGlows()
  {
    EdgeEffect localEdgeEffect = this.mLeftGlow;
    if (localEdgeEffect != null)
    {
      localEdgeEffect.onRelease();
      bool1 = this.mLeftGlow.isFinished();
    }
    else
    {
      bool1 = false;
    }
    localEdgeEffect = this.mTopGlow;
    boolean bool2 = bool1;
    if (localEdgeEffect != null)
    {
      localEdgeEffect.onRelease();
      bool2 = bool1 | this.mTopGlow.isFinished();
    }
    localEdgeEffect = this.mRightGlow;
    boolean bool1 = bool2;
    if (localEdgeEffect != null)
    {
      localEdgeEffect.onRelease();
      bool1 = bool2 | this.mRightGlow.isFinished();
    }
    localEdgeEffect = this.mBottomGlow;
    bool2 = bool1;
    if (localEdgeEffect != null)
    {
      localEdgeEffect.onRelease();
      bool2 = bool1 | this.mBottomGlow.isFinished();
    }
    if (bool2) {
      a0.c0(this);
    }
  }
  
  private void requestChildOnScreen(View paramView1, View paramView2)
  {
    if (paramView2 != null) {
      localObject1 = paramView2;
    } else {
      localObject1 = paramView1;
    }
    this.mTempRect.set(0, 0, ((View)localObject1).getWidth(), ((View)localObject1).getHeight());
    Object localObject1 = ((View)localObject1).getLayoutParams();
    if ((localObject1 instanceof p))
    {
      localObject1 = (p)localObject1;
      if (!((p)localObject1).mInsetsDirty)
      {
        localObject2 = ((p)localObject1).mDecorInsets;
        localObject1 = this.mTempRect;
        ((Rect)localObject1).left -= ((Rect)localObject2).left;
        ((Rect)localObject1).right += ((Rect)localObject2).right;
        ((Rect)localObject1).top -= ((Rect)localObject2).top;
        ((Rect)localObject1).bottom += ((Rect)localObject2).bottom;
      }
    }
    if (paramView2 != null)
    {
      offsetDescendantRectToMyCoords(paramView2, this.mTempRect);
      offsetRectIntoDescendantCoords(paramView1, this.mTempRect);
    }
    Object localObject2 = this.mLayout;
    localObject1 = this.mTempRect;
    boolean bool1 = this.mFirstLayoutComplete;
    boolean bool2;
    if (paramView2 == null) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    ((o)localObject2).requestChildRectangleOnScreen(this, paramView1, (Rect)localObject1, bool1 ^ true, bool2);
  }
  
  private void resetFocusInfo()
  {
    z localz = this.mState;
    localz.n = -1L;
    localz.m = -1;
    localz.o = -1;
  }
  
  private void resetScroll()
  {
    VelocityTracker localVelocityTracker = this.mVelocityTracker;
    if (localVelocityTracker != null) {
      localVelocityTracker.clear();
    }
    stopNestedScroll(0);
    releaseGlows();
  }
  
  private void saveFocusInfo()
  {
    boolean bool = this.mPreserveFocusAfterLayout;
    z localz = null;
    Object localObject;
    if ((bool) && (hasFocus()) && (this.mAdapter != null)) {
      localObject = getFocusedChild();
    } else {
      localObject = null;
    }
    if (localObject == null) {
      localObject = localz;
    } else {
      localObject = findContainingViewHolder((View)localObject);
    }
    if (localObject == null)
    {
      resetFocusInfo();
    }
    else
    {
      localz = this.mState;
      long l;
      if (this.mAdapter.hasStableIds()) {
        l = ((c0)localObject).getItemId();
      } else {
        l = -1L;
      }
      localz.n = l;
      localz = this.mState;
      int i;
      if (this.mDataSetHasChangedAfterLayout) {
        i = -1;
      } else if (((c0)localObject).isRemoved()) {
        i = ((c0)localObject).mOldPosition;
      } else {
        i = ((c0)localObject).getAdapterPosition();
      }
      localz.m = i;
      this.mState.o = getDeepestFocusedViewWithId(((c0)localObject).itemView);
    }
  }
  
  private void setAdapterInternal(g paramg, boolean paramBoolean1, boolean paramBoolean2)
  {
    g localg = this.mAdapter;
    if (localg != null)
    {
      localg.unregisterAdapterDataObserver(this.mObserver);
      this.mAdapter.onDetachedFromRecyclerView(this);
    }
    if ((!paramBoolean1) || (paramBoolean2)) {
      removeAndRecycleViews();
    }
    this.mAdapterHelper.y();
    localg = this.mAdapter;
    this.mAdapter = paramg;
    if (paramg != null)
    {
      paramg.registerAdapterDataObserver(this.mObserver);
      paramg.onAttachedToRecyclerView(this);
    }
    paramg = this.mLayout;
    if (paramg != null) {
      paramg.onAdapterChanged(localg, this.mAdapter);
    }
    this.mRecycler.x(localg, this.mAdapter, paramBoolean1);
    this.mState.g = true;
  }
  
  private void stopScrollersInternal()
  {
    this.mViewFlinger.g();
    o localo = this.mLayout;
    if (localo != null) {
      localo.stopSmoothScroller();
    }
  }
  
  void absorbGlows(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
    {
      ensureLeftGlow();
      if (this.mLeftGlow.isFinished()) {
        this.mLeftGlow.onAbsorb(-paramInt1);
      }
    }
    else if (paramInt1 > 0)
    {
      ensureRightGlow();
      if (this.mRightGlow.isFinished()) {
        this.mRightGlow.onAbsorb(paramInt1);
      }
    }
    if (paramInt2 < 0)
    {
      ensureTopGlow();
      if (this.mTopGlow.isFinished()) {
        this.mTopGlow.onAbsorb(-paramInt2);
      }
    }
    else if (paramInt2 > 0)
    {
      ensureBottomGlow();
      if (this.mBottomGlow.isFinished()) {
        this.mBottomGlow.onAbsorb(paramInt2);
      }
    }
    if ((paramInt1 != 0) || (paramInt2 != 0)) {
      a0.c0(this);
    }
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    o localo = this.mLayout;
    if ((localo == null) || (!localo.onAddFocusables(this, paramArrayList, paramInt1, paramInt2))) {
      super.addFocusables(paramArrayList, paramInt1, paramInt2);
    }
  }
  
  public void addItemDecoration(n paramn)
  {
    addItemDecoration(paramn, -1);
  }
  
  public void addItemDecoration(n paramn, int paramInt)
  {
    o localo = this.mLayout;
    if (localo != null) {
      localo.assertNotInLayoutOrScroll("Cannot add item decoration during a scroll  or layout");
    }
    if (this.mItemDecorations.isEmpty()) {
      setWillNotDraw(false);
    }
    if (paramInt < 0) {
      this.mItemDecorations.add(paramn);
    } else {
      this.mItemDecorations.add(paramInt, paramn);
    }
    markItemDecorInsetsDirty();
    requestLayout();
  }
  
  public void addOnChildAttachStateChangeListener(q paramq)
  {
    if (this.mOnChildAttachStateListeners == null) {
      this.mOnChildAttachStateListeners = new ArrayList();
    }
    this.mOnChildAttachStateListeners.add(paramq);
  }
  
  public void addOnItemTouchListener(s params)
  {
    this.mOnItemTouchListeners.add(params);
  }
  
  public void addOnScrollListener(t paramt)
  {
    if (this.mScrollListeners == null) {
      this.mScrollListeners = new ArrayList();
    }
    this.mScrollListeners.add(paramt);
  }
  
  void animateAppearance(c0 paramc0, RecyclerView.l.c paramc1, RecyclerView.l.c paramc2)
  {
    paramc0.setIsRecyclable(false);
    if (this.mItemAnimator.a(paramc0, paramc1, paramc2)) {
      postAnimationRunner();
    }
  }
  
  void animateDisappearance(c0 paramc0, RecyclerView.l.c paramc1, RecyclerView.l.c paramc2)
  {
    addAnimatingView(paramc0);
    paramc0.setIsRecyclable(false);
    if (this.mItemAnimator.c(paramc0, paramc1, paramc2)) {
      postAnimationRunner();
    }
  }
  
  void assertInLayoutOrScroll(String paramString)
  {
    if (!isComputingLayout())
    {
      if (paramString == null)
      {
        paramString = new StringBuilder();
        paramString.append("Cannot call this method unless RecyclerView is computing a layout or scrolling");
        paramString.append(exceptionLabel());
        throw new IllegalStateException(paramString.toString());
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString);
      localStringBuilder.append(exceptionLabel());
      throw new IllegalStateException(localStringBuilder.toString());
    }
  }
  
  void assertNotInLayoutOrScroll(String paramString)
  {
    if (isComputingLayout())
    {
      if (paramString == null)
      {
        paramString = new StringBuilder();
        paramString.append("Cannot call this method while RecyclerView is computing a layout or scrolling");
        paramString.append(exceptionLabel());
        throw new IllegalStateException(paramString.toString());
      }
      throw new IllegalStateException(paramString);
    }
    if (this.mDispatchScrollCounter > 0)
    {
      paramString = new StringBuilder();
      paramString.append("");
      paramString.append(exceptionLabel());
      Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(paramString.toString()));
    }
  }
  
  boolean canReuseUpdatedViewHolder(c0 paramc0)
  {
    l locall = this.mItemAnimator;
    boolean bool;
    if ((locall != null) && (!locall.g(paramc0, paramc0.getUnmodifiedPayloads()))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    boolean bool;
    if (((paramLayoutParams instanceof p)) && (this.mLayout.checkLayoutParams((p)paramLayoutParams))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  void clearOldPositions()
  {
    int i = this.mChildHelper.j();
    for (int j = 0; j < i; j++)
    {
      c0 localc0 = getChildViewHolderInt(this.mChildHelper.i(j));
      if (!localc0.shouldIgnore()) {
        localc0.clearOldPosition();
      }
    }
    this.mRecycler.d();
  }
  
  public void clearOnChildAttachStateChangeListeners()
  {
    List localList = this.mOnChildAttachStateListeners;
    if (localList != null) {
      localList.clear();
    }
  }
  
  public void clearOnScrollListeners()
  {
    List localList = this.mScrollListeners;
    if (localList != null) {
      localList.clear();
    }
  }
  
  public int computeHorizontalScrollExtent()
  {
    o localo = this.mLayout;
    int i = 0;
    if (localo == null) {
      return 0;
    }
    if (localo.canScrollHorizontally()) {
      i = this.mLayout.computeHorizontalScrollExtent(this.mState);
    }
    return i;
  }
  
  public int computeHorizontalScrollOffset()
  {
    o localo = this.mLayout;
    int i = 0;
    if (localo == null) {
      return 0;
    }
    if (localo.canScrollHorizontally()) {
      i = this.mLayout.computeHorizontalScrollOffset(this.mState);
    }
    return i;
  }
  
  public int computeHorizontalScrollRange()
  {
    o localo = this.mLayout;
    int i = 0;
    if (localo == null) {
      return 0;
    }
    if (localo.canScrollHorizontally()) {
      i = this.mLayout.computeHorizontalScrollRange(this.mState);
    }
    return i;
  }
  
  public int computeVerticalScrollExtent()
  {
    o localo = this.mLayout;
    int i = 0;
    if (localo == null) {
      return 0;
    }
    if (localo.canScrollVertically()) {
      i = this.mLayout.computeVerticalScrollExtent(this.mState);
    }
    return i;
  }
  
  public int computeVerticalScrollOffset()
  {
    o localo = this.mLayout;
    int i = 0;
    if (localo == null) {
      return 0;
    }
    if (localo.canScrollVertically()) {
      i = this.mLayout.computeVerticalScrollOffset(this.mState);
    }
    return i;
  }
  
  public int computeVerticalScrollRange()
  {
    o localo = this.mLayout;
    int i = 0;
    if (localo == null) {
      return 0;
    }
    if (localo.canScrollVertically()) {
      i = this.mLayout.computeVerticalScrollRange(this.mState);
    }
    return i;
  }
  
  void considerReleasingGlowsOnScroll(int paramInt1, int paramInt2)
  {
    EdgeEffect localEdgeEffect = this.mLeftGlow;
    if ((localEdgeEffect != null) && (!localEdgeEffect.isFinished()) && (paramInt1 > 0))
    {
      this.mLeftGlow.onRelease();
      bool1 = this.mLeftGlow.isFinished();
    }
    else
    {
      bool1 = false;
    }
    localEdgeEffect = this.mRightGlow;
    boolean bool2 = bool1;
    if (localEdgeEffect != null)
    {
      bool2 = bool1;
      if (!localEdgeEffect.isFinished())
      {
        bool2 = bool1;
        if (paramInt1 < 0)
        {
          this.mRightGlow.onRelease();
          bool2 = bool1 | this.mRightGlow.isFinished();
        }
      }
    }
    localEdgeEffect = this.mTopGlow;
    boolean bool1 = bool2;
    if (localEdgeEffect != null)
    {
      bool1 = bool2;
      if (!localEdgeEffect.isFinished())
      {
        bool1 = bool2;
        if (paramInt2 > 0)
        {
          this.mTopGlow.onRelease();
          bool1 = bool2 | this.mTopGlow.isFinished();
        }
      }
    }
    localEdgeEffect = this.mBottomGlow;
    bool2 = bool1;
    if (localEdgeEffect != null)
    {
      bool2 = bool1;
      if (!localEdgeEffect.isFinished())
      {
        bool2 = bool1;
        if (paramInt2 < 0)
        {
          this.mBottomGlow.onRelease();
          bool2 = bool1 | this.mBottomGlow.isFinished();
        }
      }
    }
    if (bool2) {
      a0.c0(this);
    }
  }
  
  void consumePendingUpdateOperations()
  {
    if ((this.mFirstLayoutComplete) && (!this.mDataSetHasChangedAfterLayout))
    {
      if (!this.mAdapterHelper.p()) {
        return;
      }
      if ((this.mAdapterHelper.o(4)) && (!this.mAdapterHelper.o(11)))
      {
        androidx.core.os.g.a("RV PartialInvalidate");
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        this.mAdapterHelper.w();
        if (!this.mLayoutWasDefered) {
          if (hasUpdatedView()) {
            dispatchLayout();
          } else {
            this.mAdapterHelper.i();
          }
        }
        stopInterceptRequestLayout(true);
        onExitLayoutOrScroll();
        androidx.core.os.g.b();
      }
      else if (this.mAdapterHelper.p())
      {
        androidx.core.os.g.a("RV FullInvalidate");
        dispatchLayout();
        androidx.core.os.g.b();
      }
      return;
    }
    androidx.core.os.g.a("RV FullInvalidate");
    dispatchLayout();
    androidx.core.os.g.b();
  }
  
  void defaultOnMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(o.chooseSize(paramInt1, getPaddingLeft() + getPaddingRight(), a0.B(this)), o.chooseSize(paramInt2, getPaddingTop() + getPaddingBottom(), a0.A(this)));
  }
  
  void dispatchChildAttached(View paramView)
  {
    Object localObject = getChildViewHolderInt(paramView);
    onChildAttachedToWindow(paramView);
    g localg = this.mAdapter;
    if ((localg != null) && (localObject != null)) {
      localg.onViewAttachedToWindow((c0)localObject);
    }
    localObject = this.mOnChildAttachStateListeners;
    if (localObject != null) {
      for (int i = ((List)localObject).size() - 1; i >= 0; i--) {
        ((q)this.mOnChildAttachStateListeners.get(i)).b(paramView);
      }
    }
  }
  
  void dispatchChildDetached(View paramView)
  {
    c0 localc0 = getChildViewHolderInt(paramView);
    onChildDetachedFromWindow(paramView);
    Object localObject = this.mAdapter;
    if ((localObject != null) && (localc0 != null)) {
      ((g)localObject).onViewDetachedFromWindow(localc0);
    }
    localObject = this.mOnChildAttachStateListeners;
    if (localObject != null) {
      for (int i = ((List)localObject).size() - 1; i >= 0; i--) {
        ((q)this.mOnChildAttachStateListeners.get(i)).a(paramView);
      }
    }
  }
  
  void dispatchLayout()
  {
    if (this.mAdapter == null)
    {
      Log.e("RecyclerView", "No adapter attached; skipping layout");
      return;
    }
    if (this.mLayout == null)
    {
      Log.e("RecyclerView", "No layout manager attached; skipping layout");
      return;
    }
    z localz = this.mState;
    localz.j = false;
    if (localz.e == 1)
    {
      dispatchLayoutStep1();
      this.mLayout.setExactMeasureSpecsFrom(this);
      dispatchLayoutStep2();
    }
    else if ((!this.mAdapterHelper.q()) && (this.mLayout.getWidth() == getWidth()) && (this.mLayout.getHeight() == getHeight()))
    {
      this.mLayout.setExactMeasureSpecsFrom(this);
    }
    else
    {
      this.mLayout.setExactMeasureSpecsFrom(this);
      dispatchLayoutStep2();
    }
    dispatchLayoutStep3();
  }
  
  public boolean dispatchNestedFling(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    return getScrollingChildHelper().a(paramFloat1, paramFloat2, paramBoolean);
  }
  
  public boolean dispatchNestedPreFling(float paramFloat1, float paramFloat2)
  {
    return getScrollingChildHelper().b(paramFloat1, paramFloat2);
  }
  
  public boolean dispatchNestedPreScroll(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    return getScrollingChildHelper().c(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2);
  }
  
  public boolean dispatchNestedPreScroll(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt3)
  {
    return getScrollingChildHelper().d(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2, paramInt3);
  }
  
  public final void dispatchNestedScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt1, int paramInt5, int[] paramArrayOfInt2)
  {
    getScrollingChildHelper().e(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt1, paramInt5, paramArrayOfInt2);
  }
  
  public boolean dispatchNestedScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    return getScrollingChildHelper().f(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt);
  }
  
  public boolean dispatchNestedScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt, int paramInt5)
  {
    return getScrollingChildHelper().g(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt, paramInt5);
  }
  
  void dispatchOnScrollStateChanged(int paramInt)
  {
    Object localObject = this.mLayout;
    if (localObject != null) {
      ((o)localObject).onScrollStateChanged(paramInt);
    }
    onScrollStateChanged(paramInt);
    localObject = this.mScrollListener;
    if (localObject != null) {
      ((t)localObject).onScrollStateChanged(this, paramInt);
    }
    localObject = this.mScrollListeners;
    if (localObject != null) {
      for (int i = ((List)localObject).size() - 1; i >= 0; i--) {
        ((t)this.mScrollListeners.get(i)).onScrollStateChanged(this, paramInt);
      }
    }
  }
  
  void dispatchOnScrolled(int paramInt1, int paramInt2)
  {
    this.mDispatchScrollCounter += 1;
    int i = getScrollX();
    int j = getScrollY();
    onScrollChanged(i, j, i - paramInt1, j - paramInt2);
    onScrolled(paramInt1, paramInt2);
    Object localObject = this.mScrollListener;
    if (localObject != null) {
      ((t)localObject).onScrolled(this, paramInt1, paramInt2);
    }
    localObject = this.mScrollListeners;
    if (localObject != null) {
      for (i = ((List)localObject).size() - 1; i >= 0; i--) {
        ((t)this.mScrollListeners.get(i)).onScrolled(this, paramInt1, paramInt2);
      }
    }
    this.mDispatchScrollCounter -= 1;
  }
  
  void dispatchPendingImportantForAccessibilityChanges()
  {
    for (int i = this.mPendingAccessibilityImportanceChange.size() - 1; i >= 0; i--)
    {
      c0 localc0 = (c0)this.mPendingAccessibilityImportanceChange.get(i);
      if ((localc0.itemView.getParent() == this) && (!localc0.shouldIgnore()))
      {
        int j = localc0.mPendingAccessibilityState;
        if (j != -1)
        {
          a0.w0(localc0.itemView, j);
          localc0.mPendingAccessibilityState = -1;
        }
      }
    }
    this.mPendingAccessibilityImportanceChange.clear();
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    onPopulateAccessibilityEvent(paramAccessibilityEvent);
    return true;
  }
  
  protected void dispatchRestoreInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchThawSelfOnly(paramSparseArray);
  }
  
  protected void dispatchSaveInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchFreezeSelfOnly(paramSparseArray);
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int i = this.mItemDecorations.size();
    int j = 0;
    for (int k = 0; k < i; k++) {
      ((n)this.mItemDecorations.get(k)).onDrawOver(paramCanvas, this, this.mState);
    }
    EdgeEffect localEdgeEffect = this.mLeftGlow;
    int m = 1;
    int n;
    if ((localEdgeEffect != null) && (!localEdgeEffect.isFinished()))
    {
      n = paramCanvas.save();
      if (this.mClipToPadding) {
        k = getPaddingBottom();
      } else {
        k = 0;
      }
      paramCanvas.rotate(270.0F);
      paramCanvas.translate(-getHeight() + k, 0.0F);
      localEdgeEffect = this.mLeftGlow;
      if ((localEdgeEffect != null) && (localEdgeEffect.draw(paramCanvas))) {
        i = 1;
      } else {
        i = 0;
      }
      paramCanvas.restoreToCount(n);
    }
    else
    {
      i = 0;
    }
    localEdgeEffect = this.mTopGlow;
    k = i;
    if (localEdgeEffect != null)
    {
      k = i;
      if (!localEdgeEffect.isFinished())
      {
        n = paramCanvas.save();
        if (this.mClipToPadding) {
          paramCanvas.translate(getPaddingLeft(), getPaddingTop());
        }
        localEdgeEffect = this.mTopGlow;
        if ((localEdgeEffect != null) && (localEdgeEffect.draw(paramCanvas))) {
          k = 1;
        } else {
          k = 0;
        }
        k = i | k;
        paramCanvas.restoreToCount(n);
      }
    }
    localEdgeEffect = this.mRightGlow;
    i = k;
    if (localEdgeEffect != null)
    {
      i = k;
      if (!localEdgeEffect.isFinished())
      {
        n = paramCanvas.save();
        int i1 = getWidth();
        if (this.mClipToPadding) {
          i = getPaddingTop();
        } else {
          i = 0;
        }
        paramCanvas.rotate(90.0F);
        paramCanvas.translate(-i, -i1);
        localEdgeEffect = this.mRightGlow;
        if ((localEdgeEffect != null) && (localEdgeEffect.draw(paramCanvas))) {
          i = 1;
        } else {
          i = 0;
        }
        i = k | i;
        paramCanvas.restoreToCount(n);
      }
    }
    localEdgeEffect = this.mBottomGlow;
    k = i;
    if (localEdgeEffect != null)
    {
      k = i;
      if (!localEdgeEffect.isFinished())
      {
        n = paramCanvas.save();
        paramCanvas.rotate(180.0F);
        if (this.mClipToPadding) {
          paramCanvas.translate(-getWidth() + getPaddingRight(), -getHeight() + getPaddingBottom());
        } else {
          paramCanvas.translate(-getWidth(), -getHeight());
        }
        localEdgeEffect = this.mBottomGlow;
        k = j;
        if (localEdgeEffect != null)
        {
          k = j;
          if (localEdgeEffect.draw(paramCanvas)) {
            k = 1;
          }
        }
        k = i | k;
        paramCanvas.restoreToCount(n);
      }
    }
    if ((k == 0) && (this.mItemAnimator != null) && (this.mItemDecorations.size() > 0) && (this.mItemAnimator.p())) {
      k = m;
    }
    if (k != 0) {
      a0.c0(this);
    }
  }
  
  public boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    return super.drawChild(paramCanvas, paramView, paramLong);
  }
  
  void ensureBottomGlow()
  {
    if (this.mBottomGlow != null) {
      return;
    }
    EdgeEffect localEdgeEffect = this.mEdgeEffectFactory.a(this, 3);
    this.mBottomGlow = localEdgeEffect;
    if (this.mClipToPadding) {
      localEdgeEffect.setSize(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
    } else {
      localEdgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
    }
  }
  
  void ensureLeftGlow()
  {
    if (this.mLeftGlow != null) {
      return;
    }
    EdgeEffect localEdgeEffect = this.mEdgeEffectFactory.a(this, 0);
    this.mLeftGlow = localEdgeEffect;
    if (this.mClipToPadding) {
      localEdgeEffect.setSize(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
    } else {
      localEdgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
    }
  }
  
  void ensureRightGlow()
  {
    if (this.mRightGlow != null) {
      return;
    }
    EdgeEffect localEdgeEffect = this.mEdgeEffectFactory.a(this, 2);
    this.mRightGlow = localEdgeEffect;
    if (this.mClipToPadding) {
      localEdgeEffect.setSize(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
    } else {
      localEdgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
    }
  }
  
  void ensureTopGlow()
  {
    if (this.mTopGlow != null) {
      return;
    }
    EdgeEffect localEdgeEffect = this.mEdgeEffectFactory.a(this, 1);
    this.mTopGlow = localEdgeEffect;
    if (this.mClipToPadding) {
      localEdgeEffect.setSize(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
    } else {
      localEdgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
    }
  }
  
  String exceptionLabel()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(" ");
    localStringBuilder.append(super.toString());
    localStringBuilder.append(", adapter:");
    localStringBuilder.append(this.mAdapter);
    localStringBuilder.append(", layout:");
    localStringBuilder.append(this.mLayout);
    localStringBuilder.append(", context:");
    localStringBuilder.append(getContext());
    return localStringBuilder.toString();
  }
  
  final void fillRemainingScrollValues(z paramz)
  {
    if (getScrollState() == 2)
    {
      OverScroller localOverScroller = this.mViewFlinger.c;
      paramz.p = (localOverScroller.getFinalX() - localOverScroller.getCurrX());
      paramz.q = (localOverScroller.getFinalY() - localOverScroller.getCurrY());
    }
    else
    {
      paramz.p = 0;
      paramz.q = 0;
    }
  }
  
  public View findChildViewUnder(float paramFloat1, float paramFloat2)
  {
    for (int i = this.mChildHelper.g() - 1; i >= 0; i--)
    {
      View localView = this.mChildHelper.f(i);
      float f1 = localView.getTranslationX();
      float f2 = localView.getTranslationY();
      if ((paramFloat1 >= localView.getLeft() + f1) && (paramFloat1 <= localView.getRight() + f1) && (paramFloat2 >= localView.getTop() + f2) && (paramFloat2 <= localView.getBottom() + f2)) {
        return localView;
      }
    }
    return null;
  }
  
  public View findContainingItemView(View paramView)
  {
    for (ViewParent localViewParent = paramView.getParent(); (localViewParent != null) && (localViewParent != this) && ((localViewParent instanceof View)); localViewParent = paramView.getParent()) {
      paramView = (View)localViewParent;
    }
    if (localViewParent != this) {
      paramView = null;
    }
    return paramView;
  }
  
  public c0 findContainingViewHolder(View paramView)
  {
    paramView = findContainingItemView(paramView);
    if (paramView == null) {
      paramView = null;
    } else {
      paramView = getChildViewHolder(paramView);
    }
    return paramView;
  }
  
  public c0 findViewHolderForAdapterPosition(int paramInt)
  {
    boolean bool = this.mDataSetHasChangedAfterLayout;
    Object localObject1 = null;
    if (bool) {
      return null;
    }
    int i = this.mChildHelper.j();
    int j = 0;
    while (j < i)
    {
      c0 localc0 = getChildViewHolderInt(this.mChildHelper.i(j));
      Object localObject2 = localObject1;
      if (localc0 != null)
      {
        localObject2 = localObject1;
        if (!localc0.isRemoved())
        {
          localObject2 = localObject1;
          if (getAdapterPositionFor(localc0) == paramInt) {
            if (this.mChildHelper.n(localc0.itemView)) {
              localObject2 = localc0;
            } else {
              return localc0;
            }
          }
        }
      }
      j++;
      localObject1 = localObject2;
    }
    return localObject1;
  }
  
  public c0 findViewHolderForItemId(long paramLong)
  {
    g localg = this.mAdapter;
    c0 localc0 = null;
    Object localObject1 = null;
    Object localObject2 = localc0;
    if (localg != null) {
      if (!localg.hasStableIds())
      {
        localObject2 = localc0;
      }
      else
      {
        int i = this.mChildHelper.j();
        int j = 0;
        for (;;)
        {
          localObject2 = localObject1;
          if (j >= i) {
            break;
          }
          localc0 = getChildViewHolderInt(this.mChildHelper.i(j));
          localObject2 = localObject1;
          if (localc0 != null)
          {
            localObject2 = localObject1;
            if (!localc0.isRemoved())
            {
              localObject2 = localObject1;
              if (localc0.getItemId() == paramLong) {
                if (this.mChildHelper.n(localc0.itemView)) {
                  localObject2 = localc0;
                } else {
                  return localc0;
                }
              }
            }
          }
          j++;
          localObject1 = localObject2;
        }
      }
    }
    return localObject2;
  }
  
  public c0 findViewHolderForLayoutPosition(int paramInt)
  {
    return findViewHolderForPosition(paramInt, false);
  }
  
  @Deprecated
  public c0 findViewHolderForPosition(int paramInt)
  {
    return findViewHolderForPosition(paramInt, false);
  }
  
  c0 findViewHolderForPosition(int paramInt, boolean paramBoolean)
  {
    int i = this.mChildHelper.j();
    Object localObject1 = null;
    int j = 0;
    while (j < i)
    {
      c0 localc0 = getChildViewHolderInt(this.mChildHelper.i(j));
      Object localObject2 = localObject1;
      if (localc0 != null)
      {
        localObject2 = localObject1;
        if (!localc0.isRemoved())
        {
          if (paramBoolean)
          {
            if (localc0.mPosition != paramInt)
            {
              localObject2 = localObject1;
              break label116;
            }
          }
          else if (localc0.getLayoutPosition() != paramInt)
          {
            localObject2 = localObject1;
            break label116;
          }
          if (this.mChildHelper.n(localc0.itemView)) {
            localObject2 = localc0;
          } else {
            return localc0;
          }
        }
      }
      label116:
      j++;
      localObject1 = localObject2;
    }
    return localObject1;
  }
  
  public boolean fling(int paramInt1, int paramInt2)
  {
    Object localObject = this.mLayout;
    if (localObject == null)
    {
      Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
      return false;
    }
    if (this.mLayoutSuppressed) {
      return false;
    }
    int i = ((o)localObject).canScrollHorizontally();
    boolean bool1 = this.mLayout.canScrollVertically();
    int j;
    if (i != 0)
    {
      j = paramInt1;
      if (Math.abs(paramInt1) >= this.mMinFlingVelocity) {}
    }
    else
    {
      j = 0;
    }
    if (bool1)
    {
      paramInt1 = paramInt2;
      if (Math.abs(paramInt2) >= this.mMinFlingVelocity) {}
    }
    else
    {
      paramInt1 = 0;
    }
    if ((j == 0) && (paramInt1 == 0)) {
      return false;
    }
    float f1 = j;
    float f2 = paramInt1;
    if (!dispatchNestedPreFling(f1, f2))
    {
      boolean bool2;
      if ((i == 0) && (!bool1)) {
        bool2 = false;
      } else {
        bool2 = true;
      }
      dispatchNestedFling(f1, f2, bool2);
      localObject = this.mOnFlingListener;
      if ((localObject != null) && (((r)localObject).a(j, paramInt1))) {
        return true;
      }
      if (bool2)
      {
        paramInt2 = i;
        if (bool1) {
          paramInt2 = i | 0x2;
        }
        startNestedScroll(paramInt2, 1);
        paramInt2 = this.mMaxFlingVelocity;
        paramInt2 = Math.max(-paramInt2, Math.min(j, paramInt2));
        j = this.mMaxFlingVelocity;
        paramInt1 = Math.max(-j, Math.min(paramInt1, j));
        this.mViewFlinger.c(paramInt2, paramInt1);
        return true;
      }
    }
    return false;
  }
  
  public View focusSearch(View paramView, int paramInt)
  {
    Object localObject = this.mLayout.onInterceptFocusSearch(paramView, paramInt);
    if (localObject != null) {
      return localObject;
    }
    localObject = this.mAdapter;
    int i = 1;
    int j;
    if ((localObject != null) && (this.mLayout != null) && (!isComputingLayout()) && (!this.mLayoutSuppressed)) {
      j = 1;
    } else {
      j = 0;
    }
    localObject = FocusFinder.getInstance();
    if ((j != 0) && ((paramInt == 2) || (paramInt == 1)))
    {
      if (this.mLayout.canScrollVertically())
      {
        if (paramInt == 2) {
          k = 130;
        } else {
          k = 33;
        }
        if (((FocusFinder)localObject).findNextFocus(this, paramView, k) == null) {
          m = 1;
        } else {
          m = 0;
        }
        j = m;
        if (FORCE_ABS_FOCUS_SEARCH_DIRECTION)
        {
          paramInt = k;
          j = m;
        }
      }
      else
      {
        j = 0;
      }
      int m = j;
      int k = paramInt;
      if (j == 0)
      {
        m = j;
        k = paramInt;
        if (this.mLayout.canScrollHorizontally())
        {
          if (this.mLayout.getLayoutDirection() == 1) {
            j = 1;
          } else {
            j = 0;
          }
          if (paramInt == 2) {
            k = 1;
          } else {
            k = 0;
          }
          if ((j ^ k) != 0) {
            j = 66;
          } else {
            j = 17;
          }
          if (((FocusFinder)localObject).findNextFocus(this, paramView, j) == null) {
            k = i;
          } else {
            k = 0;
          }
          if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
            paramInt = j;
          }
          m = k;
          k = paramInt;
        }
      }
      if (m != 0)
      {
        consumePendingUpdateOperations();
        if (findContainingItemView(paramView) == null) {
          return null;
        }
        startInterceptRequestLayout();
        this.mLayout.onFocusSearchFailed(paramView, k, this.mRecycler, this.mState);
        stopInterceptRequestLayout(false);
      }
      localObject = ((FocusFinder)localObject).findNextFocus(this, paramView, k);
      paramInt = k;
    }
    else
    {
      localObject = ((FocusFinder)localObject).findNextFocus(this, paramView, paramInt);
      if ((localObject == null) && (j != 0))
      {
        consumePendingUpdateOperations();
        if (findContainingItemView(paramView) == null) {
          return null;
        }
        startInterceptRequestLayout();
        localObject = this.mLayout.onFocusSearchFailed(paramView, paramInt, this.mRecycler, this.mState);
        stopInterceptRequestLayout(false);
      }
    }
    if ((localObject != null) && (!((View)localObject).hasFocusable()))
    {
      if (getFocusedChild() == null) {
        return super.focusSearch(paramView, paramInt);
      }
      requestChildOnScreen((View)localObject, null);
      return paramView;
    }
    if (!isPreferredNextFocus(paramView, (View)localObject, paramInt)) {
      localObject = super.focusSearch(paramView, paramInt);
    }
    return localObject;
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    Object localObject = this.mLayout;
    if (localObject != null) {
      return ((o)localObject).generateDefaultLayoutParams();
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("RecyclerView has no LayoutManager");
    ((StringBuilder)localObject).append(exceptionLabel());
    throw new IllegalStateException(((StringBuilder)localObject).toString());
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    o localo = this.mLayout;
    if (localo != null) {
      return localo.generateLayoutParams(getContext(), paramAttributeSet);
    }
    paramAttributeSet = new StringBuilder();
    paramAttributeSet.append("RecyclerView has no LayoutManager");
    paramAttributeSet.append(exceptionLabel());
    throw new IllegalStateException(paramAttributeSet.toString());
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    o localo = this.mLayout;
    if (localo != null) {
      return localo.generateLayoutParams(paramLayoutParams);
    }
    paramLayoutParams = new StringBuilder();
    paramLayoutParams.append("RecyclerView has no LayoutManager");
    paramLayoutParams.append(exceptionLabel());
    throw new IllegalStateException(paramLayoutParams.toString());
  }
  
  public CharSequence getAccessibilityClassName()
  {
    return "androidx.recyclerview.widget.RecyclerView";
  }
  
  public g getAdapter()
  {
    return this.mAdapter;
  }
  
  int getAdapterPositionFor(c0 paramc0)
  {
    if ((!paramc0.hasAnyOfTheFlags(524)) && (paramc0.isBound())) {
      return this.mAdapterHelper.e(paramc0.mPosition);
    }
    return -1;
  }
  
  public int getBaseline()
  {
    o localo = this.mLayout;
    if (localo != null) {
      return localo.getBaseline();
    }
    return super.getBaseline();
  }
  
  long getChangedHolderKey(c0 paramc0)
  {
    long l;
    if (this.mAdapter.hasStableIds()) {
      l = paramc0.getItemId();
    } else {
      l = paramc0.mPosition;
    }
    return l;
  }
  
  public int getChildAdapterPosition(View paramView)
  {
    paramView = getChildViewHolderInt(paramView);
    int i;
    if (paramView != null) {
      i = paramView.getAdapterPosition();
    } else {
      i = -1;
    }
    return i;
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    j localj = this.mChildDrawingOrderCallback;
    if (localj == null) {
      return super.getChildDrawingOrder(paramInt1, paramInt2);
    }
    return localj.a(paramInt1, paramInt2);
  }
  
  public long getChildItemId(View paramView)
  {
    g localg = this.mAdapter;
    long l1 = -1L;
    long l2 = l1;
    if (localg != null) {
      if (!localg.hasStableIds())
      {
        l2 = l1;
      }
      else
      {
        paramView = getChildViewHolderInt(paramView);
        l2 = l1;
        if (paramView != null) {
          l2 = paramView.getItemId();
        }
      }
    }
    return l2;
  }
  
  public int getChildLayoutPosition(View paramView)
  {
    paramView = getChildViewHolderInt(paramView);
    int i;
    if (paramView != null) {
      i = paramView.getLayoutPosition();
    } else {
      i = -1;
    }
    return i;
  }
  
  @Deprecated
  public int getChildPosition(View paramView)
  {
    return getChildAdapterPosition(paramView);
  }
  
  public c0 getChildViewHolder(View paramView)
  {
    Object localObject = paramView.getParent();
    if ((localObject != null) && (localObject != this))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("View ");
      ((StringBuilder)localObject).append(paramView);
      ((StringBuilder)localObject).append(" is not a direct child of ");
      ((StringBuilder)localObject).append(this);
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    }
    return getChildViewHolderInt(paramView);
  }
  
  public boolean getClipToPadding()
  {
    return this.mClipToPadding;
  }
  
  public m getCompatAccessibilityDelegate()
  {
    return this.mAccessibilityDelegate;
  }
  
  public void getDecoratedBoundsWithMargins(View paramView, Rect paramRect)
  {
    getDecoratedBoundsWithMarginsInt(paramView, paramRect);
  }
  
  public k getEdgeEffectFactory()
  {
    return this.mEdgeEffectFactory;
  }
  
  public l getItemAnimator()
  {
    return this.mItemAnimator;
  }
  
  Rect getItemDecorInsetsForChild(View paramView)
  {
    p localp = (p)paramView.getLayoutParams();
    if (!localp.mInsetsDirty) {
      return localp.mDecorInsets;
    }
    if ((this.mState.e()) && ((localp.isItemChanged()) || (localp.isViewInvalid()))) {
      return localp.mDecorInsets;
    }
    Rect localRect1 = localp.mDecorInsets;
    localRect1.set(0, 0, 0, 0);
    int i = this.mItemDecorations.size();
    for (int j = 0; j < i; j++)
    {
      this.mTempRect.set(0, 0, 0, 0);
      ((n)this.mItemDecorations.get(j)).getItemOffsets(this.mTempRect, paramView, this, this.mState);
      int k = localRect1.left;
      Rect localRect2 = this.mTempRect;
      localRect1.left = (k + localRect2.left);
      localRect1.top += localRect2.top;
      localRect1.right += localRect2.right;
      localRect1.bottom += localRect2.bottom;
    }
    localp.mInsetsDirty = false;
    return localRect1;
  }
  
  public n getItemDecorationAt(int paramInt)
  {
    int i = getItemDecorationCount();
    if ((paramInt >= 0) && (paramInt < i)) {
      return (n)this.mItemDecorations.get(paramInt);
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramInt);
    localStringBuilder.append(" is an invalid index for size ");
    localStringBuilder.append(i);
    throw new IndexOutOfBoundsException(localStringBuilder.toString());
  }
  
  public int getItemDecorationCount()
  {
    return this.mItemDecorations.size();
  }
  
  public o getLayoutManager()
  {
    return this.mLayout;
  }
  
  public int getMaxFlingVelocity()
  {
    return this.mMaxFlingVelocity;
  }
  
  public int getMinFlingVelocity()
  {
    return this.mMinFlingVelocity;
  }
  
  long getNanoTime()
  {
    if (ALLOW_THREAD_GAP_WORK) {
      return System.nanoTime();
    }
    return 0L;
  }
  
  public r getOnFlingListener()
  {
    return this.mOnFlingListener;
  }
  
  public boolean getPreserveFocusAfterLayout()
  {
    return this.mPreserveFocusAfterLayout;
  }
  
  public u getRecycledViewPool()
  {
    return this.mRecycler.i();
  }
  
  public int getScrollState()
  {
    return this.mScrollState;
  }
  
  public boolean hasFixedSize()
  {
    return this.mHasFixedSize;
  }
  
  public boolean hasNestedScrollingParent()
  {
    return getScrollingChildHelper().k();
  }
  
  public boolean hasNestedScrollingParent(int paramInt)
  {
    return getScrollingChildHelper().l(paramInt);
  }
  
  public boolean hasPendingAdapterUpdates()
  {
    boolean bool;
    if ((this.mFirstLayoutComplete) && (!this.mDataSetHasChangedAfterLayout) && (!this.mAdapterHelper.p())) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  void initAdapterManager()
  {
    this.mAdapterHelper = new a(new f());
  }
  
  void initFastScroller(StateListDrawable paramStateListDrawable1, Drawable paramDrawable1, StateListDrawable paramStateListDrawable2, Drawable paramDrawable2)
  {
    if ((paramStateListDrawable1 != null) && (paramDrawable1 != null) && (paramStateListDrawable2 != null) && (paramDrawable2 != null))
    {
      Resources localResources = getContext().getResources();
      new e(this, paramStateListDrawable1, paramDrawable1, paramStateListDrawable2, paramDrawable2, localResources.getDimensionPixelSize(i0.b.a), localResources.getDimensionPixelSize(i0.b.c), localResources.getDimensionPixelOffset(i0.b.b));
      return;
    }
    paramStateListDrawable1 = new StringBuilder();
    paramStateListDrawable1.append("Trying to set fast scroller without both required drawables.");
    paramStateListDrawable1.append(exceptionLabel());
    throw new IllegalArgumentException(paramStateListDrawable1.toString());
  }
  
  void invalidateGlows()
  {
    this.mBottomGlow = null;
    this.mTopGlow = null;
    this.mRightGlow = null;
    this.mLeftGlow = null;
  }
  
  public void invalidateItemDecorations()
  {
    if (this.mItemDecorations.size() == 0) {
      return;
    }
    o localo = this.mLayout;
    if (localo != null) {
      localo.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
    }
    markItemDecorInsetsDirty();
    requestLayout();
  }
  
  boolean isAccessibilityEnabled()
  {
    AccessibilityManager localAccessibilityManager = this.mAccessibilityManager;
    boolean bool;
    if ((localAccessibilityManager != null) && (localAccessibilityManager.isEnabled())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean isAnimating()
  {
    l locall = this.mItemAnimator;
    boolean bool;
    if ((locall != null) && (locall.p())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean isAttachedToWindow()
  {
    return this.mIsAttached;
  }
  
  public boolean isComputingLayout()
  {
    boolean bool;
    if (this.mLayoutOrScrollCounter > 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  @Deprecated
  public boolean isLayoutFrozen()
  {
    return isLayoutSuppressed();
  }
  
  public final boolean isLayoutSuppressed()
  {
    return this.mLayoutSuppressed;
  }
  
  public boolean isNestedScrollingEnabled()
  {
    return getScrollingChildHelper().m();
  }
  
  void jumpToPositionForSmoothScroller(int paramInt)
  {
    if (this.mLayout == null) {
      return;
    }
    setScrollState(2);
    this.mLayout.scrollToPosition(paramInt);
    awakenScrollBars();
  }
  
  void markItemDecorInsetsDirty()
  {
    int i = this.mChildHelper.j();
    for (int j = 0; j < i; j++) {
      ((p)this.mChildHelper.i(j).getLayoutParams()).mInsetsDirty = true;
    }
    this.mRecycler.s();
  }
  
  void markKnownViewsInvalid()
  {
    int i = this.mChildHelper.j();
    for (int j = 0; j < i; j++)
    {
      c0 localc0 = getChildViewHolderInt(this.mChildHelper.i(j));
      if ((localc0 != null) && (!localc0.shouldIgnore())) {
        localc0.addFlags(6);
      }
    }
    markItemDecorInsetsDirty();
    this.mRecycler.t();
  }
  
  public void offsetChildrenHorizontal(int paramInt)
  {
    int i = this.mChildHelper.g();
    for (int j = 0; j < i; j++) {
      this.mChildHelper.f(j).offsetLeftAndRight(paramInt);
    }
  }
  
  public void offsetChildrenVertical(int paramInt)
  {
    int i = this.mChildHelper.g();
    for (int j = 0; j < i; j++) {
      this.mChildHelper.f(j).offsetTopAndBottom(paramInt);
    }
  }
  
  void offsetPositionRecordsForInsert(int paramInt1, int paramInt2)
  {
    int i = this.mChildHelper.j();
    for (int j = 0; j < i; j++)
    {
      c0 localc0 = getChildViewHolderInt(this.mChildHelper.i(j));
      if ((localc0 != null) && (!localc0.shouldIgnore()) && (localc0.mPosition >= paramInt1))
      {
        localc0.offsetPosition(paramInt2, false);
        this.mState.g = true;
      }
    }
    this.mRecycler.u(paramInt1, paramInt2);
    requestLayout();
  }
  
  void offsetPositionRecordsForMove(int paramInt1, int paramInt2)
  {
    int i = this.mChildHelper.j();
    int j;
    int k;
    int m;
    if (paramInt1 < paramInt2)
    {
      j = -1;
      k = paramInt1;
      m = paramInt2;
    }
    else
    {
      m = paramInt1;
      k = paramInt2;
      j = 1;
    }
    for (int n = 0; n < i; n++)
    {
      c0 localc0 = getChildViewHolderInt(this.mChildHelper.i(n));
      if (localc0 != null)
      {
        int i1 = localc0.mPosition;
        if ((i1 >= k) && (i1 <= m))
        {
          if (i1 == paramInt1) {
            localc0.offsetPosition(paramInt2 - paramInt1, false);
          } else {
            localc0.offsetPosition(j, false);
          }
          this.mState.g = true;
        }
      }
    }
    this.mRecycler.v(paramInt1, paramInt2);
    requestLayout();
  }
  
  void offsetPositionRecordsForRemove(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i = this.mChildHelper.j();
    for (int j = 0; j < i; j++)
    {
      c0 localc0 = getChildViewHolderInt(this.mChildHelper.i(j));
      if ((localc0 != null) && (!localc0.shouldIgnore()))
      {
        int k = localc0.mPosition;
        if (k >= paramInt1 + paramInt2)
        {
          localc0.offsetPosition(-paramInt2, paramBoolean);
          this.mState.g = true;
        }
        else if (k >= paramInt1)
        {
          localc0.flagRemovedAndOffsetPosition(paramInt1 - 1, -paramInt2, paramBoolean);
          this.mState.g = true;
        }
      }
    }
    this.mRecycler.w(paramInt1, paramInt2, paramBoolean);
    requestLayout();
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.mLayoutOrScrollCounter = 0;
    boolean bool = true;
    this.mIsAttached = true;
    if ((!this.mFirstLayoutComplete) || (isLayoutRequested())) {
      bool = false;
    }
    this.mFirstLayoutComplete = bool;
    Object localObject1 = this.mLayout;
    if (localObject1 != null) {
      ((o)localObject1).dispatchAttachedToWindow(this);
    }
    this.mPostedAnimatorRunner = false;
    if (ALLOW_THREAD_GAP_WORK)
    {
      localObject1 = f.e;
      Object localObject2 = (f)((ThreadLocal)localObject1).get();
      this.mGapWorker = ((f)localObject2);
      if (localObject2 == null)
      {
        this.mGapWorker = new f();
        localObject2 = a0.t(this);
        float f1 = 60.0F;
        float f2 = f1;
        if (!isInEditMode())
        {
          f2 = f1;
          if (localObject2 != null)
          {
            float f3 = ((Display)localObject2).getRefreshRate();
            f2 = f1;
            if (f3 >= 30.0F) {
              f2 = f3;
            }
          }
        }
        localObject2 = this.mGapWorker;
        ((f)localObject2).c = ((1.0E+009F / f2));
        ((ThreadLocal)localObject1).set(localObject2);
      }
      this.mGapWorker.a(this);
    }
  }
  
  public void onChildAttachedToWindow(View paramView) {}
  
  public void onChildDetachedFromWindow(View paramView) {}
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    Object localObject = this.mItemAnimator;
    if (localObject != null) {
      ((l)localObject).k();
    }
    stopScroll();
    this.mIsAttached = false;
    localObject = this.mLayout;
    if (localObject != null) {
      ((o)localObject).dispatchDetachedFromWindow(this, this.mRecycler);
    }
    this.mPendingAccessibilityImportanceChange.clear();
    removeCallbacks(this.mItemAnimatorRunner);
    this.mViewInfoStore.j();
    if (ALLOW_THREAD_GAP_WORK)
    {
      localObject = this.mGapWorker;
      if (localObject != null)
      {
        ((f)localObject).j(this);
        this.mGapWorker = null;
      }
    }
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i = this.mItemDecorations.size();
    for (int j = 0; j < i; j++) {
      ((n)this.mItemDecorations.get(j)).onDraw(paramCanvas, this, this.mState);
    }
  }
  
  void onEnterLayoutOrScroll()
  {
    this.mLayoutOrScrollCounter += 1;
  }
  
  void onExitLayoutOrScroll()
  {
    onExitLayoutOrScroll(true);
  }
  
  void onExitLayoutOrScroll(boolean paramBoolean)
  {
    int i = this.mLayoutOrScrollCounter - 1;
    this.mLayoutOrScrollCounter = i;
    if (i < 1)
    {
      this.mLayoutOrScrollCounter = 0;
      if (paramBoolean)
      {
        dispatchContentChangedIfNecessary();
        dispatchPendingImportantForAccessibilityChanges();
      }
    }
  }
  
  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    if (this.mLayout == null) {
      return false;
    }
    if (this.mLayoutSuppressed) {
      return false;
    }
    if (paramMotionEvent.getAction() == 8)
    {
      float f1;
      float f2;
      if ((paramMotionEvent.getSource() & 0x2) != 0)
      {
        if (this.mLayout.canScrollVertically()) {
          f1 = -paramMotionEvent.getAxisValue(9);
        } else {
          f1 = 0.0F;
        }
        f2 = f1;
        if (this.mLayout.canScrollHorizontally())
        {
          f2 = paramMotionEvent.getAxisValue(10);
          break label145;
        }
      }
      for (;;)
      {
        float f3 = 0.0F;
        f1 = f2;
        f2 = f3;
        break label145;
        if ((paramMotionEvent.getSource() & 0x400000) == 0) {
          break label141;
        }
        f2 = paramMotionEvent.getAxisValue(26);
        if (!this.mLayout.canScrollVertically()) {
          break;
        }
        f2 = -f2;
      }
      if (this.mLayout.canScrollHorizontally())
      {
        f1 = 0.0F;
      }
      else
      {
        label141:
        f1 = 0.0F;
        f2 = f1;
      }
      label145:
      if ((f1 != 0.0F) || (f2 != 0.0F)) {
        scrollByInternal((int)(f2 * this.mScaledHorizontalScrollFactor), (int)(f1 * this.mScaledVerticalScrollFactor), paramMotionEvent);
      }
    }
    return false;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool1 = this.mLayoutSuppressed;
    boolean bool2 = false;
    if (bool1) {
      return false;
    }
    this.mInterceptingOnItemTouchListener = null;
    if (findInterceptingOnItemTouchListener(paramMotionEvent))
    {
      cancelScroll();
      return true;
    }
    o localo = this.mLayout;
    if (localo == null) {
      return false;
    }
    boolean bool3 = localo.canScrollHorizontally();
    bool1 = this.mLayout.canScrollVertically();
    if (this.mVelocityTracker == null) {
      this.mVelocityTracker = VelocityTracker.obtain();
    }
    this.mVelocityTracker.addMovement(paramMotionEvent);
    int j = paramMotionEvent.getActionMasked();
    int k = paramMotionEvent.getActionIndex();
    int i;
    if (j != 0)
    {
      if (j != 1)
      {
        if (j != 2)
        {
          if (j != 3)
          {
            if (j != 5)
            {
              if (j == 6) {
                onPointerUp(paramMotionEvent);
              }
            }
            else
            {
              this.mScrollPointerId = paramMotionEvent.getPointerId(k);
              i = (int)(paramMotionEvent.getX(k) + 0.5F);
              this.mLastTouchX = i;
              this.mInitialTouchX = i;
              k = (int)(paramMotionEvent.getY(k) + 0.5F);
              this.mLastTouchY = k;
              this.mInitialTouchY = k;
            }
          }
          else {
            cancelScroll();
          }
        }
        else
        {
          j = paramMotionEvent.findPointerIndex(this.mScrollPointerId);
          if (j < 0)
          {
            paramMotionEvent = new StringBuilder();
            paramMotionEvent.append("Error processing scroll; pointer index for id ");
            paramMotionEvent.append(this.mScrollPointerId);
            paramMotionEvent.append(" not found. Did any MotionEvents get skipped?");
            Log.e("RecyclerView", paramMotionEvent.toString());
            return false;
          }
          k = (int)(paramMotionEvent.getX(j) + 0.5F);
          int m = (int)(paramMotionEvent.getY(j) + 0.5F);
          if (this.mScrollState != 1)
          {
            int n = this.mInitialTouchX;
            j = this.mInitialTouchY;
            if ((i != 0) && (Math.abs(k - n) > this.mTouchSlop))
            {
              this.mLastTouchX = k;
              k = 1;
            }
            else
            {
              k = 0;
            }
            i = k;
            if (bool1)
            {
              i = k;
              if (Math.abs(m - j) > this.mTouchSlop)
              {
                this.mLastTouchY = m;
                i = 1;
              }
            }
            if (i != 0) {
              setScrollState(1);
            }
          }
        }
      }
      else
      {
        this.mVelocityTracker.clear();
        stopNestedScroll(0);
      }
    }
    else
    {
      if (this.mIgnoreMotionEventTillDown) {
        this.mIgnoreMotionEventTillDown = false;
      }
      this.mScrollPointerId = paramMotionEvent.getPointerId(0);
      k = (int)(paramMotionEvent.getX() + 0.5F);
      this.mLastTouchX = k;
      this.mInitialTouchX = k;
      k = (int)(paramMotionEvent.getY() + 0.5F);
      this.mLastTouchY = k;
      this.mInitialTouchY = k;
      if (this.mScrollState == 2)
      {
        getParent().requestDisallowInterceptTouchEvent(true);
        setScrollState(1);
        stopNestedScroll(1);
      }
      paramMotionEvent = this.mNestedOffsets;
      paramMotionEvent[1] = 0;
      paramMotionEvent[0] = 0;
      k = i;
      if (bool1) {
        k = i | 0x2;
      }
      startNestedScroll(k, 0);
    }
    if (this.mScrollState == 1) {
      bool2 = true;
    }
    return bool2;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    androidx.core.os.g.a("RV OnLayout");
    dispatchLayout();
    androidx.core.os.g.b();
    this.mFirstLayoutComplete = true;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    Object localObject = this.mLayout;
    if (localObject == null)
    {
      defaultOnMeasure(paramInt1, paramInt2);
      return;
    }
    boolean bool = ((o)localObject).isAutoMeasureEnabled();
    int i = 0;
    if (bool)
    {
      int j = View.MeasureSpec.getMode(paramInt1);
      int k = View.MeasureSpec.getMode(paramInt2);
      this.mLayout.onMeasure(this.mRecycler, this.mState, paramInt1, paramInt2);
      int m = i;
      if (j == 1073741824)
      {
        m = i;
        if (k == 1073741824) {
          m = 1;
        }
      }
      if ((m == 0) && (this.mAdapter != null))
      {
        if (this.mState.e == 1) {
          dispatchLayoutStep1();
        }
        this.mLayout.setMeasureSpecs(paramInt1, paramInt2);
        this.mState.j = true;
        dispatchLayoutStep2();
        this.mLayout.setMeasuredDimensionFromChildren(paramInt1, paramInt2);
        if (!this.mLayout.shouldMeasureTwice()) {
          return;
        }
        this.mLayout.setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
        this.mState.j = true;
        dispatchLayoutStep2();
        this.mLayout.setMeasuredDimensionFromChildren(paramInt1, paramInt2);
      }
    }
    else
    {
      if (this.mHasFixedSize)
      {
        this.mLayout.onMeasure(this.mRecycler, this.mState, paramInt1, paramInt2);
        return;
      }
      if (this.mAdapterUpdateDuringMeasure)
      {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        processAdapterUpdatesAndSetAnimationFlags();
        onExitLayoutOrScroll();
        localObject = this.mState;
        if (((z)localObject).l)
        {
          ((z)localObject).h = true;
        }
        else
        {
          this.mAdapterHelper.j();
          this.mState.h = false;
        }
        this.mAdapterUpdateDuringMeasure = false;
        stopInterceptRequestLayout(false);
      }
      else if (this.mState.l)
      {
        setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
        return;
      }
      localObject = this.mAdapter;
      if (localObject != null) {
        this.mState.f = ((g)localObject).getItemCount();
      } else {
        this.mState.f = 0;
      }
      startInterceptRequestLayout();
      this.mLayout.onMeasure(this.mRecycler, this.mState, paramInt1, paramInt2);
      stopInterceptRequestLayout(false);
      this.mState.h = false;
    }
  }
  
  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    if (isComputingLayout()) {
      return false;
    }
    return super.onRequestFocusInDescendants(paramInt, paramRect);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (SavedState)paramParcelable;
    this.mPendingSavedState = paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    paramParcelable = this.mLayout;
    if (paramParcelable != null)
    {
      Parcelable localParcelable = this.mPendingSavedState.mLayoutState;
      if (localParcelable != null) {
        paramParcelable.onRestoreInstanceState(localParcelable);
      }
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    Object localObject = this.mPendingSavedState;
    if (localObject != null)
    {
      localSavedState.copyFrom((SavedState)localObject);
    }
    else
    {
      localObject = this.mLayout;
      if (localObject != null) {
        localSavedState.mLayoutState = ((o)localObject).onSaveInstanceState();
      } else {
        localSavedState.mLayoutState = null;
      }
    }
    return localSavedState;
  }
  
  public void onScrollStateChanged(int paramInt) {}
  
  public void onScrolled(int paramInt1, int paramInt2) {}
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt1 != paramInt3) || (paramInt2 != paramInt4)) {
      invalidateGlows();
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = this.mLayoutSuppressed;
    int i = 0;
    if ((!bool) && (!this.mIgnoreMotionEventTillDown))
    {
      if (dispatchToOnItemTouchListeners(paramMotionEvent))
      {
        cancelScroll();
        return true;
      }
      Object localObject = this.mLayout;
      if (localObject == null) {
        return false;
      }
      int j = ((o)localObject).canScrollHorizontally();
      bool = this.mLayout.canScrollVertically();
      if (this.mVelocityTracker == null) {
        this.mVelocityTracker = VelocityTracker.obtain();
      }
      int k = paramMotionEvent.getActionMasked();
      int m = paramMotionEvent.getActionIndex();
      if (k == 0)
      {
        localObject = this.mNestedOffsets;
        localObject[1] = 0;
        localObject[0] = 0;
      }
      localObject = MotionEvent.obtain(paramMotionEvent);
      int[] arrayOfInt1 = this.mNestedOffsets;
      ((MotionEvent)localObject).offsetLocation(arrayOfInt1[0], arrayOfInt1[1]);
      int n;
      if (k != 0)
      {
        if (k != 1)
        {
          if (k != 2)
          {
            if (k != 3)
            {
              if (k != 5)
              {
                if (k != 6)
                {
                  n = i;
                }
                else
                {
                  onPointerUp(paramMotionEvent);
                  n = i;
                }
              }
              else
              {
                this.mScrollPointerId = paramMotionEvent.getPointerId(m);
                k = (int)(paramMotionEvent.getX(m) + 0.5F);
                this.mLastTouchX = k;
                this.mInitialTouchX = k;
                m = (int)(paramMotionEvent.getY(m) + 0.5F);
                this.mLastTouchY = m;
                this.mInitialTouchY = m;
                n = i;
              }
            }
            else
            {
              cancelScroll();
              n = i;
            }
          }
          else
          {
            m = paramMotionEvent.findPointerIndex(this.mScrollPointerId);
            if (m < 0)
            {
              paramMotionEvent = new StringBuilder();
              paramMotionEvent.append("Error processing scroll; pointer index for id ");
              paramMotionEvent.append(this.mScrollPointerId);
              paramMotionEvent.append(" not found. Did any MotionEvents get skipped?");
              Log.e("RecyclerView", paramMotionEvent.toString());
              return false;
            }
            int i1 = (int)(paramMotionEvent.getX(m) + 0.5F);
            int i2 = (int)(paramMotionEvent.getY(m) + 0.5F);
            m = this.mLastTouchX - i1;
            n = this.mLastTouchY - i2;
            k = m;
            int i3 = n;
            label451:
            int i5;
            if (this.mScrollState != 1)
            {
              i4 = m;
              if (j != 0)
              {
                if (m > 0) {
                  m = Math.max(0, m - this.mTouchSlop);
                } else {
                  m = Math.min(0, m + this.mTouchSlop);
                }
                i4 = m;
                if (m != 0)
                {
                  k = 1;
                  break label451;
                }
              }
              k = 0;
              m = i4;
              i4 = n;
              i5 = k;
              if (bool)
              {
                if (n > 0) {
                  i3 = Math.max(0, n - this.mTouchSlop);
                } else {
                  i3 = Math.min(0, n + this.mTouchSlop);
                }
                i4 = i3;
                i5 = k;
                if (i3 != 0)
                {
                  i5 = 1;
                  i4 = i3;
                }
              }
              k = m;
              i3 = i4;
              if (i5 != 0)
              {
                setScrollState(1);
                i3 = i4;
                k = m;
              }
            }
            int i4 = k;
            n = i;
            if (this.mScrollState == 1)
            {
              arrayOfInt1 = this.mReusableIntPair;
              arrayOfInt1[0] = 0;
              arrayOfInt1[1] = 0;
              if (j != 0) {
                n = i4;
              } else {
                n = 0;
              }
              if (bool) {
                i5 = i3;
              } else {
                i5 = 0;
              }
              k = i4;
              m = i3;
              if (dispatchNestedPreScroll(n, i5, arrayOfInt1, this.mScrollOffset, 0))
              {
                arrayOfInt1 = this.mReusableIntPair;
                k = i4 - arrayOfInt1[0];
                m = i3 - arrayOfInt1[1];
                int[] arrayOfInt2 = this.mNestedOffsets;
                i4 = arrayOfInt2[0];
                arrayOfInt1 = this.mScrollOffset;
                arrayOfInt2[0] = (i4 + arrayOfInt1[0]);
                arrayOfInt2[1] += arrayOfInt1[1];
                getParent().requestDisallowInterceptTouchEvent(true);
              }
              arrayOfInt1 = this.mScrollOffset;
              this.mLastTouchX = (i1 - arrayOfInt1[0]);
              this.mLastTouchY = (i2 - arrayOfInt1[1]);
              if (j != 0) {
                i4 = k;
              } else {
                i4 = 0;
              }
              if (bool) {
                i3 = m;
              } else {
                i3 = 0;
              }
              if (scrollByInternal(i4, i3, paramMotionEvent)) {
                getParent().requestDisallowInterceptTouchEvent(true);
              }
              paramMotionEvent = this.mGapWorker;
              n = i;
              if (paramMotionEvent != null) {
                if (k == 0)
                {
                  n = i;
                  if (m == 0) {}
                }
                else
                {
                  paramMotionEvent.f(this, k, m);
                  n = i;
                }
              }
            }
          }
        }
        else
        {
          this.mVelocityTracker.addMovement((MotionEvent)localObject);
          this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxFlingVelocity);
          float f1;
          if (j != 0) {
            f1 = -this.mVelocityTracker.getXVelocity(this.mScrollPointerId);
          } else {
            f1 = 0.0F;
          }
          float f2;
          if (bool) {
            f2 = -this.mVelocityTracker.getYVelocity(this.mScrollPointerId);
          } else {
            f2 = 0.0F;
          }
          if (((f1 == 0.0F) && (f2 == 0.0F)) || (!fling((int)f1, (int)f2))) {
            setScrollState(0);
          }
          resetScroll();
          n = 1;
        }
      }
      else
      {
        this.mScrollPointerId = paramMotionEvent.getPointerId(0);
        m = (int)(paramMotionEvent.getX() + 0.5F);
        this.mLastTouchX = m;
        this.mInitialTouchX = m;
        m = (int)(paramMotionEvent.getY() + 0.5F);
        this.mLastTouchY = m;
        this.mInitialTouchY = m;
        m = j;
        if (bool) {
          m = j | 0x2;
        }
        startNestedScroll(m, 0);
        n = i;
      }
      if (n == 0) {
        this.mVelocityTracker.addMovement((MotionEvent)localObject);
      }
      ((MotionEvent)localObject).recycle();
      return true;
    }
    return false;
  }
  
  void postAnimationRunner()
  {
    if ((!this.mPostedAnimatorRunner) && (this.mIsAttached))
    {
      a0.d0(this, this.mItemAnimatorRunner);
      this.mPostedAnimatorRunner = true;
    }
  }
  
  void processDataSetCompletelyChanged(boolean paramBoolean)
  {
    this.mDispatchItemsChangedEvent = (paramBoolean | this.mDispatchItemsChangedEvent);
    this.mDataSetHasChangedAfterLayout = true;
    markKnownViewsInvalid();
  }
  
  void recordAnimationInfoIfBouncedHiddenView(c0 paramc0, RecyclerView.l.c paramc)
  {
    paramc0.setFlags(0, 8192);
    if ((this.mState.i) && (paramc0.isUpdated()) && (!paramc0.isRemoved()) && (!paramc0.shouldIgnore()))
    {
      long l = getChangedHolderKey(paramc0);
      this.mViewInfoStore.c(l, paramc0);
    }
    this.mViewInfoStore.e(paramc0, paramc);
  }
  
  void removeAndRecycleViews()
  {
    Object localObject = this.mItemAnimator;
    if (localObject != null) {
      ((l)localObject).k();
    }
    localObject = this.mLayout;
    if (localObject != null)
    {
      ((o)localObject).removeAndRecycleAllViews(this.mRecycler);
      this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
    }
    this.mRecycler.c();
  }
  
  boolean removeAnimatingView(View paramView)
  {
    startInterceptRequestLayout();
    boolean bool = this.mChildHelper.r(paramView);
    if (bool)
    {
      paramView = getChildViewHolderInt(paramView);
      this.mRecycler.J(paramView);
      this.mRecycler.C(paramView);
    }
    stopInterceptRequestLayout(bool ^ true);
    return bool;
  }
  
  protected void removeDetachedView(View paramView, boolean paramBoolean)
  {
    c0 localc0 = getChildViewHolderInt(paramView);
    if (localc0 != null) {
      if (localc0.isTmpDetached())
      {
        localc0.clearTmpDetachFlag();
      }
      else if (!localc0.shouldIgnore())
      {
        paramView = new StringBuilder();
        paramView.append("Called removeDetachedView with a view which is not flagged as tmp detached.");
        paramView.append(localc0);
        paramView.append(exceptionLabel());
        throw new IllegalArgumentException(paramView.toString());
      }
    }
    paramView.clearAnimation();
    dispatchChildDetached(paramView);
    super.removeDetachedView(paramView, paramBoolean);
  }
  
  public void removeItemDecoration(n paramn)
  {
    o localo = this.mLayout;
    if (localo != null) {
      localo.assertNotInLayoutOrScroll("Cannot remove item decoration during a scroll  or layout");
    }
    this.mItemDecorations.remove(paramn);
    if (this.mItemDecorations.isEmpty())
    {
      boolean bool;
      if (getOverScrollMode() == 2) {
        bool = true;
      } else {
        bool = false;
      }
      setWillNotDraw(bool);
    }
    markItemDecorInsetsDirty();
    requestLayout();
  }
  
  public void removeItemDecorationAt(int paramInt)
  {
    int i = getItemDecorationCount();
    if ((paramInt >= 0) && (paramInt < i))
    {
      removeItemDecoration(getItemDecorationAt(paramInt));
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramInt);
    localStringBuilder.append(" is an invalid index for size ");
    localStringBuilder.append(i);
    throw new IndexOutOfBoundsException(localStringBuilder.toString());
  }
  
  public void removeOnChildAttachStateChangeListener(q paramq)
  {
    List localList = this.mOnChildAttachStateListeners;
    if (localList == null) {
      return;
    }
    localList.remove(paramq);
  }
  
  public void removeOnItemTouchListener(s params)
  {
    this.mOnItemTouchListeners.remove(params);
    if (this.mInterceptingOnItemTouchListener == params) {
      this.mInterceptingOnItemTouchListener = null;
    }
  }
  
  public void removeOnScrollListener(t paramt)
  {
    List localList = this.mScrollListeners;
    if (localList != null) {
      localList.remove(paramt);
    }
  }
  
  void repositionShadowingViews()
  {
    int i = this.mChildHelper.g();
    for (int j = 0; j < i; j++)
    {
      View localView = this.mChildHelper.f(j);
      Object localObject = getChildViewHolder(localView);
      if (localObject != null)
      {
        localObject = ((c0)localObject).mShadowingHolder;
        if (localObject != null)
        {
          localObject = ((c0)localObject).itemView;
          int k = localView.getLeft();
          int m = localView.getTop();
          if ((k != ((View)localObject).getLeft()) || (m != ((View)localObject).getTop())) {
            ((View)localObject).layout(k, m, ((View)localObject).getWidth() + k, ((View)localObject).getHeight() + m);
          }
        }
      }
    }
  }
  
  public void requestChildFocus(View paramView1, View paramView2)
  {
    if ((!this.mLayout.onRequestChildFocus(this, this.mState, paramView1, paramView2)) && (paramView2 != null)) {
      requestChildOnScreen(paramView1, paramView2);
    }
    super.requestChildFocus(paramView1, paramView2);
  }
  
  public boolean requestChildRectangleOnScreen(View paramView, Rect paramRect, boolean paramBoolean)
  {
    return this.mLayout.requestChildRectangleOnScreen(this, paramView, paramRect, paramBoolean);
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    int i = this.mOnItemTouchListeners.size();
    for (int j = 0; j < i; j++) {
      ((s)this.mOnItemTouchListeners.get(j)).c(paramBoolean);
    }
    super.requestDisallowInterceptTouchEvent(paramBoolean);
  }
  
  public void requestLayout()
  {
    if ((this.mInterceptRequestLayoutDepth == 0) && (!this.mLayoutSuppressed)) {
      super.requestLayout();
    } else {
      this.mLayoutWasDefered = true;
    }
  }
  
  void saveOldPositions()
  {
    int i = this.mChildHelper.j();
    for (int j = 0; j < i; j++)
    {
      c0 localc0 = getChildViewHolderInt(this.mChildHelper.i(j));
      if (!localc0.shouldIgnore()) {
        localc0.saveOldPosition();
      }
    }
  }
  
  public void scrollBy(int paramInt1, int paramInt2)
  {
    o localo = this.mLayout;
    if (localo == null)
    {
      Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
      return;
    }
    if (this.mLayoutSuppressed) {
      return;
    }
    boolean bool1 = localo.canScrollHorizontally();
    boolean bool2 = this.mLayout.canScrollVertically();
    if ((bool1) || (bool2))
    {
      if (!bool1) {
        paramInt1 = 0;
      }
      if (!bool2) {
        paramInt2 = 0;
      }
      scrollByInternal(paramInt1, paramInt2, null);
    }
  }
  
  boolean scrollByInternal(int paramInt1, int paramInt2, MotionEvent paramMotionEvent)
  {
    consumePendingUpdateOperations();
    Object localObject = this.mAdapter;
    boolean bool1 = true;
    int i;
    int j;
    int k;
    int m;
    if (localObject != null)
    {
      localObject = this.mReusableIntPair;
      localObject[0] = 0;
      localObject[1] = 0;
      scrollStep(paramInt1, paramInt2, (int[])localObject);
      localObject = this.mReusableIntPair;
      i = localObject[0];
      j = localObject[1];
      k = j;
      m = i;
      i = paramInt1 - i;
      j = paramInt2 - j;
    }
    else
    {
      k = 0;
      m = k;
      i = m;
      j = i;
    }
    if (!this.mItemDecorations.isEmpty()) {
      invalidate();
    }
    localObject = this.mReusableIntPair;
    localObject[0] = 0;
    localObject[1] = 0;
    dispatchNestedScroll(m, k, i, j, this.mScrollOffset, 0, (int[])localObject);
    localObject = this.mReusableIntPair;
    int n = localObject[0];
    int i1 = localObject[1];
    int i2;
    if ((n == 0) && (i1 == 0)) {
      i2 = 0;
    } else {
      i2 = 1;
    }
    int i3 = this.mLastTouchX;
    localObject = this.mScrollOffset;
    int i4 = localObject[0];
    this.mLastTouchX = (i3 - i4);
    i3 = this.mLastTouchY;
    int i5 = localObject[1];
    this.mLastTouchY = (i3 - i5);
    localObject = this.mNestedOffsets;
    localObject[0] += i4;
    localObject[1] += i5;
    if (getOverScrollMode() != 2)
    {
      if ((paramMotionEvent != null) && (!n.a(paramMotionEvent, 8194))) {
        pullGlows(paramMotionEvent.getX(), i - n, paramMotionEvent.getY(), j - i1);
      }
      considerReleasingGlowsOnScroll(paramInt1, paramInt2);
    }
    if ((m != 0) || (k != 0)) {
      dispatchOnScrolled(m, k);
    }
    if (!awakenScrollBars()) {
      invalidate();
    }
    boolean bool2 = bool1;
    if (i2 == 0)
    {
      bool2 = bool1;
      if (m == 0) {
        if (k != 0) {
          bool2 = bool1;
        } else {
          bool2 = false;
        }
      }
    }
    return bool2;
  }
  
  void scrollStep(int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    startInterceptRequestLayout();
    onEnterLayoutOrScroll();
    androidx.core.os.g.a("RV Scroll");
    fillRemainingScrollValues(this.mState);
    if (paramInt1 != 0) {
      paramInt1 = this.mLayout.scrollHorizontallyBy(paramInt1, this.mRecycler, this.mState);
    } else {
      paramInt1 = 0;
    }
    if (paramInt2 != 0) {
      paramInt2 = this.mLayout.scrollVerticallyBy(paramInt2, this.mRecycler, this.mState);
    } else {
      paramInt2 = 0;
    }
    androidx.core.os.g.b();
    repositionShadowingViews();
    onExitLayoutOrScroll();
    stopInterceptRequestLayout(false);
    if (paramArrayOfInt != null)
    {
      paramArrayOfInt[0] = paramInt1;
      paramArrayOfInt[1] = paramInt2;
    }
  }
  
  public void scrollTo(int paramInt1, int paramInt2)
  {
    Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
  }
  
  public void scrollToPosition(int paramInt)
  {
    if (this.mLayoutSuppressed) {
      return;
    }
    stopScroll();
    o localo = this.mLayout;
    if (localo == null)
    {
      Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
      return;
    }
    localo.scrollToPosition(paramInt);
    awakenScrollBars();
  }
  
  public void sendAccessibilityEventUnchecked(AccessibilityEvent paramAccessibilityEvent)
  {
    if (shouldDeferAccessibilityEvent(paramAccessibilityEvent)) {
      return;
    }
    super.sendAccessibilityEventUnchecked(paramAccessibilityEvent);
  }
  
  public void setAccessibilityDelegateCompat(m paramm)
  {
    this.mAccessibilityDelegate = paramm;
    a0.l0(this, paramm);
  }
  
  public void setAdapter(g paramg)
  {
    setLayoutFrozen(false);
    setAdapterInternal(paramg, false, true);
    processDataSetCompletelyChanged(false);
    requestLayout();
  }
  
  public void setChildDrawingOrderCallback(j paramj)
  {
    if (paramj == this.mChildDrawingOrderCallback) {
      return;
    }
    this.mChildDrawingOrderCallback = paramj;
    boolean bool;
    if (paramj != null) {
      bool = true;
    } else {
      bool = false;
    }
    setChildrenDrawingOrderEnabled(bool);
  }
  
  boolean setChildImportantForAccessibilityInternal(c0 paramc0, int paramInt)
  {
    if (isComputingLayout())
    {
      paramc0.mPendingAccessibilityState = paramInt;
      this.mPendingAccessibilityImportanceChange.add(paramc0);
      return false;
    }
    a0.w0(paramc0.itemView, paramInt);
    return true;
  }
  
  public void setClipToPadding(boolean paramBoolean)
  {
    if (paramBoolean != this.mClipToPadding) {
      invalidateGlows();
    }
    this.mClipToPadding = paramBoolean;
    super.setClipToPadding(paramBoolean);
    if (this.mFirstLayoutComplete) {
      requestLayout();
    }
  }
  
  public void setEdgeEffectFactory(k paramk)
  {
    h.g(paramk);
    this.mEdgeEffectFactory = paramk;
    invalidateGlows();
  }
  
  public void setHasFixedSize(boolean paramBoolean)
  {
    this.mHasFixedSize = paramBoolean;
  }
  
  public void setItemAnimator(l paraml)
  {
    l locall = this.mItemAnimator;
    if (locall != null)
    {
      locall.k();
      this.mItemAnimator.v(null);
    }
    this.mItemAnimator = paraml;
    if (paraml != null) {
      paraml.v(this.mItemAnimatorListener);
    }
  }
  
  public void setItemViewCacheSize(int paramInt)
  {
    this.mRecycler.G(paramInt);
  }
  
  @Deprecated
  public void setLayoutFrozen(boolean paramBoolean)
  {
    suppressLayout(paramBoolean);
  }
  
  public void setLayoutManager(o paramo)
  {
    if (paramo == this.mLayout) {
      return;
    }
    stopScroll();
    Object localObject;
    if (this.mLayout != null)
    {
      localObject = this.mItemAnimator;
      if (localObject != null) {
        ((l)localObject).k();
      }
      this.mLayout.removeAndRecycleAllViews(this.mRecycler);
      this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
      this.mRecycler.c();
      if (this.mIsAttached) {
        this.mLayout.dispatchDetachedFromWindow(this, this.mRecycler);
      }
      this.mLayout.setRecyclerView(null);
      this.mLayout = null;
    }
    else
    {
      this.mRecycler.c();
    }
    this.mChildHelper.o();
    this.mLayout = paramo;
    if (paramo != null) {
      if (paramo.mRecyclerView == null)
      {
        paramo.setRecyclerView(this);
        if (this.mIsAttached) {
          this.mLayout.dispatchAttachedToWindow(this);
        }
      }
      else
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("LayoutManager ");
        ((StringBuilder)localObject).append(paramo);
        ((StringBuilder)localObject).append(" is already attached to a RecyclerView:");
        ((StringBuilder)localObject).append(paramo.mRecyclerView.exceptionLabel());
        throw new IllegalArgumentException(((StringBuilder)localObject).toString());
      }
    }
    this.mRecycler.K();
    requestLayout();
  }
  
  @Deprecated
  public void setLayoutTransition(LayoutTransition paramLayoutTransition)
  {
    if (paramLayoutTransition == null)
    {
      super.setLayoutTransition(null);
      return;
    }
    throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
  }
  
  public void setNestedScrollingEnabled(boolean paramBoolean)
  {
    getScrollingChildHelper().n(paramBoolean);
  }
  
  public void setOnFlingListener(r paramr)
  {
    this.mOnFlingListener = paramr;
  }
  
  @Deprecated
  public void setOnScrollListener(t paramt)
  {
    this.mScrollListener = paramt;
  }
  
  public void setPreserveFocusAfterLayout(boolean paramBoolean)
  {
    this.mPreserveFocusAfterLayout = paramBoolean;
  }
  
  public void setRecycledViewPool(u paramu)
  {
    this.mRecycler.E(paramu);
  }
  
  public void setRecyclerListener(w paramw)
  {
    this.mRecyclerListener = paramw;
  }
  
  void setScrollState(int paramInt)
  {
    if (paramInt == this.mScrollState) {
      return;
    }
    this.mScrollState = paramInt;
    if (paramInt != 2) {
      stopScrollersInternal();
    }
    dispatchOnScrollStateChanged(paramInt);
  }
  
  public void setScrollingTouchSlop(int paramInt)
  {
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(getContext());
    if (paramInt != 0) {
      if (paramInt != 1)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("setScrollingTouchSlop(): bad argument constant ");
        localStringBuilder.append(paramInt);
        localStringBuilder.append("; using default value");
        Log.w("RecyclerView", localStringBuilder.toString());
      }
      else
      {
        this.mTouchSlop = localViewConfiguration.getScaledPagingTouchSlop();
        return;
      }
    }
    this.mTouchSlop = localViewConfiguration.getScaledTouchSlop();
  }
  
  public void setViewCacheExtension(a0 parama0)
  {
    this.mRecycler.F(parama0);
  }
  
  boolean shouldDeferAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    boolean bool = isComputingLayout();
    int i = 0;
    if (bool)
    {
      int j;
      if (paramAccessibilityEvent != null) {
        j = androidx.core.view.accessibility.b.a(paramAccessibilityEvent);
      } else {
        j = 0;
      }
      if (j == 0) {
        j = i;
      }
      this.mEatenAccessibilityChangeFlags |= j;
      return true;
    }
    return false;
  }
  
  public void smoothScrollBy(int paramInt1, int paramInt2)
  {
    smoothScrollBy(paramInt1, paramInt2, null);
  }
  
  public void smoothScrollBy(int paramInt1, int paramInt2, Interpolator paramInterpolator)
  {
    smoothScrollBy(paramInt1, paramInt2, paramInterpolator, -2147483648);
  }
  
  public void smoothScrollBy(int paramInt1, int paramInt2, Interpolator paramInterpolator, int paramInt3)
  {
    smoothScrollBy(paramInt1, paramInt2, paramInterpolator, paramInt3, false);
  }
  
  void smoothScrollBy(int paramInt1, int paramInt2, Interpolator paramInterpolator, int paramInt3, boolean paramBoolean)
  {
    o localo = this.mLayout;
    if (localo == null)
    {
      Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
      return;
    }
    if (this.mLayoutSuppressed) {
      return;
    }
    boolean bool = localo.canScrollHorizontally();
    int i = 0;
    int j = paramInt1;
    if (!bool) {
      j = 0;
    }
    if (!this.mLayout.canScrollVertically()) {
      paramInt2 = 0;
    }
    if ((j != 0) || (paramInt2 != 0))
    {
      if ((paramInt3 != -2147483648) && (paramInt3 <= 0)) {
        paramInt1 = 0;
      } else {
        paramInt1 = 1;
      }
      if (paramInt1 != 0)
      {
        if (paramBoolean)
        {
          paramInt1 = i;
          if (j != 0) {
            paramInt1 = 1;
          }
          i = paramInt1;
          if (paramInt2 != 0) {
            i = paramInt1 | 0x2;
          }
          startNestedScroll(i, 1);
        }
        this.mViewFlinger.f(j, paramInt2, paramInt3, paramInterpolator);
      }
      else
      {
        scrollBy(j, paramInt2);
      }
    }
  }
  
  public void smoothScrollToPosition(int paramInt)
  {
    if (this.mLayoutSuppressed) {
      return;
    }
    o localo = this.mLayout;
    if (localo == null)
    {
      Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
      return;
    }
    localo.smoothScrollToPosition(this, this.mState, paramInt);
  }
  
  void startInterceptRequestLayout()
  {
    int i = this.mInterceptRequestLayoutDepth + 1;
    this.mInterceptRequestLayoutDepth = i;
    if ((i == 1) && (!this.mLayoutSuppressed)) {
      this.mLayoutWasDefered = false;
    }
  }
  
  public boolean startNestedScroll(int paramInt)
  {
    return getScrollingChildHelper().p(paramInt);
  }
  
  public boolean startNestedScroll(int paramInt1, int paramInt2)
  {
    return getScrollingChildHelper().q(paramInt1, paramInt2);
  }
  
  void stopInterceptRequestLayout(boolean paramBoolean)
  {
    if (this.mInterceptRequestLayoutDepth < 1) {
      this.mInterceptRequestLayoutDepth = 1;
    }
    if ((!paramBoolean) && (!this.mLayoutSuppressed)) {
      this.mLayoutWasDefered = false;
    }
    if (this.mInterceptRequestLayoutDepth == 1)
    {
      if ((paramBoolean) && (this.mLayoutWasDefered) && (!this.mLayoutSuppressed) && (this.mLayout != null) && (this.mAdapter != null)) {
        dispatchLayout();
      }
      if (!this.mLayoutSuppressed) {
        this.mLayoutWasDefered = false;
      }
    }
    this.mInterceptRequestLayoutDepth -= 1;
  }
  
  public void stopNestedScroll()
  {
    getScrollingChildHelper().r();
  }
  
  public void stopNestedScroll(int paramInt)
  {
    getScrollingChildHelper().s(paramInt);
  }
  
  public void stopScroll()
  {
    setScrollState(0);
    stopScrollersInternal();
  }
  
  public final void suppressLayout(boolean paramBoolean)
  {
    if (paramBoolean != this.mLayoutSuppressed)
    {
      assertNotInLayoutOrScroll("Do not suppressLayout in layout or scroll");
      if (!paramBoolean)
      {
        this.mLayoutSuppressed = false;
        if ((this.mLayoutWasDefered) && (this.mLayout != null) && (this.mAdapter != null)) {
          requestLayout();
        }
        this.mLayoutWasDefered = false;
      }
      else
      {
        long l = SystemClock.uptimeMillis();
        onTouchEvent(MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0));
        this.mLayoutSuppressed = true;
        this.mIgnoreMotionEventTillDown = true;
        stopScroll();
      }
    }
  }
  
  public void swapAdapter(g paramg, boolean paramBoolean)
  {
    setLayoutFrozen(false);
    setAdapterInternal(paramg, true, paramBoolean);
    processDataSetCompletelyChanged(true);
    requestLayout();
  }
  
  void viewRangeUpdate(int paramInt1, int paramInt2, Object paramObject)
  {
    int i = this.mChildHelper.j();
    for (int j = 0; j < i; j++)
    {
      View localView = this.mChildHelper.i(j);
      c0 localc0 = getChildViewHolderInt(localView);
      if ((localc0 != null) && (!localc0.shouldIgnore()))
      {
        int k = localc0.mPosition;
        if ((k >= paramInt1) && (k < paramInt1 + paramInt2))
        {
          localc0.addFlags(2);
          localc0.addChangePayload(paramObject);
          ((p)localView.getLayoutParams()).mInsetsDirty = true;
        }
      }
    }
    this.mRecycler.M(paramInt1, paramInt2);
  }
  
  public static class SavedState
    extends AbsSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new a();
    Parcelable mLayoutState;
    
    SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      if (paramClassLoader == null) {
        paramClassLoader = RecyclerView.o.class.getClassLoader();
      }
      this.mLayoutState = paramParcel.readParcelable(paramClassLoader);
    }
    
    SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    void copyFrom(SavedState paramSavedState)
    {
      this.mLayoutState = paramSavedState.mLayoutState;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeParcelable(this.mLayoutState, 0);
    }
    
    static final class a
      implements Parcelable.ClassLoaderCreator<RecyclerView.SavedState>
    {
      public RecyclerView.SavedState a(Parcel paramParcel)
      {
        return new RecyclerView.SavedState(paramParcel, null);
      }
      
      public RecyclerView.SavedState b(Parcel paramParcel, ClassLoader paramClassLoader)
      {
        return new RecyclerView.SavedState(paramParcel, paramClassLoader);
      }
      
      public RecyclerView.SavedState[] c(int paramInt)
      {
        return new RecyclerView.SavedState[paramInt];
      }
    }
  }
  
  class a
    implements Runnable
  {
    a() {}
    
    public void run()
    {
      RecyclerView localRecyclerView = RecyclerView.this;
      if ((localRecyclerView.mFirstLayoutComplete) && (!localRecyclerView.isLayoutRequested()))
      {
        localRecyclerView = RecyclerView.this;
        if (!localRecyclerView.mIsAttached)
        {
          localRecyclerView.requestLayout();
          return;
        }
        if (localRecyclerView.mLayoutSuppressed)
        {
          localRecyclerView.mLayoutWasDefered = true;
          return;
        }
        localRecyclerView.consumePendingUpdateOperations();
      }
    }
  }
  
  public static abstract class a0 {}
  
  class b
    implements Runnable
  {
    b() {}
    
    public void run()
    {
      RecyclerView.l locall = RecyclerView.this.mItemAnimator;
      if (locall != null) {
        locall.u();
      }
      RecyclerView.this.mPostedAnimatorRunner = false;
    }
  }
  
  class b0
    implements Runnable
  {
    private int a;
    private int b;
    OverScroller c;
    Interpolator d;
    private boolean e;
    private boolean f;
    
    b0()
    {
      Interpolator localInterpolator = RecyclerView.sQuinticInterpolator;
      this.d = localInterpolator;
      this.e = false;
      this.f = false;
      this.c = new OverScroller(RecyclerView.this.getContext(), localInterpolator);
    }
    
    private int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      int i = Math.abs(paramInt1);
      int j = Math.abs(paramInt2);
      int k;
      if (i > j) {
        k = 1;
      } else {
        k = 0;
      }
      paramInt3 = (int)Math.sqrt(paramInt3 * paramInt3 + paramInt4 * paramInt4);
      paramInt2 = (int)Math.sqrt(paramInt1 * paramInt1 + paramInt2 * paramInt2);
      RecyclerView localRecyclerView = RecyclerView.this;
      if (k != 0) {
        paramInt1 = localRecyclerView.getWidth();
      } else {
        paramInt1 = localRecyclerView.getHeight();
      }
      paramInt4 = paramInt1 / 2;
      float f1 = paramInt2;
      float f2 = paramInt1;
      float f3 = Math.min(1.0F, f1 * 1.0F / f2);
      f1 = paramInt4;
      f3 = b(f3);
      if (paramInt3 > 0)
      {
        paramInt1 = Math.round(Math.abs((f1 + f3 * f1) / paramInt3) * 1000.0F) * 4;
      }
      else
      {
        if (k != 0) {
          paramInt1 = i;
        } else {
          paramInt1 = j;
        }
        paramInt1 = (int)((paramInt1 / f2 + 1.0F) * 300.0F);
      }
      return Math.min(paramInt1, 2000);
    }
    
    private float b(float paramFloat)
    {
      return (float)Math.sin((paramFloat - 0.5F) * 0.4712389F);
    }
    
    private void d()
    {
      RecyclerView.this.removeCallbacks(this);
      a0.d0(RecyclerView.this, this);
    }
    
    public void c(int paramInt1, int paramInt2)
    {
      RecyclerView.this.setScrollState(2);
      this.b = 0;
      this.a = 0;
      Interpolator localInterpolator1 = this.d;
      Interpolator localInterpolator2 = RecyclerView.sQuinticInterpolator;
      if (localInterpolator1 != localInterpolator2)
      {
        this.d = localInterpolator2;
        this.c = new OverScroller(RecyclerView.this.getContext(), localInterpolator2);
      }
      this.c.fling(0, 0, paramInt1, paramInt2, -2147483648, 2147483647, -2147483648, 2147483647);
      e();
    }
    
    void e()
    {
      if (this.e) {
        this.f = true;
      } else {
        d();
      }
    }
    
    public void f(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator)
    {
      int i = paramInt3;
      if (paramInt3 == -2147483648) {
        i = a(paramInt1, paramInt2, 0, 0);
      }
      Interpolator localInterpolator = paramInterpolator;
      if (paramInterpolator == null) {
        localInterpolator = RecyclerView.sQuinticInterpolator;
      }
      if (this.d != localInterpolator)
      {
        this.d = localInterpolator;
        this.c = new OverScroller(RecyclerView.this.getContext(), localInterpolator);
      }
      this.b = 0;
      this.a = 0;
      RecyclerView.this.setScrollState(2);
      this.c.startScroll(0, 0, paramInt1, paramInt2, i);
      e();
    }
    
    public void g()
    {
      RecyclerView.this.removeCallbacks(this);
      this.c.abortAnimation();
    }
    
    public void run()
    {
      Object localObject1 = RecyclerView.this;
      if (((RecyclerView)localObject1).mLayout == null)
      {
        g();
        return;
      }
      this.f = false;
      this.e = true;
      ((RecyclerView)localObject1).consumePendingUpdateOperations();
      localObject1 = this.c;
      if (((OverScroller)localObject1).computeScrollOffset())
      {
        int i = ((OverScroller)localObject1).getCurrX();
        int j = ((OverScroller)localObject1).getCurrY();
        int k = i - this.a;
        int m = j - this.b;
        this.a = i;
        this.b = j;
        Object localObject2 = RecyclerView.this;
        Object localObject3 = ((RecyclerView)localObject2).mReusableIntPair;
        localObject3[0] = 0;
        localObject3[1] = 0;
        j = k;
        i = m;
        if (((RecyclerView)localObject2).dispatchNestedPreScroll(k, m, (int[])localObject3, null, 1))
        {
          localObject2 = RecyclerView.this.mReusableIntPair;
          j = k - localObject2[0];
          i = m - localObject2[1];
        }
        if (RecyclerView.this.getOverScrollMode() != 2) {
          RecyclerView.this.considerReleasingGlowsOnScroll(j, i);
        }
        localObject2 = RecyclerView.this;
        if (((RecyclerView)localObject2).mAdapter != null)
        {
          localObject3 = ((RecyclerView)localObject2).mReusableIntPair;
          localObject3[0] = 0;
          localObject3[1] = 0;
          ((RecyclerView)localObject2).scrollStep(j, i, (int[])localObject3);
          localObject3 = RecyclerView.this;
          localObject2 = ((RecyclerView)localObject3).mReusableIntPair;
          n = localObject2[0];
          i1 = localObject2[1];
          int i2 = j - n;
          int i3 = i - i1;
          localObject2 = ((RecyclerView)localObject3).mLayout.mSmoothScroller;
          j = i2;
          m = i1;
          i = n;
          k = i3;
          if (localObject2 != null)
          {
            j = i2;
            m = i1;
            i = n;
            k = i3;
            if (!((RecyclerView.y)localObject2).isPendingInitialRun())
            {
              j = i2;
              m = i1;
              i = n;
              k = i3;
              if (((RecyclerView.y)localObject2).isRunning())
              {
                j = RecyclerView.this.mState.b();
                if (j == 0)
                {
                  ((RecyclerView.y)localObject2).stop();
                  j = i2;
                  m = i1;
                  i = n;
                  k = i3;
                }
                else if (((RecyclerView.y)localObject2).getTargetPosition() >= j)
                {
                  ((RecyclerView.y)localObject2).setTargetPosition(j - 1);
                  ((RecyclerView.y)localObject2).onAnimation(n, i1);
                  j = i2;
                  m = i1;
                  i = n;
                  k = i3;
                }
                else
                {
                  ((RecyclerView.y)localObject2).onAnimation(n, i1);
                  j = i2;
                  m = i1;
                  i = n;
                  k = i3;
                }
              }
            }
          }
        }
        else
        {
          m = 0;
          i1 = m;
          k = i;
          i = i1;
        }
        if (!RecyclerView.this.mItemDecorations.isEmpty()) {
          RecyclerView.this.invalidate();
        }
        localObject3 = RecyclerView.this;
        localObject2 = ((RecyclerView)localObject3).mReusableIntPair;
        localObject2[0] = 0;
        localObject2[1] = 0;
        ((RecyclerView)localObject3).dispatchNestedScroll(i, m, j, k, null, 1, (int[])localObject2);
        localObject3 = RecyclerView.this;
        localObject2 = ((RecyclerView)localObject3).mReusableIntPair;
        int n = j - localObject2[0];
        int i1 = k - localObject2[1];
        if ((i != 0) || (m != 0)) {
          ((RecyclerView)localObject3).dispatchOnScrolled(i, m);
        }
        if (!RecyclerView.this.awakenScrollBars()) {
          RecyclerView.this.invalidate();
        }
        if (((OverScroller)localObject1).getCurrX() == ((OverScroller)localObject1).getFinalX()) {
          j = 1;
        } else {
          j = 0;
        }
        if (((OverScroller)localObject1).getCurrY() == ((OverScroller)localObject1).getFinalY()) {
          k = 1;
        } else {
          k = 0;
        }
        if ((!((OverScroller)localObject1).isFinished()) && (((j == 0) && (n == 0)) || ((k == 0) && (i1 == 0)))) {
          j = 0;
        } else {
          j = 1;
        }
        localObject2 = RecyclerView.this.mLayout.mSmoothScroller;
        if ((localObject2 != null) && (((RecyclerView.y)localObject2).isPendingInitialRun())) {
          k = 1;
        } else {
          k = 0;
        }
        if ((k == 0) && (j != 0))
        {
          if (RecyclerView.this.getOverScrollMode() != 2)
          {
            i = (int)((OverScroller)localObject1).getCurrVelocity();
            if (n < 0) {
              j = -i;
            } else if (n > 0) {
              j = i;
            } else {
              j = 0;
            }
            if (i1 < 0) {
              i = -i;
            } else if (i1 <= 0) {
              i = 0;
            }
            RecyclerView.this.absorbGlows(j, i);
          }
          if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
            RecyclerView.this.mPrefetchRegistry.b();
          }
        }
        else
        {
          e();
          localObject2 = RecyclerView.this;
          localObject1 = ((RecyclerView)localObject2).mGapWorker;
          if (localObject1 != null) {
            ((f)localObject1).f((RecyclerView)localObject2, i, m);
          }
        }
      }
      localObject1 = RecyclerView.this.mLayout.mSmoothScroller;
      if ((localObject1 != null) && (((RecyclerView.y)localObject1).isPendingInitialRun())) {
        ((RecyclerView.y)localObject1).onAnimation(0, 0);
      }
      this.e = false;
      if (this.f)
      {
        d();
      }
      else
      {
        RecyclerView.this.setScrollState(0);
        RecyclerView.this.stopNestedScroll(1);
      }
    }
  }
  
  static final class c
    implements Interpolator
  {
    public float getInterpolation(float paramFloat)
    {
      paramFloat -= 1.0F;
      return paramFloat * paramFloat * paramFloat * paramFloat * paramFloat + 1.0F;
    }
  }
  
  public static abstract class c0
  {
    static final int FLAG_ADAPTER_FULLUPDATE = 1024;
    static final int FLAG_ADAPTER_POSITION_UNKNOWN = 512;
    static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
    static final int FLAG_BOUNCED_FROM_HIDDEN_LIST = 8192;
    static final int FLAG_BOUND = 1;
    static final int FLAG_IGNORE = 128;
    static final int FLAG_INVALID = 4;
    static final int FLAG_MOVED = 2048;
    static final int FLAG_NOT_RECYCLABLE = 16;
    static final int FLAG_REMOVED = 8;
    static final int FLAG_RETURNED_FROM_SCRAP = 32;
    static final int FLAG_TMP_DETACHED = 256;
    static final int FLAG_UPDATE = 2;
    private static final List<Object> FULLUPDATE_PAYLOADS = ;
    static final int PENDING_ACCESSIBILITY_STATE_NOT_SET = -1;
    public final View itemView;
    int mFlags;
    boolean mInChangeScrap = false;
    private int mIsRecyclableCount = 0;
    long mItemId = -1L;
    int mItemViewType = -1;
    WeakReference<RecyclerView> mNestedRecyclerView;
    int mOldPosition = -1;
    RecyclerView mOwnerRecyclerView;
    List<Object> mPayloads = null;
    int mPendingAccessibilityState = -1;
    int mPosition = -1;
    int mPreLayoutPosition = -1;
    RecyclerView.v mScrapContainer = null;
    c0 mShadowedHolder = null;
    c0 mShadowingHolder = null;
    List<Object> mUnmodifiedPayloads = null;
    private int mWasImportantForAccessibilityBeforeHidden = 0;
    
    public c0(View paramView)
    {
      if (paramView != null)
      {
        this.itemView = paramView;
        return;
      }
      throw new IllegalArgumentException("itemView may not be null");
    }
    
    private void createPayloadsIfNeeded()
    {
      if (this.mPayloads == null)
      {
        ArrayList localArrayList = new ArrayList();
        this.mPayloads = localArrayList;
        this.mUnmodifiedPayloads = Collections.unmodifiableList(localArrayList);
      }
    }
    
    void addChangePayload(Object paramObject)
    {
      if (paramObject == null)
      {
        addFlags(1024);
      }
      else if ((0x400 & this.mFlags) == 0)
      {
        createPayloadsIfNeeded();
        this.mPayloads.add(paramObject);
      }
    }
    
    void addFlags(int paramInt)
    {
      this.mFlags = (paramInt | this.mFlags);
    }
    
    void clearOldPosition()
    {
      this.mOldPosition = -1;
      this.mPreLayoutPosition = -1;
    }
    
    void clearPayload()
    {
      List localList = this.mPayloads;
      if (localList != null) {
        localList.clear();
      }
      this.mFlags &= 0xFFFFFBFF;
    }
    
    void clearReturnedFromScrapFlag()
    {
      this.mFlags &= 0xFFFFFFDF;
    }
    
    void clearTmpDetachFlag()
    {
      this.mFlags &= 0xFFFFFEFF;
    }
    
    boolean doesTransientStatePreventRecycling()
    {
      boolean bool;
      if (((this.mFlags & 0x10) == 0) && (a0.M(this.itemView))) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    void flagRemovedAndOffsetPosition(int paramInt1, int paramInt2, boolean paramBoolean)
    {
      addFlags(8);
      offsetPosition(paramInt2, paramBoolean);
      this.mPosition = paramInt1;
    }
    
    public final int getAdapterPosition()
    {
      RecyclerView localRecyclerView = this.mOwnerRecyclerView;
      if (localRecyclerView == null) {
        return -1;
      }
      return localRecyclerView.getAdapterPositionFor(this);
    }
    
    public final long getItemId()
    {
      return this.mItemId;
    }
    
    public final int getItemViewType()
    {
      return this.mItemViewType;
    }
    
    public final int getLayoutPosition()
    {
      int i = this.mPreLayoutPosition;
      int j = i;
      if (i == -1) {
        j = this.mPosition;
      }
      return j;
    }
    
    public final int getOldPosition()
    {
      return this.mOldPosition;
    }
    
    @Deprecated
    public final int getPosition()
    {
      int i = this.mPreLayoutPosition;
      int j = i;
      if (i == -1) {
        j = this.mPosition;
      }
      return j;
    }
    
    List<Object> getUnmodifiedPayloads()
    {
      if ((this.mFlags & 0x400) == 0)
      {
        List localList = this.mPayloads;
        if ((localList != null) && (localList.size() != 0)) {
          return this.mUnmodifiedPayloads;
        }
        return FULLUPDATE_PAYLOADS;
      }
      return FULLUPDATE_PAYLOADS;
    }
    
    boolean hasAnyOfTheFlags(int paramInt)
    {
      boolean bool;
      if ((paramInt & this.mFlags) != 0) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    boolean isAdapterPositionUnknown()
    {
      boolean bool;
      if (((this.mFlags & 0x200) == 0) && (!isInvalid())) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
    
    boolean isAttachedToTransitionOverlay()
    {
      boolean bool;
      if ((this.itemView.getParent() != null) && (this.itemView.getParent() != this.mOwnerRecyclerView)) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    boolean isBound()
    {
      int i = this.mFlags;
      boolean bool = true;
      if ((i & 0x1) == 0) {
        bool = false;
      }
      return bool;
    }
    
    boolean isInvalid()
    {
      boolean bool;
      if ((this.mFlags & 0x4) != 0) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public final boolean isRecyclable()
    {
      boolean bool;
      if (((this.mFlags & 0x10) == 0) && (!a0.M(this.itemView))) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    boolean isRemoved()
    {
      boolean bool;
      if ((this.mFlags & 0x8) != 0) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    boolean isScrap()
    {
      boolean bool;
      if (this.mScrapContainer != null) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    boolean isTmpDetached()
    {
      boolean bool;
      if ((this.mFlags & 0x100) != 0) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    boolean isUpdated()
    {
      boolean bool;
      if ((this.mFlags & 0x2) != 0) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    boolean needsUpdate()
    {
      boolean bool;
      if ((this.mFlags & 0x2) != 0) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    void offsetPosition(int paramInt, boolean paramBoolean)
    {
      if (this.mOldPosition == -1) {
        this.mOldPosition = this.mPosition;
      }
      if (this.mPreLayoutPosition == -1) {
        this.mPreLayoutPosition = this.mPosition;
      }
      if (paramBoolean) {
        this.mPreLayoutPosition += paramInt;
      }
      this.mPosition += paramInt;
      if (this.itemView.getLayoutParams() != null) {
        ((RecyclerView.p)this.itemView.getLayoutParams()).mInsetsDirty = true;
      }
    }
    
    void onEnteredHiddenState(RecyclerView paramRecyclerView)
    {
      int i = this.mPendingAccessibilityState;
      if (i != -1) {
        this.mWasImportantForAccessibilityBeforeHidden = i;
      } else {
        this.mWasImportantForAccessibilityBeforeHidden = a0.x(this.itemView);
      }
      paramRecyclerView.setChildImportantForAccessibilityInternal(this, 4);
    }
    
    void onLeftHiddenState(RecyclerView paramRecyclerView)
    {
      paramRecyclerView.setChildImportantForAccessibilityInternal(this, this.mWasImportantForAccessibilityBeforeHidden);
      this.mWasImportantForAccessibilityBeforeHidden = 0;
    }
    
    void resetInternal()
    {
      this.mFlags = 0;
      this.mPosition = -1;
      this.mOldPosition = -1;
      this.mItemId = -1L;
      this.mPreLayoutPosition = -1;
      this.mIsRecyclableCount = 0;
      this.mShadowedHolder = null;
      this.mShadowingHolder = null;
      clearPayload();
      this.mWasImportantForAccessibilityBeforeHidden = 0;
      this.mPendingAccessibilityState = -1;
      RecyclerView.clearNestedRecyclerViewIfNotNested(this);
    }
    
    void saveOldPosition()
    {
      if (this.mOldPosition == -1) {
        this.mOldPosition = this.mPosition;
      }
    }
    
    void setFlags(int paramInt1, int paramInt2)
    {
      this.mFlags = (paramInt1 & paramInt2 | this.mFlags & paramInt2);
    }
    
    public final void setIsRecyclable(boolean paramBoolean)
    {
      int i = this.mIsRecyclableCount;
      if (paramBoolean) {
        i--;
      } else {
        i++;
      }
      this.mIsRecyclableCount = i;
      if (i < 0)
      {
        this.mIsRecyclableCount = 0;
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for ");
        localStringBuilder.append(this);
        Log.e("View", localStringBuilder.toString());
      }
      else if ((!paramBoolean) && (i == 1))
      {
        this.mFlags |= 0x10;
      }
      else if ((paramBoolean) && (i == 0))
      {
        this.mFlags &= 0xFFFFFFEF;
      }
    }
    
    void setScrapContainer(RecyclerView.v paramv, boolean paramBoolean)
    {
      this.mScrapContainer = paramv;
      this.mInChangeScrap = paramBoolean;
    }
    
    boolean shouldBeKeptAsChild()
    {
      boolean bool;
      if ((this.mFlags & 0x10) != 0) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    boolean shouldIgnore()
    {
      boolean bool;
      if ((this.mFlags & 0x80) != 0) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    void stopIgnoring()
    {
      this.mFlags &= 0xFFFFFF7F;
    }
    
    public String toString()
    {
      Object localObject;
      if (getClass().isAnonymousClass()) {
        localObject = "ViewHolder";
      } else {
        localObject = getClass().getSimpleName();
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append((String)localObject);
      localStringBuilder.append("{");
      localStringBuilder.append(Integer.toHexString(hashCode()));
      localStringBuilder.append(" position=");
      localStringBuilder.append(this.mPosition);
      localStringBuilder.append(" id=");
      localStringBuilder.append(this.mItemId);
      localStringBuilder.append(", oldPos=");
      localStringBuilder.append(this.mOldPosition);
      localStringBuilder.append(", pLpos:");
      localStringBuilder.append(this.mPreLayoutPosition);
      localStringBuilder = new StringBuilder(localStringBuilder.toString());
      if (isScrap())
      {
        localStringBuilder.append(" scrap ");
        if (this.mInChangeScrap) {
          localObject = "[changeScrap]";
        } else {
          localObject = "[attachedScrap]";
        }
        localStringBuilder.append((String)localObject);
      }
      if (isInvalid()) {
        localStringBuilder.append(" invalid");
      }
      if (!isBound()) {
        localStringBuilder.append(" unbound");
      }
      if (needsUpdate()) {
        localStringBuilder.append(" update");
      }
      if (isRemoved()) {
        localStringBuilder.append(" removed");
      }
      if (shouldIgnore()) {
        localStringBuilder.append(" ignored");
      }
      if (isTmpDetached()) {
        localStringBuilder.append(" tmpDetached");
      }
      if (!isRecyclable())
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append(" not recyclable(");
        ((StringBuilder)localObject).append(this.mIsRecyclableCount);
        ((StringBuilder)localObject).append(")");
        localStringBuilder.append(((StringBuilder)localObject).toString());
      }
      if (isAdapterPositionUnknown()) {
        localStringBuilder.append(" undefined adapter position");
      }
      if (this.itemView.getParent() == null) {
        localStringBuilder.append(" no parent");
      }
      localStringBuilder.append("}");
      return localStringBuilder.toString();
    }
    
    void unScrap()
    {
      this.mScrapContainer.J(this);
    }
    
    boolean wasReturnedFromScrap()
    {
      boolean bool;
      if ((this.mFlags & 0x20) != 0) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
  
  class d
    implements u.b
  {
    d() {}
    
    public void a(RecyclerView.c0 paramc0)
    {
      RecyclerView localRecyclerView = RecyclerView.this;
      localRecyclerView.mLayout.removeAndRecycleView(paramc0.itemView, localRecyclerView.mRecycler);
    }
    
    public void b(RecyclerView.c0 paramc0, RecyclerView.l.c paramc1, RecyclerView.l.c paramc2)
    {
      RecyclerView.this.animateAppearance(paramc0, paramc1, paramc2);
    }
    
    public void c(RecyclerView.c0 paramc0, RecyclerView.l.c paramc1, RecyclerView.l.c paramc2)
    {
      RecyclerView.this.mRecycler.J(paramc0);
      RecyclerView.this.animateDisappearance(paramc0, paramc1, paramc2);
    }
    
    public void d(RecyclerView.c0 paramc0, RecyclerView.l.c paramc1, RecyclerView.l.c paramc2)
    {
      paramc0.setIsRecyclable(false);
      RecyclerView localRecyclerView = RecyclerView.this;
      if (localRecyclerView.mDataSetHasChangedAfterLayout)
      {
        if (localRecyclerView.mItemAnimator.b(paramc0, paramc0, paramc1, paramc2)) {
          RecyclerView.this.postAnimationRunner();
        }
      }
      else if (localRecyclerView.mItemAnimator.d(paramc0, paramc1, paramc2)) {
        RecyclerView.this.postAnimationRunner();
      }
    }
  }
  
  class e
    implements b.b
  {
    e() {}
    
    public View a(int paramInt)
    {
      return RecyclerView.this.getChildAt(paramInt);
    }
    
    public void addView(View paramView, int paramInt)
    {
      RecyclerView.this.addView(paramView, paramInt);
      RecyclerView.this.dispatchChildAttached(paramView);
    }
    
    public void b(View paramView)
    {
      paramView = RecyclerView.getChildViewHolderInt(paramView);
      if (paramView != null) {
        paramView.onEnteredHiddenState(RecyclerView.this);
      }
    }
    
    public int c()
    {
      return RecyclerView.this.getChildCount();
    }
    
    public int d(View paramView)
    {
      return RecyclerView.this.indexOfChild(paramView);
    }
    
    public RecyclerView.c0 e(View paramView)
    {
      return RecyclerView.getChildViewHolderInt(paramView);
    }
    
    public void f(int paramInt)
    {
      Object localObject = a(paramInt);
      if (localObject != null)
      {
        localObject = RecyclerView.getChildViewHolderInt((View)localObject);
        if (localObject != null)
        {
          if ((((RecyclerView.c0)localObject).isTmpDetached()) && (!((RecyclerView.c0)localObject).shouldIgnore()))
          {
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("called detach on an already detached child ");
            localStringBuilder.append(localObject);
            localStringBuilder.append(RecyclerView.this.exceptionLabel());
            throw new IllegalArgumentException(localStringBuilder.toString());
          }
          ((RecyclerView.c0)localObject).addFlags(256);
        }
      }
      RecyclerView.this.detachViewFromParent(paramInt);
    }
    
    public void g(View paramView)
    {
      paramView = RecyclerView.getChildViewHolderInt(paramView);
      if (paramView != null) {
        paramView.onLeftHiddenState(RecyclerView.this);
      }
    }
    
    public void h(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
    {
      RecyclerView.c0 localc0 = RecyclerView.getChildViewHolderInt(paramView);
      if (localc0 != null)
      {
        if ((!localc0.isTmpDetached()) && (!localc0.shouldIgnore()))
        {
          paramView = new StringBuilder();
          paramView.append("Called attach on a child which is not detached: ");
          paramView.append(localc0);
          paramView.append(RecyclerView.this.exceptionLabel());
          throw new IllegalArgumentException(paramView.toString());
        }
        localc0.clearTmpDetachFlag();
      }
      RecyclerView.this.attachViewToParent(paramView, paramInt, paramLayoutParams);
    }
    
    public void removeAllViews()
    {
      int i = c();
      for (int j = 0; j < i; j++)
      {
        View localView = a(j);
        RecyclerView.this.dispatchChildDetached(localView);
        localView.clearAnimation();
      }
      RecyclerView.this.removeAllViews();
    }
    
    public void removeViewAt(int paramInt)
    {
      View localView = RecyclerView.this.getChildAt(paramInt);
      if (localView != null)
      {
        RecyclerView.this.dispatchChildDetached(localView);
        localView.clearAnimation();
      }
      RecyclerView.this.removeViewAt(paramInt);
    }
  }
  
  class f
    implements a.a
  {
    f() {}
    
    public void a(int paramInt1, int paramInt2)
    {
      RecyclerView.this.offsetPositionRecordsForMove(paramInt1, paramInt2);
      RecyclerView.this.mItemsAddedOrRemoved = true;
    }
    
    public void b(a.b paramb)
    {
      i(paramb);
    }
    
    public void c(int paramInt1, int paramInt2, Object paramObject)
    {
      RecyclerView.this.viewRangeUpdate(paramInt1, paramInt2, paramObject);
      RecyclerView.this.mItemsChanged = true;
    }
    
    public void d(a.b paramb)
    {
      i(paramb);
    }
    
    public RecyclerView.c0 e(int paramInt)
    {
      RecyclerView.c0 localc0 = RecyclerView.this.findViewHolderForPosition(paramInt, true);
      if (localc0 == null) {
        return null;
      }
      if (RecyclerView.this.mChildHelper.n(localc0.itemView)) {
        return null;
      }
      return localc0;
    }
    
    public void f(int paramInt1, int paramInt2)
    {
      RecyclerView.this.offsetPositionRecordsForRemove(paramInt1, paramInt2, false);
      RecyclerView.this.mItemsAddedOrRemoved = true;
    }
    
    public void g(int paramInt1, int paramInt2)
    {
      RecyclerView.this.offsetPositionRecordsForInsert(paramInt1, paramInt2);
      RecyclerView.this.mItemsAddedOrRemoved = true;
    }
    
    public void h(int paramInt1, int paramInt2)
    {
      RecyclerView.this.offsetPositionRecordsForRemove(paramInt1, paramInt2, true);
      Object localObject = RecyclerView.this;
      ((RecyclerView)localObject).mItemsAddedOrRemoved = true;
      localObject = ((RecyclerView)localObject).mState;
      ((RecyclerView.z)localObject).d += paramInt2;
    }
    
    void i(a.b paramb)
    {
      int i = paramb.a;
      RecyclerView localRecyclerView;
      if (i != 1)
      {
        if (i != 2)
        {
          if (i != 4)
          {
            if (i == 8)
            {
              localRecyclerView = RecyclerView.this;
              localRecyclerView.mLayout.onItemsMoved(localRecyclerView, paramb.b, paramb.d, 1);
            }
          }
          else
          {
            localRecyclerView = RecyclerView.this;
            localRecyclerView.mLayout.onItemsUpdated(localRecyclerView, paramb.b, paramb.d, paramb.c);
          }
        }
        else
        {
          localRecyclerView = RecyclerView.this;
          localRecyclerView.mLayout.onItemsRemoved(localRecyclerView, paramb.b, paramb.d);
        }
      }
      else
      {
        localRecyclerView = RecyclerView.this;
        localRecyclerView.mLayout.onItemsAdded(localRecyclerView, paramb.b, paramb.d);
      }
    }
  }
  
  public static abstract class g<VH extends RecyclerView.c0>
  {
    private boolean mHasStableIds = false;
    private final RecyclerView.h mObservable = new RecyclerView.h();
    
    public final void bindViewHolder(VH paramVH, int paramInt)
    {
      paramVH.mPosition = paramInt;
      if (hasStableIds()) {
        paramVH.mItemId = getItemId(paramInt);
      }
      paramVH.setFlags(1, 519);
      androidx.core.os.g.a("RV OnBindView");
      onBindViewHolder(paramVH, paramInt, paramVH.getUnmodifiedPayloads());
      paramVH.clearPayload();
      paramVH = paramVH.itemView.getLayoutParams();
      if ((paramVH instanceof RecyclerView.p)) {
        ((RecyclerView.p)paramVH).mInsetsDirty = true;
      }
      androidx.core.os.g.b();
    }
    
    public final VH createViewHolder(ViewGroup paramViewGroup, int paramInt)
    {
      try
      {
        androidx.core.os.g.a("RV CreateView");
        paramViewGroup = onCreateViewHolder(paramViewGroup, paramInt);
        if (paramViewGroup.itemView.getParent() == null)
        {
          paramViewGroup.mItemViewType = paramInt;
          return paramViewGroup;
        }
        paramViewGroup = new java/lang/IllegalStateException;
        paramViewGroup.<init>("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
        throw paramViewGroup;
      }
      finally
      {
        androidx.core.os.g.b();
      }
    }
    
    public abstract int getItemCount();
    
    public long getItemId(int paramInt)
    {
      return -1L;
    }
    
    public int getItemViewType(int paramInt)
    {
      return 0;
    }
    
    public final boolean hasObservers()
    {
      return this.mObservable.a();
    }
    
    public final boolean hasStableIds()
    {
      return this.mHasStableIds;
    }
    
    public final void notifyDataSetChanged()
    {
      this.mObservable.b();
    }
    
    public final void notifyItemChanged(int paramInt)
    {
      this.mObservable.d(paramInt, 1);
    }
    
    public final void notifyItemChanged(int paramInt, Object paramObject)
    {
      this.mObservable.e(paramInt, 1, paramObject);
    }
    
    public final void notifyItemInserted(int paramInt)
    {
      this.mObservable.f(paramInt, 1);
    }
    
    public final void notifyItemMoved(int paramInt1, int paramInt2)
    {
      this.mObservable.c(paramInt1, paramInt2);
    }
    
    public final void notifyItemRangeChanged(int paramInt1, int paramInt2)
    {
      this.mObservable.d(paramInt1, paramInt2);
    }
    
    public final void notifyItemRangeChanged(int paramInt1, int paramInt2, Object paramObject)
    {
      this.mObservable.e(paramInt1, paramInt2, paramObject);
    }
    
    public final void notifyItemRangeInserted(int paramInt1, int paramInt2)
    {
      this.mObservable.f(paramInt1, paramInt2);
    }
    
    public final void notifyItemRangeRemoved(int paramInt1, int paramInt2)
    {
      this.mObservable.g(paramInt1, paramInt2);
    }
    
    public final void notifyItemRemoved(int paramInt)
    {
      this.mObservable.g(paramInt, 1);
    }
    
    public void onAttachedToRecyclerView(RecyclerView paramRecyclerView) {}
    
    public abstract void onBindViewHolder(VH paramVH, int paramInt);
    
    public void onBindViewHolder(VH paramVH, int paramInt, List<Object> paramList)
    {
      onBindViewHolder(paramVH, paramInt);
    }
    
    public abstract VH onCreateViewHolder(ViewGroup paramViewGroup, int paramInt);
    
    public void onDetachedFromRecyclerView(RecyclerView paramRecyclerView) {}
    
    public boolean onFailedToRecycleView(VH paramVH)
    {
      return false;
    }
    
    public void onViewAttachedToWindow(VH paramVH) {}
    
    public void onViewDetachedFromWindow(VH paramVH) {}
    
    public void onViewRecycled(VH paramVH) {}
    
    public void registerAdapterDataObserver(RecyclerView.i parami)
    {
      this.mObservable.registerObserver(parami);
    }
    
    public void setHasStableIds(boolean paramBoolean)
    {
      if (!hasObservers())
      {
        this.mHasStableIds = paramBoolean;
        return;
      }
      throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
    }
    
    public void unregisterAdapterDataObserver(RecyclerView.i parami)
    {
      this.mObservable.unregisterObserver(parami);
    }
  }
  
  static class h
    extends Observable<RecyclerView.i>
  {
    public boolean a()
    {
      return this.mObservers.isEmpty() ^ true;
    }
    
    public void b()
    {
      for (int i = this.mObservers.size() - 1; i >= 0; i--) {
        ((RecyclerView.i)this.mObservers.get(i)).onChanged();
      }
    }
    
    public void c(int paramInt1, int paramInt2)
    {
      for (int i = this.mObservers.size() - 1; i >= 0; i--) {
        ((RecyclerView.i)this.mObservers.get(i)).onItemRangeMoved(paramInt1, paramInt2, 1);
      }
    }
    
    public void d(int paramInt1, int paramInt2)
    {
      e(paramInt1, paramInt2, null);
    }
    
    public void e(int paramInt1, int paramInt2, Object paramObject)
    {
      for (int i = this.mObservers.size() - 1; i >= 0; i--) {
        ((RecyclerView.i)this.mObservers.get(i)).onItemRangeChanged(paramInt1, paramInt2, paramObject);
      }
    }
    
    public void f(int paramInt1, int paramInt2)
    {
      for (int i = this.mObservers.size() - 1; i >= 0; i--) {
        ((RecyclerView.i)this.mObservers.get(i)).onItemRangeInserted(paramInt1, paramInt2);
      }
    }
    
    public void g(int paramInt1, int paramInt2)
    {
      for (int i = this.mObservers.size() - 1; i >= 0; i--) {
        ((RecyclerView.i)this.mObservers.get(i)).onItemRangeRemoved(paramInt1, paramInt2);
      }
    }
  }
  
  public static abstract class i
  {
    public void onChanged() {}
    
    public void onItemRangeChanged(int paramInt1, int paramInt2) {}
    
    public void onItemRangeChanged(int paramInt1, int paramInt2, Object paramObject)
    {
      onItemRangeChanged(paramInt1, paramInt2);
    }
    
    public void onItemRangeInserted(int paramInt1, int paramInt2) {}
    
    public void onItemRangeMoved(int paramInt1, int paramInt2, int paramInt3) {}
    
    public void onItemRangeRemoved(int paramInt1, int paramInt2) {}
  }
  
  public static abstract interface j
  {
    public abstract int a(int paramInt1, int paramInt2);
  }
  
  public static class k
  {
    protected EdgeEffect a(RecyclerView paramRecyclerView, int paramInt)
    {
      return new EdgeEffect(paramRecyclerView.getContext());
    }
  }
  
  public static abstract class l
  {
    private b a = null;
    private ArrayList<a> b = new ArrayList();
    private long c = 120L;
    private long d = 120L;
    private long e = 250L;
    private long f = 250L;
    
    static int e(RecyclerView.c0 paramc0)
    {
      int i = paramc0.mFlags & 0xE;
      if (paramc0.isInvalid()) {
        return 4;
      }
      int j = i;
      if ((i & 0x4) == 0)
      {
        int k = paramc0.getOldPosition();
        int m = paramc0.getAdapterPosition();
        j = i;
        if (k != -1)
        {
          j = i;
          if (m != -1)
          {
            j = i;
            if (k != m) {
              j = i | 0x800;
            }
          }
        }
      }
      return j;
    }
    
    public abstract boolean a(RecyclerView.c0 paramc0, c paramc1, c paramc2);
    
    public abstract boolean b(RecyclerView.c0 paramc01, RecyclerView.c0 paramc02, c paramc1, c paramc2);
    
    public abstract boolean c(RecyclerView.c0 paramc0, c paramc1, c paramc2);
    
    public abstract boolean d(RecyclerView.c0 paramc0, c paramc1, c paramc2);
    
    public abstract boolean f(RecyclerView.c0 paramc0);
    
    public boolean g(RecyclerView.c0 paramc0, List<Object> paramList)
    {
      return f(paramc0);
    }
    
    public final void h(RecyclerView.c0 paramc0)
    {
      r(paramc0);
      b localb = this.a;
      if (localb != null) {
        localb.a(paramc0);
      }
    }
    
    public final void i()
    {
      int i = this.b.size();
      for (int j = 0; j < i; j++) {
        ((a)this.b.get(j)).a();
      }
      this.b.clear();
    }
    
    public abstract void j(RecyclerView.c0 paramc0);
    
    public abstract void k();
    
    public long l()
    {
      return this.c;
    }
    
    public long m()
    {
      return this.f;
    }
    
    public long n()
    {
      return this.e;
    }
    
    public long o()
    {
      return this.d;
    }
    
    public abstract boolean p();
    
    public c q()
    {
      return new c();
    }
    
    public void r(RecyclerView.c0 paramc0) {}
    
    public c s(RecyclerView.z paramz, RecyclerView.c0 paramc0)
    {
      return q().a(paramc0);
    }
    
    public c t(RecyclerView.z paramz, RecyclerView.c0 paramc0, int paramInt, List<Object> paramList)
    {
      return q().a(paramc0);
    }
    
    public abstract void u();
    
    void v(b paramb)
    {
      this.a = paramb;
    }
    
    public void w(long paramLong)
    {
      this.d = paramLong;
    }
    
    public static abstract interface a
    {
      public abstract void a();
    }
    
    static abstract interface b
    {
      public abstract void a(RecyclerView.c0 paramc0);
    }
    
    public static class c
    {
      public int a;
      public int b;
      public int c;
      public int d;
      
      public c a(RecyclerView.c0 paramc0)
      {
        return b(paramc0, 0);
      }
      
      public c b(RecyclerView.c0 paramc0, int paramInt)
      {
        paramc0 = paramc0.itemView;
        this.a = paramc0.getLeft();
        this.b = paramc0.getTop();
        this.c = paramc0.getRight();
        this.d = paramc0.getBottom();
        return this;
      }
    }
  }
  
  private class m
    implements RecyclerView.l.b
  {
    m() {}
    
    public void a(RecyclerView.c0 paramc0)
    {
      paramc0.setIsRecyclable(true);
      if ((paramc0.mShadowedHolder != null) && (paramc0.mShadowingHolder == null)) {
        paramc0.mShadowedHolder = null;
      }
      paramc0.mShadowingHolder = null;
      if ((!paramc0.shouldBeKeptAsChild()) && (!RecyclerView.this.removeAnimatingView(paramc0.itemView)) && (paramc0.isTmpDetached())) {
        RecyclerView.this.removeDetachedView(paramc0.itemView, false);
      }
    }
  }
  
  public static abstract class n
  {
    @Deprecated
    public void getItemOffsets(Rect paramRect, int paramInt, RecyclerView paramRecyclerView)
    {
      paramRect.set(0, 0, 0, 0);
    }
    
    public void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.z paramz)
    {
      getItemOffsets(paramRect, ((RecyclerView.p)paramView.getLayoutParams()).getViewLayoutPosition(), paramRecyclerView);
    }
    
    @Deprecated
    public void onDraw(Canvas paramCanvas, RecyclerView paramRecyclerView) {}
    
    public void onDraw(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.z paramz)
    {
      onDraw(paramCanvas, paramRecyclerView);
    }
    
    @Deprecated
    public void onDrawOver(Canvas paramCanvas, RecyclerView paramRecyclerView) {}
    
    public void onDrawOver(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.z paramz)
    {
      onDrawOver(paramCanvas, paramRecyclerView);
    }
  }
  
  public static abstract class o
  {
    boolean mAutoMeasure;
    b mChildHelper;
    private int mHeight;
    private int mHeightMode;
    t mHorizontalBoundCheck;
    private final t.b mHorizontalBoundCheckCallback;
    boolean mIsAttachedToWindow;
    private boolean mItemPrefetchEnabled;
    private boolean mMeasurementCacheEnabled;
    int mPrefetchMaxCountObserved;
    boolean mPrefetchMaxObservedInInitialPrefetch;
    RecyclerView mRecyclerView;
    boolean mRequestedSimpleAnimations;
    RecyclerView.y mSmoothScroller;
    t mVerticalBoundCheck;
    private final t.b mVerticalBoundCheckCallback;
    private int mWidth;
    private int mWidthMode;
    
    public o()
    {
      a locala = new a();
      this.mHorizontalBoundCheckCallback = locala;
      b localb = new b();
      this.mVerticalBoundCheckCallback = localb;
      this.mHorizontalBoundCheck = new t(locala);
      this.mVerticalBoundCheck = new t(localb);
      this.mRequestedSimpleAnimations = false;
      this.mIsAttachedToWindow = false;
      this.mAutoMeasure = false;
      this.mMeasurementCacheEnabled = true;
      this.mItemPrefetchEnabled = true;
    }
    
    private void addViewInt(View paramView, int paramInt, boolean paramBoolean)
    {
      Object localObject = RecyclerView.getChildViewHolderInt(paramView);
      if ((!paramBoolean) && (!((RecyclerView.c0)localObject).isRemoved())) {
        this.mRecyclerView.mViewInfoStore.p((RecyclerView.c0)localObject);
      } else {
        this.mRecyclerView.mViewInfoStore.b((RecyclerView.c0)localObject);
      }
      RecyclerView.p localp = (RecyclerView.p)paramView.getLayoutParams();
      if ((!((RecyclerView.c0)localObject).wasReturnedFromScrap()) && (!((RecyclerView.c0)localObject).isScrap()))
      {
        if (paramView.getParent() == this.mRecyclerView)
        {
          int i = this.mChildHelper.m(paramView);
          int j = paramInt;
          if (paramInt == -1) {
            j = this.mChildHelper.g();
          }
          if (i != -1)
          {
            if (i != j) {
              this.mRecyclerView.mLayout.moveView(i, j);
            }
          }
          else
          {
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:");
            ((StringBuilder)localObject).append(this.mRecyclerView.indexOfChild(paramView));
            ((StringBuilder)localObject).append(this.mRecyclerView.exceptionLabel());
            throw new IllegalStateException(((StringBuilder)localObject).toString());
          }
        }
        else
        {
          this.mChildHelper.a(paramView, paramInt, false);
          localp.mInsetsDirty = true;
          RecyclerView.y localy = this.mSmoothScroller;
          if ((localy != null) && (localy.isRunning())) {
            this.mSmoothScroller.onChildAttachedToWindow(paramView);
          }
        }
      }
      else
      {
        if (((RecyclerView.c0)localObject).isScrap()) {
          ((RecyclerView.c0)localObject).unScrap();
        } else {
          ((RecyclerView.c0)localObject).clearReturnedFromScrapFlag();
        }
        this.mChildHelper.c(paramView, paramInt, paramView.getLayoutParams(), false);
      }
      if (localp.mPendingInvalidate)
      {
        ((RecyclerView.c0)localObject).itemView.invalidate();
        localp.mPendingInvalidate = false;
      }
    }
    
    public static int chooseSize(int paramInt1, int paramInt2, int paramInt3)
    {
      int i = View.MeasureSpec.getMode(paramInt1);
      paramInt1 = View.MeasureSpec.getSize(paramInt1);
      if (i != -2147483648)
      {
        if (i != 1073741824) {
          paramInt1 = Math.max(paramInt2, paramInt3);
        }
        return paramInt1;
      }
      return Math.min(paramInt1, Math.max(paramInt2, paramInt3));
    }
    
    private void detachViewInternal(int paramInt, View paramView)
    {
      this.mChildHelper.d(paramInt);
    }
    
    public static int getChildMeasureSpec(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
    {
      paramInt1 = Math.max(0, paramInt1 - paramInt3);
      if (paramBoolean)
      {
        if (paramInt4 < 0)
        {
          if (paramInt4 != -1) {
            break label100;
          }
          if (paramInt2 == -2147483648) {
            break label59;
          }
          if (paramInt2 == 0) {
            break label100;
          }
          if (paramInt2 == 1073741824) {
            break label59;
          }
          break label100;
        }
      }
      else {
        if (paramInt4 < 0) {
          break label54;
        }
      }
      paramInt2 = 1073741824;
      break label104;
      label54:
      if (paramInt4 == -1)
      {
        label59:
        paramInt4 = paramInt1;
      }
      else if (paramInt4 == -2)
      {
        if ((paramInt2 != -2147483648) && (paramInt2 != 1073741824))
        {
          paramInt2 = 0;
          paramInt4 = paramInt1;
        }
        else
        {
          paramInt2 = -2147483648;
          paramInt4 = paramInt1;
        }
      }
      else
      {
        label100:
        paramInt2 = 0;
        paramInt4 = paramInt2;
      }
      label104:
      return View.MeasureSpec.makeMeasureSpec(paramInt4, paramInt2);
    }
    
    @Deprecated
    public static int getChildMeasureSpec(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
    {
      int i = 0;
      paramInt1 = Math.max(0, paramInt1 - paramInt2);
      if (paramBoolean) {
        if (paramInt3 >= 0) {
          break label34;
        }
      }
      label34:
      do
      {
        paramInt3 = 0;
        paramInt1 = i;
        break;
        if (paramInt3 >= 0) {}
        for (;;)
        {
          paramInt1 = 1073741824;
          break label63;
          if (paramInt3 != -1) {
            break;
          }
          paramInt3 = paramInt1;
        }
      } while (paramInt3 != -2);
      paramInt2 = -2147483648;
      paramInt3 = paramInt1;
      paramInt1 = paramInt2;
      label63:
      return View.MeasureSpec.makeMeasureSpec(paramInt3, paramInt1);
    }
    
    private int[] getChildRectangleOnScreenScrollAmount(View paramView, Rect paramRect)
    {
      int i = getPaddingLeft();
      int j = getPaddingTop();
      int k = getWidth();
      int m = getPaddingRight();
      int n = getHeight();
      int i1 = getPaddingBottom();
      int i2 = paramView.getLeft() + paramRect.left - paramView.getScrollX();
      int i3 = paramView.getTop() + paramRect.top - paramView.getScrollY();
      int i4 = paramRect.width();
      int i5 = paramRect.height();
      int i6 = i2 - i;
      i = Math.min(0, i6);
      int i7 = i3 - j;
      j = Math.min(0, i7);
      i4 = i4 + i2 - (k - m);
      i2 = Math.max(0, i4);
      n = Math.max(0, i5 + i3 - (n - i1));
      if (getLayoutDirection() == 1)
      {
        if (i2 != 0) {
          i = i2;
        } else {
          i = Math.max(i, i4);
        }
      }
      else if (i == 0) {
        i = Math.min(i6, i2);
      }
      if (j == 0) {
        j = Math.min(i7, n);
      }
      return new int[] { i, j };
    }
    
    public static d getProperties(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
    {
      d locald = new d();
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, i0.c.f, paramInt1, paramInt2);
      locald.a = paramContext.getInt(i0.c.g, 1);
      locald.b = paramContext.getInt(i0.c.q, 1);
      locald.c = paramContext.getBoolean(i0.c.p, false);
      locald.d = paramContext.getBoolean(i0.c.r, false);
      paramContext.recycle();
      return locald;
    }
    
    private boolean isFocusedChildVisibleAfterScrolling(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
    {
      View localView = paramRecyclerView.getFocusedChild();
      if (localView == null) {
        return false;
      }
      int i = getPaddingLeft();
      int j = getPaddingTop();
      int k = getWidth();
      int m = getPaddingRight();
      int n = getHeight();
      int i1 = getPaddingBottom();
      paramRecyclerView = this.mRecyclerView.mTempRect;
      getDecoratedBoundsWithMargins(localView, paramRecyclerView);
      return (paramRecyclerView.left - paramInt1 < k - m) && (paramRecyclerView.right - paramInt1 > i) && (paramRecyclerView.top - paramInt2 < n - i1) && (paramRecyclerView.bottom - paramInt2 > j);
    }
    
    private static boolean isMeasurementUpToDate(int paramInt1, int paramInt2, int paramInt3)
    {
      int i = View.MeasureSpec.getMode(paramInt2);
      paramInt2 = View.MeasureSpec.getSize(paramInt2);
      boolean bool1 = false;
      boolean bool2 = false;
      if ((paramInt3 > 0) && (paramInt1 != paramInt3)) {
        return false;
      }
      if (i != -2147483648)
      {
        if (i != 0)
        {
          if (i != 1073741824) {
            return false;
          }
          if (paramInt2 == paramInt1) {
            bool2 = true;
          }
          return bool2;
        }
        return true;
      }
      bool2 = bool1;
      if (paramInt2 >= paramInt1) {
        bool2 = true;
      }
      return bool2;
    }
    
    private void scrapOrRecycleView(RecyclerView.v paramv, int paramInt, View paramView)
    {
      RecyclerView.c0 localc0 = RecyclerView.getChildViewHolderInt(paramView);
      if (localc0.shouldIgnore()) {
        return;
      }
      if ((localc0.isInvalid()) && (!localc0.isRemoved()) && (!this.mRecyclerView.mAdapter.hasStableIds()))
      {
        removeViewAt(paramInt);
        paramv.C(localc0);
      }
      else
      {
        detachViewAt(paramInt);
        paramv.D(paramView);
        this.mRecyclerView.mViewInfoStore.k(localc0);
      }
    }
    
    public void addDisappearingView(View paramView)
    {
      addDisappearingView(paramView, -1);
    }
    
    public void addDisappearingView(View paramView, int paramInt)
    {
      addViewInt(paramView, paramInt, true);
    }
    
    public void addView(View paramView)
    {
      addView(paramView, -1);
    }
    
    public void addView(View paramView, int paramInt)
    {
      addViewInt(paramView, paramInt, false);
    }
    
    public void assertInLayoutOrScroll(String paramString)
    {
      RecyclerView localRecyclerView = this.mRecyclerView;
      if (localRecyclerView != null) {
        localRecyclerView.assertInLayoutOrScroll(paramString);
      }
    }
    
    public void assertNotInLayoutOrScroll(String paramString)
    {
      RecyclerView localRecyclerView = this.mRecyclerView;
      if (localRecyclerView != null) {
        localRecyclerView.assertNotInLayoutOrScroll(paramString);
      }
    }
    
    public void attachView(View paramView)
    {
      attachView(paramView, -1);
    }
    
    public void attachView(View paramView, int paramInt)
    {
      attachView(paramView, paramInt, (RecyclerView.p)paramView.getLayoutParams());
    }
    
    public void attachView(View paramView, int paramInt, RecyclerView.p paramp)
    {
      RecyclerView.c0 localc0 = RecyclerView.getChildViewHolderInt(paramView);
      if (localc0.isRemoved()) {
        this.mRecyclerView.mViewInfoStore.b(localc0);
      } else {
        this.mRecyclerView.mViewInfoStore.p(localc0);
      }
      this.mChildHelper.c(paramView, paramInt, paramp, localc0.isRemoved());
    }
    
    public void calculateItemDecorationsForChild(View paramView, Rect paramRect)
    {
      RecyclerView localRecyclerView = this.mRecyclerView;
      if (localRecyclerView == null)
      {
        paramRect.set(0, 0, 0, 0);
        return;
      }
      paramRect.set(localRecyclerView.getItemDecorInsetsForChild(paramView));
    }
    
    public boolean canScrollHorizontally()
    {
      return false;
    }
    
    public boolean canScrollVertically()
    {
      return false;
    }
    
    public boolean checkLayoutParams(RecyclerView.p paramp)
    {
      boolean bool;
      if (paramp != null) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public void collectAdjacentPrefetchPositions(int paramInt1, int paramInt2, RecyclerView.z paramz, c paramc) {}
    
    public void collectInitialPrefetchPositions(int paramInt, c paramc) {}
    
    public int computeHorizontalScrollExtent(RecyclerView.z paramz)
    {
      return 0;
    }
    
    public int computeHorizontalScrollOffset(RecyclerView.z paramz)
    {
      return 0;
    }
    
    public int computeHorizontalScrollRange(RecyclerView.z paramz)
    {
      return 0;
    }
    
    public int computeVerticalScrollExtent(RecyclerView.z paramz)
    {
      return 0;
    }
    
    public int computeVerticalScrollOffset(RecyclerView.z paramz)
    {
      return 0;
    }
    
    public int computeVerticalScrollRange(RecyclerView.z paramz)
    {
      return 0;
    }
    
    public void detachAndScrapAttachedViews(RecyclerView.v paramv)
    {
      for (int i = getChildCount() - 1; i >= 0; i--) {
        scrapOrRecycleView(paramv, i, getChildAt(i));
      }
    }
    
    public void detachAndScrapView(View paramView, RecyclerView.v paramv)
    {
      scrapOrRecycleView(paramv, this.mChildHelper.m(paramView), paramView);
    }
    
    public void detachAndScrapViewAt(int paramInt, RecyclerView.v paramv)
    {
      scrapOrRecycleView(paramv, paramInt, getChildAt(paramInt));
    }
    
    public void detachView(View paramView)
    {
      int i = this.mChildHelper.m(paramView);
      if (i >= 0) {
        detachViewInternal(i, paramView);
      }
    }
    
    public void detachViewAt(int paramInt)
    {
      detachViewInternal(paramInt, getChildAt(paramInt));
    }
    
    void dispatchAttachedToWindow(RecyclerView paramRecyclerView)
    {
      this.mIsAttachedToWindow = true;
      onAttachedToWindow(paramRecyclerView);
    }
    
    void dispatchDetachedFromWindow(RecyclerView paramRecyclerView, RecyclerView.v paramv)
    {
      this.mIsAttachedToWindow = false;
      onDetachedFromWindow(paramRecyclerView, paramv);
    }
    
    public void endAnimation(View paramView)
    {
      RecyclerView.l locall = this.mRecyclerView.mItemAnimator;
      if (locall != null) {
        locall.j(RecyclerView.getChildViewHolderInt(paramView));
      }
    }
    
    public View findContainingItemView(View paramView)
    {
      RecyclerView localRecyclerView = this.mRecyclerView;
      if (localRecyclerView == null) {
        return null;
      }
      paramView = localRecyclerView.findContainingItemView(paramView);
      if (paramView == null) {
        return null;
      }
      if (this.mChildHelper.n(paramView)) {
        return null;
      }
      return paramView;
    }
    
    public View findViewByPosition(int paramInt)
    {
      int i = getChildCount();
      for (int j = 0; j < i; j++)
      {
        View localView = getChildAt(j);
        RecyclerView.c0 localc0 = RecyclerView.getChildViewHolderInt(localView);
        if ((localc0 != null) && (localc0.getLayoutPosition() == paramInt) && (!localc0.shouldIgnore()) && ((this.mRecyclerView.mState.e()) || (!localc0.isRemoved()))) {
          return localView;
        }
      }
      return null;
    }
    
    public abstract RecyclerView.p generateDefaultLayoutParams();
    
    public RecyclerView.p generateLayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      return new RecyclerView.p(paramContext, paramAttributeSet);
    }
    
    public RecyclerView.p generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      if ((paramLayoutParams instanceof RecyclerView.p)) {
        return new RecyclerView.p((RecyclerView.p)paramLayoutParams);
      }
      if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
        return new RecyclerView.p((ViewGroup.MarginLayoutParams)paramLayoutParams);
      }
      return new RecyclerView.p(paramLayoutParams);
    }
    
    public int getBaseline()
    {
      return -1;
    }
    
    public int getBottomDecorationHeight(View paramView)
    {
      return ((RecyclerView.p)paramView.getLayoutParams()).mDecorInsets.bottom;
    }
    
    public View getChildAt(int paramInt)
    {
      Object localObject = this.mChildHelper;
      if (localObject != null) {
        localObject = ((b)localObject).f(paramInt);
      } else {
        localObject = null;
      }
      return localObject;
    }
    
    public int getChildCount()
    {
      b localb = this.mChildHelper;
      int i;
      if (localb != null) {
        i = localb.g();
      } else {
        i = 0;
      }
      return i;
    }
    
    public boolean getClipToPadding()
    {
      RecyclerView localRecyclerView = this.mRecyclerView;
      boolean bool;
      if ((localRecyclerView != null) && (localRecyclerView.mClipToPadding)) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public int getColumnCountForAccessibility(RecyclerView.v paramv, RecyclerView.z paramz)
    {
      paramv = this.mRecyclerView;
      int i = 1;
      int j = i;
      if (paramv != null) {
        if (paramv.mAdapter == null)
        {
          j = i;
        }
        else
        {
          j = i;
          if (canScrollHorizontally()) {
            j = this.mRecyclerView.mAdapter.getItemCount();
          }
        }
      }
      return j;
    }
    
    public int getDecoratedBottom(View paramView)
    {
      return paramView.getBottom() + getBottomDecorationHeight(paramView);
    }
    
    public void getDecoratedBoundsWithMargins(View paramView, Rect paramRect)
    {
      RecyclerView.getDecoratedBoundsWithMarginsInt(paramView, paramRect);
    }
    
    public int getDecoratedLeft(View paramView)
    {
      return paramView.getLeft() - getLeftDecorationWidth(paramView);
    }
    
    public int getDecoratedMeasuredHeight(View paramView)
    {
      Rect localRect = ((RecyclerView.p)paramView.getLayoutParams()).mDecorInsets;
      return paramView.getMeasuredHeight() + localRect.top + localRect.bottom;
    }
    
    public int getDecoratedMeasuredWidth(View paramView)
    {
      Rect localRect = ((RecyclerView.p)paramView.getLayoutParams()).mDecorInsets;
      return paramView.getMeasuredWidth() + localRect.left + localRect.right;
    }
    
    public int getDecoratedRight(View paramView)
    {
      return paramView.getRight() + getRightDecorationWidth(paramView);
    }
    
    public int getDecoratedTop(View paramView)
    {
      return paramView.getTop() - getTopDecorationHeight(paramView);
    }
    
    public View getFocusedChild()
    {
      Object localObject = this.mRecyclerView;
      if (localObject == null) {
        return null;
      }
      localObject = ((ViewGroup)localObject).getFocusedChild();
      if ((localObject != null) && (!this.mChildHelper.n((View)localObject))) {
        return localObject;
      }
      return null;
    }
    
    public int getHeight()
    {
      return this.mHeight;
    }
    
    public int getHeightMode()
    {
      return this.mHeightMode;
    }
    
    public int getItemCount()
    {
      Object localObject = this.mRecyclerView;
      if (localObject != null) {
        localObject = ((RecyclerView)localObject).getAdapter();
      } else {
        localObject = null;
      }
      int i;
      if (localObject != null) {
        i = ((RecyclerView.g)localObject).getItemCount();
      } else {
        i = 0;
      }
      return i;
    }
    
    public int getItemViewType(View paramView)
    {
      return RecyclerView.getChildViewHolderInt(paramView).getItemViewType();
    }
    
    public int getLayoutDirection()
    {
      return a0.z(this.mRecyclerView);
    }
    
    public int getLeftDecorationWidth(View paramView)
    {
      return ((RecyclerView.p)paramView.getLayoutParams()).mDecorInsets.left;
    }
    
    public int getMinimumHeight()
    {
      return a0.A(this.mRecyclerView);
    }
    
    public int getMinimumWidth()
    {
      return a0.B(this.mRecyclerView);
    }
    
    public int getPaddingBottom()
    {
      RecyclerView localRecyclerView = this.mRecyclerView;
      int i;
      if (localRecyclerView != null) {
        i = localRecyclerView.getPaddingBottom();
      } else {
        i = 0;
      }
      return i;
    }
    
    public int getPaddingEnd()
    {
      RecyclerView localRecyclerView = this.mRecyclerView;
      int i;
      if (localRecyclerView != null) {
        i = a0.D(localRecyclerView);
      } else {
        i = 0;
      }
      return i;
    }
    
    public int getPaddingLeft()
    {
      RecyclerView localRecyclerView = this.mRecyclerView;
      int i;
      if (localRecyclerView != null) {
        i = localRecyclerView.getPaddingLeft();
      } else {
        i = 0;
      }
      return i;
    }
    
    public int getPaddingRight()
    {
      RecyclerView localRecyclerView = this.mRecyclerView;
      int i;
      if (localRecyclerView != null) {
        i = localRecyclerView.getPaddingRight();
      } else {
        i = 0;
      }
      return i;
    }
    
    public int getPaddingStart()
    {
      RecyclerView localRecyclerView = this.mRecyclerView;
      int i;
      if (localRecyclerView != null) {
        i = a0.E(localRecyclerView);
      } else {
        i = 0;
      }
      return i;
    }
    
    public int getPaddingTop()
    {
      RecyclerView localRecyclerView = this.mRecyclerView;
      int i;
      if (localRecyclerView != null) {
        i = localRecyclerView.getPaddingTop();
      } else {
        i = 0;
      }
      return i;
    }
    
    public int getPosition(View paramView)
    {
      return ((RecyclerView.p)paramView.getLayoutParams()).getViewLayoutPosition();
    }
    
    public int getRightDecorationWidth(View paramView)
    {
      return ((RecyclerView.p)paramView.getLayoutParams()).mDecorInsets.right;
    }
    
    public int getRowCountForAccessibility(RecyclerView.v paramv, RecyclerView.z paramz)
    {
      paramv = this.mRecyclerView;
      int i = 1;
      int j = i;
      if (paramv != null) {
        if (paramv.mAdapter == null)
        {
          j = i;
        }
        else
        {
          j = i;
          if (canScrollVertically()) {
            j = this.mRecyclerView.mAdapter.getItemCount();
          }
        }
      }
      return j;
    }
    
    public int getSelectionModeForAccessibility(RecyclerView.v paramv, RecyclerView.z paramz)
    {
      return 0;
    }
    
    public int getTopDecorationHeight(View paramView)
    {
      return ((RecyclerView.p)paramView.getLayoutParams()).mDecorInsets.top;
    }
    
    public void getTransformedBoundingBox(View paramView, boolean paramBoolean, Rect paramRect)
    {
      Object localObject;
      if (paramBoolean)
      {
        localObject = ((RecyclerView.p)paramView.getLayoutParams()).mDecorInsets;
        paramRect.set(-((Rect)localObject).left, -((Rect)localObject).top, paramView.getWidth() + ((Rect)localObject).right, paramView.getHeight() + ((Rect)localObject).bottom);
      }
      else
      {
        paramRect.set(0, 0, paramView.getWidth(), paramView.getHeight());
      }
      if (this.mRecyclerView != null)
      {
        Matrix localMatrix = paramView.getMatrix();
        if ((localMatrix != null) && (!localMatrix.isIdentity()))
        {
          localObject = this.mRecyclerView.mTempRectF;
          ((RectF)localObject).set(paramRect);
          localMatrix.mapRect((RectF)localObject);
          paramRect.set((int)Math.floor(((RectF)localObject).left), (int)Math.floor(((RectF)localObject).top), (int)Math.ceil(((RectF)localObject).right), (int)Math.ceil(((RectF)localObject).bottom));
        }
      }
      paramRect.offset(paramView.getLeft(), paramView.getTop());
    }
    
    public int getWidth()
    {
      return this.mWidth;
    }
    
    public int getWidthMode()
    {
      return this.mWidthMode;
    }
    
    boolean hasFlexibleChildInBothOrientations()
    {
      int i = getChildCount();
      for (int j = 0; j < i; j++)
      {
        ViewGroup.LayoutParams localLayoutParams = getChildAt(j).getLayoutParams();
        if ((localLayoutParams.width < 0) && (localLayoutParams.height < 0)) {
          return true;
        }
      }
      return false;
    }
    
    public boolean hasFocus()
    {
      RecyclerView localRecyclerView = this.mRecyclerView;
      boolean bool;
      if ((localRecyclerView != null) && (localRecyclerView.hasFocus())) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public void ignoreView(View paramView)
    {
      ViewParent localViewParent = paramView.getParent();
      RecyclerView localRecyclerView = this.mRecyclerView;
      if ((localViewParent == localRecyclerView) && (localRecyclerView.indexOfChild(paramView) != -1))
      {
        paramView = RecyclerView.getChildViewHolderInt(paramView);
        paramView.addFlags(128);
        this.mRecyclerView.mViewInfoStore.q(paramView);
        return;
      }
      paramView = new StringBuilder();
      paramView.append("View should be fully attached to be ignored");
      paramView.append(this.mRecyclerView.exceptionLabel());
      throw new IllegalArgumentException(paramView.toString());
    }
    
    public boolean isAttachedToWindow()
    {
      return this.mIsAttachedToWindow;
    }
    
    public boolean isAutoMeasureEnabled()
    {
      return this.mAutoMeasure;
    }
    
    public boolean isFocused()
    {
      RecyclerView localRecyclerView = this.mRecyclerView;
      boolean bool;
      if ((localRecyclerView != null) && (localRecyclerView.isFocused())) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public final boolean isItemPrefetchEnabled()
    {
      return this.mItemPrefetchEnabled;
    }
    
    public boolean isLayoutHierarchical(RecyclerView.v paramv, RecyclerView.z paramz)
    {
      return false;
    }
    
    public boolean isMeasurementCacheEnabled()
    {
      return this.mMeasurementCacheEnabled;
    }
    
    public boolean isSmoothScrolling()
    {
      RecyclerView.y localy = this.mSmoothScroller;
      boolean bool;
      if ((localy != null) && (localy.isRunning())) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public boolean isViewPartiallyVisible(View paramView, boolean paramBoolean1, boolean paramBoolean2)
    {
      if ((this.mHorizontalBoundCheck.b(paramView, 24579)) && (this.mVerticalBoundCheck.b(paramView, 24579))) {
        paramBoolean2 = true;
      } else {
        paramBoolean2 = false;
      }
      if (paramBoolean1) {
        return paramBoolean2;
      }
      return paramBoolean2 ^ true;
    }
    
    public void layoutDecorated(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      Rect localRect = ((RecyclerView.p)paramView.getLayoutParams()).mDecorInsets;
      paramView.layout(paramInt1 + localRect.left, paramInt2 + localRect.top, paramInt3 - localRect.right, paramInt4 - localRect.bottom);
    }
    
    public void layoutDecoratedWithMargins(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      RecyclerView.p localp = (RecyclerView.p)paramView.getLayoutParams();
      Rect localRect = localp.mDecorInsets;
      paramView.layout(paramInt1 + localRect.left + localp.leftMargin, paramInt2 + localRect.top + localp.topMargin, paramInt3 - localRect.right - localp.rightMargin, paramInt4 - localRect.bottom - localp.bottomMargin);
    }
    
    public void measureChild(View paramView, int paramInt1, int paramInt2)
    {
      RecyclerView.p localp = (RecyclerView.p)paramView.getLayoutParams();
      Rect localRect = this.mRecyclerView.getItemDecorInsetsForChild(paramView);
      int i = localRect.left;
      int j = localRect.right;
      int k = localRect.top;
      int m = localRect.bottom;
      paramInt1 = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + (paramInt1 + (i + j)), localp.width, canScrollHorizontally());
      paramInt2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + (paramInt2 + (k + m)), localp.height, canScrollVertically());
      if (shouldMeasureChild(paramView, paramInt1, paramInt2, localp)) {
        paramView.measure(paramInt1, paramInt2);
      }
    }
    
    public void measureChildWithMargins(View paramView, int paramInt1, int paramInt2)
    {
      RecyclerView.p localp = (RecyclerView.p)paramView.getLayoutParams();
      Rect localRect = this.mRecyclerView.getItemDecorInsetsForChild(paramView);
      int i = localRect.left;
      int j = localRect.right;
      int k = localRect.top;
      int m = localRect.bottom;
      paramInt1 = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + localp.leftMargin + localp.rightMargin + (paramInt1 + (i + j)), localp.width, canScrollHorizontally());
      paramInt2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + localp.topMargin + localp.bottomMargin + (paramInt2 + (k + m)), localp.height, canScrollVertically());
      if (shouldMeasureChild(paramView, paramInt1, paramInt2, localp)) {
        paramView.measure(paramInt1, paramInt2);
      }
    }
    
    public void moveView(int paramInt1, int paramInt2)
    {
      Object localObject = getChildAt(paramInt1);
      if (localObject != null)
      {
        detachViewAt(paramInt1);
        attachView((View)localObject, paramInt2);
        return;
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Cannot move a child from non-existing index:");
      ((StringBuilder)localObject).append(paramInt1);
      ((StringBuilder)localObject).append(this.mRecyclerView.toString());
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    }
    
    public void offsetChildrenHorizontal(int paramInt)
    {
      RecyclerView localRecyclerView = this.mRecyclerView;
      if (localRecyclerView != null) {
        localRecyclerView.offsetChildrenHorizontal(paramInt);
      }
    }
    
    public void offsetChildrenVertical(int paramInt)
    {
      RecyclerView localRecyclerView = this.mRecyclerView;
      if (localRecyclerView != null) {
        localRecyclerView.offsetChildrenVertical(paramInt);
      }
    }
    
    public void onAdapterChanged(RecyclerView.g paramg1, RecyclerView.g paramg2) {}
    
    public boolean onAddFocusables(RecyclerView paramRecyclerView, ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
    {
      return false;
    }
    
    public void onAttachedToWindow(RecyclerView paramRecyclerView) {}
    
    @Deprecated
    public void onDetachedFromWindow(RecyclerView paramRecyclerView) {}
    
    public void onDetachedFromWindow(RecyclerView paramRecyclerView, RecyclerView.v paramv)
    {
      onDetachedFromWindow(paramRecyclerView);
    }
    
    public View onFocusSearchFailed(View paramView, int paramInt, RecyclerView.v paramv, RecyclerView.z paramz)
    {
      return null;
    }
    
    public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
    {
      RecyclerView localRecyclerView = this.mRecyclerView;
      onInitializeAccessibilityEvent(localRecyclerView.mRecycler, localRecyclerView.mState, paramAccessibilityEvent);
    }
    
    public void onInitializeAccessibilityEvent(RecyclerView.v paramv, RecyclerView.z paramz, AccessibilityEvent paramAccessibilityEvent)
    {
      paramv = this.mRecyclerView;
      if ((paramv != null) && (paramAccessibilityEvent != null))
      {
        boolean bool1 = true;
        boolean bool2 = bool1;
        if (!paramv.canScrollVertically(1))
        {
          bool2 = bool1;
          if (!this.mRecyclerView.canScrollVertically(-1))
          {
            bool2 = bool1;
            if (!this.mRecyclerView.canScrollHorizontally(-1)) {
              if (this.mRecyclerView.canScrollHorizontally(1)) {
                bool2 = bool1;
              } else {
                bool2 = false;
              }
            }
          }
        }
        paramAccessibilityEvent.setScrollable(bool2);
        paramv = this.mRecyclerView.mAdapter;
        if (paramv != null) {
          paramAccessibilityEvent.setItemCount(paramv.getItemCount());
        }
      }
    }
    
    void onInitializeAccessibilityNodeInfo(androidx.core.view.accessibility.g paramg)
    {
      RecyclerView localRecyclerView = this.mRecyclerView;
      onInitializeAccessibilityNodeInfo(localRecyclerView.mRecycler, localRecyclerView.mState, paramg);
    }
    
    public void onInitializeAccessibilityNodeInfo(RecyclerView.v paramv, RecyclerView.z paramz, androidx.core.view.accessibility.g paramg)
    {
      if ((this.mRecyclerView.canScrollVertically(-1)) || (this.mRecyclerView.canScrollHorizontally(-1)))
      {
        paramg.a(8192);
        paramg.l0(true);
      }
      if ((this.mRecyclerView.canScrollVertically(1)) || (this.mRecyclerView.canScrollHorizontally(1)))
      {
        paramg.a(4096);
        paramg.l0(true);
      }
      paramg.T(g.b.b(getRowCountForAccessibility(paramv, paramz), getColumnCountForAccessibility(paramv, paramz), isLayoutHierarchical(paramv, paramz), getSelectionModeForAccessibility(paramv, paramz)));
    }
    
    void onInitializeAccessibilityNodeInfoForItem(View paramView, androidx.core.view.accessibility.g paramg)
    {
      Object localObject = RecyclerView.getChildViewHolderInt(paramView);
      if ((localObject != null) && (!((RecyclerView.c0)localObject).isRemoved()) && (!this.mChildHelper.n(((RecyclerView.c0)localObject).itemView)))
      {
        localObject = this.mRecyclerView;
        onInitializeAccessibilityNodeInfoForItem(((RecyclerView)localObject).mRecycler, ((RecyclerView)localObject).mState, paramView, paramg);
      }
    }
    
    public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.v paramv, RecyclerView.z paramz, View paramView, androidx.core.view.accessibility.g paramg)
    {
      boolean bool = canScrollVertically();
      int i = 0;
      int j;
      if (bool) {
        j = getPosition(paramView);
      } else {
        j = 0;
      }
      if (canScrollHorizontally()) {
        i = getPosition(paramView);
      }
      paramg.U(g.c.f(j, 1, i, 1, false, false));
    }
    
    public View onInterceptFocusSearch(View paramView, int paramInt)
    {
      return null;
    }
    
    public void onItemsAdded(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
    
    public void onItemsChanged(RecyclerView paramRecyclerView) {}
    
    public void onItemsMoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, int paramInt3) {}
    
    public void onItemsRemoved(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
    
    public void onItemsUpdated(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
    
    public void onItemsUpdated(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, Object paramObject)
    {
      onItemsUpdated(paramRecyclerView, paramInt1, paramInt2);
    }
    
    public void onLayoutChildren(RecyclerView.v paramv, RecyclerView.z paramz)
    {
      Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
    }
    
    public void onLayoutCompleted(RecyclerView.z paramz) {}
    
    public void onMeasure(RecyclerView.v paramv, RecyclerView.z paramz, int paramInt1, int paramInt2)
    {
      this.mRecyclerView.defaultOnMeasure(paramInt1, paramInt2);
    }
    
    @Deprecated
    public boolean onRequestChildFocus(RecyclerView paramRecyclerView, View paramView1, View paramView2)
    {
      boolean bool;
      if ((!isSmoothScrolling()) && (!paramRecyclerView.isComputingLayout())) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
    
    public boolean onRequestChildFocus(RecyclerView paramRecyclerView, RecyclerView.z paramz, View paramView1, View paramView2)
    {
      return onRequestChildFocus(paramRecyclerView, paramView1, paramView2);
    }
    
    public void onRestoreInstanceState(Parcelable paramParcelable) {}
    
    public Parcelable onSaveInstanceState()
    {
      return null;
    }
    
    public void onScrollStateChanged(int paramInt) {}
    
    void onSmoothScrollerStopped(RecyclerView.y paramy)
    {
      if (this.mSmoothScroller == paramy) {
        this.mSmoothScroller = null;
      }
    }
    
    boolean performAccessibilityAction(int paramInt, Bundle paramBundle)
    {
      RecyclerView localRecyclerView = this.mRecyclerView;
      return performAccessibilityAction(localRecyclerView.mRecycler, localRecyclerView.mState, paramInt, paramBundle);
    }
    
    public boolean performAccessibilityAction(RecyclerView.v paramv, RecyclerView.z paramz, int paramInt, Bundle paramBundle)
    {
      paramv = this.mRecyclerView;
      if (paramv == null) {
        return false;
      }
      if (paramInt != 4096)
      {
        if (paramInt != 8192)
        {
          paramInt = 0;
          i = paramInt;
          break label169;
        }
        if (paramv.canScrollVertically(-1)) {
          paramInt = -(getHeight() - getPaddingTop() - getPaddingBottom());
        } else {
          paramInt = 0;
        }
        i = paramInt;
        if (!this.mRecyclerView.canScrollHorizontally(-1)) {
          break label167;
        }
        i = -(getWidth() - getPaddingLeft() - getPaddingRight());
      }
      else
      {
        if (paramv.canScrollVertically(1)) {
          paramInt = getHeight() - getPaddingTop() - getPaddingBottom();
        } else {
          paramInt = 0;
        }
        i = paramInt;
        if (!this.mRecyclerView.canScrollHorizontally(1)) {
          break label167;
        }
        i = getWidth() - getPaddingLeft() - getPaddingRight();
      }
      int j = paramInt;
      paramInt = i;
      int i = j;
      break label169;
      label167:
      paramInt = 0;
      label169:
      if ((i == 0) && (paramInt == 0)) {
        return false;
      }
      this.mRecyclerView.smoothScrollBy(paramInt, i, null, -2147483648, true);
      return true;
    }
    
    boolean performAccessibilityActionForItem(View paramView, int paramInt, Bundle paramBundle)
    {
      RecyclerView localRecyclerView = this.mRecyclerView;
      return performAccessibilityActionForItem(localRecyclerView.mRecycler, localRecyclerView.mState, paramView, paramInt, paramBundle);
    }
    
    public boolean performAccessibilityActionForItem(RecyclerView.v paramv, RecyclerView.z paramz, View paramView, int paramInt, Bundle paramBundle)
    {
      return false;
    }
    
    public void postOnAnimation(Runnable paramRunnable)
    {
      RecyclerView localRecyclerView = this.mRecyclerView;
      if (localRecyclerView != null) {
        a0.d0(localRecyclerView, paramRunnable);
      }
    }
    
    public void removeAllViews()
    {
      for (int i = getChildCount() - 1; i >= 0; i--) {
        this.mChildHelper.q(i);
      }
    }
    
    public void removeAndRecycleAllViews(RecyclerView.v paramv)
    {
      for (int i = getChildCount() - 1; i >= 0; i--) {
        if (!RecyclerView.getChildViewHolderInt(getChildAt(i)).shouldIgnore()) {
          removeAndRecycleViewAt(i, paramv);
        }
      }
    }
    
    void removeAndRecycleScrapInt(RecyclerView.v paramv)
    {
      int i = paramv.j();
      for (int j = i - 1; j >= 0; j--)
      {
        View localView = paramv.n(j);
        RecyclerView.c0 localc0 = RecyclerView.getChildViewHolderInt(localView);
        if (!localc0.shouldIgnore())
        {
          localc0.setIsRecyclable(false);
          if (localc0.isTmpDetached()) {
            this.mRecyclerView.removeDetachedView(localView, false);
          }
          RecyclerView.l locall = this.mRecyclerView.mItemAnimator;
          if (locall != null) {
            locall.j(localc0);
          }
          localc0.setIsRecyclable(true);
          paramv.y(localView);
        }
      }
      paramv.e();
      if (i > 0) {
        this.mRecyclerView.invalidate();
      }
    }
    
    public void removeAndRecycleView(View paramView, RecyclerView.v paramv)
    {
      removeView(paramView);
      paramv.B(paramView);
    }
    
    public void removeAndRecycleViewAt(int paramInt, RecyclerView.v paramv)
    {
      View localView = getChildAt(paramInt);
      removeViewAt(paramInt);
      paramv.B(localView);
    }
    
    public boolean removeCallbacks(Runnable paramRunnable)
    {
      RecyclerView localRecyclerView = this.mRecyclerView;
      if (localRecyclerView != null) {
        return localRecyclerView.removeCallbacks(paramRunnable);
      }
      return false;
    }
    
    public void removeDetachedView(View paramView)
    {
      this.mRecyclerView.removeDetachedView(paramView, false);
    }
    
    public void removeView(View paramView)
    {
      this.mChildHelper.p(paramView);
    }
    
    public void removeViewAt(int paramInt)
    {
      if (getChildAt(paramInt) != null) {
        this.mChildHelper.q(paramInt);
      }
    }
    
    public boolean requestChildRectangleOnScreen(RecyclerView paramRecyclerView, View paramView, Rect paramRect, boolean paramBoolean)
    {
      return requestChildRectangleOnScreen(paramRecyclerView, paramView, paramRect, paramBoolean, false);
    }
    
    public boolean requestChildRectangleOnScreen(RecyclerView paramRecyclerView, View paramView, Rect paramRect, boolean paramBoolean1, boolean paramBoolean2)
    {
      paramView = getChildRectangleOnScreenScrollAmount(paramView, paramRect);
      int i = paramView[0];
      int j = paramView[1];
      if (((paramBoolean2) && (!isFocusedChildVisibleAfterScrolling(paramRecyclerView, i, j))) || ((i == 0) && (j == 0))) {
        return false;
      }
      if (paramBoolean1) {
        paramRecyclerView.scrollBy(i, j);
      } else {
        paramRecyclerView.smoothScrollBy(i, j);
      }
      return true;
    }
    
    public void requestLayout()
    {
      RecyclerView localRecyclerView = this.mRecyclerView;
      if (localRecyclerView != null) {
        localRecyclerView.requestLayout();
      }
    }
    
    public void requestSimpleAnimationsInNextLayout()
    {
      this.mRequestedSimpleAnimations = true;
    }
    
    public int scrollHorizontallyBy(int paramInt, RecyclerView.v paramv, RecyclerView.z paramz)
    {
      return 0;
    }
    
    public void scrollToPosition(int paramInt) {}
    
    public int scrollVerticallyBy(int paramInt, RecyclerView.v paramv, RecyclerView.z paramz)
    {
      return 0;
    }
    
    @Deprecated
    public void setAutoMeasureEnabled(boolean paramBoolean)
    {
      this.mAutoMeasure = paramBoolean;
    }
    
    void setExactMeasureSpecsFrom(RecyclerView paramRecyclerView)
    {
      setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(paramRecyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(paramRecyclerView.getHeight(), 1073741824));
    }
    
    public final void setItemPrefetchEnabled(boolean paramBoolean)
    {
      if (paramBoolean != this.mItemPrefetchEnabled)
      {
        this.mItemPrefetchEnabled = paramBoolean;
        this.mPrefetchMaxCountObserved = 0;
        RecyclerView localRecyclerView = this.mRecyclerView;
        if (localRecyclerView != null) {
          localRecyclerView.mRecycler.K();
        }
      }
    }
    
    void setMeasureSpecs(int paramInt1, int paramInt2)
    {
      this.mWidth = View.MeasureSpec.getSize(paramInt1);
      paramInt1 = View.MeasureSpec.getMode(paramInt1);
      this.mWidthMode = paramInt1;
      if ((paramInt1 == 0) && (!RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC)) {
        this.mWidth = 0;
      }
      this.mHeight = View.MeasureSpec.getSize(paramInt2);
      paramInt1 = View.MeasureSpec.getMode(paramInt2);
      this.mHeightMode = paramInt1;
      if ((paramInt1 == 0) && (!RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC)) {
        this.mHeight = 0;
      }
    }
    
    public void setMeasuredDimension(int paramInt1, int paramInt2)
    {
      this.mRecyclerView.setMeasuredDimension(paramInt1, paramInt2);
    }
    
    public void setMeasuredDimension(Rect paramRect, int paramInt1, int paramInt2)
    {
      int i = paramRect.width();
      int j = getPaddingLeft();
      int k = getPaddingRight();
      int m = paramRect.height();
      int n = getPaddingTop();
      int i1 = getPaddingBottom();
      setMeasuredDimension(chooseSize(paramInt1, i + j + k, getMinimumWidth()), chooseSize(paramInt2, m + n + i1, getMinimumHeight()));
    }
    
    void setMeasuredDimensionFromChildren(int paramInt1, int paramInt2)
    {
      int i = getChildCount();
      if (i == 0)
      {
        this.mRecyclerView.defaultOnMeasure(paramInt1, paramInt2);
        return;
      }
      int j = 0;
      int k = -2147483648;
      int m = 2147483647;
      int n = m;
      int i1 = -2147483648;
      while (j < i)
      {
        View localView = getChildAt(j);
        Rect localRect = this.mRecyclerView.mTempRect;
        getDecoratedBoundsWithMargins(localView, localRect);
        int i2 = localRect.left;
        int i3 = m;
        if (i2 < m) {
          i3 = i2;
        }
        i2 = localRect.right;
        m = k;
        if (i2 > k) {
          m = i2;
        }
        k = localRect.top;
        i2 = n;
        if (k < n) {
          i2 = k;
        }
        k = localRect.bottom;
        n = i1;
        if (k > i1) {
          n = k;
        }
        j++;
        k = m;
        i1 = n;
        m = i3;
        n = i2;
      }
      this.mRecyclerView.mTempRect.set(m, n, k, i1);
      setMeasuredDimension(this.mRecyclerView.mTempRect, paramInt1, paramInt2);
    }
    
    public void setMeasurementCacheEnabled(boolean paramBoolean)
    {
      this.mMeasurementCacheEnabled = paramBoolean;
    }
    
    void setRecyclerView(RecyclerView paramRecyclerView)
    {
      if (paramRecyclerView == null)
      {
        this.mRecyclerView = null;
        this.mChildHelper = null;
        this.mWidth = 0;
        this.mHeight = 0;
      }
      else
      {
        this.mRecyclerView = paramRecyclerView;
        this.mChildHelper = paramRecyclerView.mChildHelper;
        this.mWidth = paramRecyclerView.getWidth();
        this.mHeight = paramRecyclerView.getHeight();
      }
      this.mWidthMode = 1073741824;
      this.mHeightMode = 1073741824;
    }
    
    boolean shouldMeasureChild(View paramView, int paramInt1, int paramInt2, RecyclerView.p paramp)
    {
      boolean bool;
      if ((!paramView.isLayoutRequested()) && (this.mMeasurementCacheEnabled) && (isMeasurementUpToDate(paramView.getWidth(), paramInt1, paramp.width)) && (isMeasurementUpToDate(paramView.getHeight(), paramInt2, paramp.height))) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
    
    boolean shouldMeasureTwice()
    {
      return false;
    }
    
    boolean shouldReMeasureChild(View paramView, int paramInt1, int paramInt2, RecyclerView.p paramp)
    {
      boolean bool;
      if ((this.mMeasurementCacheEnabled) && (isMeasurementUpToDate(paramView.getMeasuredWidth(), paramInt1, paramp.width)) && (isMeasurementUpToDate(paramView.getMeasuredHeight(), paramInt2, paramp.height))) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
    
    public void smoothScrollToPosition(RecyclerView paramRecyclerView, RecyclerView.z paramz, int paramInt)
    {
      Log.e("RecyclerView", "You must override smoothScrollToPosition to support smooth scrolling");
    }
    
    public void startSmoothScroll(RecyclerView.y paramy)
    {
      RecyclerView.y localy = this.mSmoothScroller;
      if ((localy != null) && (paramy != localy) && (localy.isRunning())) {
        this.mSmoothScroller.stop();
      }
      this.mSmoothScroller = paramy;
      paramy.start(this.mRecyclerView, this);
    }
    
    public void stopIgnoringView(View paramView)
    {
      paramView = RecyclerView.getChildViewHolderInt(paramView);
      paramView.stopIgnoring();
      paramView.resetInternal();
      paramView.addFlags(4);
    }
    
    void stopSmoothScroller()
    {
      RecyclerView.y localy = this.mSmoothScroller;
      if (localy != null) {
        localy.stop();
      }
    }
    
    public boolean supportsPredictiveItemAnimations()
    {
      return false;
    }
    
    class a
      implements t.b
    {
      a() {}
      
      public View a(int paramInt)
      {
        return RecyclerView.o.this.getChildAt(paramInt);
      }
      
      public int b(View paramView)
      {
        RecyclerView.p localp = (RecyclerView.p)paramView.getLayoutParams();
        return RecyclerView.o.this.getDecoratedLeft(paramView) - localp.leftMargin;
      }
      
      public int c()
      {
        return RecyclerView.o.this.getPaddingLeft();
      }
      
      public int d()
      {
        return RecyclerView.o.this.getWidth() - RecyclerView.o.this.getPaddingRight();
      }
      
      public int e(View paramView)
      {
        RecyclerView.p localp = (RecyclerView.p)paramView.getLayoutParams();
        return RecyclerView.o.this.getDecoratedRight(paramView) + localp.rightMargin;
      }
    }
    
    class b
      implements t.b
    {
      b() {}
      
      public View a(int paramInt)
      {
        return RecyclerView.o.this.getChildAt(paramInt);
      }
      
      public int b(View paramView)
      {
        RecyclerView.p localp = (RecyclerView.p)paramView.getLayoutParams();
        return RecyclerView.o.this.getDecoratedTop(paramView) - localp.topMargin;
      }
      
      public int c()
      {
        return RecyclerView.o.this.getPaddingTop();
      }
      
      public int d()
      {
        return RecyclerView.o.this.getHeight() - RecyclerView.o.this.getPaddingBottom();
      }
      
      public int e(View paramView)
      {
        RecyclerView.p localp = (RecyclerView.p)paramView.getLayoutParams();
        return RecyclerView.o.this.getDecoratedBottom(paramView) + localp.bottomMargin;
      }
    }
    
    public static abstract interface c
    {
      public abstract void a(int paramInt1, int paramInt2);
    }
    
    public static class d
    {
      public int a;
      public int b;
      public boolean c;
      public boolean d;
    }
  }
  
  public static class p
    extends ViewGroup.MarginLayoutParams
  {
    final Rect mDecorInsets = new Rect();
    boolean mInsetsDirty = true;
    boolean mPendingInvalidate = false;
    RecyclerView.c0 mViewHolder;
    
    public p(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public p(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public p(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public p(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
    
    public p(p paramp)
    {
      super();
    }
    
    public int getViewAdapterPosition()
    {
      return this.mViewHolder.getAdapterPosition();
    }
    
    public int getViewLayoutPosition()
    {
      return this.mViewHolder.getLayoutPosition();
    }
    
    @Deprecated
    public int getViewPosition()
    {
      return this.mViewHolder.getPosition();
    }
    
    public boolean isItemChanged()
    {
      return this.mViewHolder.isUpdated();
    }
    
    public boolean isItemRemoved()
    {
      return this.mViewHolder.isRemoved();
    }
    
    public boolean isViewInvalid()
    {
      return this.mViewHolder.isInvalid();
    }
    
    public boolean viewNeedsUpdate()
    {
      return this.mViewHolder.needsUpdate();
    }
  }
  
  public static abstract interface q
  {
    public abstract void a(View paramView);
    
    public abstract void b(View paramView);
  }
  
  public static abstract class r
  {
    public abstract boolean a(int paramInt1, int paramInt2);
  }
  
  public static abstract interface s
  {
    public abstract void a(RecyclerView paramRecyclerView, MotionEvent paramMotionEvent);
    
    public abstract boolean b(RecyclerView paramRecyclerView, MotionEvent paramMotionEvent);
    
    public abstract void c(boolean paramBoolean);
  }
  
  public static abstract class t
  {
    public void onScrollStateChanged(RecyclerView paramRecyclerView, int paramInt) {}
    
    public void onScrolled(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
  }
  
  public static class u
  {
    SparseArray<a> a = new SparseArray();
    private int b = 0;
    
    private a g(int paramInt)
    {
      a locala1 = (a)this.a.get(paramInt);
      a locala2 = locala1;
      if (locala1 == null)
      {
        locala2 = new a();
        this.a.put(paramInt, locala2);
      }
      return locala2;
    }
    
    void a()
    {
      this.b += 1;
    }
    
    public void b()
    {
      for (int i = 0; i < this.a.size(); i++) {
        ((a)this.a.valueAt(i)).a.clear();
      }
    }
    
    void c()
    {
      this.b -= 1;
    }
    
    void d(int paramInt, long paramLong)
    {
      a locala = g(paramInt);
      locala.d = j(locala.d, paramLong);
    }
    
    void e(int paramInt, long paramLong)
    {
      a locala = g(paramInt);
      locala.c = j(locala.c, paramLong);
    }
    
    public RecyclerView.c0 f(int paramInt)
    {
      Object localObject = (a)this.a.get(paramInt);
      if ((localObject != null) && (!((a)localObject).a.isEmpty()))
      {
        localObject = ((a)localObject).a;
        for (paramInt = ((ArrayList)localObject).size() - 1; paramInt >= 0; paramInt--) {
          if (!((RecyclerView.c0)((ArrayList)localObject).get(paramInt)).isAttachedToTransitionOverlay()) {
            return (RecyclerView.c0)((ArrayList)localObject).remove(paramInt);
          }
        }
      }
      return null;
    }
    
    void h(RecyclerView.g paramg1, RecyclerView.g paramg2, boolean paramBoolean)
    {
      if (paramg1 != null) {
        c();
      }
      if ((!paramBoolean) && (this.b == 0)) {
        b();
      }
      if (paramg2 != null) {
        a();
      }
    }
    
    public void i(RecyclerView.c0 paramc0)
    {
      int i = paramc0.getItemViewType();
      ArrayList localArrayList = g(i).a;
      if (((a)this.a.get(i)).b <= localArrayList.size()) {
        return;
      }
      paramc0.resetInternal();
      localArrayList.add(paramc0);
    }
    
    long j(long paramLong1, long paramLong2)
    {
      if (paramLong1 == 0L) {
        return paramLong2;
      }
      return paramLong1 / 4L * 3L + paramLong2 / 4L;
    }
    
    boolean k(int paramInt, long paramLong1, long paramLong2)
    {
      long l = g(paramInt).d;
      boolean bool;
      if ((l != 0L) && (paramLong1 + l >= paramLong2)) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
    
    boolean l(int paramInt, long paramLong1, long paramLong2)
    {
      long l = g(paramInt).c;
      boolean bool;
      if ((l != 0L) && (paramLong1 + l >= paramLong2)) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
    
    static class a
    {
      final ArrayList<RecyclerView.c0> a = new ArrayList();
      int b = 5;
      long c = 0L;
      long d = 0L;
    }
  }
  
  public final class v
  {
    final ArrayList<RecyclerView.c0> a;
    ArrayList<RecyclerView.c0> b;
    final ArrayList<RecyclerView.c0> c;
    private final List<RecyclerView.c0> d;
    private int e;
    int f;
    RecyclerView.u g;
    
    public v()
    {
      this$1 = new ArrayList();
      this.a = RecyclerView.this;
      this.b = null;
      this.c = new ArrayList();
      this.d = Collections.unmodifiableList(RecyclerView.this);
      this.e = 2;
      this.f = 2;
    }
    
    private boolean H(RecyclerView.c0 paramc0, int paramInt1, int paramInt2, long paramLong)
    {
      paramc0.mOwnerRecyclerView = RecyclerView.this;
      int i = paramc0.getItemViewType();
      long l = RecyclerView.this.getNanoTime();
      if ((paramLong != 9223372036854775807L) && (!this.g.k(i, l, paramLong))) {
        return false;
      }
      RecyclerView.this.mAdapter.bindViewHolder(paramc0, paramInt1);
      paramLong = RecyclerView.this.getNanoTime();
      this.g.d(paramc0.getItemViewType(), paramLong - l);
      b(paramc0);
      if (RecyclerView.this.mState.e()) {
        paramc0.mPreLayoutPosition = paramInt2;
      }
      return true;
    }
    
    private void b(RecyclerView.c0 paramc0)
    {
      if (RecyclerView.this.isAccessibilityEnabled())
      {
        paramc0 = paramc0.itemView;
        if (a0.x(paramc0) == 0) {
          a0.w0(paramc0, 1);
        }
        Object localObject = RecyclerView.this.mAccessibilityDelegate;
        if (localObject == null) {
          return;
        }
        localObject = ((m)localObject).getItemDelegate();
        if ((localObject instanceof m.a)) {
          ((m.a)localObject).b(paramc0);
        }
        a0.l0(paramc0, (androidx.core.view.a)localObject);
      }
    }
    
    private void q(ViewGroup paramViewGroup, boolean paramBoolean)
    {
      for (int i = paramViewGroup.getChildCount() - 1; i >= 0; i--)
      {
        View localView = paramViewGroup.getChildAt(i);
        if ((localView instanceof ViewGroup)) {
          q((ViewGroup)localView, true);
        }
      }
      if (!paramBoolean) {
        return;
      }
      if (paramViewGroup.getVisibility() == 4)
      {
        paramViewGroup.setVisibility(0);
        paramViewGroup.setVisibility(4);
      }
      else
      {
        i = paramViewGroup.getVisibility();
        paramViewGroup.setVisibility(4);
        paramViewGroup.setVisibility(i);
      }
    }
    
    private void r(RecyclerView.c0 paramc0)
    {
      paramc0 = paramc0.itemView;
      if ((paramc0 instanceof ViewGroup)) {
        q((ViewGroup)paramc0, false);
      }
    }
    
    void A(int paramInt)
    {
      a((RecyclerView.c0)this.c.get(paramInt), true);
      this.c.remove(paramInt);
    }
    
    public void B(View paramView)
    {
      RecyclerView.c0 localc0 = RecyclerView.getChildViewHolderInt(paramView);
      if (localc0.isTmpDetached()) {
        RecyclerView.this.removeDetachedView(paramView, false);
      }
      if (localc0.isScrap()) {
        localc0.unScrap();
      } else if (localc0.wasReturnedFromScrap()) {
        localc0.clearReturnedFromScrapFlag();
      }
      C(localc0);
      if ((RecyclerView.this.mItemAnimator != null) && (!localc0.isRecyclable())) {
        RecyclerView.this.mItemAnimator.j(localc0);
      }
    }
    
    void C(RecyclerView.c0 paramc0)
    {
      boolean bool1 = paramc0.isScrap();
      boolean bool2 = false;
      int i = 0;
      int j = 1;
      if ((!bool1) && (paramc0.itemView.getParent() == null))
      {
        if (!paramc0.isTmpDetached())
        {
          if (!paramc0.shouldIgnore())
          {
            bool2 = paramc0.doesTransientStatePreventRecycling();
            localObject = RecyclerView.this.mAdapter;
            int k;
            if ((localObject != null) && (bool2) && (((RecyclerView.g)localObject).onFailedToRecycleView(paramc0))) {
              k = 1;
            } else {
              k = 0;
            }
            if ((k == 0) && (!paramc0.isRecyclable()))
            {
              j = 0;
              k = i;
              i = j;
            }
            else
            {
              if ((this.f > 0) && (!paramc0.hasAnyOfTheFlags(526)))
              {
                i = this.c.size();
                k = i;
                if (i >= this.f)
                {
                  k = i;
                  if (i > 0)
                  {
                    A(0);
                    k = i - 1;
                  }
                }
                i = k;
                if (RecyclerView.ALLOW_THREAD_GAP_WORK)
                {
                  i = k;
                  if (k > 0)
                  {
                    i = k;
                    if (!RecyclerView.this.mPrefetchRegistry.d(paramc0.mPosition))
                    {
                      k--;
                      while (k >= 0)
                      {
                        i = ((RecyclerView.c0)this.c.get(k)).mPosition;
                        if (!RecyclerView.this.mPrefetchRegistry.d(i)) {
                          break;
                        }
                        k--;
                      }
                      i = k + 1;
                    }
                  }
                }
                this.c.add(i, paramc0);
                k = 1;
              }
              else
              {
                k = 0;
              }
              if (k == 0)
              {
                a(paramc0, true);
                i = j;
              }
              else
              {
                i = 0;
              }
            }
            RecyclerView.this.mViewInfoStore.q(paramc0);
            if ((k == 0) && (i == 0) && (bool2)) {
              paramc0.mOwnerRecyclerView = null;
            }
            return;
          }
          paramc0 = new StringBuilder();
          paramc0.append("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.");
          paramc0.append(RecyclerView.this.exceptionLabel());
          throw new IllegalArgumentException(paramc0.toString());
        }
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Tmp detached view should be removed from RecyclerView before it can be recycled: ");
        ((StringBuilder)localObject).append(paramc0);
        ((StringBuilder)localObject).append(RecyclerView.this.exceptionLabel());
        throw new IllegalArgumentException(((StringBuilder)localObject).toString());
      }
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Scrapped or attached views may not be recycled. isScrap:");
      ((StringBuilder)localObject).append(paramc0.isScrap());
      ((StringBuilder)localObject).append(" isAttached:");
      if (paramc0.itemView.getParent() != null) {
        bool2 = true;
      }
      ((StringBuilder)localObject).append(bool2);
      ((StringBuilder)localObject).append(RecyclerView.this.exceptionLabel());
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    }
    
    void D(View paramView)
    {
      paramView = RecyclerView.getChildViewHolderInt(paramView);
      if ((!paramView.hasAnyOfTheFlags(12)) && (paramView.isUpdated()) && (!RecyclerView.this.canReuseUpdatedViewHolder(paramView)))
      {
        if (this.b == null) {
          this.b = new ArrayList();
        }
        paramView.setScrapContainer(this, true);
        this.b.add(paramView);
      }
      else
      {
        if ((paramView.isInvalid()) && (!paramView.isRemoved()) && (!RecyclerView.this.mAdapter.hasStableIds()))
        {
          paramView = new StringBuilder();
          paramView.append("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.");
          paramView.append(RecyclerView.this.exceptionLabel());
          throw new IllegalArgumentException(paramView.toString());
        }
        paramView.setScrapContainer(this, false);
        this.a.add(paramView);
      }
    }
    
    void E(RecyclerView.u paramu)
    {
      RecyclerView.u localu = this.g;
      if (localu != null) {
        localu.c();
      }
      this.g = paramu;
      if ((paramu != null) && (RecyclerView.this.getAdapter() != null)) {
        this.g.a();
      }
    }
    
    void F(RecyclerView.a0 parama0) {}
    
    public void G(int paramInt)
    {
      this.e = paramInt;
      K();
    }
    
    RecyclerView.c0 I(int paramInt, boolean paramBoolean, long paramLong)
    {
      if ((paramInt >= 0) && (paramInt < RecyclerView.this.mState.b()))
      {
        boolean bool1 = RecyclerView.this.mState.e();
        boolean bool2 = true;
        if (bool1)
        {
          localObject1 = h(paramInt);
          localObject2 = localObject1;
          if (localObject1 != null)
          {
            i = 1;
            break label70;
          }
        }
        else
        {
          localObject2 = null;
        }
        int i = 0;
        Object localObject1 = localObject2;
        label70:
        localObject2 = localObject1;
        int j = i;
        if (localObject1 == null)
        {
          localObject1 = m(paramInt, paramBoolean);
          localObject2 = localObject1;
          j = i;
          if (localObject1 != null) {
            if (!L((RecyclerView.c0)localObject1))
            {
              if (!paramBoolean)
              {
                ((RecyclerView.c0)localObject1).addFlags(4);
                if (((RecyclerView.c0)localObject1).isScrap())
                {
                  RecyclerView.this.removeDetachedView(((RecyclerView.c0)localObject1).itemView, false);
                  ((RecyclerView.c0)localObject1).unScrap();
                }
                else if (((RecyclerView.c0)localObject1).wasReturnedFromScrap())
                {
                  ((RecyclerView.c0)localObject1).clearReturnedFromScrapFlag();
                }
                C((RecyclerView.c0)localObject1);
              }
              localObject2 = null;
              j = i;
            }
            else
            {
              j = 1;
              localObject2 = localObject1;
            }
          }
        }
        localObject1 = localObject2;
        int k = j;
        if (localObject2 == null)
        {
          k = RecyclerView.this.mAdapterHelper.m(paramInt);
          if ((k >= 0) && (k < RecyclerView.this.mAdapter.getItemCount()))
          {
            int m = RecyclerView.this.mAdapter.getItemViewType(k);
            localObject1 = localObject2;
            i = j;
            if (RecyclerView.this.mAdapter.hasStableIds())
            {
              localObject2 = l(RecyclerView.this.mAdapter.getItemId(k), m, paramBoolean);
              localObject1 = localObject2;
              i = j;
              if (localObject2 != null)
              {
                ((RecyclerView.c0)localObject2).mPosition = k;
                i = 1;
                localObject1 = localObject2;
              }
            }
            localObject2 = localObject1;
            if (localObject1 == null)
            {
              localObject2 = i().f(m);
              if (localObject2 != null)
              {
                ((RecyclerView.c0)localObject2).resetInternal();
                if (RecyclerView.FORCE_INVALIDATE_DISPLAY_LIST) {
                  r((RecyclerView.c0)localObject2);
                }
              }
            }
            localObject1 = localObject2;
            k = i;
            if (localObject2 == null)
            {
              long l1 = RecyclerView.this.getNanoTime();
              if ((paramLong != 9223372036854775807L) && (!this.g.l(m, l1, paramLong))) {
                return null;
              }
              localObject2 = RecyclerView.this;
              localObject1 = ((RecyclerView)localObject2).mAdapter.createViewHolder((ViewGroup)localObject2, m);
              if (RecyclerView.ALLOW_THREAD_GAP_WORK)
              {
                localObject2 = RecyclerView.findNestedRecyclerView(((RecyclerView.c0)localObject1).itemView);
                if (localObject2 != null) {
                  ((RecyclerView.c0)localObject1).mNestedRecyclerView = new WeakReference(localObject2);
                }
              }
              long l2 = RecyclerView.this.getNanoTime();
              this.g.e(m, l2 - l1);
              break label584;
            }
          }
          else
          {
            localObject2 = new StringBuilder();
            ((StringBuilder)localObject2).append("Inconsistency detected. Invalid item position ");
            ((StringBuilder)localObject2).append(paramInt);
            ((StringBuilder)localObject2).append("(offset:");
            ((StringBuilder)localObject2).append(k);
            ((StringBuilder)localObject2).append(").state:");
            ((StringBuilder)localObject2).append(RecyclerView.this.mState.b());
            ((StringBuilder)localObject2).append(RecyclerView.this.exceptionLabel());
            throw new IndexOutOfBoundsException(((StringBuilder)localObject2).toString());
          }
        }
        i = k;
        label584:
        if ((i != 0) && (!RecyclerView.this.mState.e()) && (((RecyclerView.c0)localObject1).hasAnyOfTheFlags(8192)))
        {
          ((RecyclerView.c0)localObject1).setFlags(0, 8192);
          if (RecyclerView.this.mState.k)
          {
            j = RecyclerView.l.e((RecyclerView.c0)localObject1);
            localObject2 = RecyclerView.this;
            localObject2 = ((RecyclerView)localObject2).mItemAnimator.t(((RecyclerView)localObject2).mState, (RecyclerView.c0)localObject1, j | 0x1000, ((RecyclerView.c0)localObject1).getUnmodifiedPayloads());
            RecyclerView.this.recordAnimationInfoIfBouncedHiddenView((RecyclerView.c0)localObject1, (RecyclerView.l.c)localObject2);
          }
        }
        if ((RecyclerView.this.mState.e()) && (((RecyclerView.c0)localObject1).isBound())) {
          ((RecyclerView.c0)localObject1).mPreLayoutPosition = paramInt;
        } else {
          if ((!((RecyclerView.c0)localObject1).isBound()) || (((RecyclerView.c0)localObject1).needsUpdate()) || (((RecyclerView.c0)localObject1).isInvalid())) {
            break label749;
          }
        }
        paramBoolean = false;
        break label769;
        label749:
        paramBoolean = H((RecyclerView.c0)localObject1, RecyclerView.this.mAdapterHelper.m(paramInt), paramInt, paramLong);
        label769:
        localObject2 = ((RecyclerView.c0)localObject1).itemView.getLayoutParams();
        if (localObject2 == null)
        {
          localObject2 = (RecyclerView.p)RecyclerView.this.generateDefaultLayoutParams();
          ((RecyclerView.c0)localObject1).itemView.setLayoutParams((ViewGroup.LayoutParams)localObject2);
        }
        else if (!RecyclerView.this.checkLayoutParams((ViewGroup.LayoutParams)localObject2))
        {
          localObject2 = (RecyclerView.p)RecyclerView.this.generateLayoutParams((ViewGroup.LayoutParams)localObject2);
          ((RecyclerView.c0)localObject1).itemView.setLayoutParams((ViewGroup.LayoutParams)localObject2);
        }
        else
        {
          localObject2 = (RecyclerView.p)localObject2;
        }
        ((RecyclerView.p)localObject2).mViewHolder = ((RecyclerView.c0)localObject1);
        if ((i != 0) && (paramBoolean)) {
          paramBoolean = bool2;
        } else {
          paramBoolean = false;
        }
        ((RecyclerView.p)localObject2).mPendingInvalidate = paramBoolean;
        return localObject1;
      }
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("Invalid item position ");
      ((StringBuilder)localObject2).append(paramInt);
      ((StringBuilder)localObject2).append("(");
      ((StringBuilder)localObject2).append(paramInt);
      ((StringBuilder)localObject2).append("). Item count:");
      ((StringBuilder)localObject2).append(RecyclerView.this.mState.b());
      ((StringBuilder)localObject2).append(RecyclerView.this.exceptionLabel());
      throw new IndexOutOfBoundsException(((StringBuilder)localObject2).toString());
    }
    
    void J(RecyclerView.c0 paramc0)
    {
      if (paramc0.mInChangeScrap) {
        this.b.remove(paramc0);
      } else {
        this.a.remove(paramc0);
      }
      paramc0.mScrapContainer = null;
      paramc0.mInChangeScrap = false;
      paramc0.clearReturnedFromScrapFlag();
    }
    
    void K()
    {
      RecyclerView.o localo = RecyclerView.this.mLayout;
      if (localo != null) {
        i = localo.mPrefetchMaxCountObserved;
      } else {
        i = 0;
      }
      this.f = (this.e + i);
      for (int i = this.c.size() - 1; (i >= 0) && (this.c.size() > this.f); i--) {
        A(i);
      }
    }
    
    boolean L(RecyclerView.c0 paramc0)
    {
      if (paramc0.isRemoved()) {
        return RecyclerView.this.mState.e();
      }
      int i = paramc0.mPosition;
      if ((i >= 0) && (i < RecyclerView.this.mAdapter.getItemCount()))
      {
        boolean bool1 = RecyclerView.this.mState.e();
        boolean bool2 = false;
        if ((!bool1) && (RecyclerView.this.mAdapter.getItemViewType(paramc0.mPosition) != paramc0.getItemViewType())) {
          return false;
        }
        if (RecyclerView.this.mAdapter.hasStableIds())
        {
          if (paramc0.getItemId() == RecyclerView.this.mAdapter.getItemId(paramc0.mPosition)) {
            bool2 = true;
          }
          return bool2;
        }
        return true;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Inconsistency detected. Invalid view holder adapter position");
      localStringBuilder.append(paramc0);
      localStringBuilder.append(RecyclerView.this.exceptionLabel());
      throw new IndexOutOfBoundsException(localStringBuilder.toString());
    }
    
    void M(int paramInt1, int paramInt2)
    {
      for (int i = this.c.size() - 1; i >= 0; i--)
      {
        RecyclerView.c0 localc0 = (RecyclerView.c0)this.c.get(i);
        if (localc0 != null)
        {
          int j = localc0.mPosition;
          if ((j >= paramInt1) && (j < paramInt2 + paramInt1))
          {
            localc0.addFlags(2);
            A(i);
          }
        }
      }
    }
    
    void a(RecyclerView.c0 paramc0, boolean paramBoolean)
    {
      RecyclerView.clearNestedRecyclerViewIfNotNested(paramc0);
      View localView = paramc0.itemView;
      Object localObject = RecyclerView.this.mAccessibilityDelegate;
      if (localObject != null)
      {
        localObject = ((m)localObject).getItemDelegate();
        if ((localObject instanceof m.a)) {
          localObject = ((m.a)localObject).a(localView);
        } else {
          localObject = null;
        }
        a0.l0(localView, (androidx.core.view.a)localObject);
      }
      if (paramBoolean) {
        g(paramc0);
      }
      paramc0.mOwnerRecyclerView = null;
      i().i(paramc0);
    }
    
    public void c()
    {
      this.a.clear();
      z();
    }
    
    void d()
    {
      int i = this.c.size();
      int j = 0;
      for (int k = 0; k < i; k++) {
        ((RecyclerView.c0)this.c.get(k)).clearOldPosition();
      }
      i = this.a.size();
      for (k = 0; k < i; k++) {
        ((RecyclerView.c0)this.a.get(k)).clearOldPosition();
      }
      ArrayList localArrayList = this.b;
      if (localArrayList != null)
      {
        i = localArrayList.size();
        for (k = j; k < i; k++) {
          ((RecyclerView.c0)this.b.get(k)).clearOldPosition();
        }
      }
    }
    
    void e()
    {
      this.a.clear();
      ArrayList localArrayList = this.b;
      if (localArrayList != null) {
        localArrayList.clear();
      }
    }
    
    public int f(int paramInt)
    {
      if ((paramInt >= 0) && (paramInt < RecyclerView.this.mState.b()))
      {
        if (!RecyclerView.this.mState.e()) {
          return paramInt;
        }
        return RecyclerView.this.mAdapterHelper.m(paramInt);
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("invalid position ");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(". State item count is ");
      localStringBuilder.append(RecyclerView.this.mState.b());
      localStringBuilder.append(RecyclerView.this.exceptionLabel());
      throw new IndexOutOfBoundsException(localStringBuilder.toString());
    }
    
    void g(RecyclerView.c0 paramc0)
    {
      Object localObject = RecyclerView.this.mRecyclerListener;
      if (localObject != null) {
        ((RecyclerView.w)localObject).a(paramc0);
      }
      localObject = RecyclerView.this.mAdapter;
      if (localObject != null) {
        ((RecyclerView.g)localObject).onViewRecycled(paramc0);
      }
      localObject = RecyclerView.this;
      if (((RecyclerView)localObject).mState != null) {
        ((RecyclerView)localObject).mViewInfoStore.q(paramc0);
      }
    }
    
    RecyclerView.c0 h(int paramInt)
    {
      Object localObject = this.b;
      if (localObject != null)
      {
        int i = ((ArrayList)localObject).size();
        if (i != 0)
        {
          int j = 0;
          for (int k = 0; k < i; k++)
          {
            localObject = (RecyclerView.c0)this.b.get(k);
            if ((!((RecyclerView.c0)localObject).wasReturnedFromScrap()) && (((RecyclerView.c0)localObject).getLayoutPosition() == paramInt))
            {
              ((RecyclerView.c0)localObject).addFlags(32);
              return localObject;
            }
          }
          if (RecyclerView.this.mAdapter.hasStableIds())
          {
            paramInt = RecyclerView.this.mAdapterHelper.m(paramInt);
            if ((paramInt > 0) && (paramInt < RecyclerView.this.mAdapter.getItemCount()))
            {
              long l = RecyclerView.this.mAdapter.getItemId(paramInt);
              for (paramInt = j; paramInt < i; paramInt++)
              {
                localObject = (RecyclerView.c0)this.b.get(paramInt);
                if ((!((RecyclerView.c0)localObject).wasReturnedFromScrap()) && (((RecyclerView.c0)localObject).getItemId() == l))
                {
                  ((RecyclerView.c0)localObject).addFlags(32);
                  return localObject;
                }
              }
            }
          }
        }
      }
      return null;
    }
    
    RecyclerView.u i()
    {
      if (this.g == null) {
        this.g = new RecyclerView.u();
      }
      return this.g;
    }
    
    int j()
    {
      return this.a.size();
    }
    
    public List<RecyclerView.c0> k()
    {
      return this.d;
    }
    
    RecyclerView.c0 l(long paramLong, int paramInt, boolean paramBoolean)
    {
      RecyclerView.c0 localc0;
      for (int i = this.a.size() - 1; i >= 0; i--)
      {
        localc0 = (RecyclerView.c0)this.a.get(i);
        if ((localc0.getItemId() == paramLong) && (!localc0.wasReturnedFromScrap()))
        {
          if (paramInt == localc0.getItemViewType())
          {
            localc0.addFlags(32);
            if ((localc0.isRemoved()) && (!RecyclerView.this.mState.e())) {
              localc0.setFlags(2, 14);
            }
            return localc0;
          }
          if (!paramBoolean)
          {
            this.a.remove(i);
            RecyclerView.this.removeDetachedView(localc0.itemView, false);
            y(localc0.itemView);
          }
        }
      }
      for (i = this.c.size() - 1; i >= 0; i--)
      {
        localc0 = (RecyclerView.c0)this.c.get(i);
        if ((localc0.getItemId() == paramLong) && (!localc0.isAttachedToTransitionOverlay()))
        {
          if (paramInt == localc0.getItemViewType())
          {
            if (!paramBoolean) {
              this.c.remove(i);
            }
            return localc0;
          }
          if (!paramBoolean)
          {
            A(i);
            return null;
          }
        }
      }
      return null;
    }
    
    RecyclerView.c0 m(int paramInt, boolean paramBoolean)
    {
      int i = this.a.size();
      int j = 0;
      RecyclerView.c0 localc0;
      for (int k = 0; k < i; k++)
      {
        localc0 = (RecyclerView.c0)this.a.get(k);
        if ((!localc0.wasReturnedFromScrap()) && (localc0.getLayoutPosition() == paramInt) && (!localc0.isInvalid()) && ((RecyclerView.this.mState.h) || (!localc0.isRemoved())))
        {
          localc0.addFlags(32);
          return localc0;
        }
      }
      if (!paramBoolean)
      {
        Object localObject = RecyclerView.this.mChildHelper.e(paramInt);
        if (localObject != null)
        {
          localc0 = RecyclerView.getChildViewHolderInt((View)localObject);
          RecyclerView.this.mChildHelper.s((View)localObject);
          paramInt = RecyclerView.this.mChildHelper.m((View)localObject);
          if (paramInt != -1)
          {
            RecyclerView.this.mChildHelper.d(paramInt);
            D((View)localObject);
            localc0.addFlags(8224);
            return localc0;
          }
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("layout index should not be -1 after unhiding a view:");
          ((StringBuilder)localObject).append(localc0);
          ((StringBuilder)localObject).append(RecyclerView.this.exceptionLabel());
          throw new IllegalStateException(((StringBuilder)localObject).toString());
        }
      }
      i = this.c.size();
      for (k = j; k < i; k++)
      {
        localc0 = (RecyclerView.c0)this.c.get(k);
        if ((!localc0.isInvalid()) && (localc0.getLayoutPosition() == paramInt) && (!localc0.isAttachedToTransitionOverlay()))
        {
          if (!paramBoolean) {
            this.c.remove(k);
          }
          return localc0;
        }
      }
      return null;
    }
    
    View n(int paramInt)
    {
      return ((RecyclerView.c0)this.a.get(paramInt)).itemView;
    }
    
    public View o(int paramInt)
    {
      return p(paramInt, false);
    }
    
    View p(int paramInt, boolean paramBoolean)
    {
      return I(paramInt, paramBoolean, 9223372036854775807L).itemView;
    }
    
    void s()
    {
      int i = this.c.size();
      for (int j = 0; j < i; j++)
      {
        RecyclerView.p localp = (RecyclerView.p)((RecyclerView.c0)this.c.get(j)).itemView.getLayoutParams();
        if (localp != null) {
          localp.mInsetsDirty = true;
        }
      }
    }
    
    void t()
    {
      int i = this.c.size();
      for (int j = 0; j < i; j++)
      {
        localObject = (RecyclerView.c0)this.c.get(j);
        if (localObject != null)
        {
          ((RecyclerView.c0)localObject).addFlags(6);
          ((RecyclerView.c0)localObject).addChangePayload(null);
        }
      }
      Object localObject = RecyclerView.this.mAdapter;
      if ((localObject == null) || (!((RecyclerView.g)localObject).hasStableIds())) {
        z();
      }
    }
    
    void u(int paramInt1, int paramInt2)
    {
      int i = this.c.size();
      for (int j = 0; j < i; j++)
      {
        RecyclerView.c0 localc0 = (RecyclerView.c0)this.c.get(j);
        if ((localc0 != null) && (localc0.mPosition >= paramInt1)) {
          localc0.offsetPosition(paramInt2, true);
        }
      }
    }
    
    void v(int paramInt1, int paramInt2)
    {
      int i;
      int j;
      int k;
      if (paramInt1 < paramInt2)
      {
        i = -1;
        j = paramInt1;
        k = paramInt2;
      }
      else
      {
        i = 1;
        k = paramInt1;
        j = paramInt2;
      }
      int m = this.c.size();
      for (int n = 0; n < m; n++)
      {
        RecyclerView.c0 localc0 = (RecyclerView.c0)this.c.get(n);
        if (localc0 != null)
        {
          int i1 = localc0.mPosition;
          if ((i1 >= j) && (i1 <= k)) {
            if (i1 == paramInt1) {
              localc0.offsetPosition(paramInt2 - paramInt1, false);
            } else {
              localc0.offsetPosition(i, false);
            }
          }
        }
      }
    }
    
    void w(int paramInt1, int paramInt2, boolean paramBoolean)
    {
      for (int i = this.c.size() - 1; i >= 0; i--)
      {
        RecyclerView.c0 localc0 = (RecyclerView.c0)this.c.get(i);
        if (localc0 != null)
        {
          int j = localc0.mPosition;
          if (j >= paramInt1 + paramInt2)
          {
            localc0.offsetPosition(-paramInt2, paramBoolean);
          }
          else if (j >= paramInt1)
          {
            localc0.addFlags(8);
            A(i);
          }
        }
      }
    }
    
    void x(RecyclerView.g paramg1, RecyclerView.g paramg2, boolean paramBoolean)
    {
      c();
      i().h(paramg1, paramg2, paramBoolean);
    }
    
    void y(View paramView)
    {
      paramView = RecyclerView.getChildViewHolderInt(paramView);
      paramView.mScrapContainer = null;
      paramView.mInChangeScrap = false;
      paramView.clearReturnedFromScrapFlag();
      C(paramView);
    }
    
    void z()
    {
      for (int i = this.c.size() - 1; i >= 0; i--) {
        A(i);
      }
      this.c.clear();
      if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
        RecyclerView.this.mPrefetchRegistry.b();
      }
    }
  }
  
  public static abstract interface w
  {
    public abstract void a(RecyclerView.c0 paramc0);
  }
  
  private class x
    extends RecyclerView.i
  {
    x() {}
    
    void a()
    {
      if (RecyclerView.POST_UPDATES_ON_ANIMATION)
      {
        localRecyclerView = RecyclerView.this;
        if ((localRecyclerView.mHasFixedSize) && (localRecyclerView.mIsAttached))
        {
          a0.d0(localRecyclerView, localRecyclerView.mUpdateChildViewsRunnable);
          return;
        }
      }
      RecyclerView localRecyclerView = RecyclerView.this;
      localRecyclerView.mAdapterUpdateDuringMeasure = true;
      localRecyclerView.requestLayout();
    }
    
    public void onChanged()
    {
      RecyclerView.this.assertNotInLayoutOrScroll(null);
      RecyclerView localRecyclerView = RecyclerView.this;
      localRecyclerView.mState.g = true;
      localRecyclerView.processDataSetCompletelyChanged(true);
      if (!RecyclerView.this.mAdapterHelper.p()) {
        RecyclerView.this.requestLayout();
      }
    }
    
    public void onItemRangeChanged(int paramInt1, int paramInt2, Object paramObject)
    {
      RecyclerView.this.assertNotInLayoutOrScroll(null);
      if (RecyclerView.this.mAdapterHelper.r(paramInt1, paramInt2, paramObject)) {
        a();
      }
    }
    
    public void onItemRangeInserted(int paramInt1, int paramInt2)
    {
      RecyclerView.this.assertNotInLayoutOrScroll(null);
      if (RecyclerView.this.mAdapterHelper.s(paramInt1, paramInt2)) {
        a();
      }
    }
    
    public void onItemRangeMoved(int paramInt1, int paramInt2, int paramInt3)
    {
      RecyclerView.this.assertNotInLayoutOrScroll(null);
      if (RecyclerView.this.mAdapterHelper.t(paramInt1, paramInt2, paramInt3)) {
        a();
      }
    }
    
    public void onItemRangeRemoved(int paramInt1, int paramInt2)
    {
      RecyclerView.this.assertNotInLayoutOrScroll(null);
      if (RecyclerView.this.mAdapterHelper.u(paramInt1, paramInt2)) {
        a();
      }
    }
  }
  
  public static abstract class y
  {
    private RecyclerView.o mLayoutManager;
    private boolean mPendingInitialRun;
    private RecyclerView mRecyclerView;
    private final a mRecyclingAction = new a(0, 0);
    private boolean mRunning;
    private boolean mStarted;
    private int mTargetPosition = -1;
    private View mTargetView;
    
    public PointF computeScrollVectorForPosition(int paramInt)
    {
      Object localObject = getLayoutManager();
      if ((localObject instanceof b)) {
        return ((b)localObject).computeScrollVectorForPosition(paramInt);
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("You should override computeScrollVectorForPosition when the LayoutManager does not implement ");
      ((StringBuilder)localObject).append(b.class.getCanonicalName());
      Log.w("RecyclerView", ((StringBuilder)localObject).toString());
      return null;
    }
    
    public View findViewByPosition(int paramInt)
    {
      return this.mRecyclerView.mLayout.findViewByPosition(paramInt);
    }
    
    public int getChildCount()
    {
      return this.mRecyclerView.mLayout.getChildCount();
    }
    
    public int getChildPosition(View paramView)
    {
      return this.mRecyclerView.getChildLayoutPosition(paramView);
    }
    
    public RecyclerView.o getLayoutManager()
    {
      return this.mLayoutManager;
    }
    
    public int getTargetPosition()
    {
      return this.mTargetPosition;
    }
    
    @Deprecated
    public void instantScrollToPosition(int paramInt)
    {
      this.mRecyclerView.scrollToPosition(paramInt);
    }
    
    public boolean isPendingInitialRun()
    {
      return this.mPendingInitialRun;
    }
    
    public boolean isRunning()
    {
      return this.mRunning;
    }
    
    protected void normalize(PointF paramPointF)
    {
      float f1 = paramPointF.x;
      float f2 = paramPointF.y;
      f2 = (float)Math.sqrt(f1 * f1 + f2 * f2);
      paramPointF.x /= f2;
      paramPointF.y /= f2;
    }
    
    void onAnimation(int paramInt1, int paramInt2)
    {
      RecyclerView localRecyclerView = this.mRecyclerView;
      if ((this.mTargetPosition == -1) || (localRecyclerView == null)) {
        stop();
      }
      if ((this.mPendingInitialRun) && (this.mTargetView == null) && (this.mLayoutManager != null))
      {
        localObject = computeScrollVectorForPosition(this.mTargetPosition);
        if (localObject != null)
        {
          float f = ((PointF)localObject).x;
          if ((f != 0.0F) || (((PointF)localObject).y != 0.0F)) {
            localRecyclerView.scrollStep((int)Math.signum(f), (int)Math.signum(((PointF)localObject).y), null);
          }
        }
      }
      this.mPendingInitialRun = false;
      Object localObject = this.mTargetView;
      if (localObject != null) {
        if (getChildPosition((View)localObject) == this.mTargetPosition)
        {
          onTargetFound(this.mTargetView, localRecyclerView.mState, this.mRecyclingAction);
          this.mRecyclingAction.c(localRecyclerView);
          stop();
        }
        else
        {
          Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
          this.mTargetView = null;
        }
      }
      if (this.mRunning)
      {
        onSeekTargetStep(paramInt1, paramInt2, localRecyclerView.mState, this.mRecyclingAction);
        boolean bool = this.mRecyclingAction.a();
        this.mRecyclingAction.c(localRecyclerView);
        if ((bool) && (this.mRunning))
        {
          this.mPendingInitialRun = true;
          localRecyclerView.mViewFlinger.e();
        }
      }
    }
    
    protected void onChildAttachedToWindow(View paramView)
    {
      if (getChildPosition(paramView) == getTargetPosition()) {
        this.mTargetView = paramView;
      }
    }
    
    protected abstract void onSeekTargetStep(int paramInt1, int paramInt2, RecyclerView.z paramz, a parama);
    
    protected abstract void onStart();
    
    protected abstract void onStop();
    
    protected abstract void onTargetFound(View paramView, RecyclerView.z paramz, a parama);
    
    public void setTargetPosition(int paramInt)
    {
      this.mTargetPosition = paramInt;
    }
    
    void start(RecyclerView paramRecyclerView, RecyclerView.o paramo)
    {
      paramRecyclerView.mViewFlinger.g();
      if (this.mStarted)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("An instance of ");
        localStringBuilder.append(getClass().getSimpleName());
        localStringBuilder.append(" was started more than once. Each instance of");
        localStringBuilder.append(getClass().getSimpleName());
        localStringBuilder.append(" is intended to only be used once. You should create a new instance for each use.");
        Log.w("RecyclerView", localStringBuilder.toString());
      }
      this.mRecyclerView = paramRecyclerView;
      this.mLayoutManager = paramo;
      int i = this.mTargetPosition;
      if (i != -1)
      {
        paramRecyclerView.mState.a = i;
        this.mRunning = true;
        this.mPendingInitialRun = true;
        this.mTargetView = findViewByPosition(getTargetPosition());
        onStart();
        this.mRecyclerView.mViewFlinger.e();
        this.mStarted = true;
        return;
      }
      throw new IllegalArgumentException("Invalid target position");
    }
    
    protected final void stop()
    {
      if (!this.mRunning) {
        return;
      }
      this.mRunning = false;
      onStop();
      this.mRecyclerView.mState.a = -1;
      this.mTargetView = null;
      this.mTargetPosition = -1;
      this.mPendingInitialRun = false;
      this.mLayoutManager.onSmoothScrollerStopped(this);
      this.mLayoutManager = null;
      this.mRecyclerView = null;
    }
    
    public static class a
    {
      private int a;
      private int b;
      private int c;
      private int d = -1;
      private Interpolator e;
      private boolean f = false;
      private int g = 0;
      
      public a(int paramInt1, int paramInt2)
      {
        this(paramInt1, paramInt2, -2147483648, null);
      }
      
      public a(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator)
      {
        this.a = paramInt1;
        this.b = paramInt2;
        this.c = paramInt3;
        this.e = paramInterpolator;
      }
      
      private void e()
      {
        if ((this.e != null) && (this.c < 1)) {
          throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
        }
        if (this.c >= 1) {
          return;
        }
        throw new IllegalStateException("Scroll duration must be a positive number");
      }
      
      boolean a()
      {
        boolean bool;
        if (this.d >= 0) {
          bool = true;
        } else {
          bool = false;
        }
        return bool;
      }
      
      public void b(int paramInt)
      {
        this.d = paramInt;
      }
      
      void c(RecyclerView paramRecyclerView)
      {
        int i = this.d;
        if (i >= 0)
        {
          this.d = -1;
          paramRecyclerView.jumpToPositionForSmoothScroller(i);
          this.f = false;
          return;
        }
        if (this.f)
        {
          e();
          paramRecyclerView.mViewFlinger.f(this.a, this.b, this.c, this.e);
          i = this.g + 1;
          this.g = i;
          if (i > 10) {
            Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
          }
          this.f = false;
        }
        else
        {
          this.g = 0;
        }
      }
      
      public void d(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator)
      {
        this.a = paramInt1;
        this.b = paramInt2;
        this.c = paramInt3;
        this.e = paramInterpolator;
        this.f = true;
      }
    }
    
    public static abstract interface b
    {
      public abstract PointF computeScrollVectorForPosition(int paramInt);
    }
  }
  
  public static class z
  {
    int a = -1;
    private SparseArray<Object> b;
    int c = 0;
    int d = 0;
    int e = 1;
    int f = 0;
    boolean g = false;
    boolean h = false;
    boolean i = false;
    boolean j = false;
    boolean k = false;
    boolean l = false;
    int m;
    long n;
    int o;
    int p;
    int q;
    
    void a(int paramInt)
    {
      if ((this.e & paramInt) != 0) {
        return;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Layout state should be one of ");
      localStringBuilder.append(Integer.toBinaryString(paramInt));
      localStringBuilder.append(" but it is ");
      localStringBuilder.append(Integer.toBinaryString(this.e));
      throw new IllegalStateException(localStringBuilder.toString());
    }
    
    public int b()
    {
      int i1;
      if (this.h) {
        i1 = this.c - this.d;
      } else {
        i1 = this.f;
      }
      return i1;
    }
    
    public int c()
    {
      return this.a;
    }
    
    public boolean d()
    {
      boolean bool;
      if (this.a != -1) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public boolean e()
    {
      return this.h;
    }
    
    void f(RecyclerView.g paramg)
    {
      this.e = 1;
      this.f = paramg.getItemCount();
      this.h = false;
      this.i = false;
      this.j = false;
    }
    
    public boolean g()
    {
      return this.l;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("State{mTargetPosition=");
      localStringBuilder.append(this.a);
      localStringBuilder.append(", mData=");
      localStringBuilder.append(this.b);
      localStringBuilder.append(", mItemCount=");
      localStringBuilder.append(this.f);
      localStringBuilder.append(", mIsMeasuring=");
      localStringBuilder.append(this.j);
      localStringBuilder.append(", mPreviousLayoutItemCount=");
      localStringBuilder.append(this.c);
      localStringBuilder.append(", mDeletedInvisibleItemCountSincePreviousLayout=");
      localStringBuilder.append(this.d);
      localStringBuilder.append(", mStructureChanged=");
      localStringBuilder.append(this.g);
      localStringBuilder.append(", mInPreLayout=");
      localStringBuilder.append(this.h);
      localStringBuilder.append(", mRunSimpleAnimations=");
      localStringBuilder.append(this.k);
      localStringBuilder.append(", mRunPredictiveAnimations=");
      localStringBuilder.append(this.l);
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.recyclerview.widget.RecyclerView
 * JD-Core Version:    0.7.0.1
 */