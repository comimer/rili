package com.google.android.material.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import androidx.core.view.a0;
import androidx.core.view.h;
import com.google.android.material.R.id;
import com.google.android.material.R.styleable;

public class FlowLayout
  extends ViewGroup
{
  private int itemSpacing;
  private int lineSpacing;
  private int rowCount;
  private boolean singleLine = false;
  
  public FlowLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public FlowLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public FlowLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    loadFromAttributes(paramContext, paramAttributeSet);
  }
  
  @TargetApi(21)
  public FlowLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    loadFromAttributes(paramContext, paramAttributeSet);
  }
  
  private static int getMeasuredDimension(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt2 != -2147483648)
    {
      if (paramInt2 != 1073741824) {
        return paramInt3;
      }
      return paramInt1;
    }
    return Math.min(paramInt3, paramInt1);
  }
  
  private void loadFromAttributes(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramContext = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, R.styleable.FlowLayout, 0, 0);
    this.lineSpacing = paramContext.getDimensionPixelSize(R.styleable.FlowLayout_lineSpacing, 0);
    this.itemSpacing = paramContext.getDimensionPixelSize(R.styleable.FlowLayout_itemSpacing, 0);
    paramContext.recycle();
  }
  
  protected int getItemSpacing()
  {
    return this.itemSpacing;
  }
  
  protected int getLineSpacing()
  {
    return this.lineSpacing;
  }
  
  protected int getRowCount()
  {
    return this.rowCount;
  }
  
  public int getRowIndex(View paramView)
  {
    paramView = paramView.getTag(R.id.row_index_key);
    if (!(paramView instanceof Integer)) {
      return -1;
    }
    return ((Integer)paramView).intValue();
  }
  
  public boolean isSingleLine()
  {
    return this.singleLine;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (getChildCount() == 0)
    {
      this.rowCount = 0;
      return;
    }
    this.rowCount = 1;
    int i;
    if (a0.z(this) == 1) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      paramInt2 = getPaddingRight();
    } else {
      paramInt2 = getPaddingLeft();
    }
    if (i != 0) {
      paramInt4 = getPaddingLeft();
    } else {
      paramInt4 = getPaddingRight();
    }
    int j = getPaddingTop();
    int k = paramInt3 - paramInt1 - paramInt4;
    int m = 0;
    paramInt3 = paramInt2;
    paramInt1 = j;
    while (m < getChildCount())
    {
      View localView = getChildAt(m);
      if (localView.getVisibility() == 8)
      {
        localView.setTag(R.id.row_index_key, Integer.valueOf(-1));
      }
      else
      {
        Object localObject = localView.getLayoutParams();
        int n;
        int i1;
        if ((localObject instanceof ViewGroup.MarginLayoutParams))
        {
          localObject = (ViewGroup.MarginLayoutParams)localObject;
          n = h.b((ViewGroup.MarginLayoutParams)localObject);
          i1 = h.a((ViewGroup.MarginLayoutParams)localObject);
        }
        else
        {
          i1 = 0;
          n = i1;
        }
        int i2 = localView.getMeasuredWidth();
        int i3 = paramInt3;
        paramInt4 = paramInt1;
        if (!this.singleLine)
        {
          i3 = paramInt3;
          paramInt4 = paramInt1;
          if (paramInt3 + n + i2 > k)
          {
            paramInt4 = this.lineSpacing + j;
            this.rowCount += 1;
            i3 = paramInt2;
          }
        }
        localView.setTag(R.id.row_index_key, Integer.valueOf(this.rowCount - 1));
        paramInt3 = i3 + n;
        paramInt1 = localView.getMeasuredWidth() + paramInt3;
        j = localView.getMeasuredHeight() + paramInt4;
        if (i != 0) {
          localView.layout(k - paramInt1, paramInt4, k - i3 - n, j);
        } else {
          localView.layout(paramInt3, paramInt4, paramInt1, j);
        }
        paramInt3 = i3 + (n + i1 + localView.getMeasuredWidth() + this.itemSpacing);
        paramInt1 = paramInt4;
      }
      m++;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getSize(paramInt1);
    int j = View.MeasureSpec.getMode(paramInt1);
    int k = View.MeasureSpec.getSize(paramInt2);
    int m = View.MeasureSpec.getMode(paramInt2);
    int n;
    if ((j != -2147483648) && (j != 1073741824)) {
      n = 2147483647;
    } else {
      n = i;
    }
    int i1 = getPaddingLeft();
    int i2 = getPaddingTop();
    int i3 = getPaddingRight();
    int i4 = i2;
    int i5 = 0;
    int i6 = 0;
    while (i5 < getChildCount())
    {
      View localView = getChildAt(i5);
      if (localView.getVisibility() != 8)
      {
        measureChild(localView, paramInt1, paramInt2);
        Object localObject = localView.getLayoutParams();
        int i8;
        if ((localObject instanceof ViewGroup.MarginLayoutParams))
        {
          localObject = (ViewGroup.MarginLayoutParams)localObject;
          i7 = ((ViewGroup.MarginLayoutParams)localObject).leftMargin + 0;
          i8 = ((ViewGroup.MarginLayoutParams)localObject).rightMargin + 0;
        }
        else
        {
          i7 = 0;
          i8 = i7;
        }
        if ((i1 + i7 + localView.getMeasuredWidth() > n - i3) && (!isSingleLine()))
        {
          i1 = getPaddingLeft();
          i4 = this.lineSpacing + i2;
          i2 = i1;
        }
        else
        {
          i2 = i1;
        }
        int i9 = i2 + i7 + localView.getMeasuredWidth();
        int i10 = localView.getMeasuredHeight();
        i1 = i6;
        if (i9 > i6) {
          i1 = i9;
        }
        int i7 = i2 + (i7 + i8 + localView.getMeasuredWidth() + this.itemSpacing);
        i6 = i1;
        if (i5 == getChildCount() - 1) {
          i6 = i1 + i8;
        }
        i2 = i4 + i10;
        i1 = i7;
      }
      i5++;
    }
    paramInt1 = getPaddingRight();
    paramInt2 = getPaddingBottom();
    setMeasuredDimension(getMeasuredDimension(i, j, i6 + paramInt1), getMeasuredDimension(k, m, i2 + paramInt2));
  }
  
  protected void setItemSpacing(int paramInt)
  {
    this.itemSpacing = paramInt;
  }
  
  protected void setLineSpacing(int paramInt)
  {
    this.lineSpacing = paramInt;
  }
  
  public void setSingleLine(boolean paramBoolean)
  {
    this.singleLine = paramBoolean;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.internal.FlowLayout
 * JD-Core Version:    0.7.0.1
 */