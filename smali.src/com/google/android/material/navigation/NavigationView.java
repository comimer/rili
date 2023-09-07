package com.google.android.material.navigation;

import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.appcompat.view.menu.g.a;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.widget.z0;
import androidx.core.view.a0;
import androidx.core.view.e1;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R.attr;
import com.google.android.material.R.style;
import com.google.android.material.R.styleable;
import com.google.android.material.internal.NavigationMenu;
import com.google.android.material.internal.NavigationMenuPresenter;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearanceModel.Builder;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;

public class NavigationView
  extends ScrimInsetsFrameLayout
{
  private static final int[] CHECKED_STATE_SET = { 16842912 };
  private static final int DEF_STYLE_RES = R.style.Widget_Design_NavigationView;
  private static final int[] DISABLED_STATE_SET = { -16842910 };
  private static final int PRESENTER_NAVIGATION_VIEW_ID = 1;
  OnNavigationItemSelectedListener listener;
  private final int maxWidth;
  private final NavigationMenu menu;
  private MenuInflater menuInflater;
  private ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener;
  private final NavigationMenuPresenter presenter;
  private final int[] tmpLocation;
  
  public NavigationView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public NavigationView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.navigationViewStyle);
  }
  
  public NavigationView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(MaterialThemeOverlay.wrap(paramContext, paramAttributeSet, paramInt, i), paramAttributeSet, paramInt);
    NavigationMenuPresenter localNavigationMenuPresenter = new NavigationMenuPresenter();
    this.presenter = localNavigationMenuPresenter;
    this.tmpLocation = new int[2];
    Context localContext = getContext();
    NavigationMenu localNavigationMenu = new NavigationMenu(localContext);
    this.menu = localNavigationMenu;
    z0 localz0 = ThemeEnforcement.obtainTintedStyledAttributes(localContext, paramAttributeSet, R.styleable.NavigationView, paramInt, i, new int[0]);
    paramInt = R.styleable.NavigationView_android_background;
    if (localz0.s(paramInt)) {
      a0.p0(this, localz0.g(paramInt));
    }
    if ((getBackground() == null) || ((getBackground() instanceof ColorDrawable)))
    {
      paramContext = getBackground();
      paramAttributeSet = new MaterialShapeDrawable();
      if ((paramContext instanceof ColorDrawable)) {
        paramAttributeSet.setFillColor(ColorStateList.valueOf(((ColorDrawable)paramContext).getColor()));
      }
      paramAttributeSet.initializeElevationOverlay(localContext);
      a0.p0(this, paramAttributeSet);
    }
    paramInt = R.styleable.NavigationView_elevation;
    if (localz0.s(paramInt)) {
      setElevation(localz0.f(paramInt, 0));
    }
    setFitsSystemWindows(localz0.a(R.styleable.NavigationView_android_fitsSystemWindows, false));
    this.maxWidth = localz0.f(R.styleable.NavigationView_android_maxWidth, 0);
    paramInt = R.styleable.NavigationView_itemIconTint;
    if (localz0.s(paramInt)) {
      paramAttributeSet = localz0.c(paramInt);
    } else {
      paramAttributeSet = createDefaultColorStateList(16842808);
    }
    paramInt = R.styleable.NavigationView_itemTextAppearance;
    if (localz0.s(paramInt))
    {
      i = localz0.n(paramInt, 0);
      paramInt = 1;
    }
    else
    {
      i = 0;
      paramInt = i;
    }
    int j = R.styleable.NavigationView_itemIconSize;
    if (localz0.s(j)) {
      setItemIconSize(localz0.f(j, 0));
    }
    paramContext = null;
    j = R.styleable.NavigationView_itemTextColor;
    if (localz0.s(j)) {
      paramContext = localz0.c(j);
    }
    Object localObject = paramContext;
    if (paramInt == 0)
    {
      localObject = paramContext;
      if (paramContext == null) {
        localObject = createDefaultColorStateList(16842806);
      }
    }
    Drawable localDrawable = localz0.g(R.styleable.NavigationView_itemBackground);
    paramContext = localDrawable;
    if (localDrawable == null)
    {
      paramContext = localDrawable;
      if (hasShapeAppearance(localz0)) {
        paramContext = createDefaultItemBackground(localz0);
      }
    }
    j = R.styleable.NavigationView_itemHorizontalPadding;
    if (localz0.s(j)) {
      localNavigationMenuPresenter.setItemHorizontalPadding(localz0.f(j, 0));
    }
    j = localz0.f(R.styleable.NavigationView_itemIconPadding, 0);
    setItemMaxLines(localz0.k(R.styleable.NavigationView_itemMaxLines, 1));
    localNavigationMenu.setCallback(new g.a()
    {
      public boolean onMenuItemSelected(androidx.appcompat.view.menu.g paramAnonymousg, MenuItem paramAnonymousMenuItem)
      {
        paramAnonymousg = NavigationView.this.listener;
        boolean bool;
        if ((paramAnonymousg != null) && (paramAnonymousg.onNavigationItemSelected(paramAnonymousMenuItem))) {
          bool = true;
        } else {
          bool = false;
        }
        return bool;
      }
      
      public void onMenuModeChange(androidx.appcompat.view.menu.g paramAnonymousg) {}
    });
    localNavigationMenuPresenter.setId(1);
    localNavigationMenuPresenter.initForMenu(localContext, localNavigationMenu);
    localNavigationMenuPresenter.setItemIconTintList(paramAttributeSet);
    localNavigationMenuPresenter.setOverScrollMode(getOverScrollMode());
    if (paramInt != 0) {
      localNavigationMenuPresenter.setItemTextAppearance(i);
    }
    localNavigationMenuPresenter.setItemTextColor((ColorStateList)localObject);
    localNavigationMenuPresenter.setItemBackground(paramContext);
    localNavigationMenuPresenter.setItemIconPadding(j);
    localNavigationMenu.addMenuPresenter(localNavigationMenuPresenter);
    addView((View)localNavigationMenuPresenter.getMenuView(this));
    paramInt = R.styleable.NavigationView_menu;
    if (localz0.s(paramInt)) {
      inflateMenu(localz0.n(paramInt, 0));
    }
    paramInt = R.styleable.NavigationView_headerLayout;
    if (localz0.s(paramInt)) {
      inflateHeaderView(localz0.n(paramInt, 0));
    }
    localz0.w();
    setupInsetScrimsListener();
  }
  
  private ColorStateList createDefaultColorStateList(int paramInt)
  {
    Object localObject = new TypedValue();
    if (!getContext().getTheme().resolveAttribute(paramInt, (TypedValue)localObject, true)) {
      return null;
    }
    ColorStateList localColorStateList = e.a.a(getContext(), ((TypedValue)localObject).resourceId);
    if (!getContext().getTheme().resolveAttribute(d.a.y, (TypedValue)localObject, true)) {
      return null;
    }
    paramInt = ((TypedValue)localObject).data;
    int i = localColorStateList.getDefaultColor();
    int[] arrayOfInt1 = DISABLED_STATE_SET;
    int[] arrayOfInt2 = CHECKED_STATE_SET;
    localObject = FrameLayout.EMPTY_STATE_SET;
    int j = localColorStateList.getColorForState(arrayOfInt1, i);
    return new ColorStateList(new int[][] { arrayOfInt1, arrayOfInt2, localObject }, new int[] { j, paramInt, i });
  }
  
  private final Drawable createDefaultItemBackground(z0 paramz0)
  {
    int i = paramz0.n(R.styleable.NavigationView_itemShapeAppearance, 0);
    int j = paramz0.n(R.styleable.NavigationView_itemShapeAppearanceOverlay, 0);
    MaterialShapeDrawable localMaterialShapeDrawable = new MaterialShapeDrawable(ShapeAppearanceModel.builder(getContext(), i, j).build());
    localMaterialShapeDrawable.setFillColor(MaterialResources.getColorStateList(getContext(), paramz0, R.styleable.NavigationView_itemShapeFillColor));
    return new InsetDrawable(localMaterialShapeDrawable, paramz0.f(R.styleable.NavigationView_itemShapeInsetStart, 0), paramz0.f(R.styleable.NavigationView_itemShapeInsetTop, 0), paramz0.f(R.styleable.NavigationView_itemShapeInsetEnd, 0), paramz0.f(R.styleable.NavigationView_itemShapeInsetBottom, 0));
  }
  
  private MenuInflater getMenuInflater()
  {
    if (this.menuInflater == null) {
      this.menuInflater = new h.g(getContext());
    }
    return this.menuInflater;
  }
  
  private boolean hasShapeAppearance(z0 paramz0)
  {
    boolean bool;
    if ((!paramz0.s(R.styleable.NavigationView_itemShapeAppearance)) && (!paramz0.s(R.styleable.NavigationView_itemShapeAppearanceOverlay))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private void setupInsetScrimsListener()
  {
    this.onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener()
    {
      public void onGlobalLayout()
      {
        Object localObject = NavigationView.this;
        ((View)localObject).getLocationOnScreen(((NavigationView)localObject).tmpLocation);
        localObject = NavigationView.this.tmpLocation;
        boolean bool1 = true;
        boolean bool2;
        if (localObject[1] == 0) {
          bool2 = true;
        } else {
          bool2 = false;
        }
        NavigationView.this.presenter.setBehindStatusBar(bool2);
        NavigationView.this.setDrawTopInsetForeground(bool2);
        localObject = NavigationView.this.getContext();
        if ((localObject instanceof Activity))
        {
          localObject = (Activity)localObject;
          int i;
          if (((Activity)localObject).findViewById(16908290).getHeight() == NavigationView.this.getHeight()) {
            i = 1;
          } else {
            i = 0;
          }
          int j;
          if (Color.alpha(((Activity)localObject).getWindow().getNavigationBarColor()) != 0) {
            j = 1;
          } else {
            j = 0;
          }
          localObject = NavigationView.this;
          if ((i != 0) && (j != 0)) {
            bool2 = bool1;
          } else {
            bool2 = false;
          }
          ((ScrimInsetsFrameLayout)localObject).setDrawBottomInsetForeground(bool2);
        }
      }
    };
    getViewTreeObserver().addOnGlobalLayoutListener(this.onGlobalLayoutListener);
  }
  
  public void addHeaderView(View paramView)
  {
    this.presenter.addHeaderView(paramView);
  }
  
  public MenuItem getCheckedItem()
  {
    return this.presenter.getCheckedItem();
  }
  
  public int getHeaderCount()
  {
    return this.presenter.getHeaderCount();
  }
  
  public View getHeaderView(int paramInt)
  {
    return this.presenter.getHeaderView(paramInt);
  }
  
  public Drawable getItemBackground()
  {
    return this.presenter.getItemBackground();
  }
  
  public int getItemHorizontalPadding()
  {
    return this.presenter.getItemHorizontalPadding();
  }
  
  public int getItemIconPadding()
  {
    return this.presenter.getItemIconPadding();
  }
  
  public ColorStateList getItemIconTintList()
  {
    return this.presenter.getItemTintList();
  }
  
  public int getItemMaxLines()
  {
    return this.presenter.getItemMaxLines();
  }
  
  public ColorStateList getItemTextColor()
  {
    return this.presenter.getItemTextColor();
  }
  
  public Menu getMenu()
  {
    return this.menu;
  }
  
  public View inflateHeaderView(int paramInt)
  {
    return this.presenter.inflateHeaderView(paramInt);
  }
  
  public void inflateMenu(int paramInt)
  {
    this.presenter.setUpdateSuspended(true);
    getMenuInflater().inflate(paramInt, this.menu);
    this.presenter.setUpdateSuspended(false);
    this.presenter.updateMenuView(false);
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    MaterialShapeUtils.setParentAbsoluteElevation(this);
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    getViewTreeObserver().removeOnGlobalLayoutListener(this.onGlobalLayoutListener);
  }
  
  protected void onInsetsChanged(e1 parame1)
  {
    this.presenter.dispatchApplyWindowInsets(parame1);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt1);
    if (i != -2147483648)
    {
      if (i == 0) {
        paramInt1 = View.MeasureSpec.makeMeasureSpec(this.maxWidth, 1073741824);
      }
    }
    else {
      paramInt1 = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(paramInt1), this.maxWidth), 1073741824);
    }
    super.onMeasure(paramInt1, paramInt2);
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
    this.menu.restorePresenterStates(paramParcelable.menuState);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    Bundle localBundle = new Bundle();
    localSavedState.menuState = localBundle;
    this.menu.savePresenterStates(localBundle);
    return localSavedState;
  }
  
  public void removeHeaderView(View paramView)
  {
    this.presenter.removeHeaderView(paramView);
  }
  
  public void setCheckedItem(int paramInt)
  {
    MenuItem localMenuItem = this.menu.findItem(paramInt);
    if (localMenuItem != null) {
      this.presenter.setCheckedItem((i)localMenuItem);
    }
  }
  
  public void setCheckedItem(MenuItem paramMenuItem)
  {
    paramMenuItem = this.menu.findItem(paramMenuItem.getItemId());
    if (paramMenuItem != null)
    {
      this.presenter.setCheckedItem((i)paramMenuItem);
      return;
    }
    throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
  }
  
  public void setElevation(float paramFloat)
  {
    super.setElevation(paramFloat);
    MaterialShapeUtils.setElevation(this, paramFloat);
  }
  
  public void setItemBackground(Drawable paramDrawable)
  {
    this.presenter.setItemBackground(paramDrawable);
  }
  
  public void setItemBackgroundResource(int paramInt)
  {
    setItemBackground(androidx.core.content.a.e(getContext(), paramInt));
  }
  
  public void setItemHorizontalPadding(int paramInt)
  {
    this.presenter.setItemHorizontalPadding(paramInt);
  }
  
  public void setItemHorizontalPaddingResource(int paramInt)
  {
    this.presenter.setItemHorizontalPadding(getResources().getDimensionPixelSize(paramInt));
  }
  
  public void setItemIconPadding(int paramInt)
  {
    this.presenter.setItemIconPadding(paramInt);
  }
  
  public void setItemIconPaddingResource(int paramInt)
  {
    this.presenter.setItemIconPadding(getResources().getDimensionPixelSize(paramInt));
  }
  
  public void setItemIconSize(int paramInt)
  {
    this.presenter.setItemIconSize(paramInt);
  }
  
  public void setItemIconTintList(ColorStateList paramColorStateList)
  {
    this.presenter.setItemIconTintList(paramColorStateList);
  }
  
  public void setItemMaxLines(int paramInt)
  {
    this.presenter.setItemMaxLines(paramInt);
  }
  
  public void setItemTextAppearance(int paramInt)
  {
    this.presenter.setItemTextAppearance(paramInt);
  }
  
  public void setItemTextColor(ColorStateList paramColorStateList)
  {
    this.presenter.setItemTextColor(paramColorStateList);
  }
  
  public void setNavigationItemSelectedListener(OnNavigationItemSelectedListener paramOnNavigationItemSelectedListener)
  {
    this.listener = paramOnNavigationItemSelectedListener;
  }
  
  public void setOverScrollMode(int paramInt)
  {
    super.setOverScrollMode(paramInt);
    NavigationMenuPresenter localNavigationMenuPresenter = this.presenter;
    if (localNavigationMenuPresenter != null) {
      localNavigationMenuPresenter.setOverScrollMode(paramInt);
    }
  }
  
  public static abstract interface OnNavigationItemSelectedListener
  {
    public abstract boolean onNavigationItemSelected(MenuItem paramMenuItem);
  }
  
  public static class SavedState
    extends AbsSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator()
    {
      public NavigationView.SavedState createFromParcel(Parcel paramAnonymousParcel)
      {
        return new NavigationView.SavedState(paramAnonymousParcel, null);
      }
      
      public NavigationView.SavedState createFromParcel(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
      {
        return new NavigationView.SavedState(paramAnonymousParcel, paramAnonymousClassLoader);
      }
      
      public NavigationView.SavedState[] newArray(int paramAnonymousInt)
      {
        return new NavigationView.SavedState[paramAnonymousInt];
      }
    };
    public Bundle menuState;
    
    public SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      this.menuState = paramParcel.readBundle(paramClassLoader);
    }
    
    public SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeBundle(this.menuState);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.navigation.NavigationView
 * JD-Core Version:    0.7.0.1
 */