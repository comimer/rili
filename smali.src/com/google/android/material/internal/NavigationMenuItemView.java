package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.n.a;
import androidx.appcompat.widget.c1;
import androidx.appcompat.widget.i0;
import androidx.appcompat.widget.i0.a;
import androidx.core.content.res.h;
import androidx.core.view.a0;
import androidx.core.view.accessibility.g;
import androidx.core.widget.l;
import com.google.android.material.R.dimen;
import com.google.android.material.R.drawable;
import com.google.android.material.R.id;
import com.google.android.material.R.layout;

public class NavigationMenuItemView
  extends ForegroundLinearLayout
  implements n.a
{
  private static final int[] CHECKED_STATE_SET = { 16842912 };
  private final androidx.core.view.a accessibilityDelegate;
  private FrameLayout actionArea;
  boolean checkable;
  private Drawable emptyDrawable;
  private boolean hasIconTintList;
  private int iconSize;
  private ColorStateList iconTintList;
  private i itemData;
  private boolean needsEmptyIcon;
  private final CheckedTextView textView;
  
  public NavigationMenuItemView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public NavigationMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public NavigationMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = new androidx.core.view.a()
    {
      public void onInitializeAccessibilityNodeInfo(View paramAnonymousView, g paramAnonymousg)
      {
        super.onInitializeAccessibilityNodeInfo(paramAnonymousView, paramAnonymousg);
        paramAnonymousg.P(NavigationMenuItemView.this.checkable);
      }
    };
    this.accessibilityDelegate = paramAttributeSet;
    setOrientation(0);
    LayoutInflater.from(paramContext).inflate(R.layout.design_navigation_menu_item, this, true);
    setIconSize(paramContext.getResources().getDimensionPixelSize(R.dimen.design_navigation_icon_size));
    paramContext = (CheckedTextView)findViewById(R.id.design_menu_item_text);
    this.textView = paramContext;
    paramContext.setDuplicateParentStateEnabled(true);
    a0.l0(paramContext, paramAttributeSet);
  }
  
  private void adjustAppearance()
  {
    Object localObject;
    if (shouldExpandActionArea())
    {
      this.textView.setVisibility(8);
      localObject = this.actionArea;
      if (localObject != null)
      {
        localObject = (i0.a)((View)localObject).getLayoutParams();
        ((LinearLayout.LayoutParams)localObject).width = -1;
        this.actionArea.setLayoutParams((ViewGroup.LayoutParams)localObject);
      }
    }
    else
    {
      this.textView.setVisibility(0);
      localObject = this.actionArea;
      if (localObject != null)
      {
        localObject = (i0.a)((View)localObject).getLayoutParams();
        ((LinearLayout.LayoutParams)localObject).width = -2;
        this.actionArea.setLayoutParams((ViewGroup.LayoutParams)localObject);
      }
    }
  }
  
  private StateListDrawable createDefaultBackground()
  {
    TypedValue localTypedValue = new TypedValue();
    if (getContext().getTheme().resolveAttribute(d.a.w, localTypedValue, true))
    {
      StateListDrawable localStateListDrawable = new StateListDrawable();
      localStateListDrawable.addState(CHECKED_STATE_SET, new ColorDrawable(localTypedValue.data));
      localStateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
      return localStateListDrawable;
    }
    return null;
  }
  
  private void setActionView(View paramView)
  {
    if (paramView != null)
    {
      if (this.actionArea == null) {
        this.actionArea = ((FrameLayout)((ViewStub)findViewById(R.id.design_menu_item_action_area_stub)).inflate());
      }
      this.actionArea.removeAllViews();
      this.actionArea.addView(paramView);
    }
  }
  
  private boolean shouldExpandActionArea()
  {
    boolean bool;
    if ((this.itemData.getTitle() == null) && (this.itemData.getIcon() == null) && (this.itemData.getActionView() != null)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public i getItemData()
  {
    return this.itemData;
  }
  
  public void initialize(i parami, int paramInt)
  {
    this.itemData = parami;
    if (parami.getItemId() > 0) {
      setId(parami.getItemId());
    }
    if (parami.isVisible()) {
      paramInt = 0;
    } else {
      paramInt = 8;
    }
    setVisibility(paramInt);
    if (getBackground() == null) {
      a0.p0(this, createDefaultBackground());
    }
    setCheckable(parami.isCheckable());
    setChecked(parami.isChecked());
    setEnabled(parami.isEnabled());
    setTitle(parami.getTitle());
    setIcon(parami.getIcon());
    setActionView(parami.getActionView());
    setContentDescription(parami.getContentDescription());
    c1.a(this, parami.getTooltipText());
    adjustAppearance();
  }
  
  protected int[] onCreateDrawableState(int paramInt)
  {
    int[] arrayOfInt = super.onCreateDrawableState(paramInt + 1);
    i locali = this.itemData;
    if ((locali != null) && (locali.isCheckable()) && (this.itemData.isChecked())) {
      View.mergeDrawableStates(arrayOfInt, CHECKED_STATE_SET);
    }
    return arrayOfInt;
  }
  
  public boolean prefersCondensedTitle()
  {
    return false;
  }
  
  public void recycle()
  {
    FrameLayout localFrameLayout = this.actionArea;
    if (localFrameLayout != null) {
      localFrameLayout.removeAllViews();
    }
    this.textView.setCompoundDrawables(null, null, null, null);
  }
  
  public void setCheckable(boolean paramBoolean)
  {
    refreshDrawableState();
    if (this.checkable != paramBoolean)
    {
      this.checkable = paramBoolean;
      this.accessibilityDelegate.sendAccessibilityEvent(this.textView, 2048);
    }
  }
  
  public void setChecked(boolean paramBoolean)
  {
    refreshDrawableState();
    this.textView.setChecked(paramBoolean);
  }
  
  public void setHorizontalPadding(int paramInt)
  {
    setPadding(paramInt, 0, paramInt, 0);
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    int i;
    if (paramDrawable != null)
    {
      Object localObject = paramDrawable;
      if (this.hasIconTintList)
      {
        localObject = paramDrawable.getConstantState();
        if (localObject != null) {
          paramDrawable = ((Drawable.ConstantState)localObject).newDrawable();
        }
        localObject = androidx.core.graphics.drawable.a.r(paramDrawable).mutate();
        androidx.core.graphics.drawable.a.o((Drawable)localObject, this.iconTintList);
      }
      i = this.iconSize;
      ((Drawable)localObject).setBounds(0, 0, i, i);
      paramDrawable = (Drawable)localObject;
    }
    else if (this.needsEmptyIcon)
    {
      if (this.emptyDrawable == null)
      {
        paramDrawable = h.d(getResources(), R.drawable.navigation_empty_icon, getContext().getTheme());
        this.emptyDrawable = paramDrawable;
        if (paramDrawable != null)
        {
          i = this.iconSize;
          paramDrawable.setBounds(0, 0, i, i);
        }
      }
      paramDrawable = this.emptyDrawable;
    }
    l.j(this.textView, paramDrawable, null, null, null);
  }
  
  public void setIconPadding(int paramInt)
  {
    this.textView.setCompoundDrawablePadding(paramInt);
  }
  
  public void setIconSize(int paramInt)
  {
    this.iconSize = paramInt;
  }
  
  void setIconTintList(ColorStateList paramColorStateList)
  {
    this.iconTintList = paramColorStateList;
    boolean bool;
    if (paramColorStateList != null) {
      bool = true;
    } else {
      bool = false;
    }
    this.hasIconTintList = bool;
    paramColorStateList = this.itemData;
    if (paramColorStateList != null) {
      setIcon(paramColorStateList.getIcon());
    }
  }
  
  public void setMaxLines(int paramInt)
  {
    this.textView.setMaxLines(paramInt);
  }
  
  public void setNeedsEmptyIcon(boolean paramBoolean)
  {
    this.needsEmptyIcon = paramBoolean;
  }
  
  public void setShortcut(boolean paramBoolean, char paramChar) {}
  
  public void setTextAppearance(int paramInt)
  {
    l.o(this.textView, paramInt);
  }
  
  public void setTextColor(ColorStateList paramColorStateList)
  {
    this.textView.setTextColor(paramColorStateList);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    this.textView.setText(paramCharSequence);
  }
  
  public boolean showsIcon()
  {
    return true;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.internal.NavigationMenuItemView
 * JD-Core Version:    0.7.0.1
 */