package com.google.android.material.tabs;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import androidx.appcompat.widget.c1;
import androidx.core.util.e;
import androidx.core.util.f;
import androidx.core.view.a0;
import androidx.core.view.accessibility.g.a;
import androidx.core.view.accessibility.g.b;
import androidx.core.view.accessibility.g.c;
import androidx.core.view.h;
import androidx.core.view.y;
import androidx.core.widget.l;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager.widget.ViewPager.e;
import androidx.viewpager.widget.ViewPager.i;
import androidx.viewpager.widget.ViewPager.j;
import androidx.viewpager.widget.b;
import com.google.android.material.R.attr;
import com.google.android.material.R.dimen;
import com.google.android.material.R.layout;
import com.google.android.material.R.style;
import com.google.android.material.R.styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.BadgeUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import d.j;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

@ViewPager.e
public class TabLayout
  extends HorizontalScrollView
{
  private static final int ANIMATION_DURATION = 300;
  static final int DEFAULT_GAP_TEXT_ICON = 8;
  private static final int DEFAULT_HEIGHT = 48;
  private static final int DEFAULT_HEIGHT_WITH_TEXT_ICON = 72;
  private static final int DEF_STYLE_RES = R.style.Widget_Design_TabLayout;
  static final int FIXED_WRAP_GUTTER_MIN = 16;
  public static final int GRAVITY_CENTER = 1;
  public static final int GRAVITY_FILL = 0;
  public static final int GRAVITY_START = 2;
  public static final int INDICATOR_GRAVITY_BOTTOM = 0;
  public static final int INDICATOR_GRAVITY_CENTER = 1;
  public static final int INDICATOR_GRAVITY_STRETCH = 3;
  public static final int INDICATOR_GRAVITY_TOP = 2;
  private static final int INVALID_WIDTH = -1;
  private static final String LOG_TAG = "TabLayout";
  private static final int MIN_INDICATOR_WIDTH = 24;
  public static final int MODE_AUTO = 2;
  public static final int MODE_FIXED = 1;
  public static final int MODE_SCROLLABLE = 0;
  public static final int TAB_LABEL_VISIBILITY_LABELED = 1;
  public static final int TAB_LABEL_VISIBILITY_UNLABELED = 0;
  private static final int TAB_MIN_WIDTH_MARGIN = 56;
  private static final e<Tab> tabPool = new androidx.core.util.g(16);
  private AdapterChangeListener adapterChangeListener;
  private int contentInsetStart;
  private BaseOnTabSelectedListener currentVpSelectedListener;
  boolean inlineLabel;
  int mode;
  private TabLayoutOnPageChangeListener pageChangeListener;
  private b pagerAdapter;
  private DataSetObserver pagerAdapterObserver;
  private final int requestedTabMaxWidth;
  private final int requestedTabMinWidth;
  private ValueAnimator scrollAnimator;
  private final int scrollableTabMinWidth;
  private BaseOnTabSelectedListener selectedListener;
  private final ArrayList<BaseOnTabSelectedListener> selectedListeners = new ArrayList();
  private Tab selectedTab;
  private boolean setupViewPagerImplicitly;
  final SlidingTabIndicator slidingTabIndicator;
  final int tabBackgroundResId;
  int tabGravity;
  ColorStateList tabIconTint;
  PorterDuff.Mode tabIconTintMode;
  int tabIndicatorAnimationDuration;
  boolean tabIndicatorFullWidth;
  int tabIndicatorGravity;
  int tabMaxWidth = 2147483647;
  int tabPaddingBottom;
  int tabPaddingEnd;
  int tabPaddingStart;
  int tabPaddingTop;
  ColorStateList tabRippleColorStateList;
  Drawable tabSelectedIndicator;
  int tabTextAppearance;
  ColorStateList tabTextColors;
  float tabTextMultiLineSize;
  float tabTextSize;
  private final RectF tabViewContentBounds = new RectF();
  private final e<TabView> tabViewPool = new f(12);
  private final ArrayList<Tab> tabs = new ArrayList();
  boolean unboundedRipple;
  ViewPager viewPager;
  
  public TabLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public TabLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.tabStyle);
  }
  
  public TabLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(MaterialThemeOverlay.wrap(paramContext, paramAttributeSet, paramInt, i), paramAttributeSet, paramInt);
    paramContext = getContext();
    setHorizontalScrollBarEnabled(false);
    Object localObject1 = new SlidingTabIndicator(paramContext);
    this.slidingTabIndicator = ((SlidingTabIndicator)localObject1);
    super.addView((View)localObject1, 0, new FrameLayout.LayoutParams(-2, -1));
    Object localObject2 = R.styleable.TabLayout;
    int j = R.styleable.TabLayout_tabTextAppearance;
    paramAttributeSet = ThemeEnforcement.obtainStyledAttributes(paramContext, paramAttributeSet, (int[])localObject2, paramInt, i, new int[] { j });
    if ((getBackground() instanceof ColorDrawable))
    {
      localObject2 = (ColorDrawable)getBackground();
      MaterialShapeDrawable localMaterialShapeDrawable = new MaterialShapeDrawable();
      localMaterialShapeDrawable.setFillColor(ColorStateList.valueOf(((ColorDrawable)localObject2).getColor()));
      localMaterialShapeDrawable.initializeElevationOverlay(paramContext);
      localMaterialShapeDrawable.setElevation(a0.u(this));
      a0.p0(this, localMaterialShapeDrawable);
    }
    ((SlidingTabIndicator)localObject1).setSelectedIndicatorHeight(paramAttributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabIndicatorHeight, -1));
    ((SlidingTabIndicator)localObject1).setSelectedIndicatorColor(paramAttributeSet.getColor(R.styleable.TabLayout_tabIndicatorColor, 0));
    setSelectedTabIndicator(MaterialResources.getDrawable(paramContext, paramAttributeSet, R.styleable.TabLayout_tabIndicator));
    setSelectedTabIndicatorGravity(paramAttributeSet.getInt(R.styleable.TabLayout_tabIndicatorGravity, 0));
    setTabIndicatorFullWidth(paramAttributeSet.getBoolean(R.styleable.TabLayout_tabIndicatorFullWidth, true));
    paramInt = paramAttributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabPadding, 0);
    this.tabPaddingBottom = paramInt;
    this.tabPaddingEnd = paramInt;
    this.tabPaddingTop = paramInt;
    this.tabPaddingStart = paramInt;
    this.tabPaddingStart = paramAttributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingStart, paramInt);
    this.tabPaddingTop = paramAttributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingTop, this.tabPaddingTop);
    this.tabPaddingEnd = paramAttributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingEnd, this.tabPaddingEnd);
    this.tabPaddingBottom = paramAttributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingBottom, this.tabPaddingBottom);
    paramInt = paramAttributeSet.getResourceId(j, R.style.TextAppearance_Design_Tab);
    this.tabTextAppearance = paramInt;
    localObject1 = paramContext.obtainStyledAttributes(paramInt, j.S2);
    try
    {
      this.tabTextSize = ((TypedArray)localObject1).getDimensionPixelSize(j.T2, 0);
      this.tabTextColors = MaterialResources.getColorStateList(paramContext, (TypedArray)localObject1, j.W2);
      ((TypedArray)localObject1).recycle();
      paramInt = R.styleable.TabLayout_tabTextColor;
      if (paramAttributeSet.hasValue(paramInt)) {
        this.tabTextColors = MaterialResources.getColorStateList(paramContext, paramAttributeSet, paramInt);
      }
      paramInt = R.styleable.TabLayout_tabSelectedTextColor;
      if (paramAttributeSet.hasValue(paramInt))
      {
        paramInt = paramAttributeSet.getColor(paramInt, 0);
        this.tabTextColors = createColorStateList(this.tabTextColors.getDefaultColor(), paramInt);
      }
      this.tabIconTint = MaterialResources.getColorStateList(paramContext, paramAttributeSet, R.styleable.TabLayout_tabIconTint);
      this.tabIconTintMode = ViewUtils.parseTintMode(paramAttributeSet.getInt(R.styleable.TabLayout_tabIconTintMode, -1), null);
      this.tabRippleColorStateList = MaterialResources.getColorStateList(paramContext, paramAttributeSet, R.styleable.TabLayout_tabRippleColor);
      this.tabIndicatorAnimationDuration = paramAttributeSet.getInt(R.styleable.TabLayout_tabIndicatorAnimationDuration, 300);
      this.requestedTabMinWidth = paramAttributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabMinWidth, -1);
      this.requestedTabMaxWidth = paramAttributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabMaxWidth, -1);
      this.tabBackgroundResId = paramAttributeSet.getResourceId(R.styleable.TabLayout_tabBackground, 0);
      this.contentInsetStart = paramAttributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabContentStart, 0);
      this.mode = paramAttributeSet.getInt(R.styleable.TabLayout_tabMode, 1);
      this.tabGravity = paramAttributeSet.getInt(R.styleable.TabLayout_tabGravity, 0);
      this.inlineLabel = paramAttributeSet.getBoolean(R.styleable.TabLayout_tabInlineLabel, false);
      this.unboundedRipple = paramAttributeSet.getBoolean(R.styleable.TabLayout_tabUnboundedRipple, false);
      paramAttributeSet.recycle();
      paramContext = getResources();
      this.tabTextMultiLineSize = paramContext.getDimensionPixelSize(R.dimen.design_tab_text_size_2line);
      this.scrollableTabMinWidth = paramContext.getDimensionPixelSize(R.dimen.design_tab_scrollable_min_width);
      applyModeAndGravity();
      return;
    }
    finally
    {
      ((TypedArray)localObject1).recycle();
    }
  }
  
  private void addTabFromItemView(TabItem paramTabItem)
  {
    Tab localTab = newTab();
    Object localObject = paramTabItem.text;
    if (localObject != null) {
      localTab.setText((CharSequence)localObject);
    }
    localObject = paramTabItem.icon;
    if (localObject != null) {
      localTab.setIcon((Drawable)localObject);
    }
    int i = paramTabItem.customLayout;
    if (i != 0) {
      localTab.setCustomView(i);
    }
    if (!TextUtils.isEmpty(paramTabItem.getContentDescription())) {
      localTab.setContentDescription(paramTabItem.getContentDescription());
    }
    addTab(localTab);
  }
  
  private void addTabView(Tab paramTab)
  {
    TabView localTabView = paramTab.view;
    localTabView.setSelected(false);
    localTabView.setActivated(false);
    this.slidingTabIndicator.addView(localTabView, paramTab.getPosition(), createLayoutParamsForTabs());
  }
  
  private void addViewInternal(View paramView)
  {
    if ((paramView instanceof TabItem))
    {
      addTabFromItemView((TabItem)paramView);
      return;
    }
    throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
  }
  
  private void animateToTab(int paramInt)
  {
    if (paramInt == -1) {
      return;
    }
    if ((getWindowToken() != null) && (a0.P(this)) && (!this.slidingTabIndicator.childrenNeedLayout()))
    {
      int i = getScrollX();
      int j = calculateScrollXForTab(paramInt, 0.0F);
      if (i != j)
      {
        ensureScrollAnimator();
        this.scrollAnimator.setIntValues(new int[] { i, j });
        this.scrollAnimator.start();
      }
      this.slidingTabIndicator.animateIndicatorToPosition(paramInt, this.tabIndicatorAnimationDuration);
      return;
    }
    setScrollPosition(paramInt, 0.0F, true);
  }
  
  private void applyGravityForModeScrollable(int paramInt)
  {
    if (paramInt != 0)
    {
      if (paramInt != 1)
      {
        if (paramInt != 2) {
          return;
        }
      }
      else
      {
        this.slidingTabIndicator.setGravity(1);
        return;
      }
    }
    else {
      Log.w("TabLayout", "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead");
    }
    this.slidingTabIndicator.setGravity(8388611);
  }
  
  private void applyModeAndGravity()
  {
    int i = this.mode;
    if ((i != 0) && (i != 2)) {
      i = 0;
    } else {
      i = Math.max(0, this.contentInsetStart - this.tabPaddingStart);
    }
    a0.A0(this.slidingTabIndicator, i, 0, 0, 0);
    i = this.mode;
    if (i != 0)
    {
      if ((i == 1) || (i == 2))
      {
        if (this.tabGravity == 2) {
          Log.w("TabLayout", "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead");
        }
        this.slidingTabIndicator.setGravity(1);
      }
    }
    else {
      applyGravityForModeScrollable(this.tabGravity);
    }
    updateTabViews(true);
  }
  
  private int calculateScrollXForTab(int paramInt, float paramFloat)
  {
    int i = this.mode;
    int j = 0;
    if ((i != 0) && (i != 2)) {
      return 0;
    }
    View localView1 = this.slidingTabIndicator.getChildAt(paramInt);
    paramInt++;
    View localView2;
    if (paramInt < this.slidingTabIndicator.getChildCount()) {
      localView2 = this.slidingTabIndicator.getChildAt(paramInt);
    } else {
      localView2 = null;
    }
    if (localView1 != null) {
      paramInt = localView1.getWidth();
    } else {
      paramInt = 0;
    }
    if (localView2 != null) {
      j = localView2.getWidth();
    }
    i = localView1.getLeft() + paramInt / 2 - getWidth() / 2;
    paramInt = (int)((paramInt + j) * 0.5F * paramFloat);
    if (a0.z(this) == 0) {
      paramInt = i + paramInt;
    } else {
      paramInt = i - paramInt;
    }
    return paramInt;
  }
  
  private void configureTab(Tab paramTab, int paramInt)
  {
    paramTab.setPosition(paramInt);
    this.tabs.add(paramInt, paramTab);
    int i = this.tabs.size();
    for (;;)
    {
      paramInt++;
      if (paramInt >= i) {
        break;
      }
      ((Tab)this.tabs.get(paramInt)).setPosition(paramInt);
    }
  }
  
  private static ColorStateList createColorStateList(int paramInt1, int paramInt2)
  {
    return new ColorStateList(new int[][] { HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET }, new int[] { paramInt2, paramInt1 });
  }
  
  private LinearLayout.LayoutParams createLayoutParamsForTabs()
  {
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -1);
    updateTabViewLayoutParams(localLayoutParams);
    return localLayoutParams;
  }
  
  private TabView createTabView(Tab paramTab)
  {
    Object localObject1 = this.tabViewPool;
    if (localObject1 != null) {
      localObject1 = (TabView)((e)localObject1).b();
    } else {
      localObject1 = null;
    }
    Object localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = new TabView(getContext());
    }
    ((TabView)localObject2).setTab(paramTab);
    ((View)localObject2).setFocusable(true);
    ((View)localObject2).setMinimumWidth(getTabMinWidth());
    if (TextUtils.isEmpty(paramTab.contentDesc)) {
      ((View)localObject2).setContentDescription(paramTab.text);
    } else {
      ((View)localObject2).setContentDescription(paramTab.contentDesc);
    }
    return localObject2;
  }
  
  private void dispatchTabReselected(Tab paramTab)
  {
    for (int i = this.selectedListeners.size() - 1; i >= 0; i--) {
      ((BaseOnTabSelectedListener)this.selectedListeners.get(i)).onTabReselected(paramTab);
    }
  }
  
  private void dispatchTabSelected(Tab paramTab)
  {
    for (int i = this.selectedListeners.size() - 1; i >= 0; i--) {
      ((BaseOnTabSelectedListener)this.selectedListeners.get(i)).onTabSelected(paramTab);
    }
  }
  
  private void dispatchTabUnselected(Tab paramTab)
  {
    for (int i = this.selectedListeners.size() - 1; i >= 0; i--) {
      ((BaseOnTabSelectedListener)this.selectedListeners.get(i)).onTabUnselected(paramTab);
    }
  }
  
  private void ensureScrollAnimator()
  {
    if (this.scrollAnimator == null)
    {
      ValueAnimator localValueAnimator = new ValueAnimator();
      this.scrollAnimator = localValueAnimator;
      localValueAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
      this.scrollAnimator.setDuration(this.tabIndicatorAnimationDuration);
      this.scrollAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
      {
        public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
        {
          TabLayout.this.scrollTo(((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue(), 0);
        }
      });
    }
  }
  
  private int getDefaultHeight()
  {
    int i = this.tabs.size();
    int j = 0;
    int m;
    for (int k = 0;; k++)
    {
      m = j;
      if (k >= i) {
        break;
      }
      Tab localTab = (Tab)this.tabs.get(k);
      if ((localTab != null) && (localTab.getIcon() != null) && (!TextUtils.isEmpty(localTab.getText())))
      {
        m = 1;
        break;
      }
    }
    if ((m != 0) && (!this.inlineLabel)) {
      m = 72;
    } else {
      m = 48;
    }
    return m;
  }
  
  private int getTabMinWidth()
  {
    int i = this.requestedTabMinWidth;
    if (i != -1) {
      return i;
    }
    i = this.mode;
    if ((i != 0) && (i != 2)) {
      i = 0;
    } else {
      i = this.scrollableTabMinWidth;
    }
    return i;
  }
  
  private int getTabScrollRange()
  {
    return Math.max(0, this.slidingTabIndicator.getWidth() - getWidth() - getPaddingLeft() - getPaddingRight());
  }
  
  private void removeTabViewAt(int paramInt)
  {
    TabView localTabView = (TabView)this.slidingTabIndicator.getChildAt(paramInt);
    this.slidingTabIndicator.removeViewAt(paramInt);
    if (localTabView != null)
    {
      localTabView.reset();
      this.tabViewPool.a(localTabView);
    }
    requestLayout();
  }
  
  private void setSelectedTabView(int paramInt)
  {
    int i = this.slidingTabIndicator.getChildCount();
    if (paramInt < i) {
      for (int j = 0; j < i; j++)
      {
        View localView = this.slidingTabIndicator.getChildAt(j);
        boolean bool1 = true;
        boolean bool2;
        if (j == paramInt) {
          bool2 = true;
        } else {
          bool2 = false;
        }
        localView.setSelected(bool2);
        if (j == paramInt) {
          bool2 = bool1;
        } else {
          bool2 = false;
        }
        localView.setActivated(bool2);
      }
    }
  }
  
  private void setupWithViewPager(ViewPager paramViewPager, boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject = this.viewPager;
    if (localObject != null)
    {
      TabLayoutOnPageChangeListener localTabLayoutOnPageChangeListener = this.pageChangeListener;
      if (localTabLayoutOnPageChangeListener != null) {
        ((ViewPager)localObject).J(localTabLayoutOnPageChangeListener);
      }
      localObject = this.adapterChangeListener;
      if (localObject != null) {
        this.viewPager.I((ViewPager.i)localObject);
      }
    }
    localObject = this.currentVpSelectedListener;
    if (localObject != null)
    {
      removeOnTabSelectedListener((BaseOnTabSelectedListener)localObject);
      this.currentVpSelectedListener = null;
    }
    if (paramViewPager != null)
    {
      this.viewPager = paramViewPager;
      if (this.pageChangeListener == null) {
        this.pageChangeListener = new TabLayoutOnPageChangeListener(this);
      }
      this.pageChangeListener.reset();
      paramViewPager.c(this.pageChangeListener);
      localObject = new ViewPagerOnTabSelectedListener(paramViewPager);
      this.currentVpSelectedListener = ((BaseOnTabSelectedListener)localObject);
      addOnTabSelectedListener((BaseOnTabSelectedListener)localObject);
      localObject = paramViewPager.getAdapter();
      if (localObject != null) {
        setPagerAdapter((b)localObject, paramBoolean1);
      }
      if (this.adapterChangeListener == null) {
        this.adapterChangeListener = new AdapterChangeListener();
      }
      this.adapterChangeListener.setAutoRefresh(paramBoolean1);
      paramViewPager.b(this.adapterChangeListener);
      setScrollPosition(paramViewPager.getCurrentItem(), 0.0F, true);
    }
    else
    {
      this.viewPager = null;
      setPagerAdapter(null, false);
    }
    this.setupViewPagerImplicitly = paramBoolean2;
  }
  
  private void updateAllTabs()
  {
    int i = this.tabs.size();
    for (int j = 0; j < i; j++) {
      ((Tab)this.tabs.get(j)).updateView();
    }
  }
  
  private void updateTabViewLayoutParams(LinearLayout.LayoutParams paramLayoutParams)
  {
    if ((this.mode == 1) && (this.tabGravity == 0))
    {
      paramLayoutParams.width = 0;
      paramLayoutParams.weight = 1.0F;
    }
    else
    {
      paramLayoutParams.width = -2;
      paramLayoutParams.weight = 0.0F;
    }
  }
  
  @Deprecated
  public void addOnTabSelectedListener(BaseOnTabSelectedListener paramBaseOnTabSelectedListener)
  {
    if (!this.selectedListeners.contains(paramBaseOnTabSelectedListener)) {
      this.selectedListeners.add(paramBaseOnTabSelectedListener);
    }
  }
  
  public void addOnTabSelectedListener(OnTabSelectedListener paramOnTabSelectedListener)
  {
    addOnTabSelectedListener(paramOnTabSelectedListener);
  }
  
  public void addTab(Tab paramTab)
  {
    addTab(paramTab, this.tabs.isEmpty());
  }
  
  public void addTab(Tab paramTab, int paramInt)
  {
    addTab(paramTab, paramInt, this.tabs.isEmpty());
  }
  
  public void addTab(Tab paramTab, int paramInt, boolean paramBoolean)
  {
    if (paramTab.parent == this)
    {
      configureTab(paramTab, paramInt);
      addTabView(paramTab);
      if (paramBoolean) {
        paramTab.select();
      }
      return;
    }
    throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
  }
  
  public void addTab(Tab paramTab, boolean paramBoolean)
  {
    addTab(paramTab, this.tabs.size(), paramBoolean);
  }
  
  public void addView(View paramView)
  {
    addViewInternal(paramView);
  }
  
  public void addView(View paramView, int paramInt)
  {
    addViewInternal(paramView);
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    addViewInternal(paramView);
  }
  
  public void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    addViewInternal(paramView);
  }
  
  public void clearOnTabSelectedListeners()
  {
    this.selectedListeners.clear();
  }
  
  protected Tab createTabFromPool()
  {
    Tab localTab1 = (Tab)tabPool.b();
    Tab localTab2 = localTab1;
    if (localTab1 == null) {
      localTab2 = new Tab();
    }
    return localTab2;
  }
  
  public FrameLayout.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return generateDefaultLayoutParams();
  }
  
  public int getSelectedTabPosition()
  {
    Tab localTab = this.selectedTab;
    int i;
    if (localTab != null) {
      i = localTab.getPosition();
    } else {
      i = -1;
    }
    return i;
  }
  
  public Tab getTabAt(int paramInt)
  {
    Tab localTab;
    if ((paramInt >= 0) && (paramInt < getTabCount())) {
      localTab = (Tab)this.tabs.get(paramInt);
    } else {
      localTab = null;
    }
    return localTab;
  }
  
  public int getTabCount()
  {
    return this.tabs.size();
  }
  
  public int getTabGravity()
  {
    return this.tabGravity;
  }
  
  public ColorStateList getTabIconTint()
  {
    return this.tabIconTint;
  }
  
  public int getTabIndicatorGravity()
  {
    return this.tabIndicatorGravity;
  }
  
  int getTabMaxWidth()
  {
    return this.tabMaxWidth;
  }
  
  public int getTabMode()
  {
    return this.mode;
  }
  
  public ColorStateList getTabRippleColor()
  {
    return this.tabRippleColorStateList;
  }
  
  public Drawable getTabSelectedIndicator()
  {
    return this.tabSelectedIndicator;
  }
  
  public ColorStateList getTabTextColors()
  {
    return this.tabTextColors;
  }
  
  public boolean hasUnboundedRipple()
  {
    return this.unboundedRipple;
  }
  
  public boolean isInlineLabel()
  {
    return this.inlineLabel;
  }
  
  public boolean isTabIndicatorFullWidth()
  {
    return this.tabIndicatorFullWidth;
  }
  
  public Tab newTab()
  {
    Tab localTab = createTabFromPool();
    localTab.parent = this;
    localTab.view = createTabView(localTab);
    return localTab;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    MaterialShapeUtils.setParentAbsoluteElevation(this);
    if (this.viewPager == null)
    {
      ViewParent localViewParent = getParent();
      if ((localViewParent instanceof ViewPager)) {
        setupWithViewPager((ViewPager)localViewParent, true, true);
      }
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.setupViewPagerImplicitly)
    {
      setupWithViewPager(null);
      this.setupViewPagerImplicitly = false;
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    for (int i = 0; i < this.slidingTabIndicator.getChildCount(); i++)
    {
      View localView = this.slidingTabIndicator.getChildAt(i);
      if ((localView instanceof TabView)) {
        ((TabView)localView).drawBackground(paramCanvas);
      }
    }
    super.onDraw(paramCanvas);
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    androidx.core.view.accessibility.g.s0(paramAccessibilityNodeInfo).T(g.b.b(1, getTabCount(), false, 1));
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = Math.round(ViewUtils.dpToPx(getContext(), getDefaultHeight()));
    int j = View.MeasureSpec.getMode(paramInt2);
    int k = 0;
    if (j != -2147483648)
    {
      if (j != 0) {
        j = paramInt2;
      } else {
        j = View.MeasureSpec.makeMeasureSpec(i + getPaddingTop() + getPaddingBottom(), 1073741824);
      }
    }
    else
    {
      j = paramInt2;
      if (getChildCount() == 1)
      {
        j = paramInt2;
        if (View.MeasureSpec.getSize(paramInt2) >= i)
        {
          getChildAt(0).setMinimumHeight(i);
          j = paramInt2;
        }
      }
    }
    i = View.MeasureSpec.getSize(paramInt1);
    if (View.MeasureSpec.getMode(paramInt1) != 0)
    {
      paramInt2 = this.requestedTabMaxWidth;
      if (paramInt2 <= 0) {
        paramInt2 = (int)(i - ViewUtils.dpToPx(getContext(), 56));
      }
      this.tabMaxWidth = paramInt2;
    }
    super.onMeasure(paramInt1, j);
    if (getChildCount() == 1)
    {
      View localView = getChildAt(0);
      paramInt1 = this.mode;
      if (paramInt1 != 0) {
        if (paramInt1 != 1)
        {
          if (paramInt1 != 2)
          {
            paramInt1 = k;
            break label227;
          }
        }
        else
        {
          paramInt1 = k;
          if (localView.getMeasuredWidth() == getMeasuredWidth()) {
            break label227;
          }
        }
      }
      do
      {
        paramInt1 = 1;
        break;
        paramInt1 = k;
      } while (localView.getMeasuredWidth() < getMeasuredWidth());
      label227:
      if (paramInt1 != 0)
      {
        paramInt1 = ViewGroup.getChildMeasureSpec(j, getPaddingTop() + getPaddingBottom(), localView.getLayoutParams().height);
        localView.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), paramInt1);
      }
    }
  }
  
  void populateFromPagerAdapter()
  {
    removeAllTabs();
    Object localObject = this.pagerAdapter;
    if (localObject != null)
    {
      int i = ((b)localObject).d();
      for (int j = 0; j < i; j++) {
        addTab(newTab().setText(this.pagerAdapter.f(j)), false);
      }
      localObject = this.viewPager;
      if ((localObject != null) && (i > 0))
      {
        j = ((ViewPager)localObject).getCurrentItem();
        if ((j != getSelectedTabPosition()) && (j < getTabCount())) {
          selectTab(getTabAt(j));
        }
      }
    }
  }
  
  protected boolean releaseFromTabPool(Tab paramTab)
  {
    return tabPool.a(paramTab);
  }
  
  public void removeAllTabs()
  {
    for (int i = this.slidingTabIndicator.getChildCount() - 1; i >= 0; i--) {
      removeTabViewAt(i);
    }
    Iterator localIterator = this.tabs.iterator();
    while (localIterator.hasNext())
    {
      Tab localTab = (Tab)localIterator.next();
      localIterator.remove();
      localTab.reset();
      releaseFromTabPool(localTab);
    }
    this.selectedTab = null;
  }
  
  @Deprecated
  public void removeOnTabSelectedListener(BaseOnTabSelectedListener paramBaseOnTabSelectedListener)
  {
    this.selectedListeners.remove(paramBaseOnTabSelectedListener);
  }
  
  public void removeOnTabSelectedListener(OnTabSelectedListener paramOnTabSelectedListener)
  {
    removeOnTabSelectedListener(paramOnTabSelectedListener);
  }
  
  public void removeTab(Tab paramTab)
  {
    if (paramTab.parent == this)
    {
      removeTabAt(paramTab.getPosition());
      return;
    }
    throw new IllegalArgumentException("Tab does not belong to this TabLayout.");
  }
  
  public void removeTabAt(int paramInt)
  {
    Tab localTab = this.selectedTab;
    int i;
    if (localTab != null) {
      i = localTab.getPosition();
    } else {
      i = 0;
    }
    removeTabViewAt(paramInt);
    localTab = (Tab)this.tabs.remove(paramInt);
    if (localTab != null)
    {
      localTab.reset();
      releaseFromTabPool(localTab);
    }
    int j = this.tabs.size();
    for (int k = paramInt; k < j; k++) {
      ((Tab)this.tabs.get(k)).setPosition(k);
    }
    if (i == paramInt)
    {
      if (this.tabs.isEmpty()) {
        localTab = null;
      } else {
        localTab = (Tab)this.tabs.get(Math.max(0, paramInt - 1));
      }
      selectTab(localTab);
    }
  }
  
  public void selectTab(Tab paramTab)
  {
    selectTab(paramTab, true);
  }
  
  public void selectTab(Tab paramTab, boolean paramBoolean)
  {
    Tab localTab = this.selectedTab;
    if (localTab == paramTab)
    {
      if (localTab != null)
      {
        dispatchTabReselected(paramTab);
        animateToTab(paramTab.getPosition());
      }
    }
    else
    {
      int i;
      if (paramTab != null) {
        i = paramTab.getPosition();
      } else {
        i = -1;
      }
      if (paramBoolean)
      {
        if (((localTab == null) || (localTab.getPosition() == -1)) && (i != -1)) {
          setScrollPosition(i, 0.0F, true);
        } else {
          animateToTab(i);
        }
        if (i != -1) {
          setSelectedTabView(i);
        }
      }
      this.selectedTab = paramTab;
      if (localTab != null) {
        dispatchTabUnselected(localTab);
      }
      if (paramTab != null) {
        dispatchTabSelected(paramTab);
      }
    }
  }
  
  public void setElevation(float paramFloat)
  {
    super.setElevation(paramFloat);
    MaterialShapeUtils.setElevation(this, paramFloat);
  }
  
  public void setInlineLabel(boolean paramBoolean)
  {
    if (this.inlineLabel != paramBoolean)
    {
      this.inlineLabel = paramBoolean;
      for (int i = 0; i < this.slidingTabIndicator.getChildCount(); i++)
      {
        View localView = this.slidingTabIndicator.getChildAt(i);
        if ((localView instanceof TabView)) {
          ((TabView)localView).updateOrientation();
        }
      }
      applyModeAndGravity();
    }
  }
  
  public void setInlineLabelResource(int paramInt)
  {
    setInlineLabel(getResources().getBoolean(paramInt));
  }
  
  @Deprecated
  public void setOnTabSelectedListener(BaseOnTabSelectedListener paramBaseOnTabSelectedListener)
  {
    BaseOnTabSelectedListener localBaseOnTabSelectedListener = this.selectedListener;
    if (localBaseOnTabSelectedListener != null) {
      removeOnTabSelectedListener(localBaseOnTabSelectedListener);
    }
    this.selectedListener = paramBaseOnTabSelectedListener;
    if (paramBaseOnTabSelectedListener != null) {
      addOnTabSelectedListener(paramBaseOnTabSelectedListener);
    }
  }
  
  @Deprecated
  public void setOnTabSelectedListener(OnTabSelectedListener paramOnTabSelectedListener)
  {
    setOnTabSelectedListener(paramOnTabSelectedListener);
  }
  
  void setPagerAdapter(b paramb, boolean paramBoolean)
  {
    b localb = this.pagerAdapter;
    if (localb != null)
    {
      DataSetObserver localDataSetObserver = this.pagerAdapterObserver;
      if (localDataSetObserver != null) {
        localb.s(localDataSetObserver);
      }
    }
    this.pagerAdapter = paramb;
    if ((paramBoolean) && (paramb != null))
    {
      if (this.pagerAdapterObserver == null) {
        this.pagerAdapterObserver = new PagerAdapterObserver();
      }
      paramb.k(this.pagerAdapterObserver);
    }
    populateFromPagerAdapter();
  }
  
  void setScrollAnimatorListener(Animator.AnimatorListener paramAnimatorListener)
  {
    ensureScrollAnimator();
    this.scrollAnimator.addListener(paramAnimatorListener);
  }
  
  public void setScrollPosition(int paramInt, float paramFloat, boolean paramBoolean)
  {
    setScrollPosition(paramInt, paramFloat, paramBoolean, true);
  }
  
  public void setScrollPosition(int paramInt, float paramFloat, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = Math.round(paramInt + paramFloat);
    if ((i >= 0) && (i < this.slidingTabIndicator.getChildCount()))
    {
      if (paramBoolean2) {
        this.slidingTabIndicator.setIndicatorPositionFromTabPosition(paramInt, paramFloat);
      }
      ValueAnimator localValueAnimator = this.scrollAnimator;
      if ((localValueAnimator != null) && (localValueAnimator.isRunning())) {
        this.scrollAnimator.cancel();
      }
      scrollTo(calculateScrollXForTab(paramInt, paramFloat), 0);
      if (paramBoolean1) {
        setSelectedTabView(i);
      }
    }
  }
  
  public void setSelectedTabIndicator(int paramInt)
  {
    if (paramInt != 0) {
      setSelectedTabIndicator(e.a.b(getContext(), paramInt));
    } else {
      setSelectedTabIndicator(null);
    }
  }
  
  public void setSelectedTabIndicator(Drawable paramDrawable)
  {
    if (this.tabSelectedIndicator != paramDrawable)
    {
      this.tabSelectedIndicator = paramDrawable;
      a0.c0(this.slidingTabIndicator);
    }
  }
  
  public void setSelectedTabIndicatorColor(int paramInt)
  {
    this.slidingTabIndicator.setSelectedIndicatorColor(paramInt);
  }
  
  public void setSelectedTabIndicatorGravity(int paramInt)
  {
    if (this.tabIndicatorGravity != paramInt)
    {
      this.tabIndicatorGravity = paramInt;
      a0.c0(this.slidingTabIndicator);
    }
  }
  
  @Deprecated
  public void setSelectedTabIndicatorHeight(int paramInt)
  {
    this.slidingTabIndicator.setSelectedIndicatorHeight(paramInt);
  }
  
  public void setTabGravity(int paramInt)
  {
    if (this.tabGravity != paramInt)
    {
      this.tabGravity = paramInt;
      applyModeAndGravity();
    }
  }
  
  public void setTabIconTint(ColorStateList paramColorStateList)
  {
    if (this.tabIconTint != paramColorStateList)
    {
      this.tabIconTint = paramColorStateList;
      updateAllTabs();
    }
  }
  
  public void setTabIconTintResource(int paramInt)
  {
    setTabIconTint(e.a.a(getContext(), paramInt));
  }
  
  public void setTabIndicatorFullWidth(boolean paramBoolean)
  {
    this.tabIndicatorFullWidth = paramBoolean;
    a0.c0(this.slidingTabIndicator);
  }
  
  public void setTabMode(int paramInt)
  {
    if (paramInt != this.mode)
    {
      this.mode = paramInt;
      applyModeAndGravity();
    }
  }
  
  public void setTabRippleColor(ColorStateList paramColorStateList)
  {
    if (this.tabRippleColorStateList != paramColorStateList)
    {
      this.tabRippleColorStateList = paramColorStateList;
      for (int i = 0; i < this.slidingTabIndicator.getChildCount(); i++)
      {
        paramColorStateList = this.slidingTabIndicator.getChildAt(i);
        if ((paramColorStateList instanceof TabView)) {
          ((TabView)paramColorStateList).updateBackgroundDrawable(getContext());
        }
      }
    }
  }
  
  public void setTabRippleColorResource(int paramInt)
  {
    setTabRippleColor(e.a.a(getContext(), paramInt));
  }
  
  public void setTabTextColors(int paramInt1, int paramInt2)
  {
    setTabTextColors(createColorStateList(paramInt1, paramInt2));
  }
  
  public void setTabTextColors(ColorStateList paramColorStateList)
  {
    if (this.tabTextColors != paramColorStateList)
    {
      this.tabTextColors = paramColorStateList;
      updateAllTabs();
    }
  }
  
  @Deprecated
  public void setTabsFromPagerAdapter(b paramb)
  {
    setPagerAdapter(paramb, false);
  }
  
  public void setUnboundedRipple(boolean paramBoolean)
  {
    if (this.unboundedRipple != paramBoolean)
    {
      this.unboundedRipple = paramBoolean;
      for (int i = 0; i < this.slidingTabIndicator.getChildCount(); i++)
      {
        View localView = this.slidingTabIndicator.getChildAt(i);
        if ((localView instanceof TabView)) {
          ((TabView)localView).updateBackgroundDrawable(getContext());
        }
      }
    }
  }
  
  public void setUnboundedRippleResource(int paramInt)
  {
    setUnboundedRipple(getResources().getBoolean(paramInt));
  }
  
  public void setupWithViewPager(ViewPager paramViewPager)
  {
    setupWithViewPager(paramViewPager, true);
  }
  
  public void setupWithViewPager(ViewPager paramViewPager, boolean paramBoolean)
  {
    setupWithViewPager(paramViewPager, paramBoolean, false);
  }
  
  public boolean shouldDelayChildPressedState()
  {
    boolean bool;
    if (getTabScrollRange() > 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  void updateTabViews(boolean paramBoolean)
  {
    for (int i = 0; i < this.slidingTabIndicator.getChildCount(); i++)
    {
      View localView = this.slidingTabIndicator.getChildAt(i);
      localView.setMinimumWidth(getTabMinWidth());
      updateTabViewLayoutParams((LinearLayout.LayoutParams)localView.getLayoutParams());
      if (paramBoolean) {
        localView.requestLayout();
      }
    }
  }
  
  private class AdapterChangeListener
    implements ViewPager.i
  {
    private boolean autoRefresh;
    
    AdapterChangeListener() {}
    
    public void onAdapterChanged(ViewPager paramViewPager, b paramb1, b paramb2)
    {
      paramb1 = TabLayout.this;
      if (paramb1.viewPager == paramViewPager) {
        paramb1.setPagerAdapter(paramb2, this.autoRefresh);
      }
    }
    
    void setAutoRefresh(boolean paramBoolean)
    {
      this.autoRefresh = paramBoolean;
    }
  }
  
  @Deprecated
  public static abstract interface BaseOnTabSelectedListener<T extends TabLayout.Tab>
  {
    public abstract void onTabReselected(T paramT);
    
    public abstract void onTabSelected(T paramT);
    
    public abstract void onTabUnselected(T paramT);
  }
  
  public static @interface LabelVisibility {}
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface Mode {}
  
  public static abstract interface OnTabSelectedListener
    extends TabLayout.BaseOnTabSelectedListener<TabLayout.Tab>
  {}
  
  private class PagerAdapterObserver
    extends DataSetObserver
  {
    PagerAdapterObserver() {}
    
    public void onChanged()
    {
      TabLayout.this.populateFromPagerAdapter();
    }
    
    public void onInvalidated()
    {
      TabLayout.this.populateFromPagerAdapter();
    }
  }
  
  class SlidingTabIndicator
    extends LinearLayout
  {
    private int animationStartLeft = -1;
    private int animationStartRight = -1;
    private final GradientDrawable defaultSelectionIndicator;
    ValueAnimator indicatorAnimator;
    int indicatorLeft = -1;
    int indicatorRight = -1;
    private int layoutDirection = -1;
    private int selectedIndicatorHeight;
    private final Paint selectedIndicatorPaint;
    int selectedPosition = -1;
    float selectionOffset;
    
    SlidingTabIndicator(Context paramContext)
    {
      super();
      setWillNotDraw(false);
      this.selectedIndicatorPaint = new Paint();
      this.defaultSelectionIndicator = new GradientDrawable();
    }
    
    private void calculateTabViewContentBounds(TabLayout.TabView paramTabView, RectF paramRectF)
    {
      int i = TabLayout.TabView.access$1400(paramTabView);
      int j = (int)ViewUtils.dpToPx(getContext(), 24);
      int k = i;
      if (i < j) {
        k = j;
      }
      j = (paramTabView.getLeft() + paramTabView.getRight()) / 2;
      k /= 2;
      paramRectF.set(j - k, 0.0F, j + k, 0.0F);
    }
    
    private void updateIndicatorPosition()
    {
      View localView = getChildAt(this.selectedPosition);
      int i;
      int j;
      if ((localView != null) && (localView.getWidth() > 0))
      {
        i = localView.getLeft();
        j = localView.getRight();
        TabLayout localTabLayout = TabLayout.this;
        int k = i;
        int m = j;
        if (!localTabLayout.tabIndicatorFullWidth)
        {
          k = i;
          m = j;
          if ((localView instanceof TabLayout.TabView))
          {
            calculateTabViewContentBounds((TabLayout.TabView)localView, localTabLayout.tabViewContentBounds);
            k = (int)TabLayout.this.tabViewContentBounds.left;
            m = (int)TabLayout.this.tabViewContentBounds.right;
          }
        }
        j = k;
        i = m;
        if (this.selectionOffset > 0.0F)
        {
          j = k;
          i = m;
          if (this.selectedPosition < getChildCount() - 1)
          {
            localView = getChildAt(this.selectedPosition + 1);
            int n = localView.getLeft();
            int i1 = localView.getRight();
            localTabLayout = TabLayout.this;
            i = n;
            j = i1;
            if (!localTabLayout.tabIndicatorFullWidth)
            {
              i = n;
              j = i1;
              if ((localView instanceof TabLayout.TabView))
              {
                calculateTabViewContentBounds((TabLayout.TabView)localView, localTabLayout.tabViewContentBounds);
                i = (int)TabLayout.this.tabViewContentBounds.left;
                j = (int)TabLayout.this.tabViewContentBounds.right;
              }
            }
            float f = this.selectionOffset;
            k = (int)(i * f + (1.0F - f) * k);
            i = (int)(j * f + (1.0F - f) * m);
            j = k;
          }
        }
      }
      else
      {
        j = -1;
        i = -1;
      }
      setIndicatorPosition(j, i);
    }
    
    private void updateOrRecreateIndicatorAnimation(boolean paramBoolean, final int paramInt1, int paramInt2)
    {
      Object localObject1 = getChildAt(paramInt1);
      if (localObject1 == null)
      {
        updateIndicatorPosition();
        return;
      }
      int i = ((View)localObject1).getLeft();
      int j = ((View)localObject1).getRight();
      Object localObject2 = TabLayout.this;
      final int k = i;
      final int m = j;
      if (!((TabLayout)localObject2).tabIndicatorFullWidth)
      {
        k = i;
        m = j;
        if ((localObject1 instanceof TabLayout.TabView))
        {
          calculateTabViewContentBounds((TabLayout.TabView)localObject1, ((TabLayout)localObject2).tabViewContentBounds);
          k = (int)TabLayout.this.tabViewContentBounds.left;
          m = (int)TabLayout.this.tabViewContentBounds.right;
        }
      }
      i = this.indicatorLeft;
      j = this.indicatorRight;
      if ((i == k) && (j == m)) {
        return;
      }
      if (paramBoolean)
      {
        this.animationStartLeft = i;
        this.animationStartRight = j;
      }
      localObject1 = new ValueAnimator.AnimatorUpdateListener()
      {
        public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
        {
          float f = paramAnonymousValueAnimator.getAnimatedFraction();
          paramAnonymousValueAnimator = TabLayout.SlidingTabIndicator.this;
          paramAnonymousValueAnimator.setIndicatorPosition(AnimationUtils.lerp(paramAnonymousValueAnimator.animationStartLeft, k, f), AnimationUtils.lerp(TabLayout.SlidingTabIndicator.this.animationStartRight, m, f));
        }
      };
      if (paramBoolean)
      {
        localObject2 = new ValueAnimator();
        this.indicatorAnimator = ((ValueAnimator)localObject2);
        ((ValueAnimator)localObject2).setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
        ((ValueAnimator)localObject2).setDuration(paramInt2);
        ((ValueAnimator)localObject2).setFloatValues(new float[] { 0.0F, 1.0F });
        ((ValueAnimator)localObject2).addUpdateListener((ValueAnimator.AnimatorUpdateListener)localObject1);
        ((Animator)localObject2).addListener(new AnimatorListenerAdapter()
        {
          public void onAnimationEnd(Animator paramAnonymousAnimator)
          {
            paramAnonymousAnimator = TabLayout.SlidingTabIndicator.this;
            paramAnonymousAnimator.selectedPosition = paramInt1;
            paramAnonymousAnimator.selectionOffset = 0.0F;
          }
          
          public void onAnimationStart(Animator paramAnonymousAnimator)
          {
            TabLayout.SlidingTabIndicator.this.selectedPosition = paramInt1;
          }
        });
        ((ValueAnimator)localObject2).start();
      }
      else
      {
        this.indicatorAnimator.removeAllUpdateListeners();
        this.indicatorAnimator.addUpdateListener((ValueAnimator.AnimatorUpdateListener)localObject1);
      }
    }
    
    void animateIndicatorToPosition(int paramInt1, int paramInt2)
    {
      ValueAnimator localValueAnimator = this.indicatorAnimator;
      if ((localValueAnimator != null) && (localValueAnimator.isRunning())) {
        this.indicatorAnimator.cancel();
      }
      updateOrRecreateIndicatorAnimation(true, paramInt1, paramInt2);
    }
    
    boolean childrenNeedLayout()
    {
      int i = getChildCount();
      for (int j = 0; j < i; j++) {
        if (getChildAt(j).getWidth() <= 0) {
          return true;
        }
      }
      return false;
    }
    
    public void draw(Canvas paramCanvas)
    {
      Object localObject = TabLayout.this.tabSelectedIndicator;
      int i = 0;
      int j;
      if (localObject != null) {
        j = ((Drawable)localObject).getIntrinsicHeight();
      } else {
        j = 0;
      }
      int k = this.selectedIndicatorHeight;
      if (k >= 0) {
        j = k;
      }
      int m = TabLayout.this.tabIndicatorGravity;
      if (m != 0)
      {
        if (m != 1)
        {
          k = i;
          if (m != 2) {
            if (m != 3)
            {
              j = 0;
              k = i;
            }
            else
            {
              j = getHeight();
              k = i;
            }
          }
        }
        else
        {
          k = (getHeight() - j) / 2;
          j = (getHeight() + j) / 2;
        }
      }
      else
      {
        k = getHeight() - j;
        j = getHeight();
      }
      i = this.indicatorLeft;
      if ((i >= 0) && (this.indicatorRight > i))
      {
        localObject = TabLayout.this.tabSelectedIndicator;
        if (localObject == null) {
          localObject = this.defaultSelectionIndicator;
        }
        localObject = androidx.core.graphics.drawable.a.r((Drawable)localObject).mutate();
        ((Drawable)localObject).setBounds(this.indicatorLeft, k, this.indicatorRight, j);
        Paint localPaint = this.selectedIndicatorPaint;
        if (localPaint != null) {
          androidx.core.graphics.drawable.a.n((Drawable)localObject, localPaint.getColor());
        }
        ((Drawable)localObject).draw(paramCanvas);
      }
      super.draw(paramCanvas);
    }
    
    float getIndicatorPosition()
    {
      return this.selectedPosition + this.selectionOffset;
    }
    
    protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      ValueAnimator localValueAnimator = this.indicatorAnimator;
      if ((localValueAnimator != null) && (localValueAnimator.isRunning())) {
        updateOrRecreateIndicatorAnimation(false, this.selectedPosition, -1);
      } else {
        updateIndicatorPosition();
      }
    }
    
    protected void onMeasure(int paramInt1, int paramInt2)
    {
      super.onMeasure(paramInt1, paramInt2);
      if (View.MeasureSpec.getMode(paramInt1) != 1073741824) {
        return;
      }
      Object localObject = TabLayout.this;
      int i = ((TabLayout)localObject).tabGravity;
      int j = 1;
      if ((i == 1) || (((TabLayout)localObject).mode == 2))
      {
        int k = getChildCount();
        int m = 0;
        i = 0;
        int i1;
        for (int n = i; i < k; n = i1)
        {
          localObject = getChildAt(i);
          i1 = n;
          if (((View)localObject).getVisibility() == 0) {
            i1 = Math.max(n, ((View)localObject).getMeasuredWidth());
          }
          i++;
        }
        if (n <= 0) {
          return;
        }
        i = (int)ViewUtils.dpToPx(getContext(), 16);
        if (n * k <= getMeasuredWidth() - i * 2)
        {
          i = 0;
          for (i1 = m; i1 < k; i1++)
          {
            localObject = (LinearLayout.LayoutParams)getChildAt(i1).getLayoutParams();
            if ((((LinearLayout.LayoutParams)localObject).width != n) || (((LinearLayout.LayoutParams)localObject).weight != 0.0F))
            {
              ((LinearLayout.LayoutParams)localObject).width = n;
              ((LinearLayout.LayoutParams)localObject).weight = 0.0F;
              i = 1;
            }
          }
        }
        else
        {
          localObject = TabLayout.this;
          ((TabLayout)localObject).tabGravity = 0;
          ((TabLayout)localObject).updateTabViews(false);
          i = j;
        }
        if (i != 0) {
          super.onMeasure(paramInt1, paramInt2);
        }
      }
    }
    
    public void onRtlPropertiesChanged(int paramInt)
    {
      super.onRtlPropertiesChanged(paramInt);
    }
    
    void setIndicatorPosition(int paramInt1, int paramInt2)
    {
      if ((paramInt1 != this.indicatorLeft) || (paramInt2 != this.indicatorRight))
      {
        this.indicatorLeft = paramInt1;
        this.indicatorRight = paramInt2;
        a0.c0(this);
      }
    }
    
    void setIndicatorPositionFromTabPosition(int paramInt, float paramFloat)
    {
      ValueAnimator localValueAnimator = this.indicatorAnimator;
      if ((localValueAnimator != null) && (localValueAnimator.isRunning())) {
        this.indicatorAnimator.cancel();
      }
      this.selectedPosition = paramInt;
      this.selectionOffset = paramFloat;
      updateIndicatorPosition();
    }
    
    void setSelectedIndicatorColor(int paramInt)
    {
      if (this.selectedIndicatorPaint.getColor() != paramInt)
      {
        this.selectedIndicatorPaint.setColor(paramInt);
        a0.c0(this);
      }
    }
    
    void setSelectedIndicatorHeight(int paramInt)
    {
      if (this.selectedIndicatorHeight != paramInt)
      {
        this.selectedIndicatorHeight = paramInt;
        a0.c0(this);
      }
    }
  }
  
  public static class Tab
  {
    public static final int INVALID_POSITION = -1;
    private CharSequence contentDesc;
    private View customView;
    private Drawable icon;
    @TabLayout.LabelVisibility
    private int labelVisibilityMode = 1;
    public TabLayout parent;
    private int position = -1;
    private Object tag;
    private CharSequence text;
    public TabLayout.TabView view;
    
    public BadgeDrawable getBadge()
    {
      return TabLayout.TabView.access$800(this.view);
    }
    
    public CharSequence getContentDescription()
    {
      Object localObject = this.view;
      if (localObject == null) {
        localObject = null;
      } else {
        localObject = ((View)localObject).getContentDescription();
      }
      return localObject;
    }
    
    public View getCustomView()
    {
      return this.customView;
    }
    
    public Drawable getIcon()
    {
      return this.icon;
    }
    
    public BadgeDrawable getOrCreateBadge()
    {
      return TabLayout.TabView.access$600(this.view);
    }
    
    public int getPosition()
    {
      return this.position;
    }
    
    @TabLayout.LabelVisibility
    public int getTabLabelVisibility()
    {
      return this.labelVisibilityMode;
    }
    
    public Object getTag()
    {
      return this.tag;
    }
    
    public CharSequence getText()
    {
      return this.text;
    }
    
    public boolean isSelected()
    {
      TabLayout localTabLayout = this.parent;
      if (localTabLayout != null)
      {
        boolean bool;
        if (localTabLayout.getSelectedTabPosition() == this.position) {
          bool = true;
        } else {
          bool = false;
        }
        return bool;
      }
      throw new IllegalArgumentException("Tab not attached to a TabLayout");
    }
    
    public void removeBadge()
    {
      TabLayout.TabView.access$700(this.view);
    }
    
    void reset()
    {
      this.parent = null;
      this.view = null;
      this.tag = null;
      this.icon = null;
      this.text = null;
      this.contentDesc = null;
      this.position = -1;
      this.customView = null;
    }
    
    public void select()
    {
      TabLayout localTabLayout = this.parent;
      if (localTabLayout != null)
      {
        localTabLayout.selectTab(this);
        return;
      }
      throw new IllegalArgumentException("Tab not attached to a TabLayout");
    }
    
    public Tab setContentDescription(int paramInt)
    {
      TabLayout localTabLayout = this.parent;
      if (localTabLayout != null) {
        return setContentDescription(localTabLayout.getResources().getText(paramInt));
      }
      throw new IllegalArgumentException("Tab not attached to a TabLayout");
    }
    
    public Tab setContentDescription(CharSequence paramCharSequence)
    {
      this.contentDesc = paramCharSequence;
      updateView();
      return this;
    }
    
    public Tab setCustomView(int paramInt)
    {
      return setCustomView(LayoutInflater.from(this.view.getContext()).inflate(paramInt, this.view, false));
    }
    
    public Tab setCustomView(View paramView)
    {
      this.customView = paramView;
      updateView();
      return this;
    }
    
    public Tab setIcon(int paramInt)
    {
      TabLayout localTabLayout = this.parent;
      if (localTabLayout != null) {
        return setIcon(e.a.b(localTabLayout.getContext(), paramInt));
      }
      throw new IllegalArgumentException("Tab not attached to a TabLayout");
    }
    
    public Tab setIcon(Drawable paramDrawable)
    {
      this.icon = paramDrawable;
      paramDrawable = this.parent;
      if ((paramDrawable.tabGravity == 1) || (paramDrawable.mode == 2)) {
        paramDrawable.updateTabViews(true);
      }
      updateView();
      if ((BadgeUtils.USE_COMPAT_PARENT) && (TabLayout.TabView.access$400(this.view)) && (TabLayout.TabView.access$500(this.view).isVisible())) {
        this.view.invalidate();
      }
      return this;
    }
    
    void setPosition(int paramInt)
    {
      this.position = paramInt;
    }
    
    public Tab setTabLabelVisibility(@TabLayout.LabelVisibility int paramInt)
    {
      this.labelVisibilityMode = paramInt;
      TabLayout localTabLayout = this.parent;
      if ((localTabLayout.tabGravity == 1) || (localTabLayout.mode == 2)) {
        localTabLayout.updateTabViews(true);
      }
      updateView();
      if ((BadgeUtils.USE_COMPAT_PARENT) && (TabLayout.TabView.access$400(this.view)) && (TabLayout.TabView.access$500(this.view).isVisible())) {
        this.view.invalidate();
      }
      return this;
    }
    
    public Tab setTag(Object paramObject)
    {
      this.tag = paramObject;
      return this;
    }
    
    public Tab setText(int paramInt)
    {
      TabLayout localTabLayout = this.parent;
      if (localTabLayout != null) {
        return setText(localTabLayout.getResources().getText(paramInt));
      }
      throw new IllegalArgumentException("Tab not attached to a TabLayout");
    }
    
    public Tab setText(CharSequence paramCharSequence)
    {
      if ((TextUtils.isEmpty(this.contentDesc)) && (!TextUtils.isEmpty(paramCharSequence))) {
        this.view.setContentDescription(paramCharSequence);
      }
      this.text = paramCharSequence;
      updateView();
      return this;
    }
    
    void updateView()
    {
      TabLayout.TabView localTabView = this.view;
      if (localTabView != null) {
        localTabView.update();
      }
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface TabGravity {}
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface TabIndicatorGravity {}
  
  public static class TabLayoutOnPageChangeListener
    implements ViewPager.j
  {
    private int previousScrollState;
    private int scrollState;
    private final WeakReference<TabLayout> tabLayoutRef;
    
    public TabLayoutOnPageChangeListener(TabLayout paramTabLayout)
    {
      this.tabLayoutRef = new WeakReference(paramTabLayout);
    }
    
    public void onPageScrollStateChanged(int paramInt)
    {
      this.previousScrollState = this.scrollState;
      this.scrollState = paramInt;
    }
    
    public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
    {
      TabLayout localTabLayout = (TabLayout)this.tabLayoutRef.get();
      if (localTabLayout != null)
      {
        paramInt2 = this.scrollState;
        boolean bool1 = false;
        boolean bool2;
        if ((paramInt2 == 2) && (this.previousScrollState != 1)) {
          bool2 = false;
        } else {
          bool2 = true;
        }
        if ((paramInt2 != 2) || (this.previousScrollState != 0)) {
          bool1 = true;
        }
        localTabLayout.setScrollPosition(paramInt1, paramFloat, bool2, bool1);
      }
    }
    
    public void onPageSelected(int paramInt)
    {
      TabLayout localTabLayout = (TabLayout)this.tabLayoutRef.get();
      if ((localTabLayout != null) && (localTabLayout.getSelectedTabPosition() != paramInt) && (paramInt < localTabLayout.getTabCount()))
      {
        int i = this.scrollState;
        boolean bool;
        if ((i != 0) && ((i != 2) || (this.previousScrollState != 0))) {
          bool = false;
        } else {
          bool = true;
        }
        localTabLayout.selectTab(localTabLayout.getTabAt(paramInt), bool);
      }
    }
    
    void reset()
    {
      this.scrollState = 0;
      this.previousScrollState = 0;
    }
  }
  
  public final class TabView
    extends LinearLayout
  {
    private View badgeAnchorView;
    private BadgeDrawable badgeDrawable;
    private Drawable baseBackgroundDrawable;
    private ImageView customIconView;
    private TextView customTextView;
    private View customView;
    private int defaultMaxLines = 2;
    private ImageView iconView;
    private TabLayout.Tab tab;
    private TextView textView;
    
    public TabView(Context paramContext)
    {
      super();
      updateBackgroundDrawable(paramContext);
      a0.A0(this, TabLayout.this.tabPaddingStart, TabLayout.this.tabPaddingTop, TabLayout.this.tabPaddingEnd, TabLayout.this.tabPaddingBottom);
      setGravity(17);
      setOrientation(TabLayout.this.inlineLabel ^ true);
      setClickable(true);
      a0.B0(this, y.b(getContext(), 1002));
    }
    
    private void addOnLayoutChangeListener(final View paramView)
    {
      if (paramView == null) {
        return;
      }
      paramView.addOnLayoutChangeListener(new View.OnLayoutChangeListener()
      {
        public void onLayoutChange(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4, int paramAnonymousInt5, int paramAnonymousInt6, int paramAnonymousInt7, int paramAnonymousInt8)
        {
          if (paramView.getVisibility() == 0) {
            TabLayout.TabView.this.tryUpdateBadgeDrawableBounds(paramView);
          }
        }
      });
    }
    
    private float approximateLineWidth(Layout paramLayout, int paramInt, float paramFloat)
    {
      return paramLayout.getLineWidth(paramInt) * (paramFloat / paramLayout.getPaint().getTextSize());
    }
    
    private void clipViewToPaddingForBadge(boolean paramBoolean)
    {
      setClipChildren(paramBoolean);
      setClipToPadding(paramBoolean);
      ViewGroup localViewGroup = (ViewGroup)getParent();
      if (localViewGroup != null)
      {
        localViewGroup.setClipChildren(paramBoolean);
        localViewGroup.setClipToPadding(paramBoolean);
      }
    }
    
    private FrameLayout createPreApi18BadgeAnchorRoot()
    {
      FrameLayout localFrameLayout = new FrameLayout(getContext());
      localFrameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
      return localFrameLayout;
    }
    
    private void drawBackground(Canvas paramCanvas)
    {
      Drawable localDrawable = this.baseBackgroundDrawable;
      if (localDrawable != null)
      {
        localDrawable.setBounds(getLeft(), getTop(), getRight(), getBottom());
        this.baseBackgroundDrawable.draw(paramCanvas);
      }
    }
    
    private BadgeDrawable getBadge()
    {
      return this.badgeDrawable;
    }
    
    private int getContentWidth()
    {
      TextView localTextView = this.textView;
      int i = 0;
      ImageView localImageView = this.iconView;
      View localView1 = this.customView;
      int j = 0;
      int k = j;
      int i2;
      for (int m = k; i < 3; m = i2)
      {
        View localView2 = new View[] { localTextView, localImageView, localView1 }[i];
        int n = j;
        int i1 = k;
        i2 = m;
        if (localView2 != null)
        {
          n = j;
          i1 = k;
          i2 = m;
          if (localView2.getVisibility() == 0)
          {
            if (m != 0) {
              k = Math.min(k, localView2.getLeft());
            } else {
              k = localView2.getLeft();
            }
            if (m != 0) {
              m = Math.max(j, localView2.getRight());
            } else {
              m = localView2.getRight();
            }
            i2 = 1;
            i1 = k;
            n = m;
          }
        }
        i++;
        j = n;
        k = i1;
      }
      return j - k;
    }
    
    private FrameLayout getCustomParentForBadge(View paramView)
    {
      ImageView localImageView = this.iconView;
      FrameLayout localFrameLayout = null;
      if ((paramView != localImageView) && (paramView != this.textView)) {
        return null;
      }
      if (BadgeUtils.USE_COMPAT_PARENT) {
        localFrameLayout = (FrameLayout)paramView.getParent();
      }
      return localFrameLayout;
    }
    
    private BadgeDrawable getOrCreateBadge()
    {
      if (this.badgeDrawable == null) {
        this.badgeDrawable = BadgeDrawable.create(getContext());
      }
      tryUpdateBadgeAnchor();
      BadgeDrawable localBadgeDrawable = this.badgeDrawable;
      if (localBadgeDrawable != null) {
        return localBadgeDrawable;
      }
      throw new IllegalStateException("Unable to create badge");
    }
    
    private boolean hasBadgeDrawable()
    {
      boolean bool;
      if (this.badgeDrawable != null) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    private void inflateAndAddDefaultIconView()
    {
      Object localObject;
      if (BadgeUtils.USE_COMPAT_PARENT)
      {
        localObject = createPreApi18BadgeAnchorRoot();
        addView((View)localObject, 0);
      }
      else
      {
        localObject = this;
      }
      ImageView localImageView = (ImageView)LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_icon, (ViewGroup)localObject, false);
      this.iconView = localImageView;
      ((ViewGroup)localObject).addView(localImageView, 0);
    }
    
    private void inflateAndAddDefaultTextView()
    {
      Object localObject;
      if (BadgeUtils.USE_COMPAT_PARENT)
      {
        localObject = createPreApi18BadgeAnchorRoot();
        addView((View)localObject);
      }
      else
      {
        localObject = this;
      }
      TextView localTextView = (TextView)LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_text, (ViewGroup)localObject, false);
      this.textView = localTextView;
      ((ViewGroup)localObject).addView(localTextView);
    }
    
    private void removeBadge()
    {
      if (this.badgeAnchorView != null) {
        tryRemoveBadgeFromAnchor();
      }
      this.badgeDrawable = null;
    }
    
    private void tryAttachBadgeToAnchor(View paramView)
    {
      if (!hasBadgeDrawable()) {
        return;
      }
      if (paramView != null)
      {
        clipViewToPaddingForBadge(false);
        BadgeUtils.attachBadgeDrawable(this.badgeDrawable, paramView, getCustomParentForBadge(paramView));
        this.badgeAnchorView = paramView;
      }
    }
    
    private void tryRemoveBadgeFromAnchor()
    {
      if (!hasBadgeDrawable()) {
        return;
      }
      clipViewToPaddingForBadge(true);
      View localView = this.badgeAnchorView;
      if (localView != null)
      {
        BadgeUtils.detachBadgeDrawable(this.badgeDrawable, localView, getCustomParentForBadge(localView));
        this.badgeAnchorView = null;
      }
    }
    
    private void tryUpdateBadgeAnchor()
    {
      if (!hasBadgeDrawable()) {
        return;
      }
      if (this.customView != null)
      {
        tryRemoveBadgeFromAnchor();
      }
      else
      {
        Object localObject;
        View localView;
        if (this.iconView != null)
        {
          localObject = this.tab;
          if ((localObject != null) && (((TabLayout.Tab)localObject).getIcon() != null))
          {
            localView = this.badgeAnchorView;
            localObject = this.iconView;
            if (localView != localObject)
            {
              tryRemoveBadgeFromAnchor();
              tryAttachBadgeToAnchor(this.iconView);
              return;
            }
            tryUpdateBadgeDrawableBounds((View)localObject);
            return;
          }
        }
        if (this.textView != null)
        {
          localObject = this.tab;
          if ((localObject != null) && (((TabLayout.Tab)localObject).getTabLabelVisibility() == 1))
          {
            localView = this.badgeAnchorView;
            localObject = this.textView;
            if (localView != localObject)
            {
              tryRemoveBadgeFromAnchor();
              tryAttachBadgeToAnchor(this.textView);
              return;
            }
            tryUpdateBadgeDrawableBounds((View)localObject);
            return;
          }
        }
        tryRemoveBadgeFromAnchor();
      }
    }
    
    private void tryUpdateBadgeDrawableBounds(View paramView)
    {
      if ((hasBadgeDrawable()) && (paramView == this.badgeAnchorView)) {
        BadgeUtils.setBadgeDrawableBounds(this.badgeDrawable, paramView, getCustomParentForBadge(paramView));
      }
    }
    
    private void updateBackgroundDrawable(Context paramContext)
    {
      int i = TabLayout.this.tabBackgroundResId;
      Object localObject1 = null;
      if (i != 0)
      {
        paramContext = e.a.b(paramContext, i);
        this.baseBackgroundDrawable = paramContext;
        if ((paramContext != null) && (paramContext.isStateful())) {
          this.baseBackgroundDrawable.setState(getDrawableState());
        }
      }
      else
      {
        this.baseBackgroundDrawable = null;
      }
      paramContext = new GradientDrawable();
      paramContext.setColor(0);
      Object localObject2 = paramContext;
      if (TabLayout.this.tabRippleColorStateList != null)
      {
        localObject2 = new GradientDrawable();
        ((GradientDrawable)localObject2).setCornerRadius(1.0E-005F);
        ((GradientDrawable)localObject2).setColor(-1);
        ColorStateList localColorStateList = RippleUtils.convertToRippleDrawableColor(TabLayout.this.tabRippleColorStateList);
        boolean bool = TabLayout.this.unboundedRipple;
        if (bool) {
          paramContext = null;
        }
        if (bool) {
          localObject2 = localObject1;
        }
        localObject2 = new RippleDrawable(localColorStateList, paramContext, (Drawable)localObject2);
      }
      a0.p0(this, (Drawable)localObject2);
      TabLayout.this.invalidate();
    }
    
    private void updateTextAndIcon(TextView paramTextView, ImageView paramImageView)
    {
      Object localObject1 = this.tab;
      Object localObject2 = null;
      if ((localObject1 != null) && (((TabLayout.Tab)localObject1).getIcon() != null)) {
        localObject1 = androidx.core.graphics.drawable.a.r(this.tab.getIcon()).mutate();
      } else {
        localObject1 = null;
      }
      Object localObject3 = this.tab;
      if (localObject3 != null) {
        localObject3 = ((TabLayout.Tab)localObject3).getText();
      } else {
        localObject3 = null;
      }
      if (paramImageView != null) {
        if (localObject1 != null)
        {
          paramImageView.setImageDrawable((Drawable)localObject1);
          paramImageView.setVisibility(0);
          setVisibility(0);
        }
        else
        {
          paramImageView.setVisibility(8);
          paramImageView.setImageDrawable(null);
        }
      }
      boolean bool = TextUtils.isEmpty((CharSequence)localObject3) ^ true;
      if (paramTextView != null) {
        if (bool)
        {
          paramTextView.setText((CharSequence)localObject3);
          if (this.tab.labelVisibilityMode == 1) {
            paramTextView.setVisibility(0);
          } else {
            paramTextView.setVisibility(8);
          }
          setVisibility(0);
        }
        else
        {
          paramTextView.setVisibility(8);
          paramTextView.setText(null);
        }
      }
      if (paramImageView != null)
      {
        paramTextView = (ViewGroup.MarginLayoutParams)paramImageView.getLayoutParams();
        int i;
        if ((bool) && (paramImageView.getVisibility() == 0)) {
          i = (int)ViewUtils.dpToPx(getContext(), 8);
        } else {
          i = 0;
        }
        if (TabLayout.this.inlineLabel)
        {
          if (i != h.a(paramTextView))
          {
            h.c(paramTextView, i);
            paramTextView.bottomMargin = 0;
            paramImageView.setLayoutParams(paramTextView);
            paramImageView.requestLayout();
          }
        }
        else if (i != paramTextView.bottomMargin)
        {
          paramTextView.bottomMargin = i;
          h.c(paramTextView, 0);
          paramImageView.setLayoutParams(paramTextView);
          paramImageView.requestLayout();
        }
      }
      paramTextView = this.tab;
      if (paramTextView != null) {
        paramTextView = paramTextView.contentDesc;
      } else {
        paramTextView = null;
      }
      if (bool) {
        paramTextView = localObject2;
      }
      c1.a(this, paramTextView);
    }
    
    protected void drawableStateChanged()
    {
      super.drawableStateChanged();
      int[] arrayOfInt = getDrawableState();
      Drawable localDrawable = this.baseBackgroundDrawable;
      boolean bool1 = false;
      boolean bool2 = bool1;
      if (localDrawable != null)
      {
        bool2 = bool1;
        if (localDrawable.isStateful()) {
          bool2 = false | this.baseBackgroundDrawable.setState(arrayOfInt);
        }
      }
      if (bool2)
      {
        invalidate();
        TabLayout.this.invalidate();
      }
    }
    
    public TabLayout.Tab getTab()
    {
      return this.tab;
    }
    
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
    {
      super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
      Object localObject = this.badgeDrawable;
      if ((localObject != null) && (((Drawable)localObject).isVisible()))
      {
        CharSequence localCharSequence = getContentDescription();
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append(localCharSequence);
        ((StringBuilder)localObject).append(", ");
        ((StringBuilder)localObject).append(this.badgeDrawable.getContentDescription());
        paramAccessibilityNodeInfo.setContentDescription(((StringBuilder)localObject).toString());
      }
      paramAccessibilityNodeInfo = androidx.core.view.accessibility.g.s0(paramAccessibilityNodeInfo);
      paramAccessibilityNodeInfo.U(g.c.f(0, 1, this.tab.getPosition(), 1, false, isSelected()));
      if (isSelected())
      {
        paramAccessibilityNodeInfo.S(false);
        paramAccessibilityNodeInfo.K(g.a.i);
      }
      paramAccessibilityNodeInfo.j0("Tab");
    }
    
    public void onMeasure(int paramInt1, int paramInt2)
    {
      int i = View.MeasureSpec.getSize(paramInt1);
      int j = View.MeasureSpec.getMode(paramInt1);
      int k = TabLayout.this.getTabMaxWidth();
      int m = paramInt1;
      if (k > 0) {
        if (j != 0)
        {
          m = paramInt1;
          if (i <= k) {}
        }
        else
        {
          m = View.MeasureSpec.makeMeasureSpec(TabLayout.this.tabMaxWidth, -2147483648);
        }
      }
      super.onMeasure(m, paramInt2);
      if (this.textView != null)
      {
        float f1 = TabLayout.this.tabTextSize;
        i = this.defaultMaxLines;
        Object localObject = this.iconView;
        k = 1;
        float f2;
        if ((localObject != null) && (((View)localObject).getVisibility() == 0))
        {
          paramInt1 = 1;
          f2 = f1;
        }
        else
        {
          localObject = this.textView;
          f2 = f1;
          paramInt1 = i;
          if (localObject != null)
          {
            f2 = f1;
            paramInt1 = i;
            if (((TextView)localObject).getLineCount() > 1)
            {
              f2 = TabLayout.this.tabTextMultiLineSize;
              paramInt1 = i;
            }
          }
        }
        f1 = this.textView.getTextSize();
        j = this.textView.getLineCount();
        i = l.d(this.textView);
        boolean bool = f2 < f1;
        if ((bool) || ((i >= 0) && (paramInt1 != i)))
        {
          i = k;
          if (TabLayout.this.mode == 1)
          {
            i = k;
            if (bool)
            {
              i = k;
              if (j == 1)
              {
                localObject = this.textView.getLayout();
                if (localObject != null)
                {
                  i = k;
                  if (approximateLineWidth((Layout)localObject, 0, f2) <= getMeasuredWidth() - getPaddingLeft() - getPaddingRight()) {}
                }
                else
                {
                  i = 0;
                }
              }
            }
          }
          if (i != 0)
          {
            this.textView.setTextSize(0, f2);
            this.textView.setMaxLines(paramInt1);
            super.onMeasure(m, paramInt2);
          }
        }
      }
    }
    
    public boolean performClick()
    {
      boolean bool1 = super.performClick();
      boolean bool2 = bool1;
      if (this.tab != null)
      {
        if (!bool1) {
          playSoundEffect(0);
        }
        this.tab.select();
        bool2 = true;
      }
      return bool2;
    }
    
    void reset()
    {
      setTab(null);
      setSelected(false);
    }
    
    public void setSelected(boolean paramBoolean)
    {
      if (isSelected() == paramBoolean) {}
      super.setSelected(paramBoolean);
      Object localObject = this.textView;
      if (localObject != null) {
        ((TextView)localObject).setSelected(paramBoolean);
      }
      localObject = this.iconView;
      if (localObject != null) {
        ((ImageView)localObject).setSelected(paramBoolean);
      }
      localObject = this.customView;
      if (localObject != null) {
        ((View)localObject).setSelected(paramBoolean);
      }
    }
    
    void setTab(TabLayout.Tab paramTab)
    {
      if (paramTab != this.tab)
      {
        this.tab = paramTab;
        update();
      }
    }
    
    final void update()
    {
      TabLayout.Tab localTab = this.tab;
      PorterDuff.Mode localMode = null;
      Object localObject1;
      if (localTab != null) {
        localObject1 = localTab.getCustomView();
      } else {
        localObject1 = null;
      }
      if (localObject1 != null)
      {
        Object localObject2 = ((View)localObject1).getParent();
        if (localObject2 != this)
        {
          if (localObject2 != null) {
            ((ViewGroup)localObject2).removeView((View)localObject1);
          }
          addView((View)localObject1);
        }
        this.customView = ((View)localObject1);
        localObject2 = this.textView;
        if (localObject2 != null) {
          ((View)localObject2).setVisibility(8);
        }
        localObject2 = this.iconView;
        if (localObject2 != null)
        {
          ((ImageView)localObject2).setVisibility(8);
          this.iconView.setImageDrawable(null);
        }
        localObject2 = (TextView)((View)localObject1).findViewById(16908308);
        this.customTextView = ((TextView)localObject2);
        if (localObject2 != null) {
          this.defaultMaxLines = l.d((TextView)localObject2);
        }
        this.customIconView = ((ImageView)((View)localObject1).findViewById(16908294));
      }
      else
      {
        localObject1 = this.customView;
        if (localObject1 != null)
        {
          removeView((View)localObject1);
          this.customView = null;
        }
        this.customTextView = null;
        this.customIconView = null;
      }
      if (this.customView == null)
      {
        if (this.iconView == null) {
          inflateAndAddDefaultIconView();
        }
        localObject1 = localMode;
        if (localTab != null)
        {
          localObject1 = localMode;
          if (localTab.getIcon() != null) {
            localObject1 = androidx.core.graphics.drawable.a.r(localTab.getIcon()).mutate();
          }
        }
        if (localObject1 != null)
        {
          androidx.core.graphics.drawable.a.o((Drawable)localObject1, TabLayout.this.tabIconTint);
          localMode = TabLayout.this.tabIconTintMode;
          if (localMode != null) {
            androidx.core.graphics.drawable.a.p((Drawable)localObject1, localMode);
          }
        }
        if (this.textView == null)
        {
          inflateAndAddDefaultTextView();
          this.defaultMaxLines = l.d(this.textView);
        }
        l.o(this.textView, TabLayout.this.tabTextAppearance);
        localObject1 = TabLayout.this.tabTextColors;
        if (localObject1 != null) {
          this.textView.setTextColor((ColorStateList)localObject1);
        }
        updateTextAndIcon(this.textView, this.iconView);
        tryUpdateBadgeAnchor();
        addOnLayoutChangeListener(this.iconView);
        addOnLayoutChangeListener(this.textView);
      }
      else
      {
        localObject1 = this.customTextView;
        if ((localObject1 != null) || (this.customIconView != null)) {
          updateTextAndIcon((TextView)localObject1, this.customIconView);
        }
      }
      if ((localTab != null) && (!TextUtils.isEmpty(localTab.contentDesc))) {
        setContentDescription(localTab.contentDesc);
      }
      boolean bool;
      if ((localTab != null) && (localTab.isSelected())) {
        bool = true;
      } else {
        bool = false;
      }
      setSelected(bool);
    }
    
    final void updateOrientation()
    {
      setOrientation(TabLayout.this.inlineLabel ^ true);
      TextView localTextView = this.customTextView;
      if ((localTextView == null) && (this.customIconView == null)) {
        updateTextAndIcon(this.textView, this.iconView);
      } else {
        updateTextAndIcon(localTextView, this.customIconView);
      }
    }
  }
  
  public static class ViewPagerOnTabSelectedListener
    implements TabLayout.OnTabSelectedListener
  {
    private final ViewPager viewPager;
    
    public ViewPagerOnTabSelectedListener(ViewPager paramViewPager)
    {
      this.viewPager = paramViewPager;
    }
    
    public void onTabReselected(TabLayout.Tab paramTab) {}
    
    public void onTabSelected(TabLayout.Tab paramTab)
    {
      this.viewPager.setCurrentItem(paramTab.getPosition());
    }
    
    public void onTabUnselected(TabLayout.Tab paramTab) {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.tabs.TabLayout
 * JD-Core Version:    0.7.0.1
 */