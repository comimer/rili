package com.google.android.material.chip;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewGroup.OnHierarchyChangeListener;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import androidx.core.view.a0;
import androidx.core.view.accessibility.g;
import androidx.core.view.accessibility.g.b;
import com.google.android.material.R.attr;
import com.google.android.material.R.style;
import com.google.android.material.R.styleable;
import com.google.android.material.internal.FlowLayout;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.util.ArrayList;
import java.util.List;

public class ChipGroup
  extends FlowLayout
{
  private static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_ChipGroup;
  private int checkedId = -1;
  private final CheckedStateTracker checkedStateTracker = new CheckedStateTracker(null);
  private int chipSpacingHorizontal;
  private int chipSpacingVertical;
  private OnCheckedChangeListener onCheckedChangeListener;
  private PassThroughHierarchyChangeListener passThroughListener = new PassThroughHierarchyChangeListener(null);
  private boolean protectFromCheckedChange = false;
  private boolean selectionRequired;
  private boolean singleSelection;
  
  public ChipGroup(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ChipGroup(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.chipGroupStyle);
  }
  
  public ChipGroup(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(MaterialThemeOverlay.wrap(paramContext, paramAttributeSet, paramInt, i), paramAttributeSet, paramInt);
    paramContext = ThemeEnforcement.obtainStyledAttributes(getContext(), paramAttributeSet, R.styleable.ChipGroup, paramInt, i, new int[0]);
    paramInt = paramContext.getDimensionPixelOffset(R.styleable.ChipGroup_chipSpacing, 0);
    setChipSpacingHorizontal(paramContext.getDimensionPixelOffset(R.styleable.ChipGroup_chipSpacingHorizontal, paramInt));
    setChipSpacingVertical(paramContext.getDimensionPixelOffset(R.styleable.ChipGroup_chipSpacingVertical, paramInt));
    setSingleLine(paramContext.getBoolean(R.styleable.ChipGroup_singleLine, false));
    setSingleSelection(paramContext.getBoolean(R.styleable.ChipGroup_singleSelection, false));
    setSelectionRequired(paramContext.getBoolean(R.styleable.ChipGroup_selectionRequired, false));
    paramInt = paramContext.getResourceId(R.styleable.ChipGroup_checkedChip, -1);
    if (paramInt != -1) {
      this.checkedId = paramInt;
    }
    paramContext.recycle();
    super.setOnHierarchyChangeListener(this.passThroughListener);
    a0.w0(this, 1);
  }
  
  private int getChipCount()
  {
    int i = 0;
    int k;
    for (int j = 0; i < getChildCount(); j = k)
    {
      k = j;
      if ((getChildAt(i) instanceof Chip)) {
        k = j + 1;
      }
      i++;
    }
    return j;
  }
  
  private void setCheckedId(int paramInt)
  {
    setCheckedId(paramInt, true);
  }
  
  private void setCheckedId(int paramInt, boolean paramBoolean)
  {
    this.checkedId = paramInt;
    OnCheckedChangeListener localOnCheckedChangeListener = this.onCheckedChangeListener;
    if ((localOnCheckedChangeListener != null) && (this.singleSelection) && (paramBoolean)) {
      localOnCheckedChangeListener.onCheckedChanged(this, paramInt);
    }
  }
  
  private void setCheckedStateForView(int paramInt, boolean paramBoolean)
  {
    View localView = findViewById(paramInt);
    if ((localView instanceof Chip))
    {
      this.protectFromCheckedChange = true;
      ((Chip)localView).setChecked(paramBoolean);
      this.protectFromCheckedChange = false;
    }
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramView instanceof Chip))
    {
      Chip localChip = (Chip)paramView;
      if (localChip.isChecked())
      {
        int i = this.checkedId;
        if ((i != -1) && (this.singleSelection)) {
          setCheckedStateForView(i, false);
        }
        setCheckedId(localChip.getId());
      }
    }
    super.addView(paramView, paramInt, paramLayoutParams);
  }
  
  public void check(int paramInt)
  {
    int i = this.checkedId;
    if (paramInt == i) {
      return;
    }
    if ((i != -1) && (this.singleSelection)) {
      setCheckedStateForView(i, false);
    }
    if (paramInt != -1) {
      setCheckedStateForView(paramInt, true);
    }
    setCheckedId(paramInt);
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    boolean bool;
    if ((super.checkLayoutParams(paramLayoutParams)) && ((paramLayoutParams instanceof LayoutParams))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void clearCheck()
  {
    this.protectFromCheckedChange = true;
    for (int i = 0; i < getChildCount(); i++)
    {
      View localView = getChildAt(i);
      if ((localView instanceof Chip)) {
        ((Chip)localView).setChecked(false);
      }
    }
    this.protectFromCheckedChange = false;
    setCheckedId(-1);
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new LayoutParams(-2, -2);
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new LayoutParams(paramLayoutParams);
  }
  
  public int getCheckedChipId()
  {
    int i;
    if (this.singleSelection) {
      i = this.checkedId;
    } else {
      i = -1;
    }
    return i;
  }
  
  public List<Integer> getCheckedChipIds()
  {
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; i < getChildCount(); i++)
    {
      View localView = getChildAt(i);
      if (((localView instanceof Chip)) && (((Chip)localView).isChecked()))
      {
        localArrayList.add(Integer.valueOf(localView.getId()));
        if (this.singleSelection) {
          return localArrayList;
        }
      }
    }
    return localArrayList;
  }
  
  public int getChipSpacingHorizontal()
  {
    return this.chipSpacingHorizontal;
  }
  
  public int getChipSpacingVertical()
  {
    return this.chipSpacingVertical;
  }
  
  int getIndexOfChip(View paramView)
  {
    if (!(paramView instanceof Chip)) {
      return -1;
    }
    int i = 0;
    int k;
    for (int j = 0; i < getChildCount(); j = k)
    {
      k = j;
      if ((getChildAt(i) instanceof Chip))
      {
        if ((Chip)getChildAt(i) == paramView) {
          return j;
        }
        k = j + 1;
      }
      i++;
    }
    return -1;
  }
  
  public boolean isSelectionRequired()
  {
    return this.selectionRequired;
  }
  
  public boolean isSingleLine()
  {
    return super.isSingleLine();
  }
  
  public boolean isSingleSelection()
  {
    return this.singleSelection;
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    int i = this.checkedId;
    if (i != -1)
    {
      setCheckedStateForView(i, true);
      setCheckedId(this.checkedId);
    }
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    paramAccessibilityNodeInfo = g.s0(paramAccessibilityNodeInfo);
    int i;
    if (isSingleLine()) {
      i = getChipCount();
    } else {
      i = -1;
    }
    int j = getRowCount();
    int k;
    if (isSingleSelection()) {
      k = 1;
    } else {
      k = 2;
    }
    paramAccessibilityNodeInfo.T(g.b.b(j, i, false, k));
  }
  
  public void setChipSpacing(int paramInt)
  {
    setChipSpacingHorizontal(paramInt);
    setChipSpacingVertical(paramInt);
  }
  
  public void setChipSpacingHorizontal(int paramInt)
  {
    if (this.chipSpacingHorizontal != paramInt)
    {
      this.chipSpacingHorizontal = paramInt;
      setItemSpacing(paramInt);
      requestLayout();
    }
  }
  
  public void setChipSpacingHorizontalResource(int paramInt)
  {
    setChipSpacingHorizontal(getResources().getDimensionPixelOffset(paramInt));
  }
  
  public void setChipSpacingResource(int paramInt)
  {
    setChipSpacing(getResources().getDimensionPixelOffset(paramInt));
  }
  
  public void setChipSpacingVertical(int paramInt)
  {
    if (this.chipSpacingVertical != paramInt)
    {
      this.chipSpacingVertical = paramInt;
      setLineSpacing(paramInt);
      requestLayout();
    }
  }
  
  public void setChipSpacingVerticalResource(int paramInt)
  {
    setChipSpacingVertical(getResources().getDimensionPixelOffset(paramInt));
  }
  
  @Deprecated
  public void setDividerDrawableHorizontal(Drawable paramDrawable)
  {
    throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
  }
  
  @Deprecated
  public void setDividerDrawableVertical(Drawable paramDrawable)
  {
    throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
  }
  
  @Deprecated
  public void setFlexWrap(int paramInt)
  {
    throw new UnsupportedOperationException("Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead.");
  }
  
  public void setOnCheckedChangeListener(OnCheckedChangeListener paramOnCheckedChangeListener)
  {
    this.onCheckedChangeListener = paramOnCheckedChangeListener;
  }
  
  public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener paramOnHierarchyChangeListener)
  {
    PassThroughHierarchyChangeListener.access$202(this.passThroughListener, paramOnHierarchyChangeListener);
  }
  
  public void setSelectionRequired(boolean paramBoolean)
  {
    this.selectionRequired = paramBoolean;
  }
  
  @Deprecated
  public void setShowDividerHorizontal(int paramInt)
  {
    throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
  }
  
  @Deprecated
  public void setShowDividerVertical(int paramInt)
  {
    throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
  }
  
  public void setSingleLine(int paramInt)
  {
    setSingleLine(getResources().getBoolean(paramInt));
  }
  
  public void setSingleLine(boolean paramBoolean)
  {
    super.setSingleLine(paramBoolean);
  }
  
  public void setSingleSelection(int paramInt)
  {
    setSingleSelection(getResources().getBoolean(paramInt));
  }
  
  public void setSingleSelection(boolean paramBoolean)
  {
    if (this.singleSelection != paramBoolean)
    {
      this.singleSelection = paramBoolean;
      clearCheck();
    }
  }
  
  private class CheckedStateTracker
    implements CompoundButton.OnCheckedChangeListener
  {
    private CheckedStateTracker() {}
    
    public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
    {
      if (ChipGroup.this.protectFromCheckedChange) {
        return;
      }
      if ((ChipGroup.this.getCheckedChipIds().isEmpty()) && (ChipGroup.this.selectionRequired))
      {
        ChipGroup.this.setCheckedStateForView(paramCompoundButton.getId(), true);
        ChipGroup.this.setCheckedId(paramCompoundButton.getId(), false);
        return;
      }
      int i = paramCompoundButton.getId();
      if (paramBoolean)
      {
        if ((ChipGroup.this.checkedId != -1) && (ChipGroup.this.checkedId != i) && (ChipGroup.this.singleSelection))
        {
          paramCompoundButton = ChipGroup.this;
          paramCompoundButton.setCheckedStateForView(paramCompoundButton.checkedId, false);
        }
        ChipGroup.this.setCheckedId(i);
      }
      else if (ChipGroup.this.checkedId == i)
      {
        ChipGroup.this.setCheckedId(-1);
      }
    }
  }
  
  public static class LayoutParams
    extends ViewGroup.MarginLayoutParams
  {
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
  }
  
  public static abstract interface OnCheckedChangeListener
  {
    public abstract void onCheckedChanged(ChipGroup paramChipGroup, int paramInt);
  }
  
  private class PassThroughHierarchyChangeListener
    implements ViewGroup.OnHierarchyChangeListener
  {
    private ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener;
    
    private PassThroughHierarchyChangeListener() {}
    
    public void onChildViewAdded(View paramView1, View paramView2)
    {
      if ((paramView1 == ChipGroup.this) && ((paramView2 instanceof Chip)))
      {
        if (paramView2.getId() == -1) {
          paramView2.setId(View.generateViewId());
        }
        ((Chip)paramView2).setOnCheckedChangeListenerInternal(ChipGroup.this.checkedStateTracker);
      }
      ViewGroup.OnHierarchyChangeListener localOnHierarchyChangeListener = this.onHierarchyChangeListener;
      if (localOnHierarchyChangeListener != null) {
        localOnHierarchyChangeListener.onChildViewAdded(paramView1, paramView2);
      }
    }
    
    public void onChildViewRemoved(View paramView1, View paramView2)
    {
      if ((paramView1 == ChipGroup.this) && ((paramView2 instanceof Chip))) {
        ((Chip)paramView2).setOnCheckedChangeListenerInternal(null);
      }
      ViewGroup.OnHierarchyChangeListener localOnHierarchyChangeListener = this.onHierarchyChangeListener;
      if (localOnHierarchyChangeListener != null) {
        localOnHierarchyChangeListener.onChildViewRemoved(paramView1, paramView2);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.chip.ChipGroup
 * JD-Core Version:    0.7.0.1
 */