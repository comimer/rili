package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.n.a;
import androidx.appcompat.widget.c1;
import androidx.core.view.a0;
import androidx.core.view.accessibility.g;
import androidx.core.view.accessibility.g.a;
import androidx.core.view.accessibility.g.c;
import androidx.core.view.y;
import androidx.core.widget.l;
import com.google.android.material.R.dimen;
import com.google.android.material.R.drawable;
import com.google.android.material.R.id;
import com.google.android.material.R.layout;
import com.google.android.material.R.string;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.BadgeUtils;

public class BottomNavigationItemView
  extends FrameLayout
  implements n.a
{
  private static final int[] CHECKED_STATE_SET = { 16842912 };
  public static final int INVALID_ITEM_POSITION = -1;
  private BadgeDrawable badgeDrawable;
  private final int defaultMargin;
  private ImageView icon;
  private ColorStateList iconTint;
  private boolean isShifting;
  private i itemData;
  private int itemPosition = -1;
  private int labelVisibilityMode;
  private final TextView largeLabel;
  private Drawable originalIconDrawable;
  private float scaleDownFactor;
  private float scaleUpFactor;
  private float shiftAmount;
  private final TextView smallLabel;
  private Drawable wrappedIconDrawable;
  
  public BottomNavigationItemView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public BottomNavigationItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public BottomNavigationItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = getResources();
    LayoutInflater.from(paramContext).inflate(R.layout.design_bottom_navigation_item, this, true);
    setBackgroundResource(R.drawable.design_bottom_navigation_item_background);
    this.defaultMargin = paramAttributeSet.getDimensionPixelSize(R.dimen.design_bottom_navigation_margin);
    this.icon = ((ImageView)findViewById(R.id.icon));
    paramContext = (TextView)findViewById(R.id.smallLabel);
    this.smallLabel = paramContext;
    paramAttributeSet = (TextView)findViewById(R.id.largeLabel);
    this.largeLabel = paramAttributeSet;
    a0.w0(paramContext, 2);
    a0.w0(paramAttributeSet, 2);
    setFocusable(true);
    calculateTextScaleFactors(paramContext.getTextSize(), paramAttributeSet.getTextSize());
    paramContext = this.icon;
    if (paramContext != null) {
      paramContext.addOnLayoutChangeListener(new View.OnLayoutChangeListener()
      {
        public void onLayoutChange(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4, int paramAnonymousInt5, int paramAnonymousInt6, int paramAnonymousInt7, int paramAnonymousInt8)
        {
          if (BottomNavigationItemView.this.icon.getVisibility() == 0)
          {
            paramAnonymousView = BottomNavigationItemView.this;
            paramAnonymousView.tryUpdateBadgeBounds(paramAnonymousView.icon);
          }
        }
      });
    }
  }
  
  private void calculateTextScaleFactors(float paramFloat1, float paramFloat2)
  {
    this.shiftAmount = (paramFloat1 - paramFloat2);
    this.scaleUpFactor = (paramFloat2 * 1.0F / paramFloat1);
    this.scaleDownFactor = (paramFloat1 * 1.0F / paramFloat2);
  }
  
  private FrameLayout getCustomParentForBadge(View paramView)
  {
    ImageView localImageView = this.icon;
    Object localObject1 = null;
    Object localObject2 = localObject1;
    if (paramView == localImageView)
    {
      localObject2 = localObject1;
      if (BadgeUtils.USE_COMPAT_PARENT) {
        localObject2 = (FrameLayout)localImageView.getParent();
      }
    }
    return localObject2;
  }
  
  private boolean hasBadge()
  {
    boolean bool;
    if (this.badgeDrawable != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void setViewLayoutParams(View paramView, int paramInt1, int paramInt2)
  {
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)paramView.getLayoutParams();
    localLayoutParams.topMargin = paramInt1;
    localLayoutParams.gravity = paramInt2;
    paramView.setLayoutParams(localLayoutParams);
  }
  
  private void setViewValues(View paramView, float paramFloat1, float paramFloat2, int paramInt)
  {
    paramView.setScaleX(paramFloat1);
    paramView.setScaleY(paramFloat2);
    paramView.setVisibility(paramInt);
  }
  
  private void tryAttachBadgeToAnchor(View paramView)
  {
    if (!hasBadge()) {
      return;
    }
    if (paramView != null)
    {
      setClipChildren(false);
      setClipToPadding(false);
      BadgeUtils.attachBadgeDrawable(this.badgeDrawable, paramView, getCustomParentForBadge(paramView));
    }
  }
  
  private void tryRemoveBadgeFromAnchor(View paramView)
  {
    if (!hasBadge()) {
      return;
    }
    if (paramView != null)
    {
      setClipChildren(true);
      setClipToPadding(true);
      BadgeUtils.detachBadgeDrawable(this.badgeDrawable, paramView, getCustomParentForBadge(paramView));
    }
    this.badgeDrawable = null;
  }
  
  private void tryUpdateBadgeBounds(View paramView)
  {
    if (!hasBadge()) {
      return;
    }
    BadgeUtils.setBadgeDrawableBounds(this.badgeDrawable, paramView, getCustomParentForBadge(paramView));
  }
  
  BadgeDrawable getBadge()
  {
    return this.badgeDrawable;
  }
  
  public i getItemData()
  {
    return this.itemData;
  }
  
  public int getItemPosition()
  {
    return this.itemPosition;
  }
  
  public void initialize(i parami, int paramInt)
  {
    this.itemData = parami;
    setCheckable(parami.isCheckable());
    setChecked(parami.isChecked());
    setEnabled(parami.isEnabled());
    setIcon(parami.getIcon());
    setTitle(parami.getTitle());
    setId(parami.getItemId());
    if (!TextUtils.isEmpty(parami.getContentDescription())) {
      setContentDescription(parami.getContentDescription());
    }
    CharSequence localCharSequence;
    if (!TextUtils.isEmpty(parami.getTooltipText())) {
      localCharSequence = parami.getTooltipText();
    } else {
      localCharSequence = parami.getTitle();
    }
    c1.a(this, localCharSequence);
    if (parami.isVisible()) {
      paramInt = 0;
    } else {
      paramInt = 8;
    }
    setVisibility(paramInt);
  }
  
  public int[] onCreateDrawableState(int paramInt)
  {
    int[] arrayOfInt = super.onCreateDrawableState(paramInt + 1);
    i locali = this.itemData;
    if ((locali != null) && (locali.isCheckable()) && (this.itemData.isChecked())) {
      View.mergeDrawableStates(arrayOfInt, CHECKED_STATE_SET);
    }
    return arrayOfInt;
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    Object localObject = this.badgeDrawable;
    if ((localObject != null) && (((Drawable)localObject).isVisible()))
    {
      localObject = this.itemData.getTitle();
      if (!TextUtils.isEmpty(this.itemData.getContentDescription())) {
        localObject = this.itemData.getContentDescription();
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(localObject);
      localStringBuilder.append(", ");
      localStringBuilder.append(this.badgeDrawable.getContentDescription());
      paramAccessibilityNodeInfo.setContentDescription(localStringBuilder.toString());
    }
    paramAccessibilityNodeInfo = g.s0(paramAccessibilityNodeInfo);
    paramAccessibilityNodeInfo.U(g.c.f(0, 1, getItemPosition(), 1, false, isSelected()));
    if (isSelected())
    {
      paramAccessibilityNodeInfo.S(false);
      paramAccessibilityNodeInfo.K(g.a.i);
    }
    paramAccessibilityNodeInfo.j0(getResources().getString(R.string.item_view_role_description));
  }
  
  public boolean prefersCondensedTitle()
  {
    return false;
  }
  
  void removeBadge()
  {
    tryRemoveBadgeFromAnchor(this.icon);
  }
  
  void setBadge(BadgeDrawable paramBadgeDrawable)
  {
    this.badgeDrawable = paramBadgeDrawable;
    paramBadgeDrawable = this.icon;
    if (paramBadgeDrawable != null) {
      tryAttachBadgeToAnchor(paramBadgeDrawable);
    }
  }
  
  public void setCheckable(boolean paramBoolean)
  {
    refreshDrawableState();
  }
  
  public void setChecked(boolean paramBoolean)
  {
    TextView localTextView = this.largeLabel;
    localTextView.setPivotX(localTextView.getWidth() / 2);
    localTextView = this.largeLabel;
    localTextView.setPivotY(localTextView.getBaseline());
    localTextView = this.smallLabel;
    localTextView.setPivotX(localTextView.getWidth() / 2);
    localTextView = this.smallLabel;
    localTextView.setPivotY(localTextView.getBaseline());
    int i = this.labelVisibilityMode;
    float f;
    if (i != -1)
    {
      if (i != 0)
      {
        if (i != 1)
        {
          if (i == 2)
          {
            setViewLayoutParams(this.icon, this.defaultMargin, 17);
            this.largeLabel.setVisibility(8);
            this.smallLabel.setVisibility(8);
          }
        }
        else if (paramBoolean)
        {
          setViewLayoutParams(this.icon, (int)(this.defaultMargin + this.shiftAmount), 49);
          setViewValues(this.largeLabel, 1.0F, 1.0F, 0);
          localTextView = this.smallLabel;
          f = this.scaleUpFactor;
          setViewValues(localTextView, f, f, 4);
        }
        else
        {
          setViewLayoutParams(this.icon, this.defaultMargin, 49);
          localTextView = this.largeLabel;
          f = this.scaleDownFactor;
          setViewValues(localTextView, f, f, 4);
          setViewValues(this.smallLabel, 1.0F, 1.0F, 0);
        }
      }
      else
      {
        if (paramBoolean)
        {
          setViewLayoutParams(this.icon, this.defaultMargin, 49);
          setViewValues(this.largeLabel, 1.0F, 1.0F, 0);
        }
        else
        {
          setViewLayoutParams(this.icon, this.defaultMargin, 17);
          setViewValues(this.largeLabel, 0.5F, 0.5F, 4);
        }
        this.smallLabel.setVisibility(4);
      }
    }
    else if (this.isShifting)
    {
      if (paramBoolean)
      {
        setViewLayoutParams(this.icon, this.defaultMargin, 49);
        setViewValues(this.largeLabel, 1.0F, 1.0F, 0);
      }
      else
      {
        setViewLayoutParams(this.icon, this.defaultMargin, 17);
        setViewValues(this.largeLabel, 0.5F, 0.5F, 4);
      }
      this.smallLabel.setVisibility(4);
    }
    else if (paramBoolean)
    {
      setViewLayoutParams(this.icon, (int)(this.defaultMargin + this.shiftAmount), 49);
      setViewValues(this.largeLabel, 1.0F, 1.0F, 0);
      localTextView = this.smallLabel;
      f = this.scaleUpFactor;
      setViewValues(localTextView, f, f, 4);
    }
    else
    {
      setViewLayoutParams(this.icon, this.defaultMargin, 49);
      localTextView = this.largeLabel;
      f = this.scaleDownFactor;
      setViewValues(localTextView, f, f, 4);
      setViewValues(this.smallLabel, 1.0F, 1.0F, 0);
    }
    refreshDrawableState();
    setSelected(paramBoolean);
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    this.smallLabel.setEnabled(paramBoolean);
    this.largeLabel.setEnabled(paramBoolean);
    this.icon.setEnabled(paramBoolean);
    if (paramBoolean) {
      a0.B0(this, y.b(getContext(), 1002));
    } else {
      a0.B0(this, null);
    }
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    if (paramDrawable == this.originalIconDrawable) {
      return;
    }
    this.originalIconDrawable = paramDrawable;
    Object localObject = paramDrawable;
    if (paramDrawable != null)
    {
      localObject = paramDrawable.getConstantState();
      if (localObject != null) {
        paramDrawable = ((Drawable.ConstantState)localObject).newDrawable();
      }
      paramDrawable = androidx.core.graphics.drawable.a.r(paramDrawable).mutate();
      this.wrappedIconDrawable = paramDrawable;
      ColorStateList localColorStateList = this.iconTint;
      localObject = paramDrawable;
      if (localColorStateList != null)
      {
        androidx.core.graphics.drawable.a.o(paramDrawable, localColorStateList);
        localObject = paramDrawable;
      }
    }
    this.icon.setImageDrawable((Drawable)localObject);
  }
  
  public void setIconSize(int paramInt)
  {
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)this.icon.getLayoutParams();
    localLayoutParams.width = paramInt;
    localLayoutParams.height = paramInt;
    this.icon.setLayoutParams(localLayoutParams);
  }
  
  public void setIconTintList(ColorStateList paramColorStateList)
  {
    this.iconTint = paramColorStateList;
    if (this.itemData != null)
    {
      Drawable localDrawable = this.wrappedIconDrawable;
      if (localDrawable != null)
      {
        androidx.core.graphics.drawable.a.o(localDrawable, paramColorStateList);
        this.wrappedIconDrawable.invalidateSelf();
      }
    }
  }
  
  public void setItemBackground(int paramInt)
  {
    Drawable localDrawable;
    if (paramInt == 0) {
      localDrawable = null;
    } else {
      localDrawable = androidx.core.content.a.e(getContext(), paramInt);
    }
    setItemBackground(localDrawable);
  }
  
  public void setItemBackground(Drawable paramDrawable)
  {
    Drawable localDrawable = paramDrawable;
    if (paramDrawable != null)
    {
      localDrawable = paramDrawable;
      if (paramDrawable.getConstantState() != null) {
        localDrawable = paramDrawable.getConstantState().newDrawable().mutate();
      }
    }
    a0.p0(this, localDrawable);
  }
  
  public void setItemPosition(int paramInt)
  {
    this.itemPosition = paramInt;
  }
  
  public void setLabelVisibilityMode(int paramInt)
  {
    if (this.labelVisibilityMode != paramInt)
    {
      this.labelVisibilityMode = paramInt;
      i locali = this.itemData;
      if (locali != null) {
        paramInt = 1;
      } else {
        paramInt = 0;
      }
      if (paramInt != 0) {
        setChecked(locali.isChecked());
      }
    }
  }
  
  public void setShifting(boolean paramBoolean)
  {
    if (this.isShifting != paramBoolean)
    {
      this.isShifting = paramBoolean;
      i locali = this.itemData;
      int i;
      if (locali != null) {
        i = 1;
      } else {
        i = 0;
      }
      if (i != 0) {
        setChecked(locali.isChecked());
      }
    }
  }
  
  public void setShortcut(boolean paramBoolean, char paramChar) {}
  
  public void setTextAppearanceActive(int paramInt)
  {
    l.o(this.largeLabel, paramInt);
    calculateTextScaleFactors(this.smallLabel.getTextSize(), this.largeLabel.getTextSize());
  }
  
  public void setTextAppearanceInactive(int paramInt)
  {
    l.o(this.smallLabel, paramInt);
    calculateTextScaleFactors(this.smallLabel.getTextSize(), this.largeLabel.getTextSize());
  }
  
  public void setTextColor(ColorStateList paramColorStateList)
  {
    if (paramColorStateList != null)
    {
      this.smallLabel.setTextColor(paramColorStateList);
      this.largeLabel.setTextColor(paramColorStateList);
    }
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    this.smallLabel.setText(paramCharSequence);
    this.largeLabel.setText(paramCharSequence);
    Object localObject = this.itemData;
    if ((localObject == null) || (TextUtils.isEmpty(((i)localObject).getContentDescription()))) {
      setContentDescription(paramCharSequence);
    }
    i locali = this.itemData;
    localObject = paramCharSequence;
    if (locali != null) {
      if (TextUtils.isEmpty(locali.getTooltipText())) {
        localObject = paramCharSequence;
      } else {
        localObject = this.itemData.getTooltipText();
      }
    }
    c1.a(this, (CharSequence)localObject);
  }
  
  public boolean showsIcon()
  {
    return true;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.bottomnavigation.BottomNavigationItemView
 * JD-Core Version:    0.7.0.1
 */