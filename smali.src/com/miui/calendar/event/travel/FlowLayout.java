package com.miui.calendar.event.travel;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import java.util.ArrayList;
import java.util.List;

public class FlowLayout
  extends ViewGroup
{
  private List<List<View>> a = new ArrayList();
  private List<Integer> b = new ArrayList();
  List<View> c = new ArrayList();
  
  public FlowLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ViewGroup.MarginLayoutParams(getContext(), paramAttributeSet);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = this.a.size();
    paramInt2 = 0;
    paramInt1 = paramInt2;
    while (paramInt2 < i)
    {
      List localList = (List)this.a.get(paramInt2);
      int j = ((Integer)this.b.get(paramInt2)).intValue();
      paramInt3 = 0;
      paramInt4 = paramInt3;
      while (paramInt3 < localList.size())
      {
        View localView = (View)localList.get(paramInt3);
        if (localView.getVisibility() != 8)
        {
          ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)localView.getLayoutParams();
          int k = localMarginLayoutParams.leftMargin + paramInt4;
          int m = localMarginLayoutParams.topMargin + paramInt1;
          localView.layout(k, m, localView.getMeasuredWidth() + k, localView.getMeasuredHeight() + m);
          paramInt4 += localView.getMeasuredWidth() + localMarginLayoutParams.rightMargin + localMarginLayoutParams.leftMargin;
        }
        paramInt3++;
      }
      paramInt1 += j;
      paramInt2++;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    this.a.clear();
    this.b.clear();
    int i = View.MeasureSpec.getMode(paramInt1);
    int j = View.MeasureSpec.getMode(paramInt2);
    int k = View.MeasureSpec.getSize(paramInt1);
    int m = View.MeasureSpec.getSize(paramInt2);
    int n = getChildCount();
    int i1 = k / 4;
    this.c.clear();
    int i2 = 0;
    int i3 = 0;
    int i4 = i3;
    int i5 = i4;
    int i6 = i5;
    int i7 = i4;
    i4 = m;
    while (i2 < n)
    {
      View localView = getChildAt(i2);
      Object localObject = (ViewGroup.MarginLayoutParams)localView.getLayoutParams();
      localView.setMinimumWidth(i1 - ((ViewGroup.MarginLayoutParams)localObject).leftMargin - ((ViewGroup.MarginLayoutParams)localObject).rightMargin);
      measureChild(localView, paramInt1, paramInt2);
      int i8 = localView.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams)localObject).leftMargin + ((ViewGroup.MarginLayoutParams)localObject).rightMargin;
      i3 = localView.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams)localObject).topMargin + ((ViewGroup.MarginLayoutParams)localObject).bottomMargin;
      m = i7 + i8;
      if (m > k)
      {
        i5 = Math.max(i7, i8);
        this.a.add(this.c);
        this.b.add(Integer.valueOf(i3));
        localObject = new ArrayList();
        this.c = ((List)localObject);
        ((List)localObject).add(localView);
        i7 = i6 + i3;
        i6 = i8;
      }
      else
      {
        this.c.add(localView);
        i7 = i6;
        i6 = m;
      }
      m = i7;
      if (i2 == n - 1)
      {
        i5 = Math.max(i6, i8);
        m = i7 + i3;
      }
      i2++;
      i7 = i6;
      i6 = m;
    }
    this.b.add(Integer.valueOf(i3));
    this.a.add(this.c);
    if (i == 1073741824) {
      paramInt1 = k;
    } else {
      paramInt1 = i5;
    }
    if (j == 1073741824) {
      i6 = i4;
    }
    setMeasuredDimension(paramInt1, i6);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.event.travel.FlowLayout
 * JD-Core Version:    0.7.0.1
 */