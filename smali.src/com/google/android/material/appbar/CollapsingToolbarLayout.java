package com.google.android.material.appbar;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import androidx.appcompat.widget.Toolbar;
import androidx.core.util.c;
import androidx.core.view.a0;
import androidx.core.view.e1;
import androidx.core.view.u;
import com.google.android.material.R.id;
import com.google.android.material.R.style;
import com.google.android.material.R.styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.CollapsingTextHelper;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import d.i;

public class CollapsingToolbarLayout
  extends FrameLayout
{
  private static final int DEFAULT_SCRIM_ANIMATION_DURATION = 600;
  private static final int DEF_STYLE_RES = R.style.Widget_Design_CollapsingToolbar;
  final CollapsingTextHelper collapsingTextHelper;
  private boolean collapsingTitleEnabled;
  private Drawable contentScrim;
  int currentOffset;
  private boolean drawCollapsingTitle;
  private View dummyView;
  private int expandedMarginBottom;
  private int expandedMarginEnd;
  private int expandedMarginStart;
  private int expandedMarginTop;
  e1 lastInsets;
  private AppBarLayout.OnOffsetChangedListener onOffsetChangedListener;
  private boolean refreshToolbar = true;
  private int scrimAlpha;
  private long scrimAnimationDuration;
  private ValueAnimator scrimAnimator;
  private int scrimVisibleHeightTrigger = -1;
  private boolean scrimsAreShown;
  Drawable statusBarScrim;
  private final Rect tmpRect = new Rect();
  private Toolbar toolbar;
  private View toolbarDirectChild;
  private int toolbarId;
  
  public CollapsingToolbarLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CollapsingToolbarLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public CollapsingToolbarLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(MaterialThemeOverlay.wrap(paramContext, paramAttributeSet, paramInt, i), paramAttributeSet, paramInt);
    Context localContext = getContext();
    paramContext = new CollapsingTextHelper(this);
    this.collapsingTextHelper = paramContext;
    paramContext.setTextSizeInterpolator(AnimationUtils.DECELERATE_INTERPOLATOR);
    paramAttributeSet = ThemeEnforcement.obtainStyledAttributes(localContext, paramAttributeSet, R.styleable.CollapsingToolbarLayout, paramInt, i, new int[0]);
    paramContext.setExpandedTextGravity(paramAttributeSet.getInt(R.styleable.CollapsingToolbarLayout_expandedTitleGravity, 8388691));
    paramContext.setCollapsedTextGravity(paramAttributeSet.getInt(R.styleable.CollapsingToolbarLayout_collapsedTitleGravity, 8388627));
    paramInt = paramAttributeSet.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMargin, 0);
    this.expandedMarginBottom = paramInt;
    this.expandedMarginEnd = paramInt;
    this.expandedMarginTop = paramInt;
    this.expandedMarginStart = paramInt;
    paramInt = R.styleable.CollapsingToolbarLayout_expandedTitleMarginStart;
    if (paramAttributeSet.hasValue(paramInt)) {
      this.expandedMarginStart = paramAttributeSet.getDimensionPixelSize(paramInt, 0);
    }
    paramInt = R.styleable.CollapsingToolbarLayout_expandedTitleMarginEnd;
    if (paramAttributeSet.hasValue(paramInt)) {
      this.expandedMarginEnd = paramAttributeSet.getDimensionPixelSize(paramInt, 0);
    }
    paramInt = R.styleable.CollapsingToolbarLayout_expandedTitleMarginTop;
    if (paramAttributeSet.hasValue(paramInt)) {
      this.expandedMarginTop = paramAttributeSet.getDimensionPixelSize(paramInt, 0);
    }
    paramInt = R.styleable.CollapsingToolbarLayout_expandedTitleMarginBottom;
    if (paramAttributeSet.hasValue(paramInt)) {
      this.expandedMarginBottom = paramAttributeSet.getDimensionPixelSize(paramInt, 0);
    }
    this.collapsingTitleEnabled = paramAttributeSet.getBoolean(R.styleable.CollapsingToolbarLayout_titleEnabled, true);
    setTitle(paramAttributeSet.getText(R.styleable.CollapsingToolbarLayout_title));
    paramContext.setExpandedTextAppearance(R.style.TextAppearance_Design_CollapsingToolbar_Expanded);
    paramContext.setCollapsedTextAppearance(i.a);
    paramInt = R.styleable.CollapsingToolbarLayout_expandedTitleTextAppearance;
    if (paramAttributeSet.hasValue(paramInt)) {
      paramContext.setExpandedTextAppearance(paramAttributeSet.getResourceId(paramInt, 0));
    }
    paramInt = R.styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance;
    if (paramAttributeSet.hasValue(paramInt)) {
      paramContext.setCollapsedTextAppearance(paramAttributeSet.getResourceId(paramInt, 0));
    }
    this.scrimVisibleHeightTrigger = paramAttributeSet.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_scrimVisibleHeightTrigger, -1);
    paramInt = R.styleable.CollapsingToolbarLayout_maxLines;
    if (paramAttributeSet.hasValue(paramInt)) {
      paramContext.setMaxLines(paramAttributeSet.getInt(paramInt, 1));
    }
    this.scrimAnimationDuration = paramAttributeSet.getInt(R.styleable.CollapsingToolbarLayout_scrimAnimationDuration, 600);
    setContentScrim(paramAttributeSet.getDrawable(R.styleable.CollapsingToolbarLayout_contentScrim));
    setStatusBarScrim(paramAttributeSet.getDrawable(R.styleable.CollapsingToolbarLayout_statusBarScrim));
    this.toolbarId = paramAttributeSet.getResourceId(R.styleable.CollapsingToolbarLayout_toolbarId, -1);
    paramAttributeSet.recycle();
    setWillNotDraw(false);
    a0.z0(this, new u()
    {
      public e1 onApplyWindowInsets(View paramAnonymousView, e1 paramAnonymouse1)
      {
        return CollapsingToolbarLayout.this.onWindowInsetChanged(paramAnonymouse1);
      }
    });
  }
  
  private void animateScrim(int paramInt)
  {
    ensureToolbar();
    Object localObject = this.scrimAnimator;
    if (localObject == null)
    {
      localObject = new ValueAnimator();
      this.scrimAnimator = ((ValueAnimator)localObject);
      ((ValueAnimator)localObject).setDuration(this.scrimAnimationDuration);
      ValueAnimator localValueAnimator = this.scrimAnimator;
      if (paramInt > this.scrimAlpha) {
        localObject = AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR;
      } else {
        localObject = AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR;
      }
      localValueAnimator.setInterpolator((TimeInterpolator)localObject);
      this.scrimAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
      {
        public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
        {
          CollapsingToolbarLayout.this.setScrimAlpha(((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue());
        }
      });
    }
    else if (((ValueAnimator)localObject).isRunning())
    {
      this.scrimAnimator.cancel();
    }
    this.scrimAnimator.setIntValues(new int[] { this.scrimAlpha, paramInt });
    this.scrimAnimator.start();
  }
  
  private void ensureToolbar()
  {
    if (!this.refreshToolbar) {
      return;
    }
    Object localObject1 = null;
    this.toolbar = null;
    this.toolbarDirectChild = null;
    int i = this.toolbarId;
    Object localObject2;
    if (i != -1)
    {
      localObject2 = (Toolbar)findViewById(i);
      this.toolbar = ((Toolbar)localObject2);
      if (localObject2 != null) {
        this.toolbarDirectChild = findDirectChild((View)localObject2);
      }
    }
    if (this.toolbar == null)
    {
      int j = getChildCount();
      for (i = 0;; i++)
      {
        localObject2 = localObject1;
        if (i >= j) {
          break;
        }
        localObject2 = getChildAt(i);
        if ((localObject2 instanceof Toolbar))
        {
          localObject2 = (Toolbar)localObject2;
          break;
        }
      }
      this.toolbar = ((Toolbar)localObject2);
    }
    updateDummyView();
    this.refreshToolbar = false;
  }
  
  private View findDirectChild(View paramView)
  {
    ViewParent localViewParent = paramView.getParent();
    View localView = paramView;
    for (paramView = localViewParent; (paramView != this) && (paramView != null); paramView = paramView.getParent()) {
      if ((paramView instanceof View)) {
        localView = (View)paramView;
      }
    }
    return localView;
  }
  
  private static int getHeightWithMargins(View paramView)
  {
    Object localObject = paramView.getLayoutParams();
    if ((localObject instanceof ViewGroup.MarginLayoutParams))
    {
      localObject = (ViewGroup.MarginLayoutParams)localObject;
      return paramView.getHeight() + ((ViewGroup.MarginLayoutParams)localObject).topMargin + ((ViewGroup.MarginLayoutParams)localObject).bottomMargin;
    }
    return paramView.getHeight();
  }
  
  static ViewOffsetHelper getViewOffsetHelper(View paramView)
  {
    int i = R.id.view_offset_helper;
    ViewOffsetHelper localViewOffsetHelper1 = (ViewOffsetHelper)paramView.getTag(i);
    ViewOffsetHelper localViewOffsetHelper2 = localViewOffsetHelper1;
    if (localViewOffsetHelper1 == null)
    {
      localViewOffsetHelper2 = new ViewOffsetHelper(paramView);
      paramView.setTag(i, localViewOffsetHelper2);
    }
    return localViewOffsetHelper2;
  }
  
  private boolean isToolbarChild(View paramView)
  {
    View localView = this.toolbarDirectChild;
    boolean bool = true;
    if ((localView != null) && (localView != this) ? paramView != localView : paramView != this.toolbar) {
      bool = false;
    }
    return bool;
  }
  
  private void updateContentDescriptionFromTitle()
  {
    setContentDescription(getTitle());
  }
  
  private void updateDummyView()
  {
    if (!this.collapsingTitleEnabled)
    {
      Object localObject = this.dummyView;
      if (localObject != null)
      {
        localObject = ((View)localObject).getParent();
        if ((localObject instanceof ViewGroup)) {
          ((ViewGroup)localObject).removeView(this.dummyView);
        }
      }
    }
    if ((this.collapsingTitleEnabled) && (this.toolbar != null))
    {
      if (this.dummyView == null) {
        this.dummyView = new View(getContext());
      }
      if (this.dummyView.getParent() == null) {
        this.toolbar.addView(this.dummyView, -1, -1);
      }
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof LayoutParams;
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    ensureToolbar();
    Object localObject;
    if (this.toolbar == null)
    {
      localObject = this.contentScrim;
      if ((localObject != null) && (this.scrimAlpha > 0))
      {
        ((Drawable)localObject).mutate().setAlpha(this.scrimAlpha);
        this.contentScrim.draw(paramCanvas);
      }
    }
    if ((this.collapsingTitleEnabled) && (this.drawCollapsingTitle)) {
      this.collapsingTextHelper.draw(paramCanvas);
    }
    if ((this.statusBarScrim != null) && (this.scrimAlpha > 0))
    {
      localObject = this.lastInsets;
      int i;
      if (localObject != null) {
        i = ((e1)localObject).k();
      } else {
        i = 0;
      }
      if (i > 0)
      {
        this.statusBarScrim.setBounds(0, -this.currentOffset, getWidth(), i - this.currentOffset);
        this.statusBarScrim.mutate().setAlpha(this.scrimAlpha);
        this.statusBarScrim.draw(paramCanvas);
      }
    }
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    Drawable localDrawable = this.contentScrim;
    boolean bool1 = true;
    int i;
    if ((localDrawable != null) && (this.scrimAlpha > 0) && (isToolbarChild(paramView)))
    {
      this.contentScrim.mutate().setAlpha(this.scrimAlpha);
      this.contentScrim.draw(paramCanvas);
      i = 1;
    }
    else
    {
      i = 0;
    }
    boolean bool2 = bool1;
    if (!super.drawChild(paramCanvas, paramView, paramLong)) {
      if (i != 0) {
        bool2 = bool1;
      } else {
        bool2 = false;
      }
    }
    return bool2;
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    int[] arrayOfInt = getDrawableState();
    Object localObject = this.statusBarScrim;
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (localObject != null)
    {
      bool2 = bool1;
      if (((Drawable)localObject).isStateful()) {
        bool2 = false | ((Drawable)localObject).setState(arrayOfInt);
      }
    }
    localObject = this.contentScrim;
    bool1 = bool2;
    if (localObject != null)
    {
      bool1 = bool2;
      if (((Drawable)localObject).isStateful()) {
        bool1 = bool2 | ((Drawable)localObject).setState(arrayOfInt);
      }
    }
    localObject = this.collapsingTextHelper;
    bool2 = bool1;
    if (localObject != null) {
      bool2 = bool1 | ((CollapsingTextHelper)localObject).setState(arrayOfInt);
    }
    if (bool2) {
      invalidate();
    }
  }
  
  protected LayoutParams generateDefaultLayoutParams()
  {
    return new LayoutParams(-1, -1);
  }
  
  public FrameLayout.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected FrameLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new LayoutParams(paramLayoutParams);
  }
  
  public int getCollapsedTitleGravity()
  {
    return this.collapsingTextHelper.getCollapsedTextGravity();
  }
  
  public Typeface getCollapsedTitleTypeface()
  {
    return this.collapsingTextHelper.getCollapsedTypeface();
  }
  
  public Drawable getContentScrim()
  {
    return this.contentScrim;
  }
  
  public int getExpandedTitleGravity()
  {
    return this.collapsingTextHelper.getExpandedTextGravity();
  }
  
  public int getExpandedTitleMarginBottom()
  {
    return this.expandedMarginBottom;
  }
  
  public int getExpandedTitleMarginEnd()
  {
    return this.expandedMarginEnd;
  }
  
  public int getExpandedTitleMarginStart()
  {
    return this.expandedMarginStart;
  }
  
  public int getExpandedTitleMarginTop()
  {
    return this.expandedMarginTop;
  }
  
  public Typeface getExpandedTitleTypeface()
  {
    return this.collapsingTextHelper.getExpandedTypeface();
  }
  
  public int getMaxLines()
  {
    return this.collapsingTextHelper.getMaxLines();
  }
  
  final int getMaxOffsetForPinChild(View paramView)
  {
    ViewOffsetHelper localViewOffsetHelper = getViewOffsetHelper(paramView);
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    return getHeight() - localViewOffsetHelper.getLayoutTop() - paramView.getHeight() - localLayoutParams.bottomMargin;
  }
  
  int getScrimAlpha()
  {
    return this.scrimAlpha;
  }
  
  public long getScrimAnimationDuration()
  {
    return this.scrimAnimationDuration;
  }
  
  public int getScrimVisibleHeightTrigger()
  {
    int i = this.scrimVisibleHeightTrigger;
    if (i >= 0) {
      return i;
    }
    e1 locale1 = this.lastInsets;
    if (locale1 != null) {
      i = locale1.k();
    } else {
      i = 0;
    }
    int j = a0.A(this);
    if (j > 0) {
      return Math.min(j * 2 + i, getHeight());
    }
    return getHeight() / 3;
  }
  
  public Drawable getStatusBarScrim()
  {
    return this.statusBarScrim;
  }
  
  public CharSequence getTitle()
  {
    CharSequence localCharSequence;
    if (this.collapsingTitleEnabled) {
      localCharSequence = this.collapsingTextHelper.getText();
    } else {
      localCharSequence = null;
    }
    return localCharSequence;
  }
  
  public boolean isTitleEnabled()
  {
    return this.collapsingTitleEnabled;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    ViewParent localViewParent = getParent();
    if ((localViewParent instanceof AppBarLayout))
    {
      a0.u0(this, a0.w((View)localViewParent));
      if (this.onOffsetChangedListener == null) {
        this.onOffsetChangedListener = new OffsetUpdateListener();
      }
      ((AppBarLayout)localViewParent).addOnOffsetChangedListener(this.onOffsetChangedListener);
      a0.i0(this);
    }
  }
  
  protected void onDetachedFromWindow()
  {
    ViewParent localViewParent = getParent();
    AppBarLayout.OnOffsetChangedListener localOnOffsetChangedListener = this.onOffsetChangedListener;
    if ((localOnOffsetChangedListener != null) && ((localViewParent instanceof AppBarLayout))) {
      ((AppBarLayout)localViewParent).removeOnOffsetChangedListener(localOnOffsetChangedListener);
    }
    super.onDetachedFromWindow();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    Object localObject = this.lastInsets;
    int i = 0;
    int j;
    if (localObject != null)
    {
      j = ((e1)localObject).k();
      k = getChildCount();
      for (m = 0; m < k; m++)
      {
        localObject = getChildAt(m);
        if ((!a0.w((View)localObject)) && (((View)localObject).getTop() < j)) {
          a0.W((View)localObject, j);
        }
      }
    }
    int k = getChildCount();
    for (int m = 0; m < k; m++) {
      getViewOffsetHelper(getChildAt(m)).onViewLayout();
    }
    if (this.collapsingTitleEnabled)
    {
      localObject = this.dummyView;
      if (localObject != null)
      {
        paramBoolean = a0.O((View)localObject);
        m = 1;
        if ((paramBoolean) && (this.dummyView.getVisibility() == 0)) {
          paramBoolean = true;
        } else {
          paramBoolean = false;
        }
        this.drawCollapsingTitle = paramBoolean;
        if (paramBoolean)
        {
          if (a0.z(this) != 1) {
            m = 0;
          }
          localObject = this.toolbarDirectChild;
          if (localObject == null) {
            localObject = this.toolbar;
          }
          int n = getMaxOffsetForPinChild((View)localObject);
          DescendantOffsetUtils.getDescendantRect(this, this.dummyView, this.tmpRect);
          localObject = this.collapsingTextHelper;
          int i1 = this.tmpRect.left;
          if (m != 0) {
            k = this.toolbar.getTitleMarginEnd();
          } else {
            k = this.toolbar.getTitleMarginStart();
          }
          int i2 = this.tmpRect.top;
          int i3 = this.toolbar.getTitleMarginTop();
          int i4 = this.tmpRect.right;
          if (m != 0) {
            j = this.toolbar.getTitleMarginStart();
          } else {
            j = this.toolbar.getTitleMarginEnd();
          }
          ((CollapsingTextHelper)localObject).setCollapsedBounds(i1 + k, i2 + n + i3, i4 + j, this.tmpRect.bottom + n - this.toolbar.getTitleMarginBottom());
          localObject = this.collapsingTextHelper;
          if (m != 0) {
            k = this.expandedMarginEnd;
          } else {
            k = this.expandedMarginStart;
          }
          n = this.tmpRect.top;
          j = this.expandedMarginTop;
          if (m != 0) {
            m = this.expandedMarginStart;
          } else {
            m = this.expandedMarginEnd;
          }
          ((CollapsingTextHelper)localObject).setExpandedBounds(k, n + j, paramInt3 - paramInt1 - m, paramInt4 - paramInt2 - this.expandedMarginBottom);
          this.collapsingTextHelper.recalculate();
        }
      }
    }
    if (this.toolbar != null)
    {
      if ((this.collapsingTitleEnabled) && (TextUtils.isEmpty(this.collapsingTextHelper.getText()))) {
        setTitle(this.toolbar.getTitle());
      }
      localObject = this.toolbarDirectChild;
      if ((localObject != null) && (localObject != this)) {
        setMinimumHeight(getHeightWithMargins((View)localObject));
      } else {
        setMinimumHeight(getHeightWithMargins(this.toolbar));
      }
    }
    updateScrimVisibility();
    paramInt2 = getChildCount();
    for (paramInt1 = i; paramInt1 < paramInt2; paramInt1++) {
      getViewOffsetHelper(getChildAt(paramInt1)).applyOffsets();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    ensureToolbar();
    super.onMeasure(paramInt1, paramInt2);
    int i = View.MeasureSpec.getMode(paramInt2);
    e1 locale1 = this.lastInsets;
    if (locale1 != null) {
      paramInt2 = locale1.k();
    } else {
      paramInt2 = 0;
    }
    if ((i == 0) && (paramInt2 > 0)) {
      super.onMeasure(paramInt1, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + paramInt2, 1073741824));
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    Drawable localDrawable = this.contentScrim;
    if (localDrawable != null) {
      localDrawable.setBounds(0, 0, paramInt1, paramInt2);
    }
  }
  
  e1 onWindowInsetChanged(e1 parame1)
  {
    e1 locale1;
    if (a0.w(this)) {
      locale1 = parame1;
    } else {
      locale1 = null;
    }
    if (!c.a(this.lastInsets, locale1))
    {
      this.lastInsets = locale1;
      requestLayout();
    }
    return parame1.c();
  }
  
  public void setCollapsedTitleGravity(int paramInt)
  {
    this.collapsingTextHelper.setCollapsedTextGravity(paramInt);
  }
  
  public void setCollapsedTitleTextAppearance(int paramInt)
  {
    this.collapsingTextHelper.setCollapsedTextAppearance(paramInt);
  }
  
  public void setCollapsedTitleTextColor(int paramInt)
  {
    setCollapsedTitleTextColor(ColorStateList.valueOf(paramInt));
  }
  
  public void setCollapsedTitleTextColor(ColorStateList paramColorStateList)
  {
    this.collapsingTextHelper.setCollapsedTextColor(paramColorStateList);
  }
  
  public void setCollapsedTitleTypeface(Typeface paramTypeface)
  {
    this.collapsingTextHelper.setCollapsedTypeface(paramTypeface);
  }
  
  public void setContentScrim(Drawable paramDrawable)
  {
    Drawable localDrawable1 = this.contentScrim;
    if (localDrawable1 != paramDrawable)
    {
      Drawable localDrawable2 = null;
      if (localDrawable1 != null) {
        localDrawable1.setCallback(null);
      }
      if (paramDrawable != null) {
        localDrawable2 = paramDrawable.mutate();
      }
      this.contentScrim = localDrawable2;
      if (localDrawable2 != null)
      {
        localDrawable2.setBounds(0, 0, getWidth(), getHeight());
        this.contentScrim.setCallback(this);
        this.contentScrim.setAlpha(this.scrimAlpha);
      }
      a0.c0(this);
    }
  }
  
  public void setContentScrimColor(int paramInt)
  {
    setContentScrim(new ColorDrawable(paramInt));
  }
  
  public void setContentScrimResource(int paramInt)
  {
    setContentScrim(androidx.core.content.a.e(getContext(), paramInt));
  }
  
  public void setExpandedTitleColor(int paramInt)
  {
    setExpandedTitleTextColor(ColorStateList.valueOf(paramInt));
  }
  
  public void setExpandedTitleGravity(int paramInt)
  {
    this.collapsingTextHelper.setExpandedTextGravity(paramInt);
  }
  
  public void setExpandedTitleMargin(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.expandedMarginStart = paramInt1;
    this.expandedMarginTop = paramInt2;
    this.expandedMarginEnd = paramInt3;
    this.expandedMarginBottom = paramInt4;
    requestLayout();
  }
  
  public void setExpandedTitleMarginBottom(int paramInt)
  {
    this.expandedMarginBottom = paramInt;
    requestLayout();
  }
  
  public void setExpandedTitleMarginEnd(int paramInt)
  {
    this.expandedMarginEnd = paramInt;
    requestLayout();
  }
  
  public void setExpandedTitleMarginStart(int paramInt)
  {
    this.expandedMarginStart = paramInt;
    requestLayout();
  }
  
  public void setExpandedTitleMarginTop(int paramInt)
  {
    this.expandedMarginTop = paramInt;
    requestLayout();
  }
  
  public void setExpandedTitleTextAppearance(int paramInt)
  {
    this.collapsingTextHelper.setExpandedTextAppearance(paramInt);
  }
  
  public void setExpandedTitleTextColor(ColorStateList paramColorStateList)
  {
    this.collapsingTextHelper.setExpandedTextColor(paramColorStateList);
  }
  
  public void setExpandedTitleTypeface(Typeface paramTypeface)
  {
    this.collapsingTextHelper.setExpandedTypeface(paramTypeface);
  }
  
  public void setMaxLines(int paramInt)
  {
    this.collapsingTextHelper.setMaxLines(paramInt);
  }
  
  void setScrimAlpha(int paramInt)
  {
    if (paramInt != this.scrimAlpha)
    {
      if (this.contentScrim != null)
      {
        Toolbar localToolbar = this.toolbar;
        if (localToolbar != null) {
          a0.c0(localToolbar);
        }
      }
      this.scrimAlpha = paramInt;
      a0.c0(this);
    }
  }
  
  public void setScrimAnimationDuration(long paramLong)
  {
    this.scrimAnimationDuration = paramLong;
  }
  
  public void setScrimVisibleHeightTrigger(int paramInt)
  {
    if (this.scrimVisibleHeightTrigger != paramInt)
    {
      this.scrimVisibleHeightTrigger = paramInt;
      updateScrimVisibility();
    }
  }
  
  public void setScrimsShown(boolean paramBoolean)
  {
    boolean bool;
    if ((a0.P(this)) && (!isInEditMode())) {
      bool = true;
    } else {
      bool = false;
    }
    setScrimsShown(paramBoolean, bool);
  }
  
  public void setScrimsShown(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.scrimsAreShown != paramBoolean1)
    {
      int i = 255;
      if (paramBoolean2)
      {
        if (!paramBoolean1) {
          i = 0;
        }
        animateScrim(i);
      }
      else
      {
        if (!paramBoolean1) {
          i = 0;
        }
        setScrimAlpha(i);
      }
      this.scrimsAreShown = paramBoolean1;
    }
  }
  
  public void setStatusBarScrim(Drawable paramDrawable)
  {
    Drawable localDrawable1 = this.statusBarScrim;
    if (localDrawable1 != paramDrawable)
    {
      Drawable localDrawable2 = null;
      if (localDrawable1 != null) {
        localDrawable1.setCallback(null);
      }
      if (paramDrawable != null) {
        localDrawable2 = paramDrawable.mutate();
      }
      this.statusBarScrim = localDrawable2;
      if (localDrawable2 != null)
      {
        if (localDrawable2.isStateful()) {
          this.statusBarScrim.setState(getDrawableState());
        }
        androidx.core.graphics.drawable.a.m(this.statusBarScrim, a0.z(this));
        paramDrawable = this.statusBarScrim;
        boolean bool;
        if (getVisibility() == 0) {
          bool = true;
        } else {
          bool = false;
        }
        paramDrawable.setVisible(bool, false);
        this.statusBarScrim.setCallback(this);
        this.statusBarScrim.setAlpha(this.scrimAlpha);
      }
      a0.c0(this);
    }
  }
  
  public void setStatusBarScrimColor(int paramInt)
  {
    setStatusBarScrim(new ColorDrawable(paramInt));
  }
  
  public void setStatusBarScrimResource(int paramInt)
  {
    setStatusBarScrim(androidx.core.content.a.e(getContext(), paramInt));
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    this.collapsingTextHelper.setText(paramCharSequence);
    updateContentDescriptionFromTitle();
  }
  
  public void setTitleEnabled(boolean paramBoolean)
  {
    if (paramBoolean != this.collapsingTitleEnabled)
    {
      this.collapsingTitleEnabled = paramBoolean;
      updateContentDescriptionFromTitle();
      updateDummyView();
      requestLayout();
    }
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
    Drawable localDrawable = this.statusBarScrim;
    if ((localDrawable != null) && (localDrawable.isVisible() != bool)) {
      this.statusBarScrim.setVisible(bool, false);
    }
    localDrawable = this.contentScrim;
    if ((localDrawable != null) && (localDrawable.isVisible() != bool)) {
      this.contentScrim.setVisible(bool, false);
    }
  }
  
  final void updateScrimVisibility()
  {
    if ((this.contentScrim != null) || (this.statusBarScrim != null))
    {
      boolean bool;
      if (getHeight() + this.currentOffset < getScrimVisibleHeightTrigger()) {
        bool = true;
      } else {
        bool = false;
      }
      setScrimsShown(bool);
    }
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    boolean bool;
    if ((!super.verifyDrawable(paramDrawable)) && (paramDrawable != this.contentScrim) && (paramDrawable != this.statusBarScrim)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public static class LayoutParams
    extends FrameLayout.LayoutParams
  {
    public static final int COLLAPSE_MODE_OFF = 0;
    public static final int COLLAPSE_MODE_PARALLAX = 2;
    public static final int COLLAPSE_MODE_PIN = 1;
    private static final float DEFAULT_PARALLAX_MULTIPLIER = 0.5F;
    int collapseMode = 0;
    float parallaxMult = 0.5F;
    
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public LayoutParams(int paramInt1, int paramInt2, int paramInt3)
    {
      super(paramInt2, paramInt3);
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CollapsingToolbarLayout_Layout);
      this.collapseMode = paramContext.getInt(R.styleable.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
      setParallaxMultiplier(paramContext.getFloat(R.styleable.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, 0.5F));
      paramContext.recycle();
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
    
    public LayoutParams(FrameLayout.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public int getCollapseMode()
    {
      return this.collapseMode;
    }
    
    public float getParallaxMultiplier()
    {
      return this.parallaxMult;
    }
    
    public void setCollapseMode(int paramInt)
    {
      this.collapseMode = paramInt;
    }
    
    public void setParallaxMultiplier(float paramFloat)
    {
      this.parallaxMult = paramFloat;
    }
  }
  
  private class OffsetUpdateListener
    implements AppBarLayout.OnOffsetChangedListener
  {
    OffsetUpdateListener() {}
    
    public void onOffsetChanged(AppBarLayout paramAppBarLayout, int paramInt)
    {
      paramAppBarLayout = CollapsingToolbarLayout.this;
      paramAppBarLayout.currentOffset = paramInt;
      paramAppBarLayout = paramAppBarLayout.lastInsets;
      int i;
      if (paramAppBarLayout != null) {
        i = paramAppBarLayout.k();
      } else {
        i = 0;
      }
      int j = CollapsingToolbarLayout.this.getChildCount();
      for (int k = 0; k < j; k++)
      {
        paramAppBarLayout = CollapsingToolbarLayout.this.getChildAt(k);
        CollapsingToolbarLayout.LayoutParams localLayoutParams = (CollapsingToolbarLayout.LayoutParams)paramAppBarLayout.getLayoutParams();
        ViewOffsetHelper localViewOffsetHelper = CollapsingToolbarLayout.getViewOffsetHelper(paramAppBarLayout);
        int m = localLayoutParams.collapseMode;
        if (m != 1)
        {
          if (m == 2) {
            localViewOffsetHelper.setTopAndBottomOffset(Math.round(-paramInt * localLayoutParams.parallaxMult));
          }
        }
        else {
          localViewOffsetHelper.setTopAndBottomOffset(v.a.b(-paramInt, 0, CollapsingToolbarLayout.this.getMaxOffsetForPinChild(paramAppBarLayout)));
        }
      }
      CollapsingToolbarLayout.this.updateScrimVisibility();
      paramAppBarLayout = CollapsingToolbarLayout.this;
      if ((paramAppBarLayout.statusBarScrim != null) && (i > 0)) {
        a0.c0(paramAppBarLayout);
      }
      k = CollapsingToolbarLayout.this.getHeight();
      j = a0.A(CollapsingToolbarLayout.this);
      CollapsingToolbarLayout.this.collapsingTextHelper.setExpansionFraction(Math.abs(paramInt) / (k - j - i));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.appbar.CollapsingToolbarLayout
 * JD-Core Version:    0.7.0.1
 */