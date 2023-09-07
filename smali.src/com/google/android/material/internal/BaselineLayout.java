package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

public class BaselineLayout
  extends ViewGroup
{
  private int baseline = -1;
  
  public BaselineLayout(Context paramContext)
  {
    super(paramContext, null, 0);
  }
  
  public BaselineLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, 0);
  }
  
  public BaselineLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public int getBaseline()
  {
    return this.baseline;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = getChildCount();
    int j = getPaddingLeft();
    int k = getPaddingRight();
    int m = getPaddingTop();
    for (paramInt2 = 0; paramInt2 < i; paramInt2++)
    {
      View localView = getChildAt(paramInt2);
      if (localView.getVisibility() != 8)
      {
        int n = localView.getMeasuredWidth();
        int i1 = localView.getMeasuredHeight();
        int i2 = (paramInt3 - paramInt1 - k - j - n) / 2 + j;
        if ((this.baseline != -1) && (localView.getBaseline() != -1)) {
          paramInt4 = this.baseline + m - localView.getBaseline();
        } else {
          paramInt4 = m;
        }
        localView.layout(i2, paramInt4, n + i2, i1 + paramInt4);
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = getChildCount();
    int j = 0;
    int k = -1;
    int m = k;
    int n = 0;
    int i1 = n;
    int i2 = i1;
    int i3 = i1;
    i1 = n;
    while (j < i)
    {
      View localView = getChildAt(j);
      if (localView.getVisibility() != 8)
      {
        measureChild(localView, paramInt1, paramInt2);
        int i4 = localView.getBaseline();
        int i5 = k;
        n = m;
        if (i4 != -1)
        {
          i5 = Math.max(k, i4);
          n = Math.max(m, localView.getMeasuredHeight() - i4);
        }
        i3 = Math.max(i3, localView.getMeasuredWidth());
        i1 = Math.max(i1, localView.getMeasuredHeight());
        i2 = View.combineMeasuredStates(i2, localView.getMeasuredState());
        m = n;
        k = i5;
      }
      j++;
    }
    n = i1;
    if (k != -1)
    {
      n = Math.max(i1, Math.max(m, getPaddingBottom()) + k);
      this.baseline = k;
    }
    m = Math.max(n, getSuggestedMinimumHeight());
    setMeasuredDimension(View.resolveSizeAndState(Math.max(i3, getSuggestedMinimumWidth()), paramInt1, i2), View.resolveSizeAndState(m, paramInt2, i2 << 16));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.internal.BaselineLayout
 * JD-Core Version:    0.7.0.1
 */