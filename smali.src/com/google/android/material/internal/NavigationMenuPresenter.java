package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.m.a;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.view.menu.r;
import androidx.core.view.a0;
import androidx.core.view.accessibility.g.b;
import androidx.core.view.e1;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.c0;
import androidx.recyclerview.widget.RecyclerView.g;
import com.google.android.material.R.dimen;
import com.google.android.material.R.layout;
import java.util.ArrayList;

public class NavigationMenuPresenter
  implements androidx.appcompat.view.menu.m
{
  private static final String STATE_ADAPTER = "android:menu:adapter";
  private static final String STATE_HEADER = "android:menu:header";
  private static final String STATE_HIERARCHY = "android:menu:list";
  NavigationMenuAdapter adapter;
  private m.a callback;
  boolean hasCustomItemIconSize;
  LinearLayout headerLayout;
  ColorStateList iconTintList;
  private int id;
  boolean isBehindStatusBar = true;
  Drawable itemBackground;
  int itemHorizontalPadding;
  int itemIconPadding;
  int itemIconSize;
  private int itemMaxLines;
  LayoutInflater layoutInflater;
  androidx.appcompat.view.menu.g menu;
  private NavigationMenuView menuView;
  final View.OnClickListener onClickListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      Object localObject = (NavigationMenuItemView)paramAnonymousView;
      paramAnonymousView = NavigationMenuPresenter.this;
      int i = 1;
      paramAnonymousView.setUpdateSuspended(true);
      localObject = ((NavigationMenuItemView)localObject).getItemData();
      paramAnonymousView = NavigationMenuPresenter.this;
      boolean bool = paramAnonymousView.menu.performItemAction((MenuItem)localObject, paramAnonymousView, 0);
      if ((localObject != null) && (((i)localObject).isCheckable()) && (bool)) {
        NavigationMenuPresenter.this.adapter.setCheckedItem((i)localObject);
      } else {
        i = 0;
      }
      NavigationMenuPresenter.this.setUpdateSuspended(false);
      if (i != 0) {
        NavigationMenuPresenter.this.updateMenuView(false);
      }
    }
  };
  private int overScrollMode = -1;
  int paddingSeparator;
  private int paddingTopDefault;
  int textAppearance;
  boolean textAppearanceSet;
  ColorStateList textColor;
  
  private void updateTopPadding()
  {
    int i;
    if ((this.headerLayout.getChildCount() == 0) && (this.isBehindStatusBar)) {
      i = this.paddingTopDefault;
    } else {
      i = 0;
    }
    NavigationMenuView localNavigationMenuView = this.menuView;
    localNavigationMenuView.setPadding(0, i, 0, localNavigationMenuView.getPaddingBottom());
  }
  
  public void addHeaderView(View paramView)
  {
    this.headerLayout.addView(paramView);
    paramView = this.menuView;
    paramView.setPadding(0, 0, 0, paramView.getPaddingBottom());
  }
  
  public boolean collapseItemActionView(androidx.appcompat.view.menu.g paramg, i parami)
  {
    return false;
  }
  
  public void dispatchApplyWindowInsets(e1 parame1)
  {
    int i = parame1.k();
    if (this.paddingTopDefault != i)
    {
      this.paddingTopDefault = i;
      updateTopPadding();
    }
    NavigationMenuView localNavigationMenuView = this.menuView;
    localNavigationMenuView.setPadding(0, localNavigationMenuView.getPaddingTop(), 0, parame1.h());
    a0.f(this.headerLayout, parame1);
  }
  
  public boolean expandItemActionView(androidx.appcompat.view.menu.g paramg, i parami)
  {
    return false;
  }
  
  public boolean flagActionItems()
  {
    return false;
  }
  
  public i getCheckedItem()
  {
    return this.adapter.getCheckedItem();
  }
  
  public int getHeaderCount()
  {
    return this.headerLayout.getChildCount();
  }
  
  public View getHeaderView(int paramInt)
  {
    return this.headerLayout.getChildAt(paramInt);
  }
  
  public int getId()
  {
    return this.id;
  }
  
  public Drawable getItemBackground()
  {
    return this.itemBackground;
  }
  
  public int getItemHorizontalPadding()
  {
    return this.itemHorizontalPadding;
  }
  
  public int getItemIconPadding()
  {
    return this.itemIconPadding;
  }
  
  public int getItemMaxLines()
  {
    return this.itemMaxLines;
  }
  
  public ColorStateList getItemTextColor()
  {
    return this.textColor;
  }
  
  public ColorStateList getItemTintList()
  {
    return this.iconTintList;
  }
  
  public n getMenuView(ViewGroup paramViewGroup)
  {
    if (this.menuView == null)
    {
      paramViewGroup = (NavigationMenuView)this.layoutInflater.inflate(R.layout.design_navigation_menu, paramViewGroup, false);
      this.menuView = paramViewGroup;
      paramViewGroup.setAccessibilityDelegateCompat(new NavigationMenuViewAccessibilityDelegate(this.menuView));
      if (this.adapter == null) {
        this.adapter = new NavigationMenuAdapter();
      }
      int i = this.overScrollMode;
      if (i != -1) {
        this.menuView.setOverScrollMode(i);
      }
      this.headerLayout = ((LinearLayout)this.layoutInflater.inflate(R.layout.design_navigation_item_header, this.menuView, false));
      this.menuView.setAdapter(this.adapter);
    }
    return this.menuView;
  }
  
  public View inflateHeaderView(int paramInt)
  {
    View localView = this.layoutInflater.inflate(paramInt, this.headerLayout, false);
    addHeaderView(localView);
    return localView;
  }
  
  public void initForMenu(Context paramContext, androidx.appcompat.view.menu.g paramg)
  {
    this.layoutInflater = LayoutInflater.from(paramContext);
    this.menu = paramg;
    this.paddingSeparator = paramContext.getResources().getDimensionPixelOffset(R.dimen.design_navigation_separator_vertical_padding);
  }
  
  public boolean isBehindStatusBar()
  {
    return this.isBehindStatusBar;
  }
  
  public void onCloseMenu(androidx.appcompat.view.menu.g paramg, boolean paramBoolean)
  {
    m.a locala = this.callback;
    if (locala != null) {
      locala.onCloseMenu(paramg, paramBoolean);
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof Bundle))
    {
      paramParcelable = (Bundle)paramParcelable;
      Object localObject = paramParcelable.getSparseParcelableArray("android:menu:list");
      if (localObject != null) {
        this.menuView.restoreHierarchyState((SparseArray)localObject);
      }
      localObject = paramParcelable.getBundle("android:menu:adapter");
      if (localObject != null) {
        this.adapter.restoreInstanceState((Bundle)localObject);
      }
      paramParcelable = paramParcelable.getSparseParcelableArray("android:menu:header");
      if (paramParcelable != null) {
        this.headerLayout.restoreHierarchyState(paramParcelable);
      }
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    Bundle localBundle = new Bundle();
    if (this.menuView != null)
    {
      localObject = new SparseArray();
      this.menuView.saveHierarchyState((SparseArray)localObject);
      localBundle.putSparseParcelableArray("android:menu:list", (SparseArray)localObject);
    }
    Object localObject = this.adapter;
    if (localObject != null) {
      localBundle.putBundle("android:menu:adapter", ((NavigationMenuAdapter)localObject).createInstanceState());
    }
    if (this.headerLayout != null)
    {
      localObject = new SparseArray();
      this.headerLayout.saveHierarchyState((SparseArray)localObject);
      localBundle.putSparseParcelableArray("android:menu:header", (SparseArray)localObject);
    }
    return localBundle;
  }
  
  public boolean onSubMenuSelected(r paramr)
  {
    return false;
  }
  
  public void removeHeaderView(View paramView)
  {
    this.headerLayout.removeView(paramView);
    if (this.headerLayout.getChildCount() == 0)
    {
      paramView = this.menuView;
      paramView.setPadding(0, this.paddingTopDefault, 0, paramView.getPaddingBottom());
    }
  }
  
  public void setBehindStatusBar(boolean paramBoolean)
  {
    if (this.isBehindStatusBar != paramBoolean)
    {
      this.isBehindStatusBar = paramBoolean;
      updateTopPadding();
    }
  }
  
  public void setCallback(m.a parama)
  {
    this.callback = parama;
  }
  
  public void setCheckedItem(i parami)
  {
    this.adapter.setCheckedItem(parami);
  }
  
  public void setId(int paramInt)
  {
    this.id = paramInt;
  }
  
  public void setItemBackground(Drawable paramDrawable)
  {
    this.itemBackground = paramDrawable;
    updateMenuView(false);
  }
  
  public void setItemHorizontalPadding(int paramInt)
  {
    this.itemHorizontalPadding = paramInt;
    updateMenuView(false);
  }
  
  public void setItemIconPadding(int paramInt)
  {
    this.itemIconPadding = paramInt;
    updateMenuView(false);
  }
  
  public void setItemIconSize(int paramInt)
  {
    if (this.itemIconSize != paramInt)
    {
      this.itemIconSize = paramInt;
      this.hasCustomItemIconSize = true;
      updateMenuView(false);
    }
  }
  
  public void setItemIconTintList(ColorStateList paramColorStateList)
  {
    this.iconTintList = paramColorStateList;
    updateMenuView(false);
  }
  
  public void setItemMaxLines(int paramInt)
  {
    this.itemMaxLines = paramInt;
    updateMenuView(false);
  }
  
  public void setItemTextAppearance(int paramInt)
  {
    this.textAppearance = paramInt;
    this.textAppearanceSet = true;
    updateMenuView(false);
  }
  
  public void setItemTextColor(ColorStateList paramColorStateList)
  {
    this.textColor = paramColorStateList;
    updateMenuView(false);
  }
  
  public void setOverScrollMode(int paramInt)
  {
    this.overScrollMode = paramInt;
    NavigationMenuView localNavigationMenuView = this.menuView;
    if (localNavigationMenuView != null) {
      localNavigationMenuView.setOverScrollMode(paramInt);
    }
  }
  
  public void setUpdateSuspended(boolean paramBoolean)
  {
    NavigationMenuAdapter localNavigationMenuAdapter = this.adapter;
    if (localNavigationMenuAdapter != null) {
      localNavigationMenuAdapter.setUpdateSuspended(paramBoolean);
    }
  }
  
  public void updateMenuView(boolean paramBoolean)
  {
    NavigationMenuAdapter localNavigationMenuAdapter = this.adapter;
    if (localNavigationMenuAdapter != null) {
      localNavigationMenuAdapter.update();
    }
  }
  
  private static class HeaderViewHolder
    extends NavigationMenuPresenter.ViewHolder
  {
    public HeaderViewHolder(View paramView)
    {
      super();
    }
  }
  
  private class NavigationMenuAdapter
    extends RecyclerView.g<NavigationMenuPresenter.ViewHolder>
  {
    private static final String STATE_ACTION_VIEWS = "android:menu:action_views";
    private static final String STATE_CHECKED_ITEM = "android:menu:checked";
    private static final int VIEW_TYPE_HEADER = 3;
    private static final int VIEW_TYPE_NORMAL = 0;
    private static final int VIEW_TYPE_SEPARATOR = 2;
    private static final int VIEW_TYPE_SUBHEADER = 1;
    private i checkedItem;
    private final ArrayList<NavigationMenuPresenter.NavigationMenuItem> items = new ArrayList();
    private boolean updateSuspended;
    
    NavigationMenuAdapter()
    {
      prepareMenuItems();
    }
    
    private void appendTransparentIconIfMissing(int paramInt1, int paramInt2)
    {
      while (paramInt1 < paramInt2)
      {
        ((NavigationMenuPresenter.NavigationMenuTextItem)this.items.get(paramInt1)).needsEmptyIcon = true;
        paramInt1++;
      }
    }
    
    private void prepareMenuItems()
    {
      if (this.updateSuspended) {
        return;
      }
      this.updateSuspended = true;
      this.items.clear();
      this.items.add(new NavigationMenuPresenter.NavigationMenuHeaderItem());
      int i = -1;
      int j = NavigationMenuPresenter.this.menu.getVisibleItems().size();
      int k = 0;
      int m = k;
      int i3;
      for (int n = m; k < j; n = i3)
      {
        Object localObject1 = (i)NavigationMenuPresenter.this.menu.getVisibleItems().get(k);
        if (((i)localObject1).isChecked()) {
          setCheckedItem((i)localObject1);
        }
        if (((i)localObject1).isCheckable()) {
          ((i)localObject1).t(false);
        }
        Object localObject2;
        int i1;
        int i2;
        int i5;
        if (((i)localObject1).hasSubMenu())
        {
          localObject2 = ((i)localObject1).getSubMenu();
          i1 = i;
          i2 = m;
          i3 = n;
          if (((Menu)localObject2).hasVisibleItems())
          {
            if (k != 0) {
              this.items.add(new NavigationMenuPresenter.NavigationMenuSeparatorItem(NavigationMenuPresenter.this.paddingSeparator, 0));
            }
            this.items.add(new NavigationMenuPresenter.NavigationMenuTextItem((i)localObject1));
            int i4 = this.items.size();
            i1 = ((Menu)localObject2).size();
            i2 = 0;
            for (i5 = i2; i2 < i1; i5 = i3)
            {
              i locali = (i)((Menu)localObject2).getItem(i2);
              i3 = i5;
              if (locali.isVisible())
              {
                i3 = i5;
                if (i5 == 0)
                {
                  i3 = i5;
                  if (locali.getIcon() != null) {
                    i3 = 1;
                  }
                }
                if (locali.isCheckable()) {
                  locali.t(false);
                }
                if (((i)localObject1).isChecked()) {
                  setCheckedItem((i)localObject1);
                }
                this.items.add(new NavigationMenuPresenter.NavigationMenuTextItem(locali));
              }
              i2++;
            }
            i1 = i;
            i2 = m;
            i3 = n;
            if (i5 != 0)
            {
              appendTransparentIconIfMissing(i4, this.items.size());
              i1 = i;
              i2 = m;
              i3 = n;
            }
          }
        }
        else
        {
          i1 = ((i)localObject1).getGroupId();
          if (i1 != i)
          {
            m = this.items.size();
            if (((i)localObject1).getIcon() != null) {
              n = 1;
            } else {
              n = 0;
            }
            i5 = n;
            i3 = m;
            if (k != 0)
            {
              i3 = m + 1;
              localObject2 = this.items;
              i5 = NavigationMenuPresenter.this.paddingSeparator;
              ((ArrayList)localObject2).add(new NavigationMenuPresenter.NavigationMenuSeparatorItem(i5, i5));
              i5 = n;
            }
          }
          else
          {
            i5 = m;
            i3 = n;
            if (m == 0)
            {
              i5 = m;
              i3 = n;
              if (((i)localObject1).getIcon() != null)
              {
                appendTransparentIconIfMissing(n, this.items.size());
                i5 = 1;
                i3 = n;
              }
            }
          }
          localObject1 = new NavigationMenuPresenter.NavigationMenuTextItem((i)localObject1);
          ((NavigationMenuPresenter.NavigationMenuTextItem)localObject1).needsEmptyIcon = i5;
          this.items.add(localObject1);
          i2 = i5;
        }
        k++;
        i = i1;
        m = i2;
      }
      this.updateSuspended = false;
    }
    
    public Bundle createInstanceState()
    {
      Bundle localBundle = new Bundle();
      Object localObject = this.checkedItem;
      if (localObject != null) {
        localBundle.putInt("android:menu:checked", ((i)localObject).getItemId());
      }
      SparseArray localSparseArray = new SparseArray();
      int i = 0;
      int j = this.items.size();
      while (i < j)
      {
        localObject = (NavigationMenuPresenter.NavigationMenuItem)this.items.get(i);
        if ((localObject instanceof NavigationMenuPresenter.NavigationMenuTextItem))
        {
          i locali = ((NavigationMenuPresenter.NavigationMenuTextItem)localObject).getMenuItem();
          if (locali != null) {
            localObject = locali.getActionView();
          } else {
            localObject = null;
          }
          if (localObject != null)
          {
            ParcelableSparseArray localParcelableSparseArray = new ParcelableSparseArray();
            ((View)localObject).saveHierarchyState(localParcelableSparseArray);
            localSparseArray.put(locali.getItemId(), localParcelableSparseArray);
          }
        }
        i++;
      }
      localBundle.putSparseParcelableArray("android:menu:action_views", localSparseArray);
      return localBundle;
    }
    
    public i getCheckedItem()
    {
      return this.checkedItem;
    }
    
    public int getItemCount()
    {
      return this.items.size();
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public int getItemViewType(int paramInt)
    {
      NavigationMenuPresenter.NavigationMenuItem localNavigationMenuItem = (NavigationMenuPresenter.NavigationMenuItem)this.items.get(paramInt);
      if ((localNavigationMenuItem instanceof NavigationMenuPresenter.NavigationMenuSeparatorItem)) {
        return 2;
      }
      if ((localNavigationMenuItem instanceof NavigationMenuPresenter.NavigationMenuHeaderItem)) {
        return 3;
      }
      if ((localNavigationMenuItem instanceof NavigationMenuPresenter.NavigationMenuTextItem))
      {
        if (((NavigationMenuPresenter.NavigationMenuTextItem)localNavigationMenuItem).getMenuItem().hasSubMenu()) {
          return 1;
        }
        return 0;
      }
      throw new RuntimeException("Unknown item type.");
    }
    
    int getRowCount()
    {
      int i = NavigationMenuPresenter.this.headerLayout.getChildCount();
      int j = 0;
      if (i == 0) {
        i = 0;
      }
      int k;
      for (i = 1; j < NavigationMenuPresenter.this.adapter.getItemCount(); i = k)
      {
        k = i;
        if (NavigationMenuPresenter.this.adapter.getItemViewType(j) == 0) {
          k = i + 1;
        }
        j++;
      }
      return i;
    }
    
    public void onBindViewHolder(NavigationMenuPresenter.ViewHolder paramViewHolder, int paramInt)
    {
      int i = getItemViewType(paramInt);
      Object localObject;
      if (i != 0)
      {
        if (i != 1)
        {
          if (i == 2)
          {
            localObject = (NavigationMenuPresenter.NavigationMenuSeparatorItem)this.items.get(paramInt);
            paramViewHolder.itemView.setPadding(0, ((NavigationMenuPresenter.NavigationMenuSeparatorItem)localObject).getPaddingTop(), 0, ((NavigationMenuPresenter.NavigationMenuSeparatorItem)localObject).getPaddingBottom());
          }
        }
        else {
          ((TextView)paramViewHolder.itemView).setText(((NavigationMenuPresenter.NavigationMenuTextItem)this.items.get(paramInt)).getMenuItem().getTitle());
        }
      }
      else
      {
        localObject = (NavigationMenuItemView)paramViewHolder.itemView;
        ((NavigationMenuItemView)localObject).setIconTintList(NavigationMenuPresenter.this.iconTintList);
        paramViewHolder = NavigationMenuPresenter.this;
        if (paramViewHolder.textAppearanceSet) {
          ((NavigationMenuItemView)localObject).setTextAppearance(paramViewHolder.textAppearance);
        }
        paramViewHolder = NavigationMenuPresenter.this.textColor;
        if (paramViewHolder != null) {
          ((NavigationMenuItemView)localObject).setTextColor(paramViewHolder);
        }
        paramViewHolder = NavigationMenuPresenter.this.itemBackground;
        if (paramViewHolder != null) {
          paramViewHolder = paramViewHolder.getConstantState().newDrawable();
        } else {
          paramViewHolder = null;
        }
        a0.p0((View)localObject, paramViewHolder);
        paramViewHolder = (NavigationMenuPresenter.NavigationMenuTextItem)this.items.get(paramInt);
        ((NavigationMenuItemView)localObject).setNeedsEmptyIcon(paramViewHolder.needsEmptyIcon);
        ((NavigationMenuItemView)localObject).setHorizontalPadding(NavigationMenuPresenter.this.itemHorizontalPadding);
        ((NavigationMenuItemView)localObject).setIconPadding(NavigationMenuPresenter.this.itemIconPadding);
        NavigationMenuPresenter localNavigationMenuPresenter = NavigationMenuPresenter.this;
        if (localNavigationMenuPresenter.hasCustomItemIconSize) {
          ((NavigationMenuItemView)localObject).setIconSize(localNavigationMenuPresenter.itemIconSize);
        }
        ((NavigationMenuItemView)localObject).setMaxLines(NavigationMenuPresenter.this.itemMaxLines);
        ((NavigationMenuItemView)localObject).initialize(paramViewHolder.getMenuItem(), 0);
      }
    }
    
    public NavigationMenuPresenter.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
    {
      if (paramInt != 0)
      {
        if (paramInt != 1)
        {
          if (paramInt != 2)
          {
            if (paramInt != 3) {
              return null;
            }
            return new NavigationMenuPresenter.HeaderViewHolder(NavigationMenuPresenter.this.headerLayout);
          }
          return new NavigationMenuPresenter.SeparatorViewHolder(NavigationMenuPresenter.this.layoutInflater, paramViewGroup);
        }
        return new NavigationMenuPresenter.SubheaderViewHolder(NavigationMenuPresenter.this.layoutInflater, paramViewGroup);
      }
      NavigationMenuPresenter localNavigationMenuPresenter = NavigationMenuPresenter.this;
      return new NavigationMenuPresenter.NormalViewHolder(localNavigationMenuPresenter.layoutInflater, paramViewGroup, localNavigationMenuPresenter.onClickListener);
    }
    
    public void onViewRecycled(NavigationMenuPresenter.ViewHolder paramViewHolder)
    {
      if ((paramViewHolder instanceof NavigationMenuPresenter.NormalViewHolder)) {
        ((NavigationMenuItemView)paramViewHolder.itemView).recycle();
      }
    }
    
    public void restoreInstanceState(Bundle paramBundle)
    {
      int i = 0;
      int j = paramBundle.getInt("android:menu:checked", 0);
      int m;
      Object localObject1;
      if (j != 0)
      {
        this.updateSuspended = true;
        int k = this.items.size();
        for (m = 0; m < k; m++)
        {
          localObject1 = (NavigationMenuPresenter.NavigationMenuItem)this.items.get(m);
          if ((localObject1 instanceof NavigationMenuPresenter.NavigationMenuTextItem))
          {
            localObject1 = ((NavigationMenuPresenter.NavigationMenuTextItem)localObject1).getMenuItem();
            if ((localObject1 != null) && (((i)localObject1).getItemId() == j))
            {
              setCheckedItem((i)localObject1);
              break;
            }
          }
        }
        this.updateSuspended = false;
        prepareMenuItems();
      }
      paramBundle = paramBundle.getSparseParcelableArray("android:menu:action_views");
      if (paramBundle != null)
      {
        j = this.items.size();
        for (m = i; m < j; m++)
        {
          localObject1 = (NavigationMenuPresenter.NavigationMenuItem)this.items.get(m);
          if ((localObject1 instanceof NavigationMenuPresenter.NavigationMenuTextItem))
          {
            Object localObject2 = ((NavigationMenuPresenter.NavigationMenuTextItem)localObject1).getMenuItem();
            if (localObject2 != null)
            {
              localObject1 = ((i)localObject2).getActionView();
              if (localObject1 != null)
              {
                localObject2 = (ParcelableSparseArray)paramBundle.get(((i)localObject2).getItemId());
                if (localObject2 != null) {
                  ((View)localObject1).restoreHierarchyState((SparseArray)localObject2);
                }
              }
            }
          }
        }
      }
    }
    
    public void setCheckedItem(i parami)
    {
      if ((this.checkedItem != parami) && (parami.isCheckable()))
      {
        i locali = this.checkedItem;
        if (locali != null) {
          locali.setChecked(false);
        }
        this.checkedItem = parami;
        parami.setChecked(true);
      }
    }
    
    public void setUpdateSuspended(boolean paramBoolean)
    {
      this.updateSuspended = paramBoolean;
    }
    
    public void update()
    {
      prepareMenuItems();
      notifyDataSetChanged();
    }
  }
  
  private static class NavigationMenuHeaderItem
    implements NavigationMenuPresenter.NavigationMenuItem
  {}
  
  private static abstract interface NavigationMenuItem {}
  
  private static class NavigationMenuSeparatorItem
    implements NavigationMenuPresenter.NavigationMenuItem
  {
    private final int paddingBottom;
    private final int paddingTop;
    
    public NavigationMenuSeparatorItem(int paramInt1, int paramInt2)
    {
      this.paddingTop = paramInt1;
      this.paddingBottom = paramInt2;
    }
    
    public int getPaddingBottom()
    {
      return this.paddingBottom;
    }
    
    public int getPaddingTop()
    {
      return this.paddingTop;
    }
  }
  
  private static class NavigationMenuTextItem
    implements NavigationMenuPresenter.NavigationMenuItem
  {
    private final i menuItem;
    boolean needsEmptyIcon;
    
    NavigationMenuTextItem(i parami)
    {
      this.menuItem = parami;
    }
    
    public i getMenuItem()
    {
      return this.menuItem;
    }
  }
  
  private class NavigationMenuViewAccessibilityDelegate
    extends androidx.recyclerview.widget.m
  {
    NavigationMenuViewAccessibilityDelegate(RecyclerView paramRecyclerView)
    {
      super();
    }
    
    public void onInitializeAccessibilityNodeInfo(View paramView, androidx.core.view.accessibility.g paramg)
    {
      super.onInitializeAccessibilityNodeInfo(paramView, paramg);
      paramg.T(g.b.a(NavigationMenuPresenter.this.adapter.getRowCount(), 0, false));
    }
  }
  
  private static class NormalViewHolder
    extends NavigationMenuPresenter.ViewHolder
  {
    public NormalViewHolder(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, View.OnClickListener paramOnClickListener)
    {
      super();
      this.itemView.setOnClickListener(paramOnClickListener);
    }
  }
  
  private static class SeparatorViewHolder
    extends NavigationMenuPresenter.ViewHolder
  {
    public SeparatorViewHolder(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
    {
      super();
    }
  }
  
  private static class SubheaderViewHolder
    extends NavigationMenuPresenter.ViewHolder
  {
    public SubheaderViewHolder(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
    {
      super();
    }
  }
  
  private static abstract class ViewHolder
    extends RecyclerView.c0
  {
    public ViewHolder(View paramView)
    {
      super();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.internal.NavigationMenuPresenter
 * JD-Core Version:    0.7.0.1
 */