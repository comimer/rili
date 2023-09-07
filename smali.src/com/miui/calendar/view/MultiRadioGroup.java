package com.miui.calendar.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.OnHierarchyChangeListener;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityRecord;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RadioButton;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MultiRadioGroup
  extends LinearLayout
{
  private int a = -1;
  private CompoundButton.OnCheckedChangeListener b;
  private boolean c = false;
  private d d;
  private e e;
  
  public MultiRadioGroup(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    k();
  }
  
  private List<RadioButton> j(View paramView)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramView instanceof RadioButton))
    {
      localArrayList.add((RadioButton)paramView);
    }
    else if ((paramView instanceof ViewGroup))
    {
      paramView = (ViewGroup)paramView;
      int i = paramView.getChildCount();
      for (int j = 0; j < i; j++) {
        localArrayList.addAll(j(paramView.getChildAt(j)));
      }
    }
    return localArrayList;
  }
  
  private void k()
  {
    this.b = new b(null);
    e locale = new e(null);
    this.e = locale;
    super.setOnHierarchyChangeListener(locale);
  }
  
  private void l(int paramInt, boolean paramBoolean)
  {
    View localView = findViewById(paramInt);
    if ((localView != null) && ((localView instanceof RadioButton))) {
      ((RadioButton)localView).setChecked(paramBoolean);
    }
  }
  
  private void setCheckedId(int paramInt)
  {
    this.a = paramInt;
    d locald = this.d;
    if (locald != null) {
      locald.a(this, paramInt);
    }
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    Object localObject = j(paramView);
    if ((localObject != null) && (((List)localObject).size() > 0))
    {
      Iterator localIterator = ((List)localObject).iterator();
      while (localIterator.hasNext())
      {
        localObject = (RadioButton)localIterator.next();
        if (((CompoundButton)localObject).isChecked())
        {
          this.c = true;
          int i = this.a;
          if (i != -1) {
            l(i, false);
          }
          this.c = false;
          setCheckedId(((View)localObject).getId());
        }
      }
    }
    super.addView(paramView, paramInt, paramLayoutParams);
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof c;
  }
  
  protected LinearLayout.LayoutParams generateDefaultLayoutParams()
  {
    return new c(-2, -2);
  }
  
  public int getCheckedRadioButtonId()
  {
    return this.a;
  }
  
  public void h(int paramInt)
  {
    if ((paramInt != -1) && (paramInt == this.a)) {
      return;
    }
    int i = this.a;
    if (i != -1) {
      l(i, false);
    }
    if (paramInt != -1) {
      l(paramInt, true);
    }
    setCheckedId(paramInt);
  }
  
  public c i(AttributeSet paramAttributeSet)
  {
    return new c(getContext(), paramAttributeSet);
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(MultiRadioGroup.class.getName());
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    paramAccessibilityNodeInfo.setClassName(MultiRadioGroup.class.getName());
  }
  
  public void setCheckWithoutNotif(int paramInt)
  {
    if ((paramInt != -1) && (paramInt == this.a)) {
      return;
    }
    this.c = true;
    int i = this.a;
    if (i != -1) {
      l(i, false);
    }
    if (paramInt != -1) {
      l(paramInt, true);
    }
    this.a = paramInt;
    this.c = false;
  }
  
  public void setOnCheckedChangeListener(d paramd)
  {
    this.d = paramd;
  }
  
  public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener paramOnHierarchyChangeListener)
  {
    e.a(this.e, paramOnHierarchyChangeListener);
  }
  
  private class b
    implements CompoundButton.OnCheckedChangeListener
  {
    private b() {}
    
    public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
    {
      if (MultiRadioGroup.a(MultiRadioGroup.this)) {
        return;
      }
      MultiRadioGroup.b(MultiRadioGroup.this, true);
      if (MultiRadioGroup.c(MultiRadioGroup.this) != -1)
      {
        MultiRadioGroup localMultiRadioGroup = MultiRadioGroup.this;
        MultiRadioGroup.d(localMultiRadioGroup, MultiRadioGroup.c(localMultiRadioGroup), false);
      }
      MultiRadioGroup.b(MultiRadioGroup.this, false);
      int i = paramCompoundButton.getId();
      MultiRadioGroup.e(MultiRadioGroup.this, i);
    }
  }
  
  public static class c
    extends LinearLayout.LayoutParams
  {
    public c(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public c(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    protected void setBaseAttributes(TypedArray paramTypedArray, int paramInt1, int paramInt2)
    {
      if (paramTypedArray.hasValue(paramInt1)) {
        this.width = paramTypedArray.getLayoutDimension(paramInt1, "layout_width");
      } else {
        this.width = -2;
      }
      if (paramTypedArray.hasValue(paramInt2)) {
        this.height = paramTypedArray.getLayoutDimension(paramInt2, "layout_height");
      } else {
        this.height = -2;
      }
    }
  }
  
  public static abstract interface d
  {
    public abstract void a(MultiRadioGroup paramMultiRadioGroup, int paramInt);
  }
  
  private class e
    implements ViewGroup.OnHierarchyChangeListener
  {
    private ViewGroup.OnHierarchyChangeListener a;
    
    private e() {}
    
    @SuppressLint({"NewApi"})
    public void onChildViewAdded(View paramView1, View paramView2)
    {
      Object localObject = MultiRadioGroup.this;
      if (paramView1 == localObject)
      {
        localObject = MultiRadioGroup.f((MultiRadioGroup)localObject, paramView2);
        if ((localObject != null) && (((List)localObject).size() > 0))
        {
          Iterator localIterator = ((List)localObject).iterator();
          while (localIterator.hasNext())
          {
            localObject = (RadioButton)localIterator.next();
            if (((View)localObject).getId() == -1) {
              ((View)localObject).setId(View.generateViewId());
            }
            ((CompoundButton)localObject).setOnCheckedChangeListener(MultiRadioGroup.g(MultiRadioGroup.this));
          }
        }
      }
      localObject = this.a;
      if (localObject != null) {
        ((ViewGroup.OnHierarchyChangeListener)localObject).onChildViewAdded(paramView1, paramView2);
      }
    }
    
    public void onChildViewRemoved(View paramView1, View paramView2)
    {
      Object localObject = MultiRadioGroup.this;
      if (paramView1 == localObject)
      {
        localObject = MultiRadioGroup.f((MultiRadioGroup)localObject, paramView2);
        if ((localObject != null) && (((List)localObject).size() > 0))
        {
          localObject = ((List)localObject).iterator();
          while (((Iterator)localObject).hasNext()) {
            ((RadioButton)((Iterator)localObject).next()).setOnCheckedChangeListener(null);
          }
        }
      }
      localObject = this.a;
      if (localObject != null) {
        ((ViewGroup.OnHierarchyChangeListener)localObject).onChildViewRemoved(paramView1, paramView2);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.MultiRadioGroup
 * JD-Core Version:    0.7.0.1
 */