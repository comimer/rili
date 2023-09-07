package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.n;
import androidx.core.util.e;
import androidx.core.view.a0;
import androidx.core.view.accessibility.g.b;
import androidx.transition.o;
import androidx.transition.q;
import com.google.android.material.R.dimen;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.TextScale;
import java.util.ArrayList;
import java.util.HashSet;

public class BottomNavigationMenuView
  extends ViewGroup
  implements n
{
  private static final long ACTIVE_ANIMATION_DURATION_MS = 115L;
  private static final int[] CHECKED_STATE_SET = { 16842912 };
  private static final int[] DISABLED_STATE_SET = { -16842910 };
  private static final int ITEM_POOL_SIZE = 5;
  private final int activeItemMaxWidth;
  private final int activeItemMinWidth;
  private SparseArray<BadgeDrawable> badgeDrawables = new SparseArray(5);
  private BottomNavigationItemView[] buttons;
  private final int inactiveItemMaxWidth;
  private final int inactiveItemMinWidth;
  private Drawable itemBackground;
  private int itemBackgroundRes;
  private final int itemHeight;
  private boolean itemHorizontalTranslationEnabled;
  private int itemIconSize;
  private ColorStateList itemIconTint;
  private final e<BottomNavigationItemView> itemPool = new androidx.core.util.g(5);
  private int itemTextAppearanceActive;
  private int itemTextAppearanceInactive;
  private final ColorStateList itemTextColorDefault;
  private ColorStateList itemTextColorFromUser;
  private int labelVisibilityMode;
  private androidx.appcompat.view.menu.g menu;
  private final View.OnClickListener onClickListener;
  private BottomNavigationPresenter presenter;
  private int selectedItemId = 0;
  private int selectedItemPosition = 0;
  private final q set;
  private int[] tempChildWidths;
  
  public BottomNavigationMenuView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public BottomNavigationMenuView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = getResources();
    this.inactiveItemMaxWidth = paramContext.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_max_width);
    this.inactiveItemMinWidth = paramContext.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_min_width);
    this.activeItemMaxWidth = paramContext.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_max_width);
    this.activeItemMinWidth = paramContext.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_min_width);
    this.itemHeight = paramContext.getDimensionPixelSize(R.dimen.design_bottom_navigation_height);
    this.itemTextColorDefault = createDefaultColorStateList(16842808);
    paramContext = new androidx.transition.b();
    this.set = paramContext;
    paramContext.w(0);
    paramContext.u(115L);
    paramContext.v(new e0.b());
    paramContext.g(new TextScale());
    this.onClickListener = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = ((BottomNavigationItemView)paramAnonymousView).getItemData();
        if (!BottomNavigationMenuView.this.menu.performItemAction(paramAnonymousView, BottomNavigationMenuView.this.presenter, 0)) {
          paramAnonymousView.setChecked(true);
        }
      }
    };
    this.tempChildWidths = new int[5];
    a0.w0(this, 1);
  }
  
  private BottomNavigationItemView getNewItem()
  {
    BottomNavigationItemView localBottomNavigationItemView1 = (BottomNavigationItemView)this.itemPool.b();
    BottomNavigationItemView localBottomNavigationItemView2 = localBottomNavigationItemView1;
    if (localBottomNavigationItemView1 == null) {
      localBottomNavigationItemView2 = new BottomNavigationItemView(getContext());
    }
    return localBottomNavigationItemView2;
  }
  
  private boolean isShifting(int paramInt1, int paramInt2)
  {
    boolean bool = true;
    if (paramInt1 == -1 ? paramInt2 <= 3 : paramInt1 != 0) {
      bool = false;
    }
    return bool;
  }
  
  private boolean isValidId(int paramInt)
  {
    boolean bool;
    if (paramInt != -1) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void removeUnusedBadges()
  {
    HashSet localHashSet = new HashSet();
    int i = 0;
    int k;
    for (int j = 0;; j++)
    {
      k = i;
      if (j >= this.menu.size()) {
        break;
      }
      localHashSet.add(Integer.valueOf(this.menu.getItem(j).getItemId()));
    }
    while (k < this.badgeDrawables.size())
    {
      j = this.badgeDrawables.keyAt(k);
      if (!localHashSet.contains(Integer.valueOf(j))) {
        this.badgeDrawables.delete(j);
      }
      k++;
    }
  }
  
  private void setBadgeIfNeeded(BottomNavigationItemView paramBottomNavigationItemView)
  {
    int i = paramBottomNavigationItemView.getId();
    if (!isValidId(i)) {
      return;
    }
    BadgeDrawable localBadgeDrawable = (BadgeDrawable)this.badgeDrawables.get(i);
    if (localBadgeDrawable != null) {
      paramBottomNavigationItemView.setBadge(localBadgeDrawable);
    }
  }
  
  private void validateMenuItemId(int paramInt)
  {
    if (isValidId(paramInt)) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramInt);
    localStringBuilder.append(" is not a valid view id");
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  public void buildMenuView()
  {
    removeAllViews();
    Object localObject1 = this.buttons;
    Object localObject2;
    if (localObject1 != null)
    {
      int i = localObject1.length;
      for (j = 0; j < i; j++)
      {
        localObject2 = localObject1[j];
        if (localObject2 != null)
        {
          this.itemPool.a(localObject2);
          ((BottomNavigationItemView)localObject2).removeBadge();
        }
      }
    }
    if (this.menu.size() == 0)
    {
      this.selectedItemId = 0;
      this.selectedItemPosition = 0;
      this.buttons = null;
      return;
    }
    removeUnusedBadges();
    this.buttons = new BottomNavigationItemView[this.menu.size()];
    boolean bool = isShifting(this.labelVisibilityMode, this.menu.getVisibleItems().size());
    for (int j = 0; j < this.menu.size(); j++)
    {
      this.presenter.setUpdateSuspended(true);
      this.menu.getItem(j).setCheckable(true);
      this.presenter.setUpdateSuspended(false);
      localObject2 = getNewItem();
      this.buttons[j] = localObject2;
      ((BottomNavigationItemView)localObject2).setIconTintList(this.itemIconTint);
      ((BottomNavigationItemView)localObject2).setIconSize(this.itemIconSize);
      ((BottomNavigationItemView)localObject2).setTextColor(this.itemTextColorDefault);
      ((BottomNavigationItemView)localObject2).setTextAppearanceInactive(this.itemTextAppearanceInactive);
      ((BottomNavigationItemView)localObject2).setTextAppearanceActive(this.itemTextAppearanceActive);
      ((BottomNavigationItemView)localObject2).setTextColor(this.itemTextColorFromUser);
      localObject1 = this.itemBackground;
      if (localObject1 != null) {
        ((BottomNavigationItemView)localObject2).setItemBackground((Drawable)localObject1);
      } else {
        ((BottomNavigationItemView)localObject2).setItemBackground(this.itemBackgroundRes);
      }
      ((BottomNavigationItemView)localObject2).setShifting(bool);
      ((BottomNavigationItemView)localObject2).setLabelVisibilityMode(this.labelVisibilityMode);
      ((BottomNavigationItemView)localObject2).initialize((i)this.menu.getItem(j), 0);
      ((BottomNavigationItemView)localObject2).setItemPosition(j);
      ((View)localObject2).setOnClickListener(this.onClickListener);
      if ((this.selectedItemId != 0) && (this.menu.getItem(j).getItemId() == this.selectedItemId)) {
        this.selectedItemPosition = j;
      }
      setBadgeIfNeeded((BottomNavigationItemView)localObject2);
      addView((View)localObject2);
    }
    j = Math.min(this.menu.size() - 1, this.selectedItemPosition);
    this.selectedItemPosition = j;
    this.menu.getItem(j).setChecked(true);
  }
  
  public ColorStateList createDefaultColorStateList(int paramInt)
  {
    Object localObject = new TypedValue();
    if (!getContext().getTheme().resolveAttribute(paramInt, (TypedValue)localObject, true)) {
      return null;
    }
    ColorStateList localColorStateList = e.a.a(getContext(), ((TypedValue)localObject).resourceId);
    if (!getContext().getTheme().resolveAttribute(d.a.y, (TypedValue)localObject, true)) {
      return null;
    }
    int i = ((TypedValue)localObject).data;
    int j = localColorStateList.getDefaultColor();
    int[] arrayOfInt1 = DISABLED_STATE_SET;
    int[] arrayOfInt2 = CHECKED_STATE_SET;
    localObject = ViewGroup.EMPTY_STATE_SET;
    paramInt = localColorStateList.getColorForState(arrayOfInt1, j);
    return new ColorStateList(new int[][] { arrayOfInt1, arrayOfInt2, localObject }, new int[] { paramInt, i, j });
  }
  
  BottomNavigationItemView findItemView(int paramInt)
  {
    validateMenuItemId(paramInt);
    BottomNavigationItemView[] arrayOfBottomNavigationItemView = this.buttons;
    if (arrayOfBottomNavigationItemView != null)
    {
      int i = arrayOfBottomNavigationItemView.length;
      for (int j = 0; j < i; j++)
      {
        BottomNavigationItemView localBottomNavigationItemView = arrayOfBottomNavigationItemView[j];
        if (localBottomNavigationItemView.getId() == paramInt) {
          return localBottomNavigationItemView;
        }
      }
    }
    return null;
  }
  
  BadgeDrawable getBadge(int paramInt)
  {
    return (BadgeDrawable)this.badgeDrawables.get(paramInt);
  }
  
  SparseArray<BadgeDrawable> getBadgeDrawables()
  {
    return this.badgeDrawables;
  }
  
  public ColorStateList getIconTintList()
  {
    return this.itemIconTint;
  }
  
  public Drawable getItemBackground()
  {
    BottomNavigationItemView[] arrayOfBottomNavigationItemView = this.buttons;
    if ((arrayOfBottomNavigationItemView != null) && (arrayOfBottomNavigationItemView.length > 0)) {
      return arrayOfBottomNavigationItemView[0].getBackground();
    }
    return this.itemBackground;
  }
  
  @Deprecated
  public int getItemBackgroundRes()
  {
    return this.itemBackgroundRes;
  }
  
  public int getItemIconSize()
  {
    return this.itemIconSize;
  }
  
  public int getItemTextAppearanceActive()
  {
    return this.itemTextAppearanceActive;
  }
  
  public int getItemTextAppearanceInactive()
  {
    return this.itemTextAppearanceInactive;
  }
  
  public ColorStateList getItemTextColor()
  {
    return this.itemTextColorFromUser;
  }
  
  public int getLabelVisibilityMode()
  {
    return this.labelVisibilityMode;
  }
  
  BadgeDrawable getOrCreateBadge(int paramInt)
  {
    validateMenuItemId(paramInt);
    Object localObject1 = (BadgeDrawable)this.badgeDrawables.get(paramInt);
    Object localObject2 = localObject1;
    if (localObject1 == null)
    {
      localObject2 = BadgeDrawable.create(getContext());
      this.badgeDrawables.put(paramInt, localObject2);
    }
    localObject1 = findItemView(paramInt);
    if (localObject1 != null) {
      ((BottomNavigationItemView)localObject1).setBadge((BadgeDrawable)localObject2);
    }
    return localObject2;
  }
  
  public int getSelectedItemId()
  {
    return this.selectedItemId;
  }
  
  public int getWindowAnimations()
  {
    return 0;
  }
  
  public void initialize(androidx.appcompat.view.menu.g paramg)
  {
    this.menu = paramg;
  }
  
  public boolean isItemHorizontalTranslationEnabled()
  {
    return this.itemHorizontalTranslationEnabled;
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    androidx.core.view.accessibility.g.s0(paramAccessibilityNodeInfo).T(g.b.b(1, this.menu.getVisibleItems().size(), false, 1));
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = getChildCount();
    int j = paramInt4 - paramInt2;
    paramInt2 = 0;
    paramInt4 = paramInt2;
    while (paramInt2 < i)
    {
      View localView = getChildAt(paramInt2);
      if (localView.getVisibility() != 8)
      {
        if (a0.z(this) == 1)
        {
          int k = paramInt3 - paramInt1 - paramInt4;
          localView.layout(k - localView.getMeasuredWidth(), 0, k, j);
        }
        else
        {
          localView.layout(paramInt4, 0, localView.getMeasuredWidth() + paramInt4, j);
        }
        paramInt4 += localView.getMeasuredWidth();
      }
      paramInt2++;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getSize(paramInt1);
    int j = this.menu.getVisibleItems().size();
    int k = getChildCount();
    int m = View.MeasureSpec.makeMeasureSpec(this.itemHeight, 1073741824);
    boolean bool = isShifting(this.labelVisibilityMode, j);
    paramInt1 = 1;
    int n = 1;
    Object localObject;
    int i1;
    if ((bool) && (this.itemHorizontalTranslationEnabled))
    {
      localObject = getChildAt(this.selectedItemPosition);
      paramInt2 = this.activeItemMinWidth;
      paramInt1 = paramInt2;
      if (((View)localObject).getVisibility() != 8)
      {
        ((View)localObject).measure(View.MeasureSpec.makeMeasureSpec(this.activeItemMaxWidth, -2147483648), m);
        paramInt1 = Math.max(paramInt2, ((View)localObject).getMeasuredWidth());
      }
      if (((View)localObject).getVisibility() != 8) {
        paramInt2 = 1;
      } else {
        paramInt2 = 0;
      }
      paramInt2 = j - paramInt2;
      i1 = Math.min(i - this.inactiveItemMinWidth * paramInt2, Math.min(paramInt1, this.activeItemMaxWidth));
      j = i - i1;
      if (paramInt2 == 0) {
        paramInt1 = n;
      } else {
        paramInt1 = paramInt2;
      }
      i = Math.min(j / paramInt1, this.inactiveItemMaxWidth);
      paramInt2 = j - paramInt2 * i;
      paramInt1 = 0;
    }
    while (paramInt1 < k)
    {
      if (getChildAt(paramInt1).getVisibility() != 8)
      {
        localObject = this.tempChildWidths;
        if (paramInt1 == this.selectedItemPosition) {
          j = i1;
        } else {
          j = i;
        }
        localObject[paramInt1] = j;
        n = paramInt2;
        if (paramInt2 > 0)
        {
          localObject[paramInt1] = (j + 1);
          n = paramInt2 - 1;
        }
      }
      else
      {
        this.tempChildWidths[paramInt1] = 0;
        n = paramInt2;
      }
      paramInt1++;
      paramInt2 = n;
      continue;
      if (j != 0) {
        paramInt1 = j;
      }
      i1 = Math.min(i / paramInt1, this.activeItemMaxWidth);
      paramInt2 = i - j * i1;
      paramInt1 = 0;
      while (paramInt1 < k)
      {
        if (getChildAt(paramInt1).getVisibility() != 8)
        {
          localObject = this.tempChildWidths;
          localObject[paramInt1] = i1;
          n = paramInt2;
          if (paramInt2 > 0)
          {
            localObject[paramInt1] = (i1 + 1);
            n = paramInt2 - 1;
          }
        }
        else
        {
          this.tempChildWidths[paramInt1] = 0;
          n = paramInt2;
        }
        paramInt1++;
        paramInt2 = n;
      }
    }
    paramInt1 = 0;
    paramInt2 = paramInt1;
    while (paramInt1 < k)
    {
      localObject = getChildAt(paramInt1);
      if (((View)localObject).getVisibility() != 8)
      {
        ((View)localObject).measure(View.MeasureSpec.makeMeasureSpec(this.tempChildWidths[paramInt1], 1073741824), m);
        ((View)localObject).getLayoutParams().width = ((View)localObject).getMeasuredWidth();
        paramInt2 += ((View)localObject).getMeasuredWidth();
      }
      paramInt1++;
    }
    setMeasuredDimension(View.resolveSizeAndState(paramInt2, View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824), 0), View.resolveSizeAndState(this.itemHeight, m, 0));
  }
  
  void removeBadge(int paramInt)
  {
    validateMenuItemId(paramInt);
    BadgeDrawable localBadgeDrawable = (BadgeDrawable)this.badgeDrawables.get(paramInt);
    BottomNavigationItemView localBottomNavigationItemView = findItemView(paramInt);
    if (localBottomNavigationItemView != null) {
      localBottomNavigationItemView.removeBadge();
    }
    if (localBadgeDrawable != null) {
      this.badgeDrawables.remove(paramInt);
    }
  }
  
  void setBadgeDrawables(SparseArray<BadgeDrawable> paramSparseArray)
  {
    this.badgeDrawables = paramSparseArray;
    BottomNavigationItemView[] arrayOfBottomNavigationItemView = this.buttons;
    if (arrayOfBottomNavigationItemView != null)
    {
      int i = arrayOfBottomNavigationItemView.length;
      for (int j = 0; j < i; j++)
      {
        BottomNavigationItemView localBottomNavigationItemView = arrayOfBottomNavigationItemView[j];
        localBottomNavigationItemView.setBadge((BadgeDrawable)paramSparseArray.get(localBottomNavigationItemView.getId()));
      }
    }
  }
  
  public void setIconTintList(ColorStateList paramColorStateList)
  {
    this.itemIconTint = paramColorStateList;
    BottomNavigationItemView[] arrayOfBottomNavigationItemView = this.buttons;
    if (arrayOfBottomNavigationItemView != null)
    {
      int i = arrayOfBottomNavigationItemView.length;
      for (int j = 0; j < i; j++) {
        arrayOfBottomNavigationItemView[j].setIconTintList(paramColorStateList);
      }
    }
  }
  
  public void setItemBackground(Drawable paramDrawable)
  {
    this.itemBackground = paramDrawable;
    BottomNavigationItemView[] arrayOfBottomNavigationItemView = this.buttons;
    if (arrayOfBottomNavigationItemView != null)
    {
      int i = arrayOfBottomNavigationItemView.length;
      for (int j = 0; j < i; j++) {
        arrayOfBottomNavigationItemView[j].setItemBackground(paramDrawable);
      }
    }
  }
  
  public void setItemBackgroundRes(int paramInt)
  {
    this.itemBackgroundRes = paramInt;
    BottomNavigationItemView[] arrayOfBottomNavigationItemView = this.buttons;
    if (arrayOfBottomNavigationItemView != null)
    {
      int i = arrayOfBottomNavigationItemView.length;
      for (int j = 0; j < i; j++) {
        arrayOfBottomNavigationItemView[j].setItemBackground(paramInt);
      }
    }
  }
  
  public void setItemHorizontalTranslationEnabled(boolean paramBoolean)
  {
    this.itemHorizontalTranslationEnabled = paramBoolean;
  }
  
  public void setItemIconSize(int paramInt)
  {
    this.itemIconSize = paramInt;
    BottomNavigationItemView[] arrayOfBottomNavigationItemView = this.buttons;
    if (arrayOfBottomNavigationItemView != null)
    {
      int i = arrayOfBottomNavigationItemView.length;
      for (int j = 0; j < i; j++) {
        arrayOfBottomNavigationItemView[j].setIconSize(paramInt);
      }
    }
  }
  
  public void setItemTextAppearanceActive(int paramInt)
  {
    this.itemTextAppearanceActive = paramInt;
    BottomNavigationItemView[] arrayOfBottomNavigationItemView = this.buttons;
    if (arrayOfBottomNavigationItemView != null)
    {
      int i = arrayOfBottomNavigationItemView.length;
      for (int j = 0; j < i; j++)
      {
        BottomNavigationItemView localBottomNavigationItemView = arrayOfBottomNavigationItemView[j];
        localBottomNavigationItemView.setTextAppearanceActive(paramInt);
        ColorStateList localColorStateList = this.itemTextColorFromUser;
        if (localColorStateList != null) {
          localBottomNavigationItemView.setTextColor(localColorStateList);
        }
      }
    }
  }
  
  public void setItemTextAppearanceInactive(int paramInt)
  {
    this.itemTextAppearanceInactive = paramInt;
    BottomNavigationItemView[] arrayOfBottomNavigationItemView = this.buttons;
    if (arrayOfBottomNavigationItemView != null)
    {
      int i = arrayOfBottomNavigationItemView.length;
      for (int j = 0; j < i; j++)
      {
        BottomNavigationItemView localBottomNavigationItemView = arrayOfBottomNavigationItemView[j];
        localBottomNavigationItemView.setTextAppearanceInactive(paramInt);
        ColorStateList localColorStateList = this.itemTextColorFromUser;
        if (localColorStateList != null) {
          localBottomNavigationItemView.setTextColor(localColorStateList);
        }
      }
    }
  }
  
  public void setItemTextColor(ColorStateList paramColorStateList)
  {
    this.itemTextColorFromUser = paramColorStateList;
    BottomNavigationItemView[] arrayOfBottomNavigationItemView = this.buttons;
    if (arrayOfBottomNavigationItemView != null)
    {
      int i = arrayOfBottomNavigationItemView.length;
      for (int j = 0; j < i; j++) {
        arrayOfBottomNavigationItemView[j].setTextColor(paramColorStateList);
      }
    }
  }
  
  public void setLabelVisibilityMode(int paramInt)
  {
    this.labelVisibilityMode = paramInt;
  }
  
  public void setPresenter(BottomNavigationPresenter paramBottomNavigationPresenter)
  {
    this.presenter = paramBottomNavigationPresenter;
  }
  
  void tryRestoreSelectedItemId(int paramInt)
  {
    int i = this.menu.size();
    for (int j = 0; j < i; j++)
    {
      MenuItem localMenuItem = this.menu.getItem(j);
      if (paramInt == localMenuItem.getItemId())
      {
        this.selectedItemId = paramInt;
        this.selectedItemPosition = j;
        localMenuItem.setChecked(true);
        break;
      }
    }
  }
  
  public void updateMenuView()
  {
    Object localObject = this.menu;
    if ((localObject != null) && (this.buttons != null))
    {
      int i = ((androidx.appcompat.view.menu.g)localObject).size();
      if (i != this.buttons.length)
      {
        buildMenuView();
        return;
      }
      int j = this.selectedItemId;
      for (int k = 0; k < i; k++)
      {
        localObject = this.menu.getItem(k);
        if (((MenuItem)localObject).isChecked())
        {
          this.selectedItemId = ((MenuItem)localObject).getItemId();
          this.selectedItemPosition = k;
        }
      }
      if (j != this.selectedItemId) {
        o.a(this, this.set);
      }
      boolean bool = isShifting(this.labelVisibilityMode, this.menu.getVisibleItems().size());
      for (k = 0; k < i; k++)
      {
        this.presenter.setUpdateSuspended(true);
        this.buttons[k].setLabelVisibilityMode(this.labelVisibilityMode);
        this.buttons[k].setShifting(bool);
        this.buttons[k].initialize((i)this.menu.getItem(k), 0);
        this.presenter.setUpdateSuspended(false);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.bottomnavigation.BottomNavigationMenuView
 * JD-Core Version:    0.7.0.1
 */