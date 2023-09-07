package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.text.Layout;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.a.a;
import androidx.appcompat.view.menu.g.a;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.m.a;
import androidx.appcompat.view.menu.r;
import androidx.core.view.a0;
import androidx.core.view.e;
import androidx.core.view.h;
import androidx.core.view.k;
import androidx.customview.view.AbsSavedState;
import androidx.lifecycle.Lifecycle.State;
import androidx.lifecycle.n;
import d.j;
import h.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Toolbar
  extends ViewGroup
{
  private static final String TAG = "Toolbar";
  private m.a mActionMenuPresenterCallback;
  int mButtonGravity;
  ImageButton mCollapseButtonView;
  private CharSequence mCollapseDescription;
  private Drawable mCollapseIcon;
  private boolean mCollapsible;
  private int mContentInsetEndWithActions;
  private int mContentInsetStartWithNavigation;
  private r0 mContentInsets;
  private boolean mEatingHover;
  private boolean mEatingTouch;
  View mExpandedActionView;
  private d mExpandedMenuPresenter;
  private int mGravity = 8388627;
  private final ArrayList<View> mHiddenViews = new ArrayList();
  private ImageView mLogoView;
  private int mMaxButtonHeight;
  private g.a mMenuBuilderCallback;
  final k mMenuHostHelper = new k(new a1(this));
  private ActionMenuView mMenuView;
  private final ActionMenuView.e mMenuViewItemClickListener = new a();
  private ImageButton mNavButtonView;
  f mOnMenuItemClickListener;
  private ActionMenuPresenter mOuterActionMenuPresenter;
  private Context mPopupContext;
  private int mPopupTheme;
  private ArrayList<MenuItem> mProvidedMenuItems = new ArrayList();
  private final Runnable mShowOverflowMenuRunnable = new b();
  private CharSequence mSubtitleText;
  private int mSubtitleTextAppearance;
  private ColorStateList mSubtitleTextColor;
  private TextView mSubtitleTextView;
  private final int[] mTempMargins = new int[2];
  private final ArrayList<View> mTempViews = new ArrayList();
  private int mTitleMarginBottom;
  private int mTitleMarginEnd;
  private int mTitleMarginStart;
  private int mTitleMarginTop;
  private CharSequence mTitleText;
  private int mTitleTextAppearance;
  private ColorStateList mTitleTextColor;
  private TextView mTitleTextView;
  private b1 mWrapper;
  
  public Toolbar(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public Toolbar(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, d.a.P);
  }
  
  public Toolbar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Object localObject = getContext();
    int[] arrayOfInt = j.d3;
    localObject = z0.v((Context)localObject, paramAttributeSet, arrayOfInt, paramInt, 0);
    a0.j0(this, paramContext, arrayOfInt, paramAttributeSet, ((z0)localObject).r(), paramInt, 0);
    this.mTitleTextAppearance = ((z0)localObject).n(j.F3, 0);
    this.mSubtitleTextAppearance = ((z0)localObject).n(j.w3, 0);
    this.mGravity = ((z0)localObject).l(j.e3, this.mGravity);
    this.mButtonGravity = ((z0)localObject).l(j.f3, 48);
    int i = ((z0)localObject).e(j.z3, 0);
    int j = j.E3;
    paramInt = i;
    if (((z0)localObject).s(j)) {
      paramInt = ((z0)localObject).e(j, i);
    }
    this.mTitleMarginBottom = paramInt;
    this.mTitleMarginTop = paramInt;
    this.mTitleMarginEnd = paramInt;
    this.mTitleMarginStart = paramInt;
    paramInt = ((z0)localObject).e(j.C3, -1);
    if (paramInt >= 0) {
      this.mTitleMarginStart = paramInt;
    }
    paramInt = ((z0)localObject).e(j.B3, -1);
    if (paramInt >= 0) {
      this.mTitleMarginEnd = paramInt;
    }
    paramInt = ((z0)localObject).e(j.D3, -1);
    if (paramInt >= 0) {
      this.mTitleMarginTop = paramInt;
    }
    paramInt = ((z0)localObject).e(j.A3, -1);
    if (paramInt >= 0) {
      this.mTitleMarginBottom = paramInt;
    }
    this.mMaxButtonHeight = ((z0)localObject).f(j.q3, -1);
    paramInt = ((z0)localObject).e(j.m3, -2147483648);
    i = ((z0)localObject).e(j.i3, -2147483648);
    j = ((z0)localObject).f(j.k3, 0);
    int k = ((z0)localObject).f(j.l3, 0);
    ensureContentInsets();
    this.mContentInsets.e(j, k);
    if ((paramInt != -2147483648) || (i != -2147483648)) {
      this.mContentInsets.g(paramInt, i);
    }
    this.mContentInsetStartWithNavigation = ((z0)localObject).e(j.n3, -2147483648);
    this.mContentInsetEndWithActions = ((z0)localObject).e(j.j3, -2147483648);
    this.mCollapseIcon = ((z0)localObject).g(j.h3);
    this.mCollapseDescription = ((z0)localObject).p(j.g3);
    paramContext = ((z0)localObject).p(j.y3);
    if (!TextUtils.isEmpty(paramContext)) {
      setTitle(paramContext);
    }
    paramContext = ((z0)localObject).p(j.v3);
    if (!TextUtils.isEmpty(paramContext)) {
      setSubtitle(paramContext);
    }
    this.mPopupContext = getContext();
    setPopupTheme(((z0)localObject).n(j.u3, 0));
    paramContext = ((z0)localObject).g(j.t3);
    if (paramContext != null) {
      setNavigationIcon(paramContext);
    }
    paramContext = ((z0)localObject).p(j.s3);
    if (!TextUtils.isEmpty(paramContext)) {
      setNavigationContentDescription(paramContext);
    }
    paramContext = ((z0)localObject).g(j.o3);
    if (paramContext != null) {
      setLogo(paramContext);
    }
    paramContext = ((z0)localObject).p(j.p3);
    if (!TextUtils.isEmpty(paramContext)) {
      setLogoDescription(paramContext);
    }
    paramInt = j.G3;
    if (((z0)localObject).s(paramInt)) {
      setTitleTextColor(((z0)localObject).c(paramInt));
    }
    paramInt = j.x3;
    if (((z0)localObject).s(paramInt)) {
      setSubtitleTextColor(((z0)localObject).c(paramInt));
    }
    paramInt = j.r3;
    if (((z0)localObject).s(paramInt)) {
      inflateMenu(((z0)localObject).n(paramInt, 0));
    }
    ((z0)localObject).w();
  }
  
  private void addCustomViewsWithGravity(List<View> paramList, int paramInt)
  {
    int i = a0.z(this);
    int j = 0;
    if (i == 1) {
      i = 1;
    } else {
      i = 0;
    }
    int k = getChildCount();
    int m = e.b(paramInt, a0.z(this));
    paramList.clear();
    paramInt = j;
    View localView;
    e locale;
    if (i != 0) {
      for (paramInt = k - 1; paramInt >= 0; paramInt--)
      {
        localView = getChildAt(paramInt);
        locale = (e)localView.getLayoutParams();
        if ((locale.b == 0) && (shouldLayout(localView)) && (getChildHorizontalGravity(locale.a) == m)) {
          paramList.add(localView);
        }
      }
    }
    while (paramInt < k)
    {
      localView = getChildAt(paramInt);
      locale = (e)localView.getLayoutParams();
      if ((locale.b == 0) && (shouldLayout(localView)) && (getChildHorizontalGravity(locale.a) == m)) {
        paramList.add(localView);
      }
      paramInt++;
    }
  }
  
  private void addSystemView(View paramView, boolean paramBoolean)
  {
    Object localObject = paramView.getLayoutParams();
    if (localObject == null) {
      localObject = generateDefaultLayoutParams();
    } else if (!checkLayoutParams((ViewGroup.LayoutParams)localObject)) {
      localObject = generateLayoutParams((ViewGroup.LayoutParams)localObject);
    } else {
      localObject = (e)localObject;
    }
    ((e)localObject).b = 1;
    if ((paramBoolean) && (this.mExpandedActionView != null))
    {
      paramView.setLayoutParams((ViewGroup.LayoutParams)localObject);
      this.mHiddenViews.add(paramView);
    }
    else
    {
      addView(paramView, (ViewGroup.LayoutParams)localObject);
    }
  }
  
  private void ensureContentInsets()
  {
    if (this.mContentInsets == null) {
      this.mContentInsets = new r0();
    }
  }
  
  private void ensureLogoView()
  {
    if (this.mLogoView == null) {
      this.mLogoView = new AppCompatImageView(getContext());
    }
  }
  
  private void ensureMenu()
  {
    ensureMenuView();
    if (this.mMenuView.n() == null)
    {
      androidx.appcompat.view.menu.g localg = (androidx.appcompat.view.menu.g)this.mMenuView.getMenu();
      if (this.mExpandedMenuPresenter == null) {
        this.mExpandedMenuPresenter = new d();
      }
      this.mMenuView.setExpandedActionViewsExclusive(true);
      localg.addMenuPresenter(this.mExpandedMenuPresenter, this.mPopupContext);
    }
  }
  
  private void ensureMenuView()
  {
    if (this.mMenuView == null)
    {
      Object localObject = new ActionMenuView(getContext());
      this.mMenuView = ((ActionMenuView)localObject);
      ((ActionMenuView)localObject).setPopupTheme(this.mPopupTheme);
      this.mMenuView.setOnMenuItemClickListener(this.mMenuViewItemClickListener);
      this.mMenuView.o(this.mActionMenuPresenterCallback, this.mMenuBuilderCallback);
      localObject = generateDefaultLayoutParams();
      ((a.a)localObject).a = (0x800005 | this.mButtonGravity & 0x70);
      this.mMenuView.setLayoutParams((ViewGroup.LayoutParams)localObject);
      addSystemView(this.mMenuView, false);
    }
  }
  
  private void ensureNavButtonView()
  {
    if (this.mNavButtonView == null)
    {
      this.mNavButtonView = new l(getContext(), null, d.a.O);
      e locale = generateDefaultLayoutParams();
      locale.a = (0x800003 | this.mButtonGravity & 0x70);
      this.mNavButtonView.setLayoutParams(locale);
    }
  }
  
  private int getChildHorizontalGravity(int paramInt)
  {
    int i = a0.z(this);
    int j = e.b(paramInt, i) & 0x7;
    if (j != 1)
    {
      paramInt = 3;
      if ((j != 3) && (j != 5))
      {
        if (i == 1) {
          paramInt = 5;
        }
        return paramInt;
      }
    }
    return j;
  }
  
  private int getChildTop(View paramView, int paramInt)
  {
    e locale = (e)paramView.getLayoutParams();
    int i = paramView.getMeasuredHeight();
    if (paramInt > 0) {
      paramInt = (i - paramInt) / 2;
    } else {
      paramInt = 0;
    }
    int j = getChildVerticalGravity(locale.a);
    if (j != 48)
    {
      if (j != 80)
      {
        int k = getPaddingTop();
        int m = getPaddingBottom();
        int n = getHeight();
        j = (n - k - m - i) / 2;
        paramInt = locale.topMargin;
        if (j >= paramInt)
        {
          m = n - m - i - j - k;
          i = locale.bottomMargin;
          paramInt = j;
          if (m < i) {
            paramInt = Math.max(0, j - (i - m));
          }
        }
        return k + paramInt;
      }
      return getHeight() - getPaddingBottom() - i - locale.bottomMargin - paramInt;
    }
    return getPaddingTop() - paramInt;
  }
  
  private int getChildVerticalGravity(int paramInt)
  {
    int i = paramInt & 0x70;
    paramInt = i;
    if (i != 16)
    {
      paramInt = i;
      if (i != 48)
      {
        paramInt = i;
        if (i != 80) {
          paramInt = this.mGravity & 0x70;
        }
      }
    }
    return paramInt;
  }
  
  private ArrayList<MenuItem> getCurrentMenuItems()
  {
    ArrayList localArrayList = new ArrayList();
    Menu localMenu = getMenu();
    for (int i = 0; i < localMenu.size(); i++) {
      localArrayList.add(localMenu.getItem(i));
    }
    return localArrayList;
  }
  
  private int getHorizontalMargins(View paramView)
  {
    paramView = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    return h.b(paramView) + h.a(paramView);
  }
  
  private MenuInflater getMenuInflater()
  {
    return new h.g(getContext());
  }
  
  private int getVerticalMargins(View paramView)
  {
    paramView = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    return paramView.topMargin + paramView.bottomMargin;
  }
  
  private int getViewListMeasuredWidth(List<View> paramList, int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt[0];
    int j = paramArrayOfInt[1];
    int k = paramList.size();
    int m = 0;
    int n = m;
    while (m < k)
    {
      paramArrayOfInt = (View)paramList.get(m);
      e locale = (e)paramArrayOfInt.getLayoutParams();
      i = locale.leftMargin - i;
      j = locale.rightMargin - j;
      int i1 = Math.max(0, i);
      int i2 = Math.max(0, j);
      i = Math.max(0, -i);
      j = Math.max(0, -j);
      n += i1 + paramArrayOfInt.getMeasuredWidth() + i2;
      m++;
    }
    return n;
  }
  
  private boolean isChildOrHidden(View paramView)
  {
    boolean bool;
    if ((paramView.getParent() != this) && (!this.mHiddenViews.contains(paramView))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private int layoutChildLeft(View paramView, int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    e locale = (e)paramView.getLayoutParams();
    int i = locale.leftMargin - paramArrayOfInt[0];
    paramInt1 += Math.max(0, i);
    paramArrayOfInt[0] = Math.max(0, -i);
    paramInt2 = getChildTop(paramView, paramInt2);
    i = paramView.getMeasuredWidth();
    paramView.layout(paramInt1, paramInt2, paramInt1 + i, paramView.getMeasuredHeight() + paramInt2);
    return paramInt1 + (i + locale.rightMargin);
  }
  
  private int layoutChildRight(View paramView, int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    e locale = (e)paramView.getLayoutParams();
    int i = locale.rightMargin - paramArrayOfInt[1];
    paramInt1 -= Math.max(0, i);
    paramArrayOfInt[1] = Math.max(0, -i);
    paramInt2 = getChildTop(paramView, paramInt2);
    i = paramView.getMeasuredWidth();
    paramView.layout(paramInt1 - i, paramInt2, paramInt1, paramView.getMeasuredHeight() + paramInt2);
    return paramInt1 - (i + locale.leftMargin);
  }
  
  private int measureChildCollapseMargins(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i = localMarginLayoutParams.leftMargin - paramArrayOfInt[0];
    int j = localMarginLayoutParams.rightMargin - paramArrayOfInt[1];
    int k = Math.max(0, i) + Math.max(0, j);
    paramArrayOfInt[0] = Math.max(0, -i);
    paramArrayOfInt[1] = Math.max(0, -j);
    paramView.measure(ViewGroup.getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + k + paramInt2, localMarginLayoutParams.width), ViewGroup.getChildMeasureSpec(paramInt3, getPaddingTop() + getPaddingBottom() + localMarginLayoutParams.topMargin + localMarginLayoutParams.bottomMargin + paramInt4, localMarginLayoutParams.height));
    return paramView.getMeasuredWidth() + k;
  }
  
  private void measureChildConstrained(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i = ViewGroup.getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + localMarginLayoutParams.leftMargin + localMarginLayoutParams.rightMargin + paramInt2, localMarginLayoutParams.width);
    paramInt2 = ViewGroup.getChildMeasureSpec(paramInt3, getPaddingTop() + getPaddingBottom() + localMarginLayoutParams.topMargin + localMarginLayoutParams.bottomMargin + paramInt4, localMarginLayoutParams.height);
    paramInt3 = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = paramInt2;
    if (paramInt3 != 1073741824)
    {
      paramInt1 = paramInt2;
      if (paramInt5 >= 0)
      {
        paramInt1 = paramInt5;
        if (paramInt3 != 0) {
          paramInt1 = Math.min(View.MeasureSpec.getSize(paramInt2), paramInt5);
        }
        paramInt1 = View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824);
      }
    }
    paramView.measure(i, paramInt1);
  }
  
  private void onCreateMenu()
  {
    ArrayList localArrayList1 = getCurrentMenuItems();
    this.mMenuHostHelper.h(getMenu(), getMenuInflater());
    ArrayList localArrayList2 = getCurrentMenuItems();
    localArrayList2.removeAll(localArrayList1);
    this.mProvidedMenuItems = localArrayList2;
  }
  
  private void postShowOverflowMenu()
  {
    removeCallbacks(this.mShowOverflowMenuRunnable);
    post(this.mShowOverflowMenuRunnable);
  }
  
  private boolean shouldCollapse()
  {
    if (!this.mCollapsible) {
      return false;
    }
    int i = getChildCount();
    for (int j = 0; j < i; j++)
    {
      View localView = getChildAt(j);
      if ((shouldLayout(localView)) && (localView.getMeasuredWidth() > 0) && (localView.getMeasuredHeight() > 0)) {
        return false;
      }
    }
    return true;
  }
  
  private boolean shouldLayout(View paramView)
  {
    boolean bool;
    if ((paramView != null) && (paramView.getParent() == this) && (paramView.getVisibility() != 8)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  void addChildrenForExpandedActionView()
  {
    for (int i = this.mHiddenViews.size() - 1; i >= 0; i--) {
      addView((View)this.mHiddenViews.get(i));
    }
    this.mHiddenViews.clear();
  }
  
  public void addMenuProvider(androidx.core.view.m paramm)
  {
    this.mMenuHostHelper.c(paramm);
  }
  
  public void addMenuProvider(androidx.core.view.m paramm, n paramn)
  {
    this.mMenuHostHelper.d(paramm, paramn);
  }
  
  @SuppressLint({"LambdaLast"})
  public void addMenuProvider(androidx.core.view.m paramm, n paramn, Lifecycle.State paramState)
  {
    this.mMenuHostHelper.e(paramm, paramn, paramState);
  }
  
  public boolean canShowOverflowMenu()
  {
    if (getVisibility() == 0)
    {
      ActionMenuView localActionMenuView = this.mMenuView;
      if ((localActionMenuView != null) && (localActionMenuView.k())) {
        return true;
      }
    }
    boolean bool = false;
    return bool;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    boolean bool;
    if ((super.checkLayoutParams(paramLayoutParams)) && ((paramLayoutParams instanceof e))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void collapseActionView()
  {
    Object localObject = this.mExpandedMenuPresenter;
    if (localObject == null) {
      localObject = null;
    } else {
      localObject = ((d)localObject).b;
    }
    if (localObject != null) {
      ((i)localObject).collapseActionView();
    }
  }
  
  public void dismissPopupMenus()
  {
    ActionMenuView localActionMenuView = this.mMenuView;
    if (localActionMenuView != null) {
      localActionMenuView.b();
    }
  }
  
  void ensureCollapseButtonView()
  {
    if (this.mCollapseButtonView == null)
    {
      Object localObject = new l(getContext(), null, d.a.O);
      this.mCollapseButtonView = ((ImageButton)localObject);
      ((ImageView)localObject).setImageDrawable(this.mCollapseIcon);
      this.mCollapseButtonView.setContentDescription(this.mCollapseDescription);
      localObject = generateDefaultLayoutParams();
      ((a.a)localObject).a = (0x800003 | this.mButtonGravity & 0x70);
      ((e)localObject).b = 2;
      this.mCollapseButtonView.setLayoutParams((ViewGroup.LayoutParams)localObject);
      this.mCollapseButtonView.setOnClickListener(new c());
    }
  }
  
  protected e generateDefaultLayoutParams()
  {
    return new e(-2, -2);
  }
  
  public e generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new e(getContext(), paramAttributeSet);
  }
  
  protected e generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof e)) {
      return new e((e)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof a.a)) {
      return new e((a.a)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new e((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new e(paramLayoutParams);
  }
  
  public CharSequence getCollapseContentDescription()
  {
    Object localObject = this.mCollapseButtonView;
    if (localObject != null) {
      localObject = ((View)localObject).getContentDescription();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public Drawable getCollapseIcon()
  {
    Object localObject = this.mCollapseButtonView;
    if (localObject != null) {
      localObject = ((ImageView)localObject).getDrawable();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public int getContentInsetEnd()
  {
    r0 localr0 = this.mContentInsets;
    int i;
    if (localr0 != null) {
      i = localr0.a();
    } else {
      i = 0;
    }
    return i;
  }
  
  public int getContentInsetEndWithActions()
  {
    int i = this.mContentInsetEndWithActions;
    if (i == -2147483648) {
      i = getContentInsetEnd();
    }
    return i;
  }
  
  public int getContentInsetLeft()
  {
    r0 localr0 = this.mContentInsets;
    int i;
    if (localr0 != null) {
      i = localr0.b();
    } else {
      i = 0;
    }
    return i;
  }
  
  public int getContentInsetRight()
  {
    r0 localr0 = this.mContentInsets;
    int i;
    if (localr0 != null) {
      i = localr0.c();
    } else {
      i = 0;
    }
    return i;
  }
  
  public int getContentInsetStart()
  {
    r0 localr0 = this.mContentInsets;
    int i;
    if (localr0 != null) {
      i = localr0.d();
    } else {
      i = 0;
    }
    return i;
  }
  
  public int getContentInsetStartWithNavigation()
  {
    int i = this.mContentInsetStartWithNavigation;
    if (i == -2147483648) {
      i = getContentInsetStart();
    }
    return i;
  }
  
  public int getCurrentContentInsetEnd()
  {
    Object localObject = this.mMenuView;
    if (localObject != null)
    {
      localObject = ((ActionMenuView)localObject).n();
      if ((localObject != null) && (((androidx.appcompat.view.menu.g)localObject).hasVisibleItems()))
      {
        i = 1;
        break label32;
      }
    }
    int i = 0;
    label32:
    if (i != 0) {
      i = Math.max(getContentInsetEnd(), Math.max(this.mContentInsetEndWithActions, 0));
    } else {
      i = getContentInsetEnd();
    }
    return i;
  }
  
  public int getCurrentContentInsetLeft()
  {
    int i;
    if (a0.z(this) == 1) {
      i = getCurrentContentInsetEnd();
    } else {
      i = getCurrentContentInsetStart();
    }
    return i;
  }
  
  public int getCurrentContentInsetRight()
  {
    int i;
    if (a0.z(this) == 1) {
      i = getCurrentContentInsetStart();
    } else {
      i = getCurrentContentInsetEnd();
    }
    return i;
  }
  
  public int getCurrentContentInsetStart()
  {
    int i;
    if (getNavigationIcon() != null) {
      i = Math.max(getContentInsetStart(), Math.max(this.mContentInsetStartWithNavigation, 0));
    } else {
      i = getContentInsetStart();
    }
    return i;
  }
  
  public Drawable getLogo()
  {
    Object localObject = this.mLogoView;
    if (localObject != null) {
      localObject = ((ImageView)localObject).getDrawable();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public CharSequence getLogoDescription()
  {
    Object localObject = this.mLogoView;
    if (localObject != null) {
      localObject = ((View)localObject).getContentDescription();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public Menu getMenu()
  {
    ensureMenu();
    return this.mMenuView.getMenu();
  }
  
  View getNavButtonView()
  {
    return this.mNavButtonView;
  }
  
  public CharSequence getNavigationContentDescription()
  {
    Object localObject = this.mNavButtonView;
    if (localObject != null) {
      localObject = ((View)localObject).getContentDescription();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public Drawable getNavigationIcon()
  {
    Object localObject = this.mNavButtonView;
    if (localObject != null) {
      localObject = ((ImageView)localObject).getDrawable();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  ActionMenuPresenter getOuterActionMenuPresenter()
  {
    return this.mOuterActionMenuPresenter;
  }
  
  public Drawable getOverflowIcon()
  {
    ensureMenu();
    return this.mMenuView.getOverflowIcon();
  }
  
  Context getPopupContext()
  {
    return this.mPopupContext;
  }
  
  public int getPopupTheme()
  {
    return this.mPopupTheme;
  }
  
  public CharSequence getSubtitle()
  {
    return this.mSubtitleText;
  }
  
  final TextView getSubtitleTextView()
  {
    return this.mSubtitleTextView;
  }
  
  public CharSequence getTitle()
  {
    return this.mTitleText;
  }
  
  public int getTitleMarginBottom()
  {
    return this.mTitleMarginBottom;
  }
  
  public int getTitleMarginEnd()
  {
    return this.mTitleMarginEnd;
  }
  
  public int getTitleMarginStart()
  {
    return this.mTitleMarginStart;
  }
  
  public int getTitleMarginTop()
  {
    return this.mTitleMarginTop;
  }
  
  final TextView getTitleTextView()
  {
    return this.mTitleTextView;
  }
  
  public c0 getWrapper()
  {
    if (this.mWrapper == null) {
      this.mWrapper = new b1(this, true);
    }
    return this.mWrapper;
  }
  
  public boolean hasExpandedActionView()
  {
    d locald = this.mExpandedMenuPresenter;
    boolean bool;
    if ((locald != null) && (locald.b != null)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean hideOverflowMenu()
  {
    ActionMenuView localActionMenuView = this.mMenuView;
    boolean bool;
    if ((localActionMenuView != null) && (localActionMenuView.h())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void inflateMenu(int paramInt)
  {
    getMenuInflater().inflate(paramInt, getMenu());
  }
  
  public void invalidateMenu()
  {
    Iterator localIterator = this.mProvidedMenuItems.iterator();
    while (localIterator.hasNext())
    {
      MenuItem localMenuItem = (MenuItem)localIterator.next();
      getMenu().removeItem(localMenuItem.getItemId());
    }
    onCreateMenu();
  }
  
  public boolean isOverflowMenuShowPending()
  {
    ActionMenuView localActionMenuView = this.mMenuView;
    boolean bool;
    if ((localActionMenuView != null) && (localActionMenuView.i())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean isOverflowMenuShowing()
  {
    ActionMenuView localActionMenuView = this.mMenuView;
    boolean bool;
    if ((localActionMenuView != null) && (localActionMenuView.j())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean isTitleTruncated()
  {
    Object localObject = this.mTitleTextView;
    if (localObject == null) {
      return false;
    }
    localObject = ((TextView)localObject).getLayout();
    if (localObject == null) {
      return false;
    }
    int i = ((Layout)localObject).getLineCount();
    for (int j = 0; j < i; j++) {
      if (((Layout)localObject).getEllipsisCount(j) > 0) {
        return true;
      }
    }
    return false;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    removeCallbacks(this.mShowOverflowMenuRunnable);
  }
  
  public boolean onHoverEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getActionMasked();
    if (i == 9) {
      this.mEatingHover = false;
    }
    if (!this.mEatingHover)
    {
      boolean bool = super.onHoverEvent(paramMotionEvent);
      if ((i == 9) && (!bool)) {
        this.mEatingHover = true;
      }
    }
    if ((i == 10) || (i == 3)) {
      this.mEatingHover = false;
    }
    return true;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (a0.z(this) == 1) {
      i = 1;
    } else {
      i = 0;
    }
    int j = getWidth();
    int k = getHeight();
    int m = getPaddingLeft();
    int n = getPaddingRight();
    int i1 = getPaddingTop();
    int i2 = getPaddingBottom();
    int i3 = j - n;
    int[] arrayOfInt = this.mTempMargins;
    arrayOfInt[1] = 0;
    arrayOfInt[0] = 0;
    paramInt1 = a0.A(this);
    if (paramInt1 >= 0) {
      paramInt4 = Math.min(paramInt1, paramInt4 - paramInt2);
    } else {
      paramInt4 = 0;
    }
    if (shouldLayout(this.mNavButtonView))
    {
      if (i != 0)
      {
        paramInt3 = layoutChildRight(this.mNavButtonView, i3, arrayOfInt, paramInt4);
        i4 = m;
        break label167;
      }
      i4 = layoutChildLeft(this.mNavButtonView, m, arrayOfInt, paramInt4);
    }
    else
    {
      i4 = m;
    }
    paramInt3 = i3;
    label167:
    paramInt2 = i4;
    paramInt1 = paramInt3;
    if (shouldLayout(this.mCollapseButtonView)) {
      if (i != 0)
      {
        paramInt1 = layoutChildRight(this.mCollapseButtonView, paramInt3, arrayOfInt, paramInt4);
        paramInt2 = i4;
      }
      else
      {
        paramInt2 = layoutChildLeft(this.mCollapseButtonView, i4, arrayOfInt, paramInt4);
        paramInt1 = paramInt3;
      }
    }
    int i4 = paramInt2;
    paramInt3 = paramInt1;
    if (shouldLayout(this.mMenuView)) {
      if (i != 0)
      {
        i4 = layoutChildLeft(this.mMenuView, paramInt2, arrayOfInt, paramInt4);
        paramInt3 = paramInt1;
      }
      else
      {
        paramInt3 = layoutChildRight(this.mMenuView, paramInt1, arrayOfInt, paramInt4);
        i4 = paramInt2;
      }
    }
    paramInt2 = getCurrentContentInsetLeft();
    paramInt1 = getCurrentContentInsetRight();
    arrayOfInt[0] = Math.max(0, paramInt2 - i4);
    arrayOfInt[1] = Math.max(0, paramInt1 - (i3 - paramInt3));
    paramInt2 = Math.max(i4, paramInt2);
    paramInt3 = Math.min(paramInt3, i3 - paramInt1);
    paramInt1 = paramInt2;
    i4 = paramInt3;
    if (shouldLayout(this.mExpandedActionView)) {
      if (i != 0)
      {
        i4 = layoutChildRight(this.mExpandedActionView, paramInt3, arrayOfInt, paramInt4);
        paramInt1 = paramInt2;
      }
      else
      {
        paramInt1 = layoutChildLeft(this.mExpandedActionView, paramInt2, arrayOfInt, paramInt4);
        i4 = paramInt3;
      }
    }
    paramInt3 = paramInt1;
    paramInt2 = i4;
    if (shouldLayout(this.mLogoView)) {
      if (i != 0)
      {
        paramInt2 = layoutChildRight(this.mLogoView, i4, arrayOfInt, paramInt4);
        paramInt3 = paramInt1;
      }
      else
      {
        paramInt3 = layoutChildLeft(this.mLogoView, paramInt1, arrayOfInt, paramInt4);
        paramInt2 = i4;
      }
    }
    boolean bool = shouldLayout(this.mTitleTextView);
    paramBoolean = shouldLayout(this.mSubtitleTextView);
    Object localObject1;
    if (bool)
    {
      localObject1 = (e)this.mTitleTextView.getLayoutParams();
      paramInt1 = ((ViewGroup.MarginLayoutParams)localObject1).topMargin + this.mTitleTextView.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams)localObject1).bottomMargin + 0;
    }
    else
    {
      paramInt1 = 0;
    }
    if (paramBoolean)
    {
      localObject1 = (e)this.mSubtitleTextView.getLayoutParams();
      paramInt1 += ((ViewGroup.MarginLayoutParams)localObject1).topMargin + this.mSubtitleTextView.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams)localObject1).bottomMargin;
    }
    if ((!bool) && (!paramBoolean)) {}
    for (paramInt1 = paramInt3;; paramInt1 = paramInt3)
    {
      paramInt3 = paramInt2;
      break label1309;
      if (bool) {
        localObject1 = this.mTitleTextView;
      } else {
        localObject1 = this.mSubtitleTextView;
      }
      if (paramBoolean) {
        localObject2 = this.mSubtitleTextView;
      } else {
        localObject2 = this.mTitleTextView;
      }
      localObject1 = (e)((View)localObject1).getLayoutParams();
      Object localObject2 = (e)((View)localObject2).getLayoutParams();
      if (((bool) && (this.mTitleTextView.getMeasuredWidth() > 0)) || ((paramBoolean) && (this.mSubtitleTextView.getMeasuredWidth() > 0))) {
        i4 = 1;
      } else {
        i4 = 0;
      }
      i3 = this.mGravity & 0x70;
      if (i3 != 48)
      {
        if (i3 != 80)
        {
          i3 = (k - i1 - i2 - paramInt1) / 2;
          int i5 = ((ViewGroup.MarginLayoutParams)localObject1).topMargin;
          int i6 = this.mTitleMarginTop;
          if (i3 < i5 + i6)
          {
            paramInt1 = i5 + i6;
          }
          else
          {
            i2 = k - i2 - paramInt1 - i3 - i1;
            i6 = ((ViewGroup.MarginLayoutParams)localObject1).bottomMargin;
            k = this.mTitleMarginBottom;
            paramInt1 = i3;
            if (i2 < i6 + k) {
              paramInt1 = Math.max(0, i3 - (((ViewGroup.MarginLayoutParams)localObject2).bottomMargin + k - i2));
            }
          }
          paramInt1 = i1 + paramInt1;
        }
        else
        {
          paramInt1 = k - i2 - ((ViewGroup.MarginLayoutParams)localObject2).bottomMargin - this.mTitleMarginBottom - paramInt1;
        }
      }
      else {
        paramInt1 = getPaddingTop() + ((ViewGroup.MarginLayoutParams)localObject1).topMargin + this.mTitleMarginTop;
      }
      if (i == 0) {
        break;
      }
      if (i4 != 0) {
        i = this.mTitleMarginStart;
      } else {
        i = 0;
      }
      i -= arrayOfInt[1];
      paramInt2 -= Math.max(0, i);
      arrayOfInt[1] = Math.max(0, -i);
      if (bool)
      {
        localObject1 = (e)this.mTitleTextView.getLayoutParams();
        i3 = paramInt2 - this.mTitleTextView.getMeasuredWidth();
        i = this.mTitleTextView.getMeasuredHeight() + paramInt1;
        this.mTitleTextView.layout(i3, paramInt1, paramInt2, i);
        paramInt1 = i3 - this.mTitleMarginEnd;
        i3 = i + ((ViewGroup.MarginLayoutParams)localObject1).bottomMargin;
      }
      else
      {
        i = paramInt2;
        i3 = paramInt1;
        paramInt1 = i;
      }
      if (paramBoolean)
      {
        i3 += ((e)this.mSubtitleTextView.getLayoutParams()).topMargin;
        i = this.mSubtitleTextView.getMeasuredWidth();
        i1 = this.mSubtitleTextView.getMeasuredHeight();
        this.mSubtitleTextView.layout(paramInt2 - i, i3, paramInt2, i1 + i3);
        i = paramInt2 - this.mTitleMarginEnd;
      }
      else
      {
        i = paramInt2;
      }
      if (i4 != 0) {
        paramInt2 = Math.min(paramInt1, i);
      }
    }
    if (i4 != 0) {
      i = this.mTitleMarginStart;
    } else {
      i = 0;
    }
    i -= arrayOfInt[0];
    paramInt3 += Math.max(0, i);
    arrayOfInt[0] = Math.max(0, -i);
    if (bool)
    {
      localObject1 = (e)this.mTitleTextView.getLayoutParams();
      i = this.mTitleTextView.getMeasuredWidth() + paramInt3;
      i3 = this.mTitleTextView.getMeasuredHeight() + paramInt1;
      this.mTitleTextView.layout(paramInt3, paramInt1, i, i3);
      i += this.mTitleMarginEnd;
      paramInt1 = i3 + ((ViewGroup.MarginLayoutParams)localObject1).bottomMargin;
    }
    else
    {
      i = paramInt3;
    }
    if (paramBoolean)
    {
      i1 = paramInt1 + ((e)this.mSubtitleTextView.getLayoutParams()).topMargin;
      paramInt1 = this.mSubtitleTextView.getMeasuredWidth() + paramInt3;
      i3 = this.mSubtitleTextView.getMeasuredHeight();
      this.mSubtitleTextView.layout(paramInt3, i1, paramInt1, i3 + i1);
      i3 = paramInt1 + this.mTitleMarginEnd;
    }
    else
    {
      i3 = paramInt3;
    }
    paramInt1 = paramInt3;
    paramInt3 = paramInt2;
    if (i4 != 0)
    {
      paramInt1 = Math.max(i, i3);
      paramInt3 = paramInt2;
    }
    label1309:
    i4 = m;
    m = 0;
    addCustomViewsWithGravity(this.mTempViews, 3);
    int i = this.mTempViews.size();
    for (paramInt2 = 0; paramInt2 < i; paramInt2++) {
      paramInt1 = layoutChildLeft((View)this.mTempViews.get(paramInt2), paramInt1, arrayOfInt, paramInt4);
    }
    addCustomViewsWithGravity(this.mTempViews, 5);
    i = this.mTempViews.size();
    for (paramInt2 = 0; paramInt2 < i; paramInt2++) {
      paramInt3 = layoutChildRight((View)this.mTempViews.get(paramInt2), paramInt3, arrayOfInt, paramInt4);
    }
    addCustomViewsWithGravity(this.mTempViews, 1);
    i = getViewListMeasuredWidth(this.mTempViews, arrayOfInt);
    paramInt2 = i4 + (j - i4 - n) / 2 - i / 2;
    i4 = i + paramInt2;
    if (paramInt2 >= paramInt1) {
      if (i4 > paramInt3) {
        paramInt1 = paramInt2 - (i4 - paramInt3);
      } else {
        paramInt1 = paramInt2;
      }
    }
    paramInt3 = this.mTempViews.size();
    for (paramInt2 = m; paramInt2 < paramInt3; paramInt2++) {
      paramInt1 = layoutChildLeft((View)this.mTempViews.get(paramInt2), paramInt1, arrayOfInt, paramInt4);
    }
    this.mTempViews.clear();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = this.mTempMargins;
    boolean bool = e1.b(this);
    int j = 0;
    if (shouldLayout(this.mNavButtonView))
    {
      measureChildConstrained(this.mNavButtonView, paramInt1, 0, paramInt2, 0, this.mMaxButtonHeight);
      k = this.mNavButtonView.getMeasuredWidth() + getHorizontalMargins(this.mNavButtonView);
      m = Math.max(0, this.mNavButtonView.getMeasuredHeight() + getVerticalMargins(this.mNavButtonView));
      n = View.combineMeasuredStates(0, this.mNavButtonView.getMeasuredState());
    }
    else
    {
      k = 0;
      m = k;
      n = m;
    }
    int i1 = k;
    int i2 = m;
    int k = n;
    if (shouldLayout(this.mCollapseButtonView))
    {
      measureChildConstrained(this.mCollapseButtonView, paramInt1, 0, paramInt2, 0, this.mMaxButtonHeight);
      i1 = this.mCollapseButtonView.getMeasuredWidth() + getHorizontalMargins(this.mCollapseButtonView);
      i2 = Math.max(m, this.mCollapseButtonView.getMeasuredHeight() + getVerticalMargins(this.mCollapseButtonView));
      k = View.combineMeasuredStates(n, this.mCollapseButtonView.getMeasuredState());
    }
    int n = getCurrentContentInsetStart();
    int m = 0 + Math.max(n, i1);
    arrayOfInt[bool] = Math.max(0, n - i1);
    if (shouldLayout(this.mMenuView))
    {
      measureChildConstrained(this.mMenuView, paramInt1, m, paramInt2, 0, this.mMaxButtonHeight);
      n = this.mMenuView.getMeasuredWidth() + getHorizontalMargins(this.mMenuView);
      i2 = Math.max(i2, this.mMenuView.getMeasuredHeight() + getVerticalMargins(this.mMenuView));
      k = View.combineMeasuredStates(k, this.mMenuView.getMeasuredState());
    }
    else
    {
      n = 0;
    }
    i1 = getCurrentContentInsetEnd();
    int i3 = m + Math.max(i1, n);
    arrayOfInt[(bool ^ true)] = Math.max(0, i1 - n);
    i1 = i2;
    n = k;
    m = i3;
    if (shouldLayout(this.mExpandedActionView))
    {
      m = i3 + measureChildCollapseMargins(this.mExpandedActionView, paramInt1, i3, paramInt2, 0, arrayOfInt);
      i1 = Math.max(i2, this.mExpandedActionView.getMeasuredHeight() + getVerticalMargins(this.mExpandedActionView));
      n = View.combineMeasuredStates(k, this.mExpandedActionView.getMeasuredState());
    }
    i2 = i1;
    i3 = n;
    k = m;
    if (shouldLayout(this.mLogoView))
    {
      k = m + measureChildCollapseMargins(this.mLogoView, paramInt1, m, paramInt2, 0, arrayOfInt);
      i2 = Math.max(i1, this.mLogoView.getMeasuredHeight() + getVerticalMargins(this.mLogoView));
      i3 = View.combineMeasuredStates(n, this.mLogoView.getMeasuredState());
    }
    int i4 = getChildCount();
    n = 0;
    m = k;
    k = i3;
    i1 = i2;
    i2 = n;
    while (i2 < i4)
    {
      View localView = getChildAt(i2);
      bool = i1;
      i3 = k;
      n = m;
      if (((e)localView.getLayoutParams()).b == 0) {
        if (!shouldLayout(localView))
        {
          bool = i1;
          i3 = k;
          n = m;
        }
        else
        {
          n = m + measureChildCollapseMargins(localView, paramInt1, m, paramInt2, 0, arrayOfInt);
          i = Math.max(i1, localView.getMeasuredHeight() + getVerticalMargins(localView));
          i3 = View.combineMeasuredStates(k, localView.getMeasuredState());
        }
      }
      i2++;
      i1 = i;
      k = i3;
      m = n;
    }
    int i = this.mTitleMarginTop + this.mTitleMarginBottom;
    i3 = this.mTitleMarginStart + this.mTitleMarginEnd;
    if (shouldLayout(this.mTitleTextView))
    {
      measureChildCollapseMargins(this.mTitleTextView, paramInt1, m + i3, paramInt2, i, arrayOfInt);
      i4 = this.mTitleTextView.getMeasuredWidth();
      i2 = getHorizontalMargins(this.mTitleTextView);
      n = this.mTitleTextView.getMeasuredHeight();
      int i5 = getVerticalMargins(this.mTitleTextView);
      k = View.combineMeasuredStates(k, this.mTitleTextView.getMeasuredState());
      n += i5;
      i2 = i4 + i2;
    }
    else
    {
      n = 0;
      i2 = n;
    }
    if (shouldLayout(this.mSubtitleTextView))
    {
      i2 = Math.max(i2, measureChildCollapseMargins(this.mSubtitleTextView, paramInt1, m + i3, paramInt2, n + i, arrayOfInt));
      n += this.mSubtitleTextView.getMeasuredHeight() + getVerticalMargins(this.mSubtitleTextView);
      k = View.combineMeasuredStates(k, this.mSubtitleTextView.getMeasuredState());
    }
    i3 = Math.max(i1, n);
    i = getPaddingLeft();
    i4 = getPaddingRight();
    i1 = getPaddingTop();
    n = getPaddingBottom();
    i2 = View.resolveSizeAndState(Math.max(m + i2 + (i + i4), getSuggestedMinimumWidth()), paramInt1, 0xFF000000 & k);
    paramInt1 = View.resolveSizeAndState(Math.max(i3 + (i1 + n), getSuggestedMinimumHeight()), paramInt2, k << 16);
    if (shouldCollapse()) {
      paramInt1 = j;
    }
    setMeasuredDimension(i2, paramInt1);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    SavedState localSavedState = (SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    paramParcelable = this.mMenuView;
    if (paramParcelable != null) {
      paramParcelable = paramParcelable.n();
    } else {
      paramParcelable = null;
    }
    int i = localSavedState.expandedMenuItemId;
    if ((i != 0) && (this.mExpandedMenuPresenter != null) && (paramParcelable != null))
    {
      paramParcelable = paramParcelable.findItem(i);
      if (paramParcelable != null) {
        paramParcelable.expandActionView();
      }
    }
    if (localSavedState.isOverflowOpen) {
      postShowOverflowMenu();
    }
  }
  
  public void onRtlPropertiesChanged(int paramInt)
  {
    super.onRtlPropertiesChanged(paramInt);
    ensureContentInsets();
    r0 localr0 = this.mContentInsets;
    boolean bool = true;
    if (paramInt != 1) {
      bool = false;
    }
    localr0.f(bool);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    Object localObject = this.mExpandedMenuPresenter;
    if (localObject != null)
    {
      localObject = ((d)localObject).b;
      if (localObject != null) {
        localSavedState.expandedMenuItemId = ((i)localObject).getItemId();
      }
    }
    localSavedState.isOverflowOpen = isOverflowMenuShowing();
    return localSavedState;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getActionMasked();
    if (i == 0) {
      this.mEatingTouch = false;
    }
    if (!this.mEatingTouch)
    {
      boolean bool = super.onTouchEvent(paramMotionEvent);
      if ((i == 0) && (!bool)) {
        this.mEatingTouch = true;
      }
    }
    if ((i == 1) || (i == 3)) {
      this.mEatingTouch = false;
    }
    return true;
  }
  
  void removeChildrenForExpandedActionView()
  {
    for (int i = getChildCount() - 1; i >= 0; i--)
    {
      View localView = getChildAt(i);
      if ((((e)localView.getLayoutParams()).b != 2) && (localView != this.mMenuView))
      {
        removeViewAt(i);
        this.mHiddenViews.add(localView);
      }
    }
  }
  
  public void removeMenuProvider(androidx.core.view.m paramm)
  {
    this.mMenuHostHelper.j(paramm);
  }
  
  public void setCollapseContentDescription(int paramInt)
  {
    CharSequence localCharSequence;
    if (paramInt != 0) {
      localCharSequence = getContext().getText(paramInt);
    } else {
      localCharSequence = null;
    }
    setCollapseContentDescription(localCharSequence);
  }
  
  public void setCollapseContentDescription(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence)) {
      ensureCollapseButtonView();
    }
    ImageButton localImageButton = this.mCollapseButtonView;
    if (localImageButton != null) {
      localImageButton.setContentDescription(paramCharSequence);
    }
  }
  
  public void setCollapseIcon(int paramInt)
  {
    setCollapseIcon(e.a.b(getContext(), paramInt));
  }
  
  public void setCollapseIcon(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      ensureCollapseButtonView();
      this.mCollapseButtonView.setImageDrawable(paramDrawable);
    }
    else
    {
      paramDrawable = this.mCollapseButtonView;
      if (paramDrawable != null) {
        paramDrawable.setImageDrawable(this.mCollapseIcon);
      }
    }
  }
  
  public void setCollapsible(boolean paramBoolean)
  {
    this.mCollapsible = paramBoolean;
    requestLayout();
  }
  
  public void setContentInsetEndWithActions(int paramInt)
  {
    int i = paramInt;
    if (paramInt < 0) {
      i = -2147483648;
    }
    if (i != this.mContentInsetEndWithActions)
    {
      this.mContentInsetEndWithActions = i;
      if (getNavigationIcon() != null) {
        requestLayout();
      }
    }
  }
  
  public void setContentInsetStartWithNavigation(int paramInt)
  {
    int i = paramInt;
    if (paramInt < 0) {
      i = -2147483648;
    }
    if (i != this.mContentInsetStartWithNavigation)
    {
      this.mContentInsetStartWithNavigation = i;
      if (getNavigationIcon() != null) {
        requestLayout();
      }
    }
  }
  
  public void setContentInsetsAbsolute(int paramInt1, int paramInt2)
  {
    ensureContentInsets();
    this.mContentInsets.e(paramInt1, paramInt2);
  }
  
  public void setContentInsetsRelative(int paramInt1, int paramInt2)
  {
    ensureContentInsets();
    this.mContentInsets.g(paramInt1, paramInt2);
  }
  
  public void setLogo(int paramInt)
  {
    setLogo(e.a.b(getContext(), paramInt));
  }
  
  public void setLogo(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      ensureLogoView();
      if (!isChildOrHidden(this.mLogoView)) {
        addSystemView(this.mLogoView, true);
      }
    }
    else
    {
      localImageView = this.mLogoView;
      if ((localImageView != null) && (isChildOrHidden(localImageView)))
      {
        removeView(this.mLogoView);
        this.mHiddenViews.remove(this.mLogoView);
      }
    }
    ImageView localImageView = this.mLogoView;
    if (localImageView != null) {
      localImageView.setImageDrawable(paramDrawable);
    }
  }
  
  public void setLogoDescription(int paramInt)
  {
    setLogoDescription(getContext().getText(paramInt));
  }
  
  public void setLogoDescription(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence)) {
      ensureLogoView();
    }
    ImageView localImageView = this.mLogoView;
    if (localImageView != null) {
      localImageView.setContentDescription(paramCharSequence);
    }
  }
  
  public void setMenu(androidx.appcompat.view.menu.g paramg, ActionMenuPresenter paramActionMenuPresenter)
  {
    if ((paramg == null) && (this.mMenuView == null)) {
      return;
    }
    ensureMenuView();
    androidx.appcompat.view.menu.g localg = this.mMenuView.n();
    if (localg == paramg) {
      return;
    }
    if (localg != null)
    {
      localg.removeMenuPresenter(this.mOuterActionMenuPresenter);
      localg.removeMenuPresenter(this.mExpandedMenuPresenter);
    }
    if (this.mExpandedMenuPresenter == null) {
      this.mExpandedMenuPresenter = new d();
    }
    paramActionMenuPresenter.y(true);
    if (paramg != null)
    {
      paramg.addMenuPresenter(paramActionMenuPresenter, this.mPopupContext);
      paramg.addMenuPresenter(this.mExpandedMenuPresenter, this.mPopupContext);
    }
    else
    {
      paramActionMenuPresenter.initForMenu(this.mPopupContext, null);
      this.mExpandedMenuPresenter.initForMenu(this.mPopupContext, null);
      paramActionMenuPresenter.updateMenuView(true);
      this.mExpandedMenuPresenter.updateMenuView(true);
    }
    this.mMenuView.setPopupTheme(this.mPopupTheme);
    this.mMenuView.setPresenter(paramActionMenuPresenter);
    this.mOuterActionMenuPresenter = paramActionMenuPresenter;
  }
  
  public void setMenuCallbacks(m.a parama, g.a parama1)
  {
    this.mActionMenuPresenterCallback = parama;
    this.mMenuBuilderCallback = parama1;
    ActionMenuView localActionMenuView = this.mMenuView;
    if (localActionMenuView != null) {
      localActionMenuView.o(parama, parama1);
    }
  }
  
  public void setNavigationContentDescription(int paramInt)
  {
    CharSequence localCharSequence;
    if (paramInt != 0) {
      localCharSequence = getContext().getText(paramInt);
    } else {
      localCharSequence = null;
    }
    setNavigationContentDescription(localCharSequence);
  }
  
  public void setNavigationContentDescription(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence)) {
      ensureNavButtonView();
    }
    ImageButton localImageButton = this.mNavButtonView;
    if (localImageButton != null)
    {
      localImageButton.setContentDescription(paramCharSequence);
      c1.a(this.mNavButtonView, paramCharSequence);
    }
  }
  
  public void setNavigationIcon(int paramInt)
  {
    setNavigationIcon(e.a.b(getContext(), paramInt));
  }
  
  public void setNavigationIcon(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      ensureNavButtonView();
      if (!isChildOrHidden(this.mNavButtonView)) {
        addSystemView(this.mNavButtonView, true);
      }
    }
    else
    {
      localImageButton = this.mNavButtonView;
      if ((localImageButton != null) && (isChildOrHidden(localImageButton)))
      {
        removeView(this.mNavButtonView);
        this.mHiddenViews.remove(this.mNavButtonView);
      }
    }
    ImageButton localImageButton = this.mNavButtonView;
    if (localImageButton != null) {
      localImageButton.setImageDrawable(paramDrawable);
    }
  }
  
  public void setNavigationOnClickListener(View.OnClickListener paramOnClickListener)
  {
    ensureNavButtonView();
    this.mNavButtonView.setOnClickListener(paramOnClickListener);
  }
  
  public void setOnMenuItemClickListener(f paramf)
  {
    this.mOnMenuItemClickListener = paramf;
  }
  
  public void setOverflowIcon(Drawable paramDrawable)
  {
    ensureMenu();
    this.mMenuView.setOverflowIcon(paramDrawable);
  }
  
  public void setPopupTheme(int paramInt)
  {
    if (this.mPopupTheme != paramInt)
    {
      this.mPopupTheme = paramInt;
      if (paramInt == 0) {
        this.mPopupContext = getContext();
      } else {
        this.mPopupContext = new ContextThemeWrapper(getContext(), paramInt);
      }
    }
  }
  
  public void setSubtitle(int paramInt)
  {
    setSubtitle(getContext().getText(paramInt));
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      if (this.mSubtitleTextView == null)
      {
        localObject = getContext();
        AppCompatTextView localAppCompatTextView = new AppCompatTextView((Context)localObject);
        this.mSubtitleTextView = localAppCompatTextView;
        localAppCompatTextView.setSingleLine();
        this.mSubtitleTextView.setEllipsize(TextUtils.TruncateAt.END);
        int i = this.mSubtitleTextAppearance;
        if (i != 0) {
          this.mSubtitleTextView.setTextAppearance((Context)localObject, i);
        }
        localObject = this.mSubtitleTextColor;
        if (localObject != null) {
          this.mSubtitleTextView.setTextColor((ColorStateList)localObject);
        }
      }
      if (!isChildOrHidden(this.mSubtitleTextView)) {
        addSystemView(this.mSubtitleTextView, true);
      }
    }
    else
    {
      localObject = this.mSubtitleTextView;
      if ((localObject != null) && (isChildOrHidden((View)localObject)))
      {
        removeView(this.mSubtitleTextView);
        this.mHiddenViews.remove(this.mSubtitleTextView);
      }
    }
    Object localObject = this.mSubtitleTextView;
    if (localObject != null) {
      ((TextView)localObject).setText(paramCharSequence);
    }
    this.mSubtitleText = paramCharSequence;
  }
  
  public void setSubtitleTextAppearance(Context paramContext, int paramInt)
  {
    this.mSubtitleTextAppearance = paramInt;
    TextView localTextView = this.mSubtitleTextView;
    if (localTextView != null) {
      localTextView.setTextAppearance(paramContext, paramInt);
    }
  }
  
  public void setSubtitleTextColor(int paramInt)
  {
    setSubtitleTextColor(ColorStateList.valueOf(paramInt));
  }
  
  public void setSubtitleTextColor(ColorStateList paramColorStateList)
  {
    this.mSubtitleTextColor = paramColorStateList;
    TextView localTextView = this.mSubtitleTextView;
    if (localTextView != null) {
      localTextView.setTextColor(paramColorStateList);
    }
  }
  
  public void setTitle(int paramInt)
  {
    setTitle(getContext().getText(paramInt));
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      if (this.mTitleTextView == null)
      {
        localObject = getContext();
        AppCompatTextView localAppCompatTextView = new AppCompatTextView((Context)localObject);
        this.mTitleTextView = localAppCompatTextView;
        localAppCompatTextView.setSingleLine();
        this.mTitleTextView.setEllipsize(TextUtils.TruncateAt.END);
        int i = this.mTitleTextAppearance;
        if (i != 0) {
          this.mTitleTextView.setTextAppearance((Context)localObject, i);
        }
        localObject = this.mTitleTextColor;
        if (localObject != null) {
          this.mTitleTextView.setTextColor((ColorStateList)localObject);
        }
      }
      if (!isChildOrHidden(this.mTitleTextView)) {
        addSystemView(this.mTitleTextView, true);
      }
    }
    else
    {
      localObject = this.mTitleTextView;
      if ((localObject != null) && (isChildOrHidden((View)localObject)))
      {
        removeView(this.mTitleTextView);
        this.mHiddenViews.remove(this.mTitleTextView);
      }
    }
    Object localObject = this.mTitleTextView;
    if (localObject != null) {
      ((TextView)localObject).setText(paramCharSequence);
    }
    this.mTitleText = paramCharSequence;
  }
  
  public void setTitleMargin(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mTitleMarginStart = paramInt1;
    this.mTitleMarginTop = paramInt2;
    this.mTitleMarginEnd = paramInt3;
    this.mTitleMarginBottom = paramInt4;
    requestLayout();
  }
  
  public void setTitleMarginBottom(int paramInt)
  {
    this.mTitleMarginBottom = paramInt;
    requestLayout();
  }
  
  public void setTitleMarginEnd(int paramInt)
  {
    this.mTitleMarginEnd = paramInt;
    requestLayout();
  }
  
  public void setTitleMarginStart(int paramInt)
  {
    this.mTitleMarginStart = paramInt;
    requestLayout();
  }
  
  public void setTitleMarginTop(int paramInt)
  {
    this.mTitleMarginTop = paramInt;
    requestLayout();
  }
  
  public void setTitleTextAppearance(Context paramContext, int paramInt)
  {
    this.mTitleTextAppearance = paramInt;
    TextView localTextView = this.mTitleTextView;
    if (localTextView != null) {
      localTextView.setTextAppearance(paramContext, paramInt);
    }
  }
  
  public void setTitleTextColor(int paramInt)
  {
    setTitleTextColor(ColorStateList.valueOf(paramInt));
  }
  
  public void setTitleTextColor(ColorStateList paramColorStateList)
  {
    this.mTitleTextColor = paramColorStateList;
    TextView localTextView = this.mTitleTextView;
    if (localTextView != null) {
      localTextView.setTextColor(paramColorStateList);
    }
  }
  
  public boolean showOverflowMenu()
  {
    ActionMenuView localActionMenuView = this.mMenuView;
    boolean bool;
    if ((localActionMenuView != null) && (localActionMenuView.p())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static class SavedState
    extends AbsSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new a();
    int expandedMenuItemId;
    boolean isOverflowOpen;
    
    public SavedState(Parcel paramParcel)
    {
      this(paramParcel, null);
    }
    
    public SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      this.expandedMenuItemId = paramParcel.readInt();
      boolean bool;
      if (paramParcel.readInt() != 0) {
        bool = true;
      } else {
        bool = false;
      }
      this.isOverflowOpen = bool;
    }
    
    public SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(this.expandedMenuItemId);
      paramParcel.writeInt(this.isOverflowOpen);
    }
    
    class a
      implements Parcelable.ClassLoaderCreator<Toolbar.SavedState>
    {
      public Toolbar.SavedState a(Parcel paramParcel)
      {
        return new Toolbar.SavedState(paramParcel, null);
      }
      
      public Toolbar.SavedState b(Parcel paramParcel, ClassLoader paramClassLoader)
      {
        return new Toolbar.SavedState(paramParcel, paramClassLoader);
      }
      
      public Toolbar.SavedState[] c(int paramInt)
      {
        return new Toolbar.SavedState[paramInt];
      }
    }
  }
  
  class a
    implements ActionMenuView.e
  {
    a() {}
    
    public boolean onMenuItemClick(MenuItem paramMenuItem)
    {
      if (Toolbar.this.mMenuHostHelper.i(paramMenuItem)) {
        return true;
      }
      Toolbar.f localf = Toolbar.this.mOnMenuItemClickListener;
      if (localf != null) {
        return localf.onMenuItemClick(paramMenuItem);
      }
      return false;
    }
  }
  
  class b
    implements Runnable
  {
    b() {}
    
    public void run()
    {
      Toolbar.this.showOverflowMenu();
    }
  }
  
  class c
    implements View.OnClickListener
  {
    c() {}
    
    public void onClick(View paramView)
    {
      Toolbar.this.collapseActionView();
    }
  }
  
  private class d
    implements androidx.appcompat.view.menu.m
  {
    androidx.appcompat.view.menu.g a;
    i b;
    
    d() {}
    
    public boolean collapseItemActionView(androidx.appcompat.view.menu.g paramg, i parami)
    {
      paramg = Toolbar.this.mExpandedActionView;
      if ((paramg instanceof c)) {
        ((c)paramg).onActionViewCollapsed();
      }
      paramg = Toolbar.this;
      paramg.removeView(paramg.mExpandedActionView);
      paramg = Toolbar.this;
      paramg.removeView(paramg.mCollapseButtonView);
      paramg = Toolbar.this;
      paramg.mExpandedActionView = null;
      paramg.addChildrenForExpandedActionView();
      this.b = null;
      Toolbar.this.requestLayout();
      parami.r(false);
      return true;
    }
    
    public boolean expandItemActionView(androidx.appcompat.view.menu.g paramg, i parami)
    {
      Toolbar.this.ensureCollapseButtonView();
      Object localObject = Toolbar.this.mCollapseButtonView.getParent();
      paramg = Toolbar.this;
      if (localObject != paramg)
      {
        if ((localObject instanceof ViewGroup)) {
          ((ViewGroup)localObject).removeView(paramg.mCollapseButtonView);
        }
        paramg = Toolbar.this;
        paramg.addView(paramg.mCollapseButtonView);
      }
      Toolbar.this.mExpandedActionView = parami.getActionView();
      this.b = parami;
      localObject = Toolbar.this.mExpandedActionView.getParent();
      paramg = Toolbar.this;
      if (localObject != paramg)
      {
        if ((localObject instanceof ViewGroup)) {
          ((ViewGroup)localObject).removeView(paramg.mExpandedActionView);
        }
        paramg = Toolbar.this.generateDefaultLayoutParams();
        localObject = Toolbar.this;
        paramg.a = (0x800003 | ((Toolbar)localObject).mButtonGravity & 0x70);
        paramg.b = 2;
        ((Toolbar)localObject).mExpandedActionView.setLayoutParams(paramg);
        paramg = Toolbar.this;
        paramg.addView(paramg.mExpandedActionView);
      }
      Toolbar.this.removeChildrenForExpandedActionView();
      Toolbar.this.requestLayout();
      parami.r(true);
      paramg = Toolbar.this.mExpandedActionView;
      if ((paramg instanceof c)) {
        ((c)paramg).onActionViewExpanded();
      }
      return true;
    }
    
    public boolean flagActionItems()
    {
      return false;
    }
    
    public int getId()
    {
      return 0;
    }
    
    public void initForMenu(Context paramContext, androidx.appcompat.view.menu.g paramg)
    {
      androidx.appcompat.view.menu.g localg = this.a;
      if (localg != null)
      {
        paramContext = this.b;
        if (paramContext != null) {
          localg.collapseItemActionView(paramContext);
        }
      }
      this.a = paramg;
    }
    
    public void onCloseMenu(androidx.appcompat.view.menu.g paramg, boolean paramBoolean) {}
    
    public void onRestoreInstanceState(Parcelable paramParcelable) {}
    
    public Parcelable onSaveInstanceState()
    {
      return null;
    }
    
    public boolean onSubMenuSelected(r paramr)
    {
      return false;
    }
    
    public void updateMenuView(boolean paramBoolean)
    {
      if (this.b != null)
      {
        androidx.appcompat.view.menu.g localg = this.a;
        int i = 0;
        int j = i;
        if (localg != null)
        {
          int k = localg.size();
          for (int m = 0;; m++)
          {
            j = i;
            if (m >= k) {
              break;
            }
            if (this.a.getItem(m) == this.b)
            {
              j = 1;
              break;
            }
          }
        }
        if (j == 0) {
          collapseItemActionView(this.a, this.b);
        }
      }
    }
  }
  
  public static class e
    extends a.a
  {
    int b = 0;
    
    public e(int paramInt1, int paramInt2)
    {
      super(paramInt2);
      this.a = 8388627;
    }
    
    public e(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public e(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public e(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
      a(paramMarginLayoutParams);
    }
    
    public e(a.a parama)
    {
      super();
    }
    
    public e(e parame)
    {
      super();
      this.b = parame.b;
    }
    
    void a(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      this.leftMargin = paramMarginLayoutParams.leftMargin;
      this.topMargin = paramMarginLayoutParams.topMargin;
      this.rightMargin = paramMarginLayoutParams.rightMargin;
      this.bottomMargin = paramMarginLayoutParams.bottomMargin;
    }
  }
  
  public static abstract interface f
  {
    public abstract boolean onMenuItemClick(MenuItem paramMenuItem);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.Toolbar
 * JD-Core Version:    0.7.0.1
 */