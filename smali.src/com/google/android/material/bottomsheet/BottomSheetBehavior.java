package com.google.android.material.bottomsheet;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Insets;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout.c;
import androidx.coordinatorlayout.widget.CoordinatorLayout.f;
import androidx.core.view.a0;
import androidx.core.view.accessibility.g.a;
import androidx.core.view.accessibility.j;
import androidx.core.view.accessibility.j.a;
import androidx.core.view.h1;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.c;
import androidx.customview.widget.c.c;
import com.google.android.material.R.attr;
import com.google.android.material.R.dimen;
import com.google.android.material.R.style;
import com.google.android.material.R.styleable;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearanceModel.Builder;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import v.a;

public class BottomSheetBehavior<V extends View>
  extends CoordinatorLayout.c<V>
{
  private static final int CORNER_ANIMATION_DURATION = 500;
  private static final int DEF_STYLE_RES = R.style.Widget_Design_BottomSheet_Modal;
  private static final float HIDE_FRICTION = 0.1F;
  private static final float HIDE_THRESHOLD = 0.5F;
  public static final int PEEK_HEIGHT_AUTO = -1;
  public static final int SAVE_ALL = -1;
  public static final int SAVE_FIT_TO_CONTENTS = 2;
  public static final int SAVE_HIDEABLE = 4;
  public static final int SAVE_NONE = 0;
  public static final int SAVE_PEEK_HEIGHT = 1;
  public static final int SAVE_SKIP_COLLAPSED = 8;
  private static final int SIGNIFICANT_VEL_THRESHOLD = 500;
  public static final int STATE_COLLAPSED = 4;
  public static final int STATE_DRAGGING = 1;
  public static final int STATE_EXPANDED = 3;
  public static final int STATE_HALF_EXPANDED = 6;
  public static final int STATE_HIDDEN = 5;
  public static final int STATE_SETTLING = 2;
  private static final String TAG = "BottomSheetBehavior";
  int activePointerId;
  private final ArrayList<BottomSheetCallback> callbacks = new ArrayList();
  int collapsedOffset;
  private final c.c dragCallback = new c.c()
  {
    private boolean releasedLow(View paramAnonymousView)
    {
      int i = paramAnonymousView.getTop();
      paramAnonymousView = BottomSheetBehavior.this;
      boolean bool;
      if (i > (paramAnonymousView.parentHeight + paramAnonymousView.getExpandedOffset()) / 2) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public int clampViewPositionHorizontal(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      return paramAnonymousView.getLeft();
    }
    
    public int clampViewPositionVertical(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      int i = BottomSheetBehavior.this.getExpandedOffset();
      paramAnonymousView = BottomSheetBehavior.this;
      if (paramAnonymousView.hideable) {
        paramAnonymousInt2 = paramAnonymousView.parentHeight;
      } else {
        paramAnonymousInt2 = paramAnonymousView.collapsedOffset;
      }
      return a.b(paramAnonymousInt1, i, paramAnonymousInt2);
    }
    
    public int getViewVerticalDragRange(View paramAnonymousView)
    {
      paramAnonymousView = BottomSheetBehavior.this;
      if (paramAnonymousView.hideable) {
        return paramAnonymousView.parentHeight;
      }
      return paramAnonymousView.collapsedOffset;
    }
    
    public void onViewDragStateChanged(int paramAnonymousInt)
    {
      if ((paramAnonymousInt == 1) && (BottomSheetBehavior.this.draggable)) {
        BottomSheetBehavior.this.setStateInternal(1);
      }
    }
    
    public void onViewPositionChanged(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4)
    {
      BottomSheetBehavior.this.dispatchOnSlide(paramAnonymousInt2);
    }
    
    public void onViewReleased(View paramAnonymousView, float paramAnonymousFloat1, float paramAnonymousFloat2)
    {
      int i = 4;
      if (paramAnonymousFloat2 < 0.0F) {
        if (BottomSheetBehavior.this.fitToContents) {
          j = BottomSheetBehavior.this.fitToContentsOffset;
        }
      }
      BottomSheetBehavior localBottomSheetBehavior;
      for (;;)
      {
        i = 3;
        break label498;
        i = paramAnonymousView.getTop();
        localBottomSheetBehavior = BottomSheetBehavior.this;
        j = localBottomSheetBehavior.halfExpandedOffset;
        if (i > j) {
          break label305;
        }
        j = localBottomSheetBehavior.expandedOffset;
        continue;
        localBottomSheetBehavior = BottomSheetBehavior.this;
        if ((!localBottomSheetBehavior.hideable) || (!localBottomSheetBehavior.shouldHide(paramAnonymousView, paramAnonymousFloat2))) {
          break label218;
        }
        if (((Math.abs(paramAnonymousFloat1) < Math.abs(paramAnonymousFloat2)) && (paramAnonymousFloat2 > 500.0F)) || (releasedLow(paramAnonymousView)))
        {
          j = BottomSheetBehavior.this.parentHeight;
          i = 5;
          break label498;
        }
        if (BottomSheetBehavior.this.fitToContents)
        {
          j = BottomSheetBehavior.this.fitToContentsOffset;
        }
        else
        {
          if (Math.abs(paramAnonymousView.getTop() - BottomSheetBehavior.this.expandedOffset) >= Math.abs(paramAnonymousView.getTop() - BottomSheetBehavior.this.halfExpandedOffset)) {
            break;
          }
          j = BottomSheetBehavior.this.expandedOffset;
        }
      }
      int j = BottomSheetBehavior.this.halfExpandedOffset;
      break label305;
      label218:
      if ((paramAnonymousFloat2 != 0.0F) && (Math.abs(paramAnonymousFloat1) <= Math.abs(paramAnonymousFloat2)))
      {
        if (BottomSheetBehavior.this.fitToContents)
        {
          j = BottomSheetBehavior.this.collapsedOffset;
          break label498;
        }
        j = paramAnonymousView.getTop();
        if (Math.abs(j - BottomSheetBehavior.this.halfExpandedOffset) < Math.abs(j - BottomSheetBehavior.this.collapsedOffset)) {
          j = BottomSheetBehavior.this.halfExpandedOffset;
        }
      }
      for (;;)
      {
        label305:
        i = 6;
        break label498;
        j = BottomSheetBehavior.this.collapsedOffset;
        break label498;
        j = paramAnonymousView.getTop();
        if (BottomSheetBehavior.this.fitToContents)
        {
          if (Math.abs(j - BottomSheetBehavior.this.fitToContentsOffset) < Math.abs(j - BottomSheetBehavior.this.collapsedOffset))
          {
            j = BottomSheetBehavior.this.fitToContentsOffset;
            break;
          }
          j = BottomSheetBehavior.this.collapsedOffset;
          break label498;
        }
        localBottomSheetBehavior = BottomSheetBehavior.this;
        int k = localBottomSheetBehavior.halfExpandedOffset;
        if (j < k)
        {
          if (j < Math.abs(j - localBottomSheetBehavior.collapsedOffset))
          {
            j = BottomSheetBehavior.this.expandedOffset;
            break;
          }
          j = BottomSheetBehavior.this.halfExpandedOffset;
          continue;
        }
        if (Math.abs(j - k) >= Math.abs(j - BottomSheetBehavior.this.collapsedOffset)) {
          break label489;
        }
        j = BottomSheetBehavior.this.halfExpandedOffset;
      }
      label489:
      j = BottomSheetBehavior.this.collapsedOffset;
      label498:
      BottomSheetBehavior.this.startSettlingAnimation(paramAnonymousView, i, j, true);
    }
    
    public boolean tryCaptureView(View paramAnonymousView, int paramAnonymousInt)
    {
      Object localObject = BottomSheetBehavior.this;
      int i = ((BottomSheetBehavior)localObject).state;
      boolean bool = true;
      if (i == 1) {
        return false;
      }
      if (((BottomSheetBehavior)localObject).touchingScrollingChild) {
        return false;
      }
      if ((i == 3) && (((BottomSheetBehavior)localObject).activePointerId == paramAnonymousInt))
      {
        localObject = ((BottomSheetBehavior)localObject).nestedScrollingChildRef;
        if (localObject != null) {
          localObject = (View)((Reference)localObject).get();
        } else {
          localObject = null;
        }
        if ((localObject != null) && (((View)localObject).canScrollVertically(-1))) {
          return false;
        }
      }
      localObject = BottomSheetBehavior.this.viewRef;
      if ((localObject == null) || (((Reference)localObject).get() != paramAnonymousView)) {
        bool = false;
      }
      return bool;
    }
  };
  private boolean draggable = true;
  float elevation = -1.0F;
  int expandedOffset;
  private boolean fitToContents = true;
  int fitToContentsOffset;
  private boolean gestureInsetBottomIgnored;
  int halfExpandedOffset;
  float halfExpandedRatio = 0.5F;
  boolean hideable;
  private boolean ignoreEvents;
  private Map<View, Integer> importantForAccessibilityMap;
  private int initialY;
  private ValueAnimator interpolatorAnimator;
  private boolean isShapeExpanded;
  private int lastNestedScrollDy;
  private MaterialShapeDrawable materialShapeDrawable;
  private float maximumVelocity;
  private boolean nestedScrolled;
  WeakReference<View> nestedScrollingChildRef;
  int parentHeight;
  int parentWidth;
  private int peekHeight;
  private boolean peekHeightAuto;
  private int peekHeightMin;
  private int saveFlags = 0;
  private BottomSheetBehavior<V>.SettleRunnable settleRunnable = null;
  private ShapeAppearanceModel shapeAppearanceModelDefault;
  private boolean shapeThemingEnabled;
  private boolean skipCollapsed;
  int state = 4;
  boolean touchingScrollingChild;
  private boolean updateImportantForAccessibilityOnSiblings = false;
  private VelocityTracker velocityTracker;
  c viewDragHelper;
  WeakReference<V> viewRef;
  
  public BottomSheetBehavior() {}
  
  public BottomSheetBehavior(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.BottomSheetBehavior_Layout);
    this.shapeThemingEnabled = localTypedArray.hasValue(R.styleable.BottomSheetBehavior_Layout_shapeAppearance);
    int i = R.styleable.BottomSheetBehavior_Layout_backgroundTint;
    boolean bool = localTypedArray.hasValue(i);
    if (bool) {
      createMaterialShapeDrawable(paramContext, paramAttributeSet, bool, MaterialResources.getColorStateList(paramContext, localTypedArray, i));
    } else {
      createMaterialShapeDrawable(paramContext, paramAttributeSet, bool);
    }
    createShapeValueAnimator();
    this.elevation = localTypedArray.getDimension(R.styleable.BottomSheetBehavior_Layout_android_elevation, -1.0F);
    i = R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight;
    paramAttributeSet = localTypedArray.peekValue(i);
    if (paramAttributeSet != null)
    {
      int j = paramAttributeSet.data;
      if (j == -1)
      {
        setPeekHeight(j);
        break label200;
      }
    }
    setPeekHeight(localTypedArray.getDimensionPixelSize(i, -1));
    label200:
    setHideable(localTypedArray.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_hideable, false));
    setGestureInsetBottomIgnored(localTypedArray.getBoolean(R.styleable.BottomSheetBehavior_Layout_gestureInsetBottomIgnored, false));
    setFitToContents(localTypedArray.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_fitToContents, true));
    setSkipCollapsed(localTypedArray.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
    setDraggable(localTypedArray.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_draggable, true));
    setSaveFlags(localTypedArray.getInt(R.styleable.BottomSheetBehavior_Layout_behavior_saveFlags, 0));
    setHalfExpandedRatio(localTypedArray.getFloat(R.styleable.BottomSheetBehavior_Layout_behavior_halfExpandedRatio, 0.5F));
    i = R.styleable.BottomSheetBehavior_Layout_behavior_expandedOffset;
    paramAttributeSet = localTypedArray.peekValue(i);
    if ((paramAttributeSet != null) && (paramAttributeSet.type == 16)) {
      setExpandedOffset(paramAttributeSet.data);
    } else {
      setExpandedOffset(localTypedArray.getDimensionPixelOffset(i, 0));
    }
    localTypedArray.recycle();
    this.maximumVelocity = ViewConfiguration.get(paramContext).getScaledMaximumFlingVelocity();
  }
  
  private void addAccessibilityActionForState(V paramV, g.a parama, final int paramInt)
  {
    a0.h0(paramV, parama, null, new j()
    {
      public boolean perform(View paramAnonymousView, j.a paramAnonymousa)
      {
        BottomSheetBehavior.this.setState(paramInt);
        return true;
      }
    });
  }
  
  private void calculateCollapsedOffset()
  {
    int i = calculatePeekHeight();
    if (this.fitToContents) {
      this.collapsedOffset = Math.max(this.parentHeight - i, this.fitToContentsOffset);
    } else {
      this.collapsedOffset = (this.parentHeight - i);
    }
  }
  
  private void calculateHalfExpandedOffset()
  {
    this.halfExpandedOffset = ((int)(this.parentHeight * (1.0F - this.halfExpandedRatio)));
  }
  
  private int calculatePeekHeight()
  {
    if (this.peekHeightAuto) {
      return Math.max(this.peekHeightMin, this.parentHeight - this.parentWidth * 9 / 16);
    }
    return this.peekHeight;
  }
  
  private void createMaterialShapeDrawable(Context paramContext, AttributeSet paramAttributeSet, boolean paramBoolean)
  {
    createMaterialShapeDrawable(paramContext, paramAttributeSet, paramBoolean, null);
  }
  
  private void createMaterialShapeDrawable(Context paramContext, AttributeSet paramAttributeSet, boolean paramBoolean, ColorStateList paramColorStateList)
  {
    if (this.shapeThemingEnabled)
    {
      this.shapeAppearanceModelDefault = ShapeAppearanceModel.builder(paramContext, paramAttributeSet, R.attr.bottomSheetStyle, DEF_STYLE_RES).build();
      paramAttributeSet = new MaterialShapeDrawable(this.shapeAppearanceModelDefault);
      this.materialShapeDrawable = paramAttributeSet;
      paramAttributeSet.initializeElevationOverlay(paramContext);
      if ((paramBoolean) && (paramColorStateList != null))
      {
        this.materialShapeDrawable.setFillColor(paramColorStateList);
      }
      else
      {
        paramAttributeSet = new TypedValue();
        paramContext.getTheme().resolveAttribute(16842801, paramAttributeSet, true);
        this.materialShapeDrawable.setTint(paramAttributeSet.data);
      }
    }
  }
  
  private void createShapeValueAnimator()
  {
    ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
    this.interpolatorAnimator = localValueAnimator;
    localValueAnimator.setDuration(500L);
    this.interpolatorAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        float f = ((Float)paramAnonymousValueAnimator.getAnimatedValue()).floatValue();
        if (BottomSheetBehavior.this.materialShapeDrawable != null) {
          BottomSheetBehavior.this.materialShapeDrawable.setInterpolation(f);
        }
      }
    });
  }
  
  public static <V extends View> BottomSheetBehavior<V> from(V paramV)
  {
    paramV = paramV.getLayoutParams();
    if ((paramV instanceof CoordinatorLayout.f))
    {
      paramV = ((CoordinatorLayout.f)paramV).f();
      if ((paramV instanceof BottomSheetBehavior)) {
        return (BottomSheetBehavior)paramV;
      }
      throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
    }
    throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
  }
  
  private float getYVelocity()
  {
    VelocityTracker localVelocityTracker = this.velocityTracker;
    if (localVelocityTracker == null) {
      return 0.0F;
    }
    localVelocityTracker.computeCurrentVelocity(1000, this.maximumVelocity);
    return this.velocityTracker.getYVelocity(this.activePointerId);
  }
  
  private void reset()
  {
    this.activePointerId = -1;
    VelocityTracker localVelocityTracker = this.velocityTracker;
    if (localVelocityTracker != null)
    {
      localVelocityTracker.recycle();
      this.velocityTracker = null;
    }
  }
  
  private void restoreOptionalState(SavedState paramSavedState)
  {
    int i = this.saveFlags;
    if (i == 0) {
      return;
    }
    if ((i == -1) || ((i & 0x1) == 1)) {
      this.peekHeight = paramSavedState.peekHeight;
    }
    if ((i == -1) || ((i & 0x2) == 2)) {
      this.fitToContents = paramSavedState.fitToContents;
    }
    if ((i == -1) || ((i & 0x4) == 4)) {
      this.hideable = paramSavedState.hideable;
    }
    if ((i == -1) || ((i & 0x8) == 8)) {
      this.skipCollapsed = paramSavedState.skipCollapsed;
    }
  }
  
  private void setSystemGestureInsets(CoordinatorLayout paramCoordinatorLayout)
  {
    if ((Build.VERSION.SDK_INT >= 29) && (!isGestureInsetBottomIgnored()))
    {
      paramCoordinatorLayout = paramCoordinatorLayout.getRootWindowInsets();
      if (paramCoordinatorLayout != null)
      {
        int i = h1.a(paramCoordinatorLayout).bottom;
        this.peekHeight += i;
      }
    }
  }
  
  private void settleToStatePendingLayout(final int paramInt)
  {
    final View localView = (View)this.viewRef.get();
    if (localView == null) {
      return;
    }
    ViewParent localViewParent = localView.getParent();
    if ((localViewParent != null) && (localViewParent.isLayoutRequested()) && (a0.O(localView))) {
      localView.post(new Runnable()
      {
        public void run()
        {
          BottomSheetBehavior.this.settleToState(localView, paramInt);
        }
      });
    } else {
      settleToState(localView, paramInt);
    }
  }
  
  private void updateAccessibilityActions()
  {
    Object localObject = this.viewRef;
    if (localObject == null) {
      return;
    }
    localObject = (View)((Reference)localObject).get();
    if (localObject == null) {
      return;
    }
    a0.f0((View)localObject, 524288);
    a0.f0((View)localObject, 262144);
    a0.f0((View)localObject, 1048576);
    if ((this.hideable) && (this.state != 5)) {
      addAccessibilityActionForState((View)localObject, g.a.y, 5);
    }
    int i = this.state;
    int j = 6;
    if (i != 3)
    {
      if (i != 4)
      {
        if (i == 6)
        {
          addAccessibilityActionForState((View)localObject, g.a.x, 4);
          addAccessibilityActionForState((View)localObject, g.a.w, 3);
        }
      }
      else
      {
        if (this.fitToContents) {
          j = 3;
        }
        addAccessibilityActionForState((View)localObject, g.a.w, j);
      }
    }
    else
    {
      if (this.fitToContents) {
        j = 4;
      }
      addAccessibilityActionForState((View)localObject, g.a.x, j);
    }
  }
  
  private void updateDrawableForTargetState(int paramInt)
  {
    if (paramInt == 2) {
      return;
    }
    boolean bool;
    if (paramInt == 3) {
      bool = true;
    } else {
      bool = false;
    }
    if (this.isShapeExpanded != bool)
    {
      this.isShapeExpanded = bool;
      if (this.materialShapeDrawable != null)
      {
        ValueAnimator localValueAnimator = this.interpolatorAnimator;
        if (localValueAnimator != null) {
          if (localValueAnimator.isRunning())
          {
            this.interpolatorAnimator.reverse();
          }
          else
          {
            float f;
            if (bool) {
              f = 0.0F;
            } else {
              f = 1.0F;
            }
            this.interpolatorAnimator.setFloatValues(new float[] { 1.0F - f, f });
            this.interpolatorAnimator.start();
          }
        }
      }
    }
  }
  
  private void updateImportantForAccessibility(boolean paramBoolean)
  {
    Object localObject = this.viewRef;
    if (localObject == null) {
      return;
    }
    localObject = ((View)((Reference)localObject).get()).getParent();
    if (!(localObject instanceof CoordinatorLayout)) {
      return;
    }
    CoordinatorLayout localCoordinatorLayout = (CoordinatorLayout)localObject;
    int i = localCoordinatorLayout.getChildCount();
    if (paramBoolean) {
      if (this.importantForAccessibilityMap == null) {
        this.importantForAccessibilityMap = new HashMap(i);
      } else {
        return;
      }
    }
    for (int j = 0; j < i; j++)
    {
      localObject = localCoordinatorLayout.getChildAt(j);
      if (localObject != this.viewRef.get()) {
        if (paramBoolean)
        {
          this.importantForAccessibilityMap.put(localObject, Integer.valueOf(((View)localObject).getImportantForAccessibility()));
          if (this.updateImportantForAccessibilityOnSiblings) {
            a0.w0((View)localObject, 4);
          }
        }
        else if (this.updateImportantForAccessibilityOnSiblings)
        {
          Map localMap = this.importantForAccessibilityMap;
          if ((localMap != null) && (localMap.containsKey(localObject))) {
            a0.w0((View)localObject, ((Integer)this.importantForAccessibilityMap.get(localObject)).intValue());
          }
        }
      }
    }
    if (!paramBoolean) {
      this.importantForAccessibilityMap = null;
    }
  }
  
  public void addBottomSheetCallback(BottomSheetCallback paramBottomSheetCallback)
  {
    if (!this.callbacks.contains(paramBottomSheetCallback)) {
      this.callbacks.add(paramBottomSheetCallback);
    }
  }
  
  public void disableShapeAnimations()
  {
    this.interpolatorAnimator = null;
  }
  
  void dispatchOnSlide(int paramInt)
  {
    View localView = (View)this.viewRef.get();
    if ((localView != null) && (!this.callbacks.isEmpty()))
    {
      int i = this.collapsedOffset;
      float f1;
      float f2;
      if ((paramInt <= i) && (i != getExpandedOffset()))
      {
        i = this.collapsedOffset;
        f1 = i - paramInt;
        f2 = i - getExpandedOffset();
      }
      else
      {
        i = this.collapsedOffset;
        f1 = i - paramInt;
        f2 = this.parentHeight - i;
      }
      f1 /= f2;
      for (paramInt = 0; paramInt < this.callbacks.size(); paramInt++) {
        ((BottomSheetCallback)this.callbacks.get(paramInt)).onSlide(localView, f1);
      }
    }
  }
  
  View findScrollingChild(View paramView)
  {
    if (a0.Q(paramView)) {
      return paramView;
    }
    if ((paramView instanceof ViewGroup))
    {
      paramView = (ViewGroup)paramView;
      int i = 0;
      int j = paramView.getChildCount();
      while (i < j)
      {
        View localView = findScrollingChild(paramView.getChildAt(i));
        if (localView != null) {
          return localView;
        }
        i++;
      }
    }
    return null;
  }
  
  public int getExpandedOffset()
  {
    int i;
    if (this.fitToContents) {
      i = this.fitToContentsOffset;
    } else {
      i = this.expandedOffset;
    }
    return i;
  }
  
  public float getHalfExpandedRatio()
  {
    return this.halfExpandedRatio;
  }
  
  public int getPeekHeight()
  {
    int i;
    if (this.peekHeightAuto) {
      i = -1;
    } else {
      i = this.peekHeight;
    }
    return i;
  }
  
  int getPeekHeightMin()
  {
    return this.peekHeightMin;
  }
  
  public int getSaveFlags()
  {
    return this.saveFlags;
  }
  
  public boolean getSkipCollapsed()
  {
    return this.skipCollapsed;
  }
  
  public int getState()
  {
    return this.state;
  }
  
  public boolean isDraggable()
  {
    return this.draggable;
  }
  
  public boolean isFitToContents()
  {
    return this.fitToContents;
  }
  
  public boolean isGestureInsetBottomIgnored()
  {
    return this.gestureInsetBottomIgnored;
  }
  
  public boolean isHideable()
  {
    return this.hideable;
  }
  
  public void onAttachedToLayoutParams(CoordinatorLayout.f paramf)
  {
    super.onAttachedToLayoutParams(paramf);
    this.viewRef = null;
    this.viewDragHelper = null;
  }
  
  public void onDetachedFromLayoutParams()
  {
    super.onDetachedFromLayoutParams();
    this.viewRef = null;
    this.viewDragHelper = null;
  }
  
  public boolean onInterceptTouchEvent(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
  {
    boolean bool1 = paramV.isShown();
    boolean bool2 = false;
    if ((bool1) && (this.draggable))
    {
      int i = paramMotionEvent.getActionMasked();
      if (i == 0) {
        reset();
      }
      if (this.velocityTracker == null) {
        this.velocityTracker = VelocityTracker.obtain();
      }
      this.velocityTracker.addMovement(paramMotionEvent);
      Object localObject1 = null;
      if (i != 0)
      {
        if ((i == 1) || (i == 3))
        {
          this.touchingScrollingChild = false;
          this.activePointerId = -1;
          if (this.ignoreEvents)
          {
            this.ignoreEvents = false;
            return false;
          }
        }
      }
      else
      {
        int j = (int)paramMotionEvent.getX();
        this.initialY = ((int)paramMotionEvent.getY());
        if (this.state != 2)
        {
          localObject2 = this.nestedScrollingChildRef;
          if (localObject2 != null) {
            localObject2 = (View)((Reference)localObject2).get();
          } else {
            localObject2 = null;
          }
          if ((localObject2 != null) && (paramCoordinatorLayout.isPointInChildBounds((View)localObject2, j, this.initialY)))
          {
            this.activePointerId = paramMotionEvent.getPointerId(paramMotionEvent.getActionIndex());
            this.touchingScrollingChild = true;
          }
        }
        if ((this.activePointerId == -1) && (!paramCoordinatorLayout.isPointInChildBounds(paramV, j, this.initialY))) {
          bool1 = true;
        } else {
          bool1 = false;
        }
        this.ignoreEvents = bool1;
      }
      if (!this.ignoreEvents)
      {
        paramV = this.viewDragHelper;
        if ((paramV != null) && (paramV.H(paramMotionEvent))) {
          return true;
        }
      }
      Object localObject2 = this.nestedScrollingChildRef;
      paramV = localObject1;
      if (localObject2 != null) {
        paramV = (View)((Reference)localObject2).get();
      }
      bool1 = bool2;
      if (i == 2)
      {
        bool1 = bool2;
        if (paramV != null)
        {
          bool1 = bool2;
          if (!this.ignoreEvents)
          {
            bool1 = bool2;
            if (this.state != 1)
            {
              bool1 = bool2;
              if (!paramCoordinatorLayout.isPointInChildBounds(paramV, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY()))
              {
                bool1 = bool2;
                if (this.viewDragHelper != null)
                {
                  bool1 = bool2;
                  if (Math.abs(this.initialY - paramMotionEvent.getY()) > this.viewDragHelper.u()) {
                    bool1 = true;
                  }
                }
              }
            }
          }
        }
      }
      return bool1;
    }
    this.ignoreEvents = true;
    return false;
  }
  
  public boolean onLayoutChild(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt)
  {
    if ((a0.w(paramCoordinatorLayout)) && (!a0.w(paramV))) {
      paramV.setFitsSystemWindows(true);
    }
    if (this.viewRef == null)
    {
      this.peekHeightMin = paramCoordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
      setSystemGestureInsets(paramCoordinatorLayout);
      this.viewRef = new WeakReference(paramV);
      if (this.shapeThemingEnabled)
      {
        localMaterialShapeDrawable = this.materialShapeDrawable;
        if (localMaterialShapeDrawable != null) {
          a0.p0(paramV, localMaterialShapeDrawable);
        }
      }
      MaterialShapeDrawable localMaterialShapeDrawable = this.materialShapeDrawable;
      if (localMaterialShapeDrawable != null)
      {
        float f1 = this.elevation;
        float f2 = f1;
        if (f1 == -1.0F) {
          f2 = a0.u(paramV);
        }
        localMaterialShapeDrawable.setElevation(f2);
        boolean bool;
        if (this.state == 3) {
          bool = true;
        } else {
          bool = false;
        }
        this.isShapeExpanded = bool;
        localMaterialShapeDrawable = this.materialShapeDrawable;
        if (bool) {
          f2 = 0.0F;
        } else {
          f2 = 1.0F;
        }
        localMaterialShapeDrawable.setInterpolation(f2);
      }
      updateAccessibilityActions();
      if (a0.x(paramV) == 0) {
        a0.w0(paramV, 1);
      }
    }
    if (this.viewDragHelper == null) {
      this.viewDragHelper = c.m(paramCoordinatorLayout, this.dragCallback);
    }
    int i = paramV.getTop();
    paramCoordinatorLayout.onLayoutChild(paramV, paramInt);
    this.parentWidth = paramCoordinatorLayout.getWidth();
    paramInt = paramCoordinatorLayout.getHeight();
    this.parentHeight = paramInt;
    this.fitToContentsOffset = Math.max(0, paramInt - paramV.getHeight());
    calculateHalfExpandedOffset();
    calculateCollapsedOffset();
    paramInt = this.state;
    if (paramInt == 3) {
      a0.W(paramV, getExpandedOffset());
    } else if (paramInt == 6) {
      a0.W(paramV, this.halfExpandedOffset);
    } else if ((this.hideable) && (paramInt == 5)) {
      a0.W(paramV, this.parentHeight);
    } else if (paramInt == 4) {
      a0.W(paramV, this.collapsedOffset);
    } else if ((paramInt == 1) || (paramInt == 2)) {
      a0.W(paramV, i - paramV.getTop());
    }
    this.nestedScrollingChildRef = new WeakReference(findScrollingChild(paramV));
    return true;
  }
  
  public boolean onNestedPreFling(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, float paramFloat1, float paramFloat2)
  {
    WeakReference localWeakReference = this.nestedScrollingChildRef;
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (localWeakReference != null)
    {
      bool2 = bool1;
      if (paramView == localWeakReference.get()) {
        if (this.state == 3)
        {
          bool2 = bool1;
          if (!super.onNestedPreFling(paramCoordinatorLayout, paramV, paramView, paramFloat1, paramFloat2)) {}
        }
        else
        {
          bool2 = true;
        }
      }
    }
    return bool2;
  }
  
  public void onNestedPreScroll(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    if (paramInt3 == 1) {
      return;
    }
    paramCoordinatorLayout = this.nestedScrollingChildRef;
    if (paramCoordinatorLayout != null) {
      paramCoordinatorLayout = (View)paramCoordinatorLayout.get();
    } else {
      paramCoordinatorLayout = null;
    }
    if (paramView != paramCoordinatorLayout) {
      return;
    }
    paramInt1 = paramV.getTop();
    int i = paramInt1 - paramInt2;
    if (paramInt2 > 0)
    {
      if (i < getExpandedOffset())
      {
        paramInt1 -= getExpandedOffset();
        paramArrayOfInt[1] = paramInt1;
        a0.W(paramV, -paramInt1);
        setStateInternal(3);
      }
      else
      {
        if (!this.draggable) {
          return;
        }
        paramArrayOfInt[1] = paramInt2;
        a0.W(paramV, -paramInt2);
        setStateInternal(1);
      }
    }
    else if ((paramInt2 < 0) && (!paramView.canScrollVertically(-1)))
    {
      paramInt3 = this.collapsedOffset;
      if ((i > paramInt3) && (!this.hideable))
      {
        paramInt1 -= paramInt3;
        paramArrayOfInt[1] = paramInt1;
        a0.W(paramV, -paramInt1);
        setStateInternal(4);
      }
      else
      {
        if (!this.draggable) {
          return;
        }
        paramArrayOfInt[1] = paramInt2;
        a0.W(paramV, -paramInt2);
        setStateInternal(1);
      }
    }
    dispatchOnSlide(paramV.getTop());
    this.lastNestedScrollDy = paramInt2;
    this.nestedScrolled = true;
  }
  
  public void onNestedScroll(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int[] paramArrayOfInt) {}
  
  public void onRestoreInstanceState(CoordinatorLayout paramCoordinatorLayout, V paramV, Parcelable paramParcelable)
  {
    paramParcelable = (SavedState)paramParcelable;
    super.onRestoreInstanceState(paramCoordinatorLayout, paramV, paramParcelable.getSuperState());
    restoreOptionalState(paramParcelable);
    int i = paramParcelable.state;
    if ((i != 1) && (i != 2)) {
      this.state = i;
    } else {
      this.state = 4;
    }
  }
  
  public Parcelable onSaveInstanceState(CoordinatorLayout paramCoordinatorLayout, V paramV)
  {
    return new SavedState(super.onSaveInstanceState(paramCoordinatorLayout, paramV), this);
  }
  
  public boolean onStartNestedScroll(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView1, View paramView2, int paramInt1, int paramInt2)
  {
    boolean bool = false;
    this.lastNestedScrollDy = 0;
    this.nestedScrolled = false;
    if ((paramInt1 & 0x2) != 0) {
      bool = true;
    }
    return bool;
  }
  
  public void onStopNestedScroll(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, int paramInt)
  {
    paramInt = paramV.getTop();
    int i = getExpandedOffset();
    int j = 3;
    if (paramInt == i)
    {
      setStateInternal(3);
      return;
    }
    paramCoordinatorLayout = this.nestedScrollingChildRef;
    if ((paramCoordinatorLayout != null) && (paramView == paramCoordinatorLayout.get()) && (this.nestedScrolled))
    {
      if (this.lastNestedScrollDy > 0)
      {
        if (this.fitToContents)
        {
          paramInt = this.fitToContentsOffset;
          break label356;
        }
        i = paramV.getTop();
        paramInt = this.halfExpandedOffset;
        if (i <= paramInt)
        {
          paramInt = this.expandedOffset;
          break label356;
        }
      }
      else
      {
        if ((this.hideable) && (shouldHide(paramV, getYVelocity())))
        {
          paramInt = this.parentHeight;
          j = 5;
          break label356;
        }
        if (this.lastNestedScrollDy == 0)
        {
          i = paramV.getTop();
          if (this.fitToContents)
          {
            if (Math.abs(i - this.fitToContentsOffset) < Math.abs(i - this.collapsedOffset))
            {
              paramInt = this.fitToContentsOffset;
              break label356;
            }
            paramInt = this.collapsedOffset;
          }
          else
          {
            paramInt = this.halfExpandedOffset;
            if (i < paramInt)
            {
              if (i < Math.abs(i - this.collapsedOffset))
              {
                paramInt = this.expandedOffset;
                break label356;
              }
              paramInt = this.halfExpandedOffset;
              break label340;
            }
            if (Math.abs(i - paramInt) < Math.abs(i - this.collapsedOffset))
            {
              paramInt = this.halfExpandedOffset;
              break label340;
            }
            paramInt = this.collapsedOffset;
          }
        }
        else
        {
          if (!this.fitToContents) {
            break label305;
          }
        }
      }
      for (paramInt = this.collapsedOffset;; paramInt = this.collapsedOffset)
      {
        j = 4;
        break;
        label305:
        paramInt = paramV.getTop();
        if (Math.abs(paramInt - this.halfExpandedOffset) < Math.abs(paramInt - this.collapsedOffset))
        {
          paramInt = this.halfExpandedOffset;
          label340:
          j = 6;
          break;
        }
      }
      label356:
      startSettlingAnimation(paramV, j, paramInt, false);
      this.nestedScrolled = false;
    }
  }
  
  public boolean onTouchEvent(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
  {
    if (!paramV.isShown()) {
      return false;
    }
    int i = paramMotionEvent.getActionMasked();
    if ((this.state == 1) && (i == 0)) {
      return true;
    }
    paramCoordinatorLayout = this.viewDragHelper;
    if (paramCoordinatorLayout != null) {
      paramCoordinatorLayout.A(paramMotionEvent);
    }
    if (i == 0) {
      reset();
    }
    if (this.velocityTracker == null) {
      this.velocityTracker = VelocityTracker.obtain();
    }
    this.velocityTracker.addMovement(paramMotionEvent);
    if ((i == 2) && (!this.ignoreEvents) && (Math.abs(this.initialY - paramMotionEvent.getY()) > this.viewDragHelper.u())) {
      this.viewDragHelper.b(paramV, paramMotionEvent.getPointerId(paramMotionEvent.getActionIndex()));
    }
    return this.ignoreEvents ^ true;
  }
  
  public void removeBottomSheetCallback(BottomSheetCallback paramBottomSheetCallback)
  {
    this.callbacks.remove(paramBottomSheetCallback);
  }
  
  @Deprecated
  public void setBottomSheetCallback(BottomSheetCallback paramBottomSheetCallback)
  {
    Log.w("BottomSheetBehavior", "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks.");
    this.callbacks.clear();
    if (paramBottomSheetCallback != null) {
      this.callbacks.add(paramBottomSheetCallback);
    }
  }
  
  public void setDraggable(boolean paramBoolean)
  {
    this.draggable = paramBoolean;
  }
  
  public void setExpandedOffset(int paramInt)
  {
    if (paramInt >= 0)
    {
      this.expandedOffset = paramInt;
      return;
    }
    throw new IllegalArgumentException("offset must be greater than or equal to 0");
  }
  
  public void setFitToContents(boolean paramBoolean)
  {
    if (this.fitToContents == paramBoolean) {
      return;
    }
    this.fitToContents = paramBoolean;
    if (this.viewRef != null) {
      calculateCollapsedOffset();
    }
    int i;
    if ((this.fitToContents) && (this.state == 6)) {
      i = 3;
    } else {
      i = this.state;
    }
    setStateInternal(i);
    updateAccessibilityActions();
  }
  
  public void setGestureInsetBottomIgnored(boolean paramBoolean)
  {
    this.gestureInsetBottomIgnored = paramBoolean;
  }
  
  public void setHalfExpandedRatio(float paramFloat)
  {
    if ((paramFloat > 0.0F) && (paramFloat < 1.0F))
    {
      this.halfExpandedRatio = paramFloat;
      if (this.viewRef != null) {
        calculateHalfExpandedOffset();
      }
      return;
    }
    throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
  }
  
  public void setHideable(boolean paramBoolean)
  {
    if (this.hideable != paramBoolean)
    {
      this.hideable = paramBoolean;
      if ((!paramBoolean) && (this.state == 5)) {
        setState(4);
      }
      updateAccessibilityActions();
    }
  }
  
  public void setPeekHeight(int paramInt)
  {
    setPeekHeight(paramInt, false);
  }
  
  public final void setPeekHeight(int paramInt, boolean paramBoolean)
  {
    int i = 1;
    if (paramInt == -1)
    {
      if (!this.peekHeightAuto)
      {
        this.peekHeightAuto = true;
        paramInt = i;
        break label63;
      }
    }
    else {
      if ((this.peekHeightAuto) || (this.peekHeight != paramInt)) {
        break label47;
      }
    }
    paramInt = 0;
    break label63;
    label47:
    this.peekHeightAuto = false;
    this.peekHeight = Math.max(0, paramInt);
    paramInt = i;
    label63:
    if ((paramInt != 0) && (this.viewRef != null))
    {
      calculateCollapsedOffset();
      if (this.state == 4)
      {
        View localView = (View)this.viewRef.get();
        if (localView != null) {
          if (paramBoolean) {
            settleToStatePendingLayout(this.state);
          } else {
            localView.requestLayout();
          }
        }
      }
    }
  }
  
  public void setSaveFlags(int paramInt)
  {
    this.saveFlags = paramInt;
  }
  
  public void setSkipCollapsed(boolean paramBoolean)
  {
    this.skipCollapsed = paramBoolean;
  }
  
  public void setState(int paramInt)
  {
    if (paramInt == this.state) {
      return;
    }
    if (this.viewRef == null)
    {
      if ((paramInt == 4) || (paramInt == 3) || (paramInt == 6) || ((this.hideable) && (paramInt == 5))) {
        this.state = paramInt;
      }
      return;
    }
    settleToStatePendingLayout(paramInt);
  }
  
  void setStateInternal(int paramInt)
  {
    if (this.state == paramInt) {
      return;
    }
    this.state = paramInt;
    Object localObject = this.viewRef;
    if (localObject == null) {
      return;
    }
    localObject = (View)((Reference)localObject).get();
    if (localObject == null) {
      return;
    }
    int i = 0;
    if (paramInt == 3) {
      updateImportantForAccessibility(true);
    } else if ((paramInt == 6) || (paramInt == 5) || (paramInt == 4)) {
      updateImportantForAccessibility(false);
    }
    updateDrawableForTargetState(paramInt);
    while (i < this.callbacks.size())
    {
      ((BottomSheetCallback)this.callbacks.get(i)).onStateChanged((View)localObject, paramInt);
      i++;
    }
    updateAccessibilityActions();
  }
  
  public void setUpdateImportantForAccessibilityOnSiblings(boolean paramBoolean)
  {
    this.updateImportantForAccessibilityOnSiblings = paramBoolean;
  }
  
  void settleToState(View paramView, int paramInt)
  {
    int i;
    if (paramInt == 4)
    {
      i = this.collapsedOffset;
    }
    else if (paramInt == 6)
    {
      int j = this.halfExpandedOffset;
      if (this.fitToContents)
      {
        i = this.fitToContentsOffset;
        if (j <= i)
        {
          paramInt = 3;
          break label84;
        }
      }
      i = j;
    }
    else if (paramInt == 3)
    {
      i = getExpandedOffset();
    }
    else
    {
      if ((!this.hideable) || (paramInt != 5)) {
        break label93;
      }
      i = this.parentHeight;
    }
    label84:
    startSettlingAnimation(paramView, paramInt, i, false);
    return;
    label93:
    paramView = new StringBuilder();
    paramView.append("Illegal state argument: ");
    paramView.append(paramInt);
    throw new IllegalArgumentException(paramView.toString());
  }
  
  boolean shouldHide(View paramView, float paramFloat)
  {
    boolean bool1 = this.skipCollapsed;
    boolean bool2 = true;
    if (bool1) {
      return true;
    }
    if (paramView.getTop() < this.collapsedOffset) {
      return false;
    }
    int i = calculatePeekHeight();
    if (Math.abs(paramView.getTop() + paramFloat * 0.1F - this.collapsedOffset) / i <= 0.5F) {
      bool2 = false;
    }
    return bool2;
  }
  
  void startSettlingAnimation(View paramView, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean) {
      paramBoolean = this.viewDragHelper.G(paramView.getLeft(), paramInt2);
    } else {
      paramBoolean = this.viewDragHelper.I(paramView, paramView.getLeft(), paramInt2);
    }
    if (paramBoolean)
    {
      setStateInternal(2);
      updateDrawableForTargetState(paramInt1);
      if (this.settleRunnable == null) {
        this.settleRunnable = new SettleRunnable(paramView, paramInt1);
      }
      if (!this.settleRunnable.isPosted)
      {
        SettleRunnable localSettleRunnable = this.settleRunnable;
        localSettleRunnable.targetState = paramInt1;
        a0.d0(paramView, localSettleRunnable);
        SettleRunnable.access$102(this.settleRunnable, true);
      }
      else
      {
        this.settleRunnable.targetState = paramInt1;
      }
    }
    else
    {
      setStateInternal(paramInt1);
    }
  }
  
  public static abstract class BottomSheetCallback
  {
    public abstract void onSlide(View paramView, float paramFloat);
    
    public abstract void onStateChanged(View paramView, int paramInt);
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface SaveFlags {}
  
  protected static class SavedState
    extends AbsSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator()
    {
      public BottomSheetBehavior.SavedState createFromParcel(Parcel paramAnonymousParcel)
      {
        return new BottomSheetBehavior.SavedState(paramAnonymousParcel, null);
      }
      
      public BottomSheetBehavior.SavedState createFromParcel(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
      {
        return new BottomSheetBehavior.SavedState(paramAnonymousParcel, paramAnonymousClassLoader);
      }
      
      public BottomSheetBehavior.SavedState[] newArray(int paramAnonymousInt)
      {
        return new BottomSheetBehavior.SavedState[paramAnonymousInt];
      }
    };
    boolean fitToContents;
    boolean hideable;
    int peekHeight;
    boolean skipCollapsed;
    final int state;
    
    public SavedState(Parcel paramParcel)
    {
      this(paramParcel, null);
    }
    
    public SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      this.state = paramParcel.readInt();
      this.peekHeight = paramParcel.readInt();
      int i = paramParcel.readInt();
      boolean bool1 = false;
      if (i == 1) {
        bool2 = true;
      } else {
        bool2 = false;
      }
      this.fitToContents = bool2;
      if (paramParcel.readInt() == 1) {
        bool2 = true;
      } else {
        bool2 = false;
      }
      this.hideable = bool2;
      boolean bool2 = bool1;
      if (paramParcel.readInt() == 1) {
        bool2 = true;
      }
      this.skipCollapsed = bool2;
    }
    
    @Deprecated
    public SavedState(Parcelable paramParcelable, int paramInt)
    {
      super();
      this.state = paramInt;
    }
    
    public SavedState(Parcelable paramParcelable, BottomSheetBehavior<?> paramBottomSheetBehavior)
    {
      super();
      this.state = paramBottomSheetBehavior.state;
      this.peekHeight = paramBottomSheetBehavior.peekHeight;
      this.fitToContents = paramBottomSheetBehavior.fitToContents;
      this.hideable = paramBottomSheetBehavior.hideable;
      this.skipCollapsed = paramBottomSheetBehavior.skipCollapsed;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(this.state);
      paramParcel.writeInt(this.peekHeight);
      paramParcel.writeInt(this.fitToContents);
      paramParcel.writeInt(this.hideable);
      paramParcel.writeInt(this.skipCollapsed);
    }
  }
  
  private class SettleRunnable
    implements Runnable
  {
    private boolean isPosted;
    int targetState;
    private final View view;
    
    SettleRunnable(View paramView, int paramInt)
    {
      this.view = paramView;
      this.targetState = paramInt;
    }
    
    public void run()
    {
      c localc = BottomSheetBehavior.this.viewDragHelper;
      if ((localc != null) && (localc.k(true))) {
        a0.d0(this.view, this);
      } else {
        BottomSheetBehavior.this.setStateInternal(this.targetState);
      }
      this.isPosted = false;
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface State {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.bottomsheet.BottomSheetBehavior
 * JD-Core Version:    0.7.0.1
 */