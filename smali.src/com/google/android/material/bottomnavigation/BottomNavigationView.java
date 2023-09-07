package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import androidx.appcompat.view.menu.g.a;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.z0;
import androidx.core.view.a0;
import androidx.core.view.e1;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R.attr;
import com.google.android.material.R.color;
import com.google.android.material.R.dimen;
import com.google.android.material.R.style;
import com.google.android.material.R.styleable;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener;
import com.google.android.material.internal.ViewUtils.RelativePadding;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;

public class BottomNavigationView
  extends FrameLayout
{
  private static final int DEF_STYLE_RES = R.style.Widget_Design_BottomNavigationView;
  private static final int MENU_PRESENTER_ID = 1;
  private ColorStateList itemRippleColor;
  private final androidx.appcompat.view.menu.g menu;
  private MenuInflater menuInflater;
  final BottomNavigationMenuView menuView;
  private final BottomNavigationPresenter presenter;
  private OnNavigationItemReselectedListener reselectedListener;
  private OnNavigationItemSelectedListener selectedListener;
  
  public BottomNavigationView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public BottomNavigationView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.bottomNavigationStyle);
  }
  
  public BottomNavigationView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(MaterialThemeOverlay.wrap(paramContext, paramAttributeSet, paramInt, DEF_STYLE_RES), paramAttributeSet, paramInt);
    Object localObject = new BottomNavigationPresenter();
    this.presenter = ((BottomNavigationPresenter)localObject);
    Context localContext = getContext();
    BottomNavigationMenu localBottomNavigationMenu = new BottomNavigationMenu(localContext);
    this.menu = localBottomNavigationMenu;
    BottomNavigationMenuView localBottomNavigationMenuView = new BottomNavigationMenuView(localContext);
    this.menuView = localBottomNavigationMenuView;
    paramContext = new FrameLayout.LayoutParams(-2, -2);
    paramContext.gravity = 17;
    localBottomNavigationMenuView.setLayoutParams(paramContext);
    ((BottomNavigationPresenter)localObject).setBottomNavigationMenuView(localBottomNavigationMenuView);
    ((BottomNavigationPresenter)localObject).setId(1);
    localBottomNavigationMenuView.setPresenter((BottomNavigationPresenter)localObject);
    localBottomNavigationMenu.addMenuPresenter((m)localObject);
    ((BottomNavigationPresenter)localObject).initForMenu(getContext(), localBottomNavigationMenu);
    localObject = R.styleable.BottomNavigationView;
    int i = R.style.Widget_Design_BottomNavigationView;
    int j = R.styleable.BottomNavigationView_itemTextAppearanceInactive;
    int k = R.styleable.BottomNavigationView_itemTextAppearanceActive;
    paramAttributeSet = ThemeEnforcement.obtainTintedStyledAttributes(localContext, paramAttributeSet, (int[])localObject, paramInt, i, new int[] { j, k });
    paramInt = R.styleable.BottomNavigationView_itemIconTint;
    if (paramAttributeSet.s(paramInt)) {
      localBottomNavigationMenuView.setIconTintList(paramAttributeSet.c(paramInt));
    } else {
      localBottomNavigationMenuView.setIconTintList(localBottomNavigationMenuView.createDefaultColorStateList(16842808));
    }
    setItemIconSize(paramAttributeSet.f(R.styleable.BottomNavigationView_itemIconSize, getResources().getDimensionPixelSize(R.dimen.design_bottom_navigation_icon_size)));
    if (paramAttributeSet.s(j)) {
      setItemTextAppearanceInactive(paramAttributeSet.n(j, 0));
    }
    if (paramAttributeSet.s(k)) {
      setItemTextAppearanceActive(paramAttributeSet.n(k, 0));
    }
    paramInt = R.styleable.BottomNavigationView_itemTextColor;
    if (paramAttributeSet.s(paramInt)) {
      setItemTextColor(paramAttributeSet.c(paramInt));
    }
    if ((getBackground() == null) || ((getBackground() instanceof ColorDrawable))) {
      a0.p0(this, createMaterialShapeDrawableBackground(localContext));
    }
    paramInt = R.styleable.BottomNavigationView_elevation;
    if (paramAttributeSet.s(paramInt)) {
      a0.t0(this, paramAttributeSet.f(paramInt, 0));
    }
    localObject = MaterialResources.getColorStateList(localContext, paramAttributeSet, R.styleable.BottomNavigationView_backgroundTint);
    androidx.core.graphics.drawable.a.o(getBackground().mutate(), (ColorStateList)localObject);
    setLabelVisibilityMode(paramAttributeSet.l(R.styleable.BottomNavigationView_labelVisibilityMode, -1));
    setItemHorizontalTranslationEnabled(paramAttributeSet.a(R.styleable.BottomNavigationView_itemHorizontalTranslationEnabled, true));
    paramInt = paramAttributeSet.n(R.styleable.BottomNavigationView_itemBackground, 0);
    if (paramInt != 0) {
      localBottomNavigationMenuView.setItemBackgroundRes(paramInt);
    } else {
      setItemRippleColor(MaterialResources.getColorStateList(localContext, paramAttributeSet, R.styleable.BottomNavigationView_itemRippleColor));
    }
    paramInt = R.styleable.BottomNavigationView_menu;
    if (paramAttributeSet.s(paramInt)) {
      inflateMenu(paramAttributeSet.n(paramInt, 0));
    }
    paramAttributeSet.w();
    addView(localBottomNavigationMenuView, paramContext);
    localBottomNavigationMenu.setCallback(new g.a()
    {
      public boolean onMenuItemSelected(androidx.appcompat.view.menu.g paramAnonymousg, MenuItem paramAnonymousMenuItem)
      {
        paramAnonymousg = BottomNavigationView.this.reselectedListener;
        boolean bool = true;
        if ((paramAnonymousg != null) && (paramAnonymousMenuItem.getItemId() == BottomNavigationView.this.getSelectedItemId()))
        {
          BottomNavigationView.this.reselectedListener.onNavigationItemReselected(paramAnonymousMenuItem);
          return true;
        }
        if ((BottomNavigationView.this.selectedListener == null) || (BottomNavigationView.this.selectedListener.onNavigationItemSelected(paramAnonymousMenuItem))) {
          bool = false;
        }
        return bool;
      }
      
      public void onMenuModeChange(androidx.appcompat.view.menu.g paramAnonymousg) {}
    });
    applyWindowInsets();
  }
  
  private void addCompatibilityTopDivider(Context paramContext)
  {
    View localView = new View(paramContext);
    localView.setBackgroundColor(androidx.core.content.a.c(paramContext, R.color.design_bottom_navigation_shadow_color));
    localView.setLayoutParams(new FrameLayout.LayoutParams(-1, getResources().getDimensionPixelSize(R.dimen.design_bottom_navigation_shadow_height)));
    addView(localView);
  }
  
  private void applyWindowInsets()
  {
    ViewUtils.doOnApplyWindowInsets(this, new ViewUtils.OnApplyWindowInsetsListener()
    {
      public e1 onApplyWindowInsets(View paramAnonymousView, e1 paramAnonymouse1, ViewUtils.RelativePadding paramAnonymousRelativePadding)
      {
        paramAnonymousRelativePadding.bottom += paramAnonymouse1.h();
        paramAnonymousRelativePadding.applyToView(paramAnonymousView);
        return paramAnonymouse1;
      }
    });
  }
  
  private MaterialShapeDrawable createMaterialShapeDrawableBackground(Context paramContext)
  {
    MaterialShapeDrawable localMaterialShapeDrawable = new MaterialShapeDrawable();
    Drawable localDrawable = getBackground();
    if ((localDrawable instanceof ColorDrawable)) {
      localMaterialShapeDrawable.setFillColor(ColorStateList.valueOf(((ColorDrawable)localDrawable).getColor()));
    }
    localMaterialShapeDrawable.initializeElevationOverlay(paramContext);
    return localMaterialShapeDrawable;
  }
  
  private MenuInflater getMenuInflater()
  {
    if (this.menuInflater == null) {
      this.menuInflater = new h.g(getContext());
    }
    return this.menuInflater;
  }
  
  public BadgeDrawable getBadge(int paramInt)
  {
    return this.menuView.getBadge(paramInt);
  }
  
  public Drawable getItemBackground()
  {
    return this.menuView.getItemBackground();
  }
  
  @Deprecated
  public int getItemBackgroundResource()
  {
    return this.menuView.getItemBackgroundRes();
  }
  
  public int getItemIconSize()
  {
    return this.menuView.getItemIconSize();
  }
  
  public ColorStateList getItemIconTintList()
  {
    return this.menuView.getIconTintList();
  }
  
  public ColorStateList getItemRippleColor()
  {
    return this.itemRippleColor;
  }
  
  public int getItemTextAppearanceActive()
  {
    return this.menuView.getItemTextAppearanceActive();
  }
  
  public int getItemTextAppearanceInactive()
  {
    return this.menuView.getItemTextAppearanceInactive();
  }
  
  public ColorStateList getItemTextColor()
  {
    return this.menuView.getItemTextColor();
  }
  
  public int getLabelVisibilityMode()
  {
    return this.menuView.getLabelVisibilityMode();
  }
  
  public int getMaxItemCount()
  {
    return 5;
  }
  
  public Menu getMenu()
  {
    return this.menu;
  }
  
  public BadgeDrawable getOrCreateBadge(int paramInt)
  {
    return this.menuView.getOrCreateBadge(paramInt);
  }
  
  public int getSelectedItemId()
  {
    return this.menuView.getSelectedItemId();
  }
  
  public void inflateMenu(int paramInt)
  {
    this.presenter.setUpdateSuspended(true);
    getMenuInflater().inflate(paramInt, this.menu);
    this.presenter.setUpdateSuspended(false);
    this.presenter.updateMenuView(true);
  }
  
  public boolean isItemHorizontalTranslationEnabled()
  {
    return this.menuView.isItemHorizontalTranslationEnabled();
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    MaterialShapeUtils.setParentAbsoluteElevation(this);
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
    this.menu.restorePresenterStates(paramParcelable.menuPresenterState);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    Bundle localBundle = new Bundle();
    localSavedState.menuPresenterState = localBundle;
    this.menu.savePresenterStates(localBundle);
    return localSavedState;
  }
  
  public void removeBadge(int paramInt)
  {
    this.menuView.removeBadge(paramInt);
  }
  
  public void setElevation(float paramFloat)
  {
    super.setElevation(paramFloat);
    MaterialShapeUtils.setElevation(this, paramFloat);
  }
  
  public void setItemBackground(Drawable paramDrawable)
  {
    this.menuView.setItemBackground(paramDrawable);
    this.itemRippleColor = null;
  }
  
  public void setItemBackgroundResource(int paramInt)
  {
    this.menuView.setItemBackgroundRes(paramInt);
    this.itemRippleColor = null;
  }
  
  public void setItemHorizontalTranslationEnabled(boolean paramBoolean)
  {
    if (this.menuView.isItemHorizontalTranslationEnabled() != paramBoolean)
    {
      this.menuView.setItemHorizontalTranslationEnabled(paramBoolean);
      this.presenter.updateMenuView(false);
    }
  }
  
  public void setItemIconSize(int paramInt)
  {
    this.menuView.setItemIconSize(paramInt);
  }
  
  public void setItemIconSizeRes(int paramInt)
  {
    setItemIconSize(getResources().getDimensionPixelSize(paramInt));
  }
  
  public void setItemIconTintList(ColorStateList paramColorStateList)
  {
    this.menuView.setIconTintList(paramColorStateList);
  }
  
  public void setItemRippleColor(ColorStateList paramColorStateList)
  {
    if (this.itemRippleColor == paramColorStateList)
    {
      if ((paramColorStateList == null) && (this.menuView.getItemBackground() != null)) {
        this.menuView.setItemBackground(null);
      }
      return;
    }
    this.itemRippleColor = paramColorStateList;
    if (paramColorStateList == null)
    {
      this.menuView.setItemBackground(null);
    }
    else
    {
      paramColorStateList = RippleUtils.convertToRippleDrawableColor(paramColorStateList);
      this.menuView.setItemBackground(new RippleDrawable(paramColorStateList, null, null));
    }
  }
  
  public void setItemTextAppearanceActive(int paramInt)
  {
    this.menuView.setItemTextAppearanceActive(paramInt);
  }
  
  public void setItemTextAppearanceInactive(int paramInt)
  {
    this.menuView.setItemTextAppearanceInactive(paramInt);
  }
  
  public void setItemTextColor(ColorStateList paramColorStateList)
  {
    this.menuView.setItemTextColor(paramColorStateList);
  }
  
  public void setLabelVisibilityMode(int paramInt)
  {
    if (this.menuView.getLabelVisibilityMode() != paramInt)
    {
      this.menuView.setLabelVisibilityMode(paramInt);
      this.presenter.updateMenuView(false);
    }
  }
  
  public void setOnNavigationItemReselectedListener(OnNavigationItemReselectedListener paramOnNavigationItemReselectedListener)
  {
    this.reselectedListener = paramOnNavigationItemReselectedListener;
  }
  
  public void setOnNavigationItemSelectedListener(OnNavigationItemSelectedListener paramOnNavigationItemSelectedListener)
  {
    this.selectedListener = paramOnNavigationItemSelectedListener;
  }
  
  public void setSelectedItemId(int paramInt)
  {
    MenuItem localMenuItem = this.menu.findItem(paramInt);
    if ((localMenuItem != null) && (!this.menu.performItemAction(localMenuItem, this.presenter, 0))) {
      localMenuItem.setChecked(true);
    }
  }
  
  public static abstract interface OnNavigationItemReselectedListener
  {
    public abstract void onNavigationItemReselected(MenuItem paramMenuItem);
  }
  
  public static abstract interface OnNavigationItemSelectedListener
  {
    public abstract boolean onNavigationItemSelected(MenuItem paramMenuItem);
  }
  
  static class SavedState
    extends AbsSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator()
    {
      public BottomNavigationView.SavedState createFromParcel(Parcel paramAnonymousParcel)
      {
        return new BottomNavigationView.SavedState(paramAnonymousParcel, null);
      }
      
      public BottomNavigationView.SavedState createFromParcel(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
      {
        return new BottomNavigationView.SavedState(paramAnonymousParcel, paramAnonymousClassLoader);
      }
      
      public BottomNavigationView.SavedState[] newArray(int paramAnonymousInt)
      {
        return new BottomNavigationView.SavedState[paramAnonymousInt];
      }
    };
    Bundle menuPresenterState;
    
    public SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      ClassLoader localClassLoader = paramClassLoader;
      if (paramClassLoader == null) {
        localClassLoader = getClass().getClassLoader();
      }
      readFromParcel(paramParcel, localClassLoader);
    }
    
    public SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    private void readFromParcel(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      this.menuPresenterState = paramParcel.readBundle(paramClassLoader);
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeBundle(this.menuPresenterState);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.bottomnavigation.BottomNavigationView
 * JD-Core Version:    0.7.0.1
 */