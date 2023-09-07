package com.google.android.material.button;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import androidx.core.view.a;
import androidx.core.view.a0;
import androidx.core.view.accessibility.g;
import androidx.core.view.accessibility.g.b;
import androidx.core.view.accessibility.g.c;
import androidx.core.view.h;
import com.google.android.material.R.attr;
import com.google.android.material.R.style;
import com.google.android.material.R.styleable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearanceModel.Builder;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

public class MaterialButtonToggleGroup
  extends LinearLayout
{
  private static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_MaterialButtonToggleGroup;
  private static final String LOG_TAG = MaterialButtonToggleGroup.class.getSimpleName();
  private int checkedId;
  private final CheckedStateTracker checkedStateTracker = new CheckedStateTracker(null);
  private Integer[] childOrder;
  private final Comparator<MaterialButton> childOrderComparator = new Comparator()
  {
    public int compare(MaterialButton paramAnonymousMaterialButton1, MaterialButton paramAnonymousMaterialButton2)
    {
      int i = Boolean.valueOf(paramAnonymousMaterialButton1.isChecked()).compareTo(Boolean.valueOf(paramAnonymousMaterialButton2.isChecked()));
      if (i != 0) {
        return i;
      }
      i = Boolean.valueOf(paramAnonymousMaterialButton1.isPressed()).compareTo(Boolean.valueOf(paramAnonymousMaterialButton2.isPressed()));
      if (i != 0) {
        return i;
      }
      return Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(paramAnonymousMaterialButton1)).compareTo(Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(paramAnonymousMaterialButton2)));
    }
  };
  private final LinkedHashSet<OnButtonCheckedListener> onButtonCheckedListeners = new LinkedHashSet();
  private final List<CornerData> originalCornerData = new ArrayList();
  private final PressedStateTracker pressedStateTracker = new PressedStateTracker(null);
  private boolean selectionRequired;
  private boolean singleSelection;
  private boolean skipCheckedStateTracker = false;
  
  public MaterialButtonToggleGroup(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public MaterialButtonToggleGroup(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.materialButtonToggleGroupStyle);
  }
  
  public MaterialButtonToggleGroup(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(MaterialThemeOverlay.wrap(paramContext, paramAttributeSet, paramInt, i), paramAttributeSet, paramInt);
    paramContext = ThemeEnforcement.obtainStyledAttributes(getContext(), paramAttributeSet, R.styleable.MaterialButtonToggleGroup, paramInt, i, new int[0]);
    setSingleSelection(paramContext.getBoolean(R.styleable.MaterialButtonToggleGroup_singleSelection, false));
    this.checkedId = paramContext.getResourceId(R.styleable.MaterialButtonToggleGroup_checkedButton, -1);
    this.selectionRequired = paramContext.getBoolean(R.styleable.MaterialButtonToggleGroup_selectionRequired, false);
    setChildrenDrawingOrderEnabled(true);
    paramContext.recycle();
    a0.w0(this, 1);
  }
  
  private void adjustChildMarginsAndUpdateLayout()
  {
    int i = getFirstVisibleChildIndex();
    if (i == -1) {
      return;
    }
    for (int j = i + 1; j < getChildCount(); j++)
    {
      MaterialButton localMaterialButton = getChildButton(j);
      Object localObject = getChildButton(j - 1);
      int k = Math.min(localMaterialButton.getStrokeWidth(), ((MaterialButton)localObject).getStrokeWidth());
      localObject = buildLayoutParams(localMaterialButton);
      if (getOrientation() == 0)
      {
        h.c((ViewGroup.MarginLayoutParams)localObject, 0);
        h.d((ViewGroup.MarginLayoutParams)localObject, -k);
      }
      else
      {
        ((LinearLayout.LayoutParams)localObject).bottomMargin = 0;
        ((LinearLayout.LayoutParams)localObject).topMargin = (-k);
      }
      localMaterialButton.setLayoutParams((ViewGroup.LayoutParams)localObject);
    }
    resetChildMargins(i);
  }
  
  private LinearLayout.LayoutParams buildLayoutParams(View paramView)
  {
    paramView = paramView.getLayoutParams();
    if ((paramView instanceof LinearLayout.LayoutParams)) {
      return (LinearLayout.LayoutParams)paramView;
    }
    return new LinearLayout.LayoutParams(paramView.width, paramView.height);
  }
  
  private void checkForced(int paramInt)
  {
    setCheckedStateForView(paramInt, true);
    updateCheckedStates(paramInt, true);
    setCheckedId(paramInt);
  }
  
  private void dispatchOnButtonChecked(int paramInt, boolean paramBoolean)
  {
    Iterator localIterator = this.onButtonCheckedListeners.iterator();
    while (localIterator.hasNext()) {
      ((OnButtonCheckedListener)localIterator.next()).onButtonChecked(this, paramInt, paramBoolean);
    }
  }
  
  private MaterialButton getChildButton(int paramInt)
  {
    return (MaterialButton)getChildAt(paramInt);
  }
  
  private int getFirstVisibleChildIndex()
  {
    int i = getChildCount();
    for (int j = 0; j < i; j++) {
      if (isChildVisible(j)) {
        return j;
      }
    }
    return -1;
  }
  
  private int getIndexWithinVisibleButtons(View paramView)
  {
    if (!(paramView instanceof MaterialButton)) {
      return -1;
    }
    int i = 0;
    int k;
    for (int j = 0; i < getChildCount(); j = k)
    {
      if (getChildAt(i) == paramView) {
        return j;
      }
      k = j;
      if ((getChildAt(i) instanceof MaterialButton))
      {
        k = j;
        if (isChildVisible(i)) {
          k = j + 1;
        }
      }
      i++;
    }
    return -1;
  }
  
  private int getLastVisibleChildIndex()
  {
    for (int i = getChildCount() - 1; i >= 0; i--) {
      if (isChildVisible(i)) {
        return i;
      }
    }
    return -1;
  }
  
  private CornerData getNewCornerData(int paramInt1, int paramInt2, int paramInt3)
  {
    CornerData localCornerData = (CornerData)this.originalCornerData.get(paramInt1);
    if (paramInt2 == paramInt3) {
      return localCornerData;
    }
    int i;
    if (getOrientation() == 0) {
      i = 1;
    } else {
      i = 0;
    }
    if (paramInt1 == paramInt2)
    {
      if (i != 0) {
        localCornerData = CornerData.start(localCornerData, this);
      } else {
        localCornerData = CornerData.top(localCornerData);
      }
      return localCornerData;
    }
    if (paramInt1 == paramInt3)
    {
      if (i != 0) {
        localCornerData = CornerData.end(localCornerData, this);
      } else {
        localCornerData = CornerData.bottom(localCornerData);
      }
      return localCornerData;
    }
    return null;
  }
  
  private int getVisibleButtonCount()
  {
    int i = 0;
    int k;
    for (int j = 0; i < getChildCount(); j = k)
    {
      k = j;
      if ((getChildAt(i) instanceof MaterialButton))
      {
        k = j;
        if (isChildVisible(i)) {
          k = j + 1;
        }
      }
      i++;
    }
    return j;
  }
  
  private boolean isChildVisible(int paramInt)
  {
    boolean bool;
    if (getChildAt(paramInt).getVisibility() != 8) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void resetChildMargins(int paramInt)
  {
    if ((getChildCount() != 0) && (paramInt != -1))
    {
      LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)getChildButton(paramInt).getLayoutParams();
      if (getOrientation() == 1)
      {
        localLayoutParams.topMargin = 0;
        localLayoutParams.bottomMargin = 0;
        return;
      }
      h.c(localLayoutParams, 0);
      h.d(localLayoutParams, 0);
      localLayoutParams.leftMargin = 0;
      localLayoutParams.rightMargin = 0;
    }
  }
  
  private void setCheckedId(int paramInt)
  {
    this.checkedId = paramInt;
    dispatchOnButtonChecked(paramInt, true);
  }
  
  private void setCheckedStateForView(int paramInt, boolean paramBoolean)
  {
    View localView = findViewById(paramInt);
    if ((localView instanceof MaterialButton))
    {
      this.skipCheckedStateTracker = true;
      ((MaterialButton)localView).setChecked(paramBoolean);
      this.skipCheckedStateTracker = false;
    }
  }
  
  private void setGeneratedIdIfNeeded(MaterialButton paramMaterialButton)
  {
    if (paramMaterialButton.getId() == -1) {
      paramMaterialButton.setId(a0.j());
    }
  }
  
  private void setupButtonChild(MaterialButton paramMaterialButton)
  {
    paramMaterialButton.setMaxLines(1);
    paramMaterialButton.setEllipsize(TextUtils.TruncateAt.END);
    paramMaterialButton.setCheckable(true);
    paramMaterialButton.addOnCheckedChangeListener(this.checkedStateTracker);
    paramMaterialButton.setOnPressedChangeListenerInternal(this.pressedStateTracker);
    paramMaterialButton.setShouldDrawSurfaceColorStroke(true);
  }
  
  private static void updateBuilderWithCornerData(ShapeAppearanceModel.Builder paramBuilder, CornerData paramCornerData)
  {
    if (paramCornerData == null)
    {
      paramBuilder.setAllCornerSizes(0.0F);
      return;
    }
    paramBuilder.setTopLeftCornerSize(paramCornerData.topLeft).setBottomLeftCornerSize(paramCornerData.bottomLeft).setTopRightCornerSize(paramCornerData.topRight).setBottomRightCornerSize(paramCornerData.bottomRight);
  }
  
  private boolean updateCheckedStates(int paramInt, boolean paramBoolean)
  {
    Object localObject = getCheckedButtonIds();
    if ((this.selectionRequired) && (((List)localObject).isEmpty()))
    {
      setCheckedStateForView(paramInt, true);
      this.checkedId = paramInt;
      return false;
    }
    if ((paramBoolean) && (this.singleSelection))
    {
      ((List)localObject).remove(Integer.valueOf(paramInt));
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        paramInt = ((Integer)((Iterator)localObject).next()).intValue();
        setCheckedStateForView(paramInt, false);
        dispatchOnButtonChecked(paramInt, false);
      }
    }
    return true;
  }
  
  private void updateChildOrder()
  {
    TreeMap localTreeMap = new TreeMap(this.childOrderComparator);
    int i = getChildCount();
    for (int j = 0; j < i; j++) {
      localTreeMap.put(getChildButton(j), Integer.valueOf(j));
    }
    this.childOrder = ((Integer[])localTreeMap.values().toArray(new Integer[0]));
  }
  
  public void addOnButtonCheckedListener(OnButtonCheckedListener paramOnButtonCheckedListener)
  {
    this.onButtonCheckedListeners.add(paramOnButtonCheckedListener);
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (!(paramView instanceof MaterialButton))
    {
      Log.e(LOG_TAG, "Child views must be of type MaterialButton.");
      return;
    }
    super.addView(paramView, paramInt, paramLayoutParams);
    paramView = (MaterialButton)paramView;
    setGeneratedIdIfNeeded(paramView);
    setupButtonChild(paramView);
    if (paramView.isChecked())
    {
      updateCheckedStates(paramView.getId(), true);
      setCheckedId(paramView.getId());
    }
    paramLayoutParams = paramView.getShapeAppearanceModel();
    this.originalCornerData.add(new CornerData(paramLayoutParams.getTopLeftCornerSize(), paramLayoutParams.getBottomLeftCornerSize(), paramLayoutParams.getTopRightCornerSize(), paramLayoutParams.getBottomRightCornerSize()));
    a0.l0(paramView, new a()
    {
      public void onInitializeAccessibilityNodeInfo(View paramAnonymousView, g paramAnonymousg)
      {
        super.onInitializeAccessibilityNodeInfo(paramAnonymousView, paramAnonymousg);
        paramAnonymousg.U(g.c.f(0, 1, MaterialButtonToggleGroup.this.getIndexWithinVisibleButtons(paramAnonymousView), 1, false, ((MaterialButton)paramAnonymousView).isChecked()));
      }
    });
  }
  
  public void check(int paramInt)
  {
    if (paramInt == this.checkedId) {
      return;
    }
    checkForced(paramInt);
  }
  
  public void clearChecked()
  {
    this.skipCheckedStateTracker = true;
    for (int i = 0; i < getChildCount(); i++)
    {
      MaterialButton localMaterialButton = getChildButton(i);
      localMaterialButton.setChecked(false);
      dispatchOnButtonChecked(localMaterialButton.getId(), false);
    }
    this.skipCheckedStateTracker = false;
    setCheckedId(-1);
  }
  
  public void clearOnButtonCheckedListeners()
  {
    this.onButtonCheckedListeners.clear();
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    updateChildOrder();
    super.dispatchDraw(paramCanvas);
  }
  
  public CharSequence getAccessibilityClassName()
  {
    return MaterialButtonToggleGroup.class.getName();
  }
  
  public int getCheckedButtonId()
  {
    int i;
    if (this.singleSelection) {
      i = this.checkedId;
    } else {
      i = -1;
    }
    return i;
  }
  
  public List<Integer> getCheckedButtonIds()
  {
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; i < getChildCount(); i++)
    {
      MaterialButton localMaterialButton = getChildButton(i);
      if (localMaterialButton.isChecked()) {
        localArrayList.add(Integer.valueOf(localMaterialButton.getId()));
      }
    }
    return localArrayList;
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    Integer[] arrayOfInteger = this.childOrder;
    if ((arrayOfInteger != null) && (paramInt2 < arrayOfInteger.length)) {
      return arrayOfInteger[paramInt2].intValue();
    }
    Log.w(LOG_TAG, "Child order wasn't updated");
    return paramInt2;
  }
  
  public boolean isSelectionRequired()
  {
    return this.selectionRequired;
  }
  
  public boolean isSingleSelection()
  {
    return this.singleSelection;
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    int i = this.checkedId;
    if (i != -1) {
      checkForced(i);
    }
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    paramAccessibilityNodeInfo = g.s0(paramAccessibilityNodeInfo);
    int i = getVisibleButtonCount();
    int j;
    if (isSingleSelection()) {
      j = 1;
    } else {
      j = 2;
    }
    paramAccessibilityNodeInfo.T(g.b.b(1, i, false, j));
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    updateChildShapes();
    adjustChildMarginsAndUpdateLayout();
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public void onViewRemoved(View paramView)
  {
    super.onViewRemoved(paramView);
    if ((paramView instanceof MaterialButton))
    {
      MaterialButton localMaterialButton = (MaterialButton)paramView;
      localMaterialButton.removeOnCheckedChangeListener(this.checkedStateTracker);
      localMaterialButton.setOnPressedChangeListenerInternal(null);
    }
    int i = indexOfChild(paramView);
    if (i >= 0) {
      this.originalCornerData.remove(i);
    }
    updateChildShapes();
    adjustChildMarginsAndUpdateLayout();
  }
  
  public void removeOnButtonCheckedListener(OnButtonCheckedListener paramOnButtonCheckedListener)
  {
    this.onButtonCheckedListeners.remove(paramOnButtonCheckedListener);
  }
  
  public void setSelectionRequired(boolean paramBoolean)
  {
    this.selectionRequired = paramBoolean;
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
      clearChecked();
    }
  }
  
  public void uncheck(int paramInt)
  {
    setCheckedStateForView(paramInt, false);
    updateCheckedStates(paramInt, false);
    this.checkedId = -1;
    dispatchOnButtonChecked(paramInt, false);
  }
  
  void updateChildShapes()
  {
    int i = getChildCount();
    int j = getFirstVisibleChildIndex();
    int k = getLastVisibleChildIndex();
    for (int m = 0; m < i; m++)
    {
      MaterialButton localMaterialButton = getChildButton(m);
      if (localMaterialButton.getVisibility() != 8)
      {
        ShapeAppearanceModel.Builder localBuilder = localMaterialButton.getShapeAppearanceModel().toBuilder();
        updateBuilderWithCornerData(localBuilder, getNewCornerData(m, j, k));
        localMaterialButton.setShapeAppearanceModel(localBuilder.build());
      }
    }
  }
  
  private class CheckedStateTracker
    implements MaterialButton.OnCheckedChangeListener
  {
    private CheckedStateTracker() {}
    
    public void onCheckedChanged(MaterialButton paramMaterialButton, boolean paramBoolean)
    {
      if (MaterialButtonToggleGroup.this.skipCheckedStateTracker) {
        return;
      }
      if (MaterialButtonToggleGroup.this.singleSelection)
      {
        MaterialButtonToggleGroup localMaterialButtonToggleGroup = MaterialButtonToggleGroup.this;
        int i;
        if (paramBoolean) {
          i = paramMaterialButton.getId();
        } else {
          i = -1;
        }
        MaterialButtonToggleGroup.access$502(localMaterialButtonToggleGroup, i);
      }
      if (MaterialButtonToggleGroup.this.updateCheckedStates(paramMaterialButton.getId(), paramBoolean)) {
        MaterialButtonToggleGroup.this.dispatchOnButtonChecked(paramMaterialButton.getId(), paramMaterialButton.isChecked());
      }
      MaterialButtonToggleGroup.this.invalidate();
    }
  }
  
  private static class CornerData
  {
    private static final CornerSize noCorner = new AbsoluteCornerSize(0.0F);
    CornerSize bottomLeft;
    CornerSize bottomRight;
    CornerSize topLeft;
    CornerSize topRight;
    
    CornerData(CornerSize paramCornerSize1, CornerSize paramCornerSize2, CornerSize paramCornerSize3, CornerSize paramCornerSize4)
    {
      this.topLeft = paramCornerSize1;
      this.topRight = paramCornerSize3;
      this.bottomRight = paramCornerSize4;
      this.bottomLeft = paramCornerSize2;
    }
    
    public static CornerData bottom(CornerData paramCornerData)
    {
      CornerSize localCornerSize = noCorner;
      return new CornerData(localCornerSize, paramCornerData.bottomLeft, localCornerSize, paramCornerData.bottomRight);
    }
    
    public static CornerData end(CornerData paramCornerData, View paramView)
    {
      if (ViewUtils.isLayoutRtl(paramView)) {
        paramCornerData = left(paramCornerData);
      } else {
        paramCornerData = right(paramCornerData);
      }
      return paramCornerData;
    }
    
    public static CornerData left(CornerData paramCornerData)
    {
      CornerSize localCornerSize1 = paramCornerData.topLeft;
      paramCornerData = paramCornerData.bottomLeft;
      CornerSize localCornerSize2 = noCorner;
      return new CornerData(localCornerSize1, paramCornerData, localCornerSize2, localCornerSize2);
    }
    
    public static CornerData right(CornerData paramCornerData)
    {
      CornerSize localCornerSize = noCorner;
      return new CornerData(localCornerSize, localCornerSize, paramCornerData.topRight, paramCornerData.bottomRight);
    }
    
    public static CornerData start(CornerData paramCornerData, View paramView)
    {
      if (ViewUtils.isLayoutRtl(paramView)) {
        paramCornerData = right(paramCornerData);
      } else {
        paramCornerData = left(paramCornerData);
      }
      return paramCornerData;
    }
    
    public static CornerData top(CornerData paramCornerData)
    {
      CornerSize localCornerSize1 = paramCornerData.topLeft;
      CornerSize localCornerSize2 = noCorner;
      return new CornerData(localCornerSize1, localCornerSize2, paramCornerData.topRight, localCornerSize2);
    }
  }
  
  public static abstract interface OnButtonCheckedListener
  {
    public abstract void onButtonChecked(MaterialButtonToggleGroup paramMaterialButtonToggleGroup, int paramInt, boolean paramBoolean);
  }
  
  private class PressedStateTracker
    implements MaterialButton.OnPressedChangeListener
  {
    private PressedStateTracker() {}
    
    public void onPressedChanged(MaterialButton paramMaterialButton, boolean paramBoolean)
    {
      MaterialButtonToggleGroup.this.updateCheckedStates(paramMaterialButton.getId(), paramMaterialButton.isChecked());
      MaterialButtonToggleGroup.this.invalidate();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.button.MaterialButtonToggleGroup
 * JD-Core Version:    0.7.0.1
 */