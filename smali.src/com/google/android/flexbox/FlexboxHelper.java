package com.google.android.flexbox;

import android.util.SparseIntArray;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import androidx.core.view.h;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

class FlexboxHelper
{
  private static final int INITIAL_CAPACITY = 10;
  private static final long MEASURE_SPEC_WIDTH_MASK = 4294967295L;
  private boolean[] mChildrenFrozen;
  private final FlexContainer mFlexContainer;
  int[] mIndexToFlexLine;
  long[] mMeasureSpecCache;
  private long[] mMeasuredSizeCache;
  
  FlexboxHelper(FlexContainer paramFlexContainer)
  {
    this.mFlexContainer = paramFlexContainer;
  }
  
  private void addFlexLine(List<FlexLine> paramList, FlexLine paramFlexLine, int paramInt1, int paramInt2)
  {
    paramFlexLine.mSumCrossSizeBefore = paramInt2;
    this.mFlexContainer.onNewFlexLineAdded(paramFlexLine);
    paramFlexLine.mLastIndex = paramInt1;
    paramList.add(paramFlexLine);
  }
  
  private void checkSizeConstraints(View paramView, int paramInt)
  {
    FlexItem localFlexItem = (FlexItem)paramView.getLayoutParams();
    int i = paramView.getMeasuredWidth();
    int j = paramView.getMeasuredHeight();
    int k = localFlexItem.getMinWidth();
    int m = 1;
    if (i < k) {}
    for (k = localFlexItem.getMinWidth();; k = localFlexItem.getMaxWidth())
    {
      int n = 1;
      i = k;
      k = n;
      break label85;
      if (i <= localFlexItem.getMaxWidth()) {
        break;
      }
    }
    k = 0;
    label85:
    if (j < localFlexItem.getMinHeight())
    {
      k = localFlexItem.getMinHeight();
    }
    else if (j > localFlexItem.getMaxHeight())
    {
      k = localFlexItem.getMaxHeight();
    }
    else
    {
      m = k;
      k = j;
    }
    if (m != 0)
    {
      i = View.MeasureSpec.makeMeasureSpec(i, 1073741824);
      k = View.MeasureSpec.makeMeasureSpec(k, 1073741824);
      paramView.measure(i, k);
      updateMeasureCache(paramInt, i, k, paramView);
      this.mFlexContainer.updateViewCache(paramInt, paramView);
    }
  }
  
  private List<FlexLine> constructFlexLinesForAlignContentCenter(List<FlexLine> paramList, int paramInt1, int paramInt2)
  {
    paramInt1 = (paramInt1 - paramInt2) / 2;
    ArrayList localArrayList = new ArrayList();
    FlexLine localFlexLine = new FlexLine();
    localFlexLine.mCrossSize = paramInt1;
    paramInt2 = paramList.size();
    for (paramInt1 = 0; paramInt1 < paramInt2; paramInt1++)
    {
      if (paramInt1 == 0) {
        localArrayList.add(localFlexLine);
      }
      localArrayList.add((FlexLine)paramList.get(paramInt1));
      if (paramInt1 == paramList.size() - 1) {
        localArrayList.add(localFlexLine);
      }
    }
    return localArrayList;
  }
  
  private List<Order> createOrders(int paramInt)
  {
    ArrayList localArrayList = new ArrayList(paramInt);
    for (int i = 0; i < paramInt; i++)
    {
      FlexItem localFlexItem = (FlexItem)this.mFlexContainer.getFlexItemAt(i).getLayoutParams();
      Order localOrder = new Order(null);
      localOrder.order = localFlexItem.getOrder();
      localOrder.index = i;
      localArrayList.add(localOrder);
    }
    return localArrayList;
  }
  
  private void ensureChildrenFrozen(int paramInt)
  {
    boolean[] arrayOfBoolean = this.mChildrenFrozen;
    int i;
    if (arrayOfBoolean == null)
    {
      i = paramInt;
      if (paramInt < 10) {
        i = 10;
      }
      this.mChildrenFrozen = new boolean[i];
    }
    else if (arrayOfBoolean.length < paramInt)
    {
      int j = arrayOfBoolean.length * 2;
      i = paramInt;
      if (j >= paramInt) {
        i = j;
      }
      this.mChildrenFrozen = new boolean[i];
    }
    else
    {
      Arrays.fill(arrayOfBoolean, false);
    }
  }
  
  private void expandFlexItems(int paramInt1, int paramInt2, FlexLine paramFlexLine, int paramInt3, int paramInt4, boolean paramBoolean)
  {
    float f1 = paramFlexLine.mTotalFlexGrow;
    if (f1 > 0.0F)
    {
      int i = paramFlexLine.mMainSize;
      if (paramInt3 >= i)
      {
        float f2 = (paramInt3 - i) / f1;
        paramFlexLine.mMainSize = (paramInt4 + paramFlexLine.mDividerLengthInMainSize);
        if (!paramBoolean) {
          paramFlexLine.mCrossSize = -2147483648;
        }
        int j = 0;
        int k = 0;
        int m = k;
        f1 = 0.0F;
        while (j < paramFlexLine.mItemCount)
        {
          int n = paramFlexLine.mFirstIndex + j;
          View localView = this.mFlexContainer.getReorderedFlexItemAt(n);
          if ((localView != null) && (localView.getVisibility() != 8))
          {
            FlexItem localFlexItem = (FlexItem)localView.getLayoutParams();
            int i1 = this.mFlexContainer.getFlexDirection();
            long[] arrayOfLong;
            int i2;
            float f3;
            float f4;
            float f5;
            int i3;
            double d;
            int i4;
            if ((i1 != 0) && (i1 != 1))
            {
              i1 = localView.getMeasuredHeight();
              arrayOfLong = this.mMeasuredSizeCache;
              if (arrayOfLong != null) {
                i1 = extractHigherInt(arrayOfLong[n]);
              }
              i2 = localView.getMeasuredWidth();
              arrayOfLong = this.mMeasuredSizeCache;
              if (arrayOfLong != null) {
                i2 = extractLowerInt(arrayOfLong[n]);
              }
              if ((this.mChildrenFrozen[n] == 0) && (localFlexItem.getFlexGrow() > 0.0F))
              {
                f3 = i1 + localFlexItem.getFlexGrow() * f2;
                f4 = f1;
                f5 = f3;
                if (j == paramFlexLine.mItemCount - 1)
                {
                  f5 = f3 + f1;
                  f4 = 0.0F;
                }
                i3 = Math.round(f5);
                if (i3 > localFlexItem.getMaxHeight())
                {
                  i2 = localFlexItem.getMaxHeight();
                  this.mChildrenFrozen[n] = true;
                  paramFlexLine.mTotalFlexGrow -= localFlexItem.getFlexGrow();
                  i1 = 1;
                  f1 = f4;
                }
                else
                {
                  f1 = f4 + (f5 - i3);
                  d = f1;
                  if (d > 1.0D) {
                    i2 = i3 + 1;
                  }
                  for (d -= 1.0D;; d += 1.0D)
                  {
                    f1 = (float)d;
                    i1 = k;
                    break;
                    i1 = k;
                    i2 = i3;
                    if (d >= -1.0D) {
                      break;
                    }
                    i2 = i3 - 1;
                  }
                }
                k = getChildWidthMeasureSpecInternal(paramInt1, localFlexItem, paramFlexLine.mSumCrossSizeBefore);
                i4 = View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
                localView.measure(k, i4);
                i3 = localView.getMeasuredWidth();
                i2 = localView.getMeasuredHeight();
                updateMeasureCache(n, k, i4, localView);
                this.mFlexContainer.updateViewCache(n, localView);
                k = i1;
                i1 = i2;
                i2 = i3;
              }
              i2 = Math.max(m, i2 + localFlexItem.getMarginLeft() + localFlexItem.getMarginRight() + this.mFlexContainer.getDecorationLengthCrossAxis(localView));
              paramFlexLine.mMainSize += i1 + localFlexItem.getMarginTop() + localFlexItem.getMarginBottom();
              i1 = i2;
            }
            else
            {
              i1 = localView.getMeasuredWidth();
              arrayOfLong = this.mMeasuredSizeCache;
              if (arrayOfLong != null) {
                i1 = extractLowerInt(arrayOfLong[n]);
              }
              i3 = localView.getMeasuredHeight();
              arrayOfLong = this.mMeasuredSizeCache;
              i2 = i;
              i = i3;
              if (arrayOfLong != null) {
                i = extractHigherInt(arrayOfLong[n]);
              }
              if ((this.mChildrenFrozen[n] == 0) && (localFlexItem.getFlexGrow() > 0.0F))
              {
                f3 = i1 + localFlexItem.getFlexGrow() * f2;
                f5 = f3;
                f4 = f1;
                if (j == paramFlexLine.mItemCount - 1)
                {
                  f5 = f3 + f1;
                  f4 = 0.0F;
                }
                i3 = Math.round(f5);
                if (i3 > localFlexItem.getMaxWidth())
                {
                  i1 = localFlexItem.getMaxWidth();
                  this.mChildrenFrozen[n] = true;
                  paramFlexLine.mTotalFlexGrow -= localFlexItem.getFlexGrow();
                  i = 1;
                  f1 = f4;
                }
                else
                {
                  f1 = f4 + (f5 - i3);
                  d = f1;
                  if (d > 1.0D) {
                    i1 = i3 + 1;
                  }
                  for (d -= 1.0D;; d += 1.0D)
                  {
                    f1 = (float)d;
                    i = k;
                    break;
                    i1 = i3;
                    i = k;
                    if (d >= -1.0D) {
                      break;
                    }
                    i1 = i3 - 1;
                  }
                }
                k = getChildHeightMeasureSpecInternal(paramInt2, localFlexItem, paramFlexLine.mSumCrossSizeBefore);
                i4 = View.MeasureSpec.makeMeasureSpec(i1, 1073741824);
                localView.measure(i4, k);
                i1 = localView.getMeasuredWidth();
                i3 = localView.getMeasuredHeight();
                updateMeasureCache(n, i4, k, localView);
                this.mFlexContainer.updateViewCache(n, localView);
                k = i;
              }
              else
              {
                i3 = i;
              }
              i = Math.max(m, i3 + localFlexItem.getMarginTop() + localFlexItem.getMarginBottom() + this.mFlexContainer.getDecorationLengthCrossAxis(localView));
              paramFlexLine.mMainSize += i1 + localFlexItem.getMarginLeft() + localFlexItem.getMarginRight();
              i1 = i;
              i = i2;
            }
            paramFlexLine.mCrossSize = Math.max(paramFlexLine.mCrossSize, i1);
            m = i1;
          }
          j++;
        }
        if ((k != 0) && (i != paramFlexLine.mMainSize)) {
          expandFlexItems(paramInt1, paramInt2, paramFlexLine, paramInt3, paramInt4, true);
        }
      }
    }
  }
  
  private int getChildHeightMeasureSpecInternal(int paramInt1, FlexItem paramFlexItem, int paramInt2)
  {
    FlexContainer localFlexContainer = this.mFlexContainer;
    paramInt2 = localFlexContainer.getChildHeightMeasureSpec(paramInt1, localFlexContainer.getPaddingTop() + this.mFlexContainer.getPaddingBottom() + paramFlexItem.getMarginTop() + paramFlexItem.getMarginBottom() + paramInt2, paramFlexItem.getHeight());
    int i = View.MeasureSpec.getSize(paramInt2);
    if (i > paramFlexItem.getMaxHeight())
    {
      paramInt1 = View.MeasureSpec.makeMeasureSpec(paramFlexItem.getMaxHeight(), View.MeasureSpec.getMode(paramInt2));
    }
    else
    {
      paramInt1 = paramInt2;
      if (i < paramFlexItem.getMinHeight()) {
        paramInt1 = View.MeasureSpec.makeMeasureSpec(paramFlexItem.getMinHeight(), View.MeasureSpec.getMode(paramInt2));
      }
    }
    return paramInt1;
  }
  
  private int getChildWidthMeasureSpecInternal(int paramInt1, FlexItem paramFlexItem, int paramInt2)
  {
    FlexContainer localFlexContainer = this.mFlexContainer;
    paramInt2 = localFlexContainer.getChildWidthMeasureSpec(paramInt1, localFlexContainer.getPaddingLeft() + this.mFlexContainer.getPaddingRight() + paramFlexItem.getMarginLeft() + paramFlexItem.getMarginRight() + paramInt2, paramFlexItem.getWidth());
    int i = View.MeasureSpec.getSize(paramInt2);
    if (i > paramFlexItem.getMaxWidth())
    {
      paramInt1 = View.MeasureSpec.makeMeasureSpec(paramFlexItem.getMaxWidth(), View.MeasureSpec.getMode(paramInt2));
    }
    else
    {
      paramInt1 = paramInt2;
      if (i < paramFlexItem.getMinWidth()) {
        paramInt1 = View.MeasureSpec.makeMeasureSpec(paramFlexItem.getMinWidth(), View.MeasureSpec.getMode(paramInt2));
      }
    }
    return paramInt1;
  }
  
  private int getFlexItemMarginEndCross(FlexItem paramFlexItem, boolean paramBoolean)
  {
    if (paramBoolean) {
      return paramFlexItem.getMarginBottom();
    }
    return paramFlexItem.getMarginRight();
  }
  
  private int getFlexItemMarginEndMain(FlexItem paramFlexItem, boolean paramBoolean)
  {
    if (paramBoolean) {
      return paramFlexItem.getMarginRight();
    }
    return paramFlexItem.getMarginBottom();
  }
  
  private int getFlexItemMarginStartCross(FlexItem paramFlexItem, boolean paramBoolean)
  {
    if (paramBoolean) {
      return paramFlexItem.getMarginTop();
    }
    return paramFlexItem.getMarginLeft();
  }
  
  private int getFlexItemMarginStartMain(FlexItem paramFlexItem, boolean paramBoolean)
  {
    if (paramBoolean) {
      return paramFlexItem.getMarginLeft();
    }
    return paramFlexItem.getMarginTop();
  }
  
  private int getFlexItemSizeCross(FlexItem paramFlexItem, boolean paramBoolean)
  {
    if (paramBoolean) {
      return paramFlexItem.getHeight();
    }
    return paramFlexItem.getWidth();
  }
  
  private int getFlexItemSizeMain(FlexItem paramFlexItem, boolean paramBoolean)
  {
    if (paramBoolean) {
      return paramFlexItem.getWidth();
    }
    return paramFlexItem.getHeight();
  }
  
  private int getPaddingEndCross(boolean paramBoolean)
  {
    if (paramBoolean) {
      return this.mFlexContainer.getPaddingBottom();
    }
    return this.mFlexContainer.getPaddingEnd();
  }
  
  private int getPaddingEndMain(boolean paramBoolean)
  {
    if (paramBoolean) {
      return this.mFlexContainer.getPaddingEnd();
    }
    return this.mFlexContainer.getPaddingBottom();
  }
  
  private int getPaddingStartCross(boolean paramBoolean)
  {
    if (paramBoolean) {
      return this.mFlexContainer.getPaddingTop();
    }
    return this.mFlexContainer.getPaddingStart();
  }
  
  private int getPaddingStartMain(boolean paramBoolean)
  {
    if (paramBoolean) {
      return this.mFlexContainer.getPaddingStart();
    }
    return this.mFlexContainer.getPaddingTop();
  }
  
  private int getViewMeasuredSizeCross(View paramView, boolean paramBoolean)
  {
    if (paramBoolean) {
      return paramView.getMeasuredHeight();
    }
    return paramView.getMeasuredWidth();
  }
  
  private int getViewMeasuredSizeMain(View paramView, boolean paramBoolean)
  {
    if (paramBoolean) {
      return paramView.getMeasuredWidth();
    }
    return paramView.getMeasuredHeight();
  }
  
  private boolean isLastFlexItem(int paramInt1, int paramInt2, FlexLine paramFlexLine)
  {
    boolean bool = true;
    if ((paramInt1 != paramInt2 - 1) || (paramFlexLine.getItemCountNotGone() == 0)) {
      bool = false;
    }
    return bool;
  }
  
  private boolean isWrapRequired(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, FlexItem paramFlexItem, int paramInt5, int paramInt6, int paramInt7)
  {
    int i = this.mFlexContainer.getFlexWrap();
    boolean bool = false;
    if (i == 0) {
      return false;
    }
    if (paramFlexItem.isWrapBefore()) {
      return true;
    }
    if (paramInt1 == 0) {
      return false;
    }
    paramInt1 = this.mFlexContainer.getMaxLine();
    if ((paramInt1 != -1) && (paramInt1 <= paramInt7 + 1)) {
      return false;
    }
    paramInt5 = this.mFlexContainer.getDecorationLengthMainAxis(paramView, paramInt5, paramInt6);
    paramInt1 = paramInt4;
    if (paramInt5 > 0) {
      paramInt1 = paramInt4 + paramInt5;
    }
    if (paramInt2 < paramInt3 + paramInt1) {
      bool = true;
    }
    return bool;
  }
  
  private void shrinkFlexItems(int paramInt1, int paramInt2, FlexLine paramFlexLine, int paramInt3, int paramInt4, boolean paramBoolean)
  {
    int i = paramFlexLine.mMainSize;
    float f1 = paramFlexLine.mTotalFlexShrink;
    if ((f1 > 0.0F) && (paramInt3 <= i))
    {
      float f2 = (i - paramInt3) / f1;
      paramFlexLine.mMainSize = (paramInt4 + paramFlexLine.mDividerLengthInMainSize);
      if (!paramBoolean) {
        paramFlexLine.mCrossSize = -2147483648;
      }
      int j = 0;
      int k = 0;
      int m = k;
      f1 = 0.0F;
      while (j < paramFlexLine.mItemCount)
      {
        int n = paramFlexLine.mFirstIndex + j;
        View localView = this.mFlexContainer.getReorderedFlexItemAt(n);
        if ((localView != null) && (localView.getVisibility() != 8))
        {
          FlexItem localFlexItem = (FlexItem)localView.getLayoutParams();
          int i1 = this.mFlexContainer.getFlexDirection();
          long[] arrayOfLong;
          int i2;
          float f3;
          float f4;
          float f5;
          int i3;
          double d;
          int i4;
          if ((i1 != 0) && (i1 != 1))
          {
            i1 = localView.getMeasuredHeight();
            arrayOfLong = this.mMeasuredSizeCache;
            if (arrayOfLong != null) {
              i1 = extractHigherInt(arrayOfLong[n]);
            }
            i2 = localView.getMeasuredWidth();
            arrayOfLong = this.mMeasuredSizeCache;
            if (arrayOfLong != null) {
              i2 = extractLowerInt(arrayOfLong[n]);
            }
            if ((this.mChildrenFrozen[n] == 0) && (localFlexItem.getFlexShrink() > 0.0F))
            {
              f3 = i1 - localFlexItem.getFlexShrink() * f2;
              f4 = f1;
              f5 = f3;
              if (j == paramFlexLine.mItemCount - 1)
              {
                f5 = f3 + f1;
                f4 = 0.0F;
              }
              i3 = Math.round(f5);
              if (i3 < localFlexItem.getMinHeight())
              {
                i1 = localFlexItem.getMinHeight();
                this.mChildrenFrozen[n] = true;
                paramFlexLine.mTotalFlexShrink -= localFlexItem.getFlexShrink();
                i2 = 1;
                f1 = f4;
              }
              else
              {
                f4 += f5 - i3;
                d = f4;
                if (d > 1.0D)
                {
                  i1 = i3 + 1;
                  f1 = f4 - 1.0F;
                  i2 = k;
                }
                else
                {
                  i2 = k;
                  f1 = f4;
                  i1 = i3;
                  if (d < -1.0D)
                  {
                    i1 = i3 - 1;
                    f1 = f4 + 1.0F;
                    i2 = k;
                  }
                }
              }
              k = getChildWidthMeasureSpecInternal(paramInt1, localFlexItem, paramFlexLine.mSumCrossSizeBefore);
              i4 = View.MeasureSpec.makeMeasureSpec(i1, 1073741824);
              localView.measure(k, i4);
              i3 = localView.getMeasuredWidth();
              i1 = localView.getMeasuredHeight();
              updateMeasureCache(n, k, i4, localView);
              this.mFlexContainer.updateViewCache(n, localView);
              k = i2;
              i2 = i3;
            }
            i2 = Math.max(m, i2 + localFlexItem.getMarginLeft() + localFlexItem.getMarginRight() + this.mFlexContainer.getDecorationLengthCrossAxis(localView));
            paramFlexLine.mMainSize += i1 + localFlexItem.getMarginTop() + localFlexItem.getMarginBottom();
            i1 = i2;
          }
          else
          {
            i1 = localView.getMeasuredWidth();
            arrayOfLong = this.mMeasuredSizeCache;
            if (arrayOfLong != null) {
              i1 = extractLowerInt(arrayOfLong[n]);
            }
            i2 = localView.getMeasuredHeight();
            arrayOfLong = this.mMeasuredSizeCache;
            if (arrayOfLong != null) {
              i2 = extractHigherInt(arrayOfLong[n]);
            }
            if ((this.mChildrenFrozen[n] == 0) && (localFlexItem.getFlexShrink() > 0.0F))
            {
              f3 = i1 - localFlexItem.getFlexShrink() * f2;
              f5 = f3;
              f4 = f1;
              if (j == paramFlexLine.mItemCount - 1)
              {
                f5 = f3 + f1;
                f4 = 0.0F;
              }
              i3 = Math.round(f5);
              if (i3 < localFlexItem.getMinWidth())
              {
                i1 = localFlexItem.getMinWidth();
                this.mChildrenFrozen[n] = true;
                paramFlexLine.mTotalFlexShrink -= localFlexItem.getFlexShrink();
                i2 = 1;
                f1 = f4;
              }
              else
              {
                f4 += f5 - i3;
                d = f4;
                if (d > 1.0D)
                {
                  i1 = i3 + 1;
                  f1 = f4 - 1.0F;
                  i2 = k;
                }
                else
                {
                  i1 = i3;
                  i2 = k;
                  f1 = f4;
                  if (d < -1.0D)
                  {
                    i1 = i3 - 1;
                    f1 = f4 + 1.0F;
                    i2 = k;
                  }
                }
              }
              k = getChildHeightMeasureSpecInternal(paramInt2, localFlexItem, paramFlexLine.mSumCrossSizeBefore);
              i4 = View.MeasureSpec.makeMeasureSpec(i1, 1073741824);
              localView.measure(i4, k);
              i1 = localView.getMeasuredWidth();
              i3 = localView.getMeasuredHeight();
              updateMeasureCache(n, i4, k, localView);
              this.mFlexContainer.updateViewCache(n, localView);
              k = i2;
            }
            else
            {
              i3 = i2;
            }
            i2 = Math.max(m, i3 + localFlexItem.getMarginTop() + localFlexItem.getMarginBottom() + this.mFlexContainer.getDecorationLengthCrossAxis(localView));
            paramFlexLine.mMainSize += i1 + localFlexItem.getMarginLeft() + localFlexItem.getMarginRight();
            i1 = i2;
          }
          paramFlexLine.mCrossSize = Math.max(paramFlexLine.mCrossSize, i1);
          m = i1;
        }
        j++;
      }
      if ((k != 0) && (i != paramFlexLine.mMainSize)) {
        shrinkFlexItems(paramInt1, paramInt2, paramFlexLine, paramInt3, paramInt4, true);
      }
    }
  }
  
  private int[] sortOrdersIntoReorderedIndices(int paramInt, List<Order> paramList, SparseIntArray paramSparseIntArray)
  {
    Collections.sort(paramList);
    paramSparseIntArray.clear();
    int[] arrayOfInt = new int[paramInt];
    paramList = paramList.iterator();
    for (paramInt = 0; paramList.hasNext(); paramInt++)
    {
      Order localOrder = (Order)paramList.next();
      int i = localOrder.index;
      arrayOfInt[paramInt] = i;
      paramSparseIntArray.append(i, localOrder.order);
    }
    return arrayOfInt;
  }
  
  private void stretchViewHorizontally(View paramView, int paramInt1, int paramInt2)
  {
    Object localObject = (FlexItem)paramView.getLayoutParams();
    int i = Math.min(Math.max(paramInt1 - ((FlexItem)localObject).getMarginLeft() - ((FlexItem)localObject).getMarginRight() - this.mFlexContainer.getDecorationLengthCrossAxis(paramView), ((FlexItem)localObject).getMinWidth()), ((FlexItem)localObject).getMaxWidth());
    localObject = this.mMeasuredSizeCache;
    if (localObject != null) {
      paramInt1 = extractHigherInt(localObject[paramInt2]);
    } else {
      paramInt1 = paramView.getMeasuredHeight();
    }
    paramInt1 = View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824);
    i = View.MeasureSpec.makeMeasureSpec(i, 1073741824);
    paramView.measure(i, paramInt1);
    updateMeasureCache(paramInt2, i, paramInt1, paramView);
    this.mFlexContainer.updateViewCache(paramInt2, paramView);
  }
  
  private void stretchViewVertically(View paramView, int paramInt1, int paramInt2)
  {
    Object localObject = (FlexItem)paramView.getLayoutParams();
    int i = Math.min(Math.max(paramInt1 - ((FlexItem)localObject).getMarginTop() - ((FlexItem)localObject).getMarginBottom() - this.mFlexContainer.getDecorationLengthCrossAxis(paramView), ((FlexItem)localObject).getMinHeight()), ((FlexItem)localObject).getMaxHeight());
    localObject = this.mMeasuredSizeCache;
    if (localObject != null) {
      paramInt1 = extractLowerInt(localObject[paramInt2]);
    } else {
      paramInt1 = paramView.getMeasuredWidth();
    }
    paramInt1 = View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824);
    i = View.MeasureSpec.makeMeasureSpec(i, 1073741824);
    paramView.measure(paramInt1, i);
    updateMeasureCache(paramInt2, paramInt1, i, paramView);
    this.mFlexContainer.updateViewCache(paramInt2, paramView);
  }
  
  private void updateMeasureCache(int paramInt1, int paramInt2, int paramInt3, View paramView)
  {
    long[] arrayOfLong = this.mMeasureSpecCache;
    if (arrayOfLong != null) {
      arrayOfLong[paramInt1] = makeCombinedLong(paramInt2, paramInt3);
    }
    arrayOfLong = this.mMeasuredSizeCache;
    if (arrayOfLong != null) {
      arrayOfLong[paramInt1] = makeCombinedLong(paramView.getMeasuredWidth(), paramView.getMeasuredHeight());
    }
  }
  
  void calculateFlexLines(FlexLinesResult paramFlexLinesResult, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, List<FlexLine> paramList)
  {
    int i = paramInt2;
    int j = paramInt5;
    boolean bool = this.mFlexContainer.isMainAxisDirectionHorizontal();
    int k = View.MeasureSpec.getMode(paramInt1);
    int m = View.MeasureSpec.getSize(paramInt1);
    if (paramList == null) {
      paramList = new ArrayList();
    }
    paramFlexLinesResult.mFlexLines = paramList;
    if (j == -1) {
      n = 1;
    } else {
      n = 0;
    }
    int i1 = getPaddingStartMain(bool);
    int i2 = getPaddingEndMain(bool);
    int i3 = getPaddingStartCross(bool);
    int i4 = getPaddingEndCross(bool);
    Object localObject1 = new FlexLine();
    ((FlexLine)localObject1).mFirstIndex = paramInt4;
    int i5 = i2 + i1;
    ((FlexLine)localObject1).mMainSize = i5;
    int i6 = this.mFlexContainer.getFlexItemCount();
    i2 = -2147483648;
    int i7 = 0;
    int i8 = 0;
    int i9 = 0;
    i1 = n;
    int n = i7;
    for (;;)
    {
      i7 = paramInt1;
      if (paramInt4 >= i6) {
        break;
      }
      View localView = this.mFlexContainer.getReorderedFlexItemAt(paramInt4);
      if (localView == null)
      {
        if (isLastFlexItem(paramInt4, i6, (FlexLine)localObject1)) {
          addFlexLine(paramList, (FlexLine)localObject1, paramInt4, n);
        }
      }
      else
      {
        if (localView.getVisibility() != 8) {
          break label308;
        }
        ((FlexLine)localObject1).mGoneItemCount += 1;
        ((FlexLine)localObject1).mItemCount += 1;
        if (isLastFlexItem(paramInt4, i6, (FlexLine)localObject1)) {
          addFlexLine(paramList, (FlexLine)localObject1, paramInt4, n);
        }
      }
      i7 = i;
      i = n;
      n = i7;
      int i10 = paramInt4;
      paramInt4 = j;
      int i11 = i1;
      i7 = i9;
      break label1537;
      label308:
      FlexItem localFlexItem = (FlexItem)localView.getLayoutParams();
      if (localFlexItem.getAlignSelf() == 4) {
        ((FlexLine)localObject1).mIndicesAlignSelfStretch.add(Integer.valueOf(paramInt4));
      }
      i11 = getFlexItemSizeMain(localFlexItem, bool);
      j = i11;
      if (localFlexItem.getFlexBasisPercent() != -1.0F)
      {
        j = i11;
        if (k == 1073741824) {
          j = Math.round(m * localFlexItem.getFlexBasisPercent());
        }
      }
      if (bool)
      {
        j = this.mFlexContainer.getChildWidthMeasureSpec(i7, i5 + getFlexItemMarginStartMain(localFlexItem, true) + getFlexItemMarginEndMain(localFlexItem, true), j);
        i = this.mFlexContainer.getChildHeightMeasureSpec(i, i3 + i4 + getFlexItemMarginStartCross(localFlexItem, true) + getFlexItemMarginEndCross(localFlexItem, true) + n, getFlexItemSizeCross(localFlexItem, true));
        localView.measure(j, i);
        updateMeasureCache(paramInt4, j, i, localView);
      }
      else
      {
        i = this.mFlexContainer.getChildWidthMeasureSpec(i, i3 + i4 + getFlexItemMarginStartCross(localFlexItem, false) + getFlexItemMarginEndCross(localFlexItem, false) + n, getFlexItemSizeCross(localFlexItem, false));
        j = this.mFlexContainer.getChildHeightMeasureSpec(i7, getFlexItemMarginStartMain(localFlexItem, false) + i5 + getFlexItemMarginEndMain(localFlexItem, false), j);
        localView.measure(i, j);
        updateMeasureCache(paramInt4, i, j, localView);
      }
      this.mFlexContainer.updateViewCache(paramInt4, localView);
      checkSizeConstraints(localView, paramInt4);
      i = View.combineMeasuredStates(i8, localView.getMeasuredState());
      i8 = ((FlexLine)localObject1).mMainSize;
      i7 = getViewMeasuredSizeMain(localView, bool);
      i11 = getFlexItemMarginStartMain(localFlexItem, bool);
      int i12 = getFlexItemMarginEndMain(localFlexItem, bool);
      i10 = paramList.size();
      List<FlexLine> localList = paramList;
      if (isWrapRequired(localView, k, m, i8, i12 + (i7 + i11), localFlexItem, paramInt4, i9, i10))
      {
        if (((FlexLine)localObject1).getItemCountNotGone() > 0)
        {
          if (paramInt4 > 0) {
            i2 = paramInt4 - 1;
          } else {
            i2 = 0;
          }
          addFlexLine(localList, (FlexLine)localObject1, i2, n);
          i2 = ((FlexLine)localObject1).mCrossSize + n;
        }
        else
        {
          i2 = n;
        }
        if (bool)
        {
          if (localFlexItem.getHeight() == -1)
          {
            localObject1 = this.mFlexContainer;
            n = ((FlexContainer)localObject1).getChildHeightMeasureSpec(paramInt2, ((FlexContainer)localObject1).getPaddingTop() + this.mFlexContainer.getPaddingBottom() + localFlexItem.getMarginTop() + localFlexItem.getMarginBottom() + i2, localFlexItem.getHeight());
            localObject1 = localView;
            ((View)localObject1).measure(j, n);
            checkSizeConstraints((View)localObject1, paramInt4);
          }
        }
        else
        {
          localObject1 = localView;
          if (localFlexItem.getWidth() == -1)
          {
            localObject2 = this.mFlexContainer;
            ((View)localObject1).measure(((FlexContainer)localObject2).getChildWidthMeasureSpec(paramInt2, ((FlexContainer)localObject2).getPaddingLeft() + this.mFlexContainer.getPaddingRight() + localFlexItem.getMarginLeft() + localFlexItem.getMarginRight() + i2, localFlexItem.getWidth()), j);
            checkSizeConstraints((View)localObject1, paramInt4);
          }
        }
        localObject1 = new FlexLine();
        ((FlexLine)localObject1).mItemCount = 1;
        ((FlexLine)localObject1).mMainSize = i5;
        ((FlexLine)localObject1).mFirstIndex = paramInt4;
        i8 = -2147483648;
        n = 0;
      }
      else
      {
        ((FlexLine)localObject1).mItemCount += 1;
        i9++;
        j = n;
        i8 = i2;
        n = i9;
        i2 = j;
      }
      i9 = paramInt4;
      j = paramInt2;
      int i13 = ((FlexLine)localObject1).mAnyItemsHaveFlexGrow;
      if (localFlexItem.getFlexGrow() != 0.0F) {
        paramInt4 = 1;
      } else {
        paramInt4 = 0;
      }
      ((FlexLine)localObject1).mAnyItemsHaveFlexGrow = (i13 | paramInt4);
      int i14 = ((FlexLine)localObject1).mAnyItemsHaveFlexShrink;
      if (localFlexItem.getFlexShrink() != 0.0F) {
        paramInt4 = 1;
      } else {
        paramInt4 = 0;
      }
      ((FlexLine)localObject1).mAnyItemsHaveFlexShrink = (i14 | paramInt4);
      Object localObject2 = this.mIndexToFlexLine;
      if (localObject2 != null) {
        localObject2[i9] = localList.size();
      }
      ((FlexLine)localObject1).mMainSize += getViewMeasuredSizeMain(localView, bool) + getFlexItemMarginStartMain(localFlexItem, bool) + getFlexItemMarginEndMain(localFlexItem, bool);
      ((FlexLine)localObject1).mTotalFlexGrow += localFlexItem.getFlexGrow();
      ((FlexLine)localObject1).mTotalFlexShrink += localFlexItem.getFlexShrink();
      this.mFlexContainer.onNewFlexItemAdded(localView, i9, n, (FlexLine)localObject1);
      i7 = Math.max(i8, getViewMeasuredSizeCross(localView, bool) + getFlexItemMarginStartCross(localFlexItem, bool) + getFlexItemMarginEndCross(localFlexItem, bool) + this.mFlexContainer.getDecorationLengthCrossAxis(localView));
      ((FlexLine)localObject1).mCrossSize = Math.max(((FlexLine)localObject1).mCrossSize, i7);
      if (bool) {
        if (this.mFlexContainer.getFlexWrap() != 2) {
          ((FlexLine)localObject1).mMaxBaseline = Math.max(((FlexLine)localObject1).mMaxBaseline, localView.getBaseline() + localFlexItem.getMarginTop());
        } else {
          ((FlexLine)localObject1).mMaxBaseline = Math.max(((FlexLine)localObject1).mMaxBaseline, localView.getMeasuredHeight() - localView.getBaseline() + localFlexItem.getMarginBottom());
        }
      }
      i8 = i2;
      if (isLastFlexItem(i9, i6, (FlexLine)localObject1))
      {
        addFlexLine(localList, (FlexLine)localObject1, i9, i2);
        i8 = i2 + ((FlexLine)localObject1).mCrossSize;
      }
      i10 = paramInt5;
      if ((i10 != -1) && (localList.size() > 0) && (((FlexLine)localList.get(localList.size() - 1)).mLastIndex >= i10) && (i9 >= i10) && (i1 == 0))
      {
        i1 = -((FlexLine)localObject1).getCrossSize();
        paramInt4 = 1;
      }
      else
      {
        paramInt4 = i1;
        i1 = i8;
      }
      if ((i1 > paramInt3) && (paramInt4 != 0))
      {
        i8 = i;
        break;
      }
      i2 = i7;
      i7 = n;
      i8 = i;
      i11 = paramInt4;
      paramInt4 = i10;
      i10 = i9;
      n = j;
      i = i1;
      label1537:
      i9 = i10 + 1;
      i1 = n;
      j = paramInt4;
      n = i;
      paramInt4 = i9;
      i = i1;
      i1 = i11;
      i9 = i7;
    }
    paramFlexLinesResult.mChildState = i8;
  }
  
  void calculateHorizontalFlexLines(FlexLinesResult paramFlexLinesResult, int paramInt1, int paramInt2)
  {
    calculateFlexLines(paramFlexLinesResult, paramInt1, paramInt2, 2147483647, 0, -1, null);
  }
  
  void calculateHorizontalFlexLines(FlexLinesResult paramFlexLinesResult, int paramInt1, int paramInt2, int paramInt3, int paramInt4, List<FlexLine> paramList)
  {
    calculateFlexLines(paramFlexLinesResult, paramInt1, paramInt2, paramInt3, paramInt4, -1, paramList);
  }
  
  void calculateHorizontalFlexLinesToIndex(FlexLinesResult paramFlexLinesResult, int paramInt1, int paramInt2, int paramInt3, int paramInt4, List<FlexLine> paramList)
  {
    calculateFlexLines(paramFlexLinesResult, paramInt1, paramInt2, paramInt3, 0, paramInt4, paramList);
  }
  
  void calculateVerticalFlexLines(FlexLinesResult paramFlexLinesResult, int paramInt1, int paramInt2)
  {
    calculateFlexLines(paramFlexLinesResult, paramInt2, paramInt1, 2147483647, 0, -1, null);
  }
  
  void calculateVerticalFlexLines(FlexLinesResult paramFlexLinesResult, int paramInt1, int paramInt2, int paramInt3, int paramInt4, List<FlexLine> paramList)
  {
    calculateFlexLines(paramFlexLinesResult, paramInt2, paramInt1, paramInt3, paramInt4, -1, paramList);
  }
  
  void calculateVerticalFlexLinesToIndex(FlexLinesResult paramFlexLinesResult, int paramInt1, int paramInt2, int paramInt3, int paramInt4, List<FlexLine> paramList)
  {
    calculateFlexLines(paramFlexLinesResult, paramInt2, paramInt1, paramInt3, 0, paramInt4, paramList);
  }
  
  void clearFlexLines(List<FlexLine> paramList, int paramInt)
  {
    int i = this.mIndexToFlexLine[paramInt];
    int j = i;
    if (i == -1) {
      j = 0;
    }
    for (i = paramList.size() - 1; i >= j; i--) {
      paramList.remove(i);
    }
    paramList = this.mIndexToFlexLine;
    j = paramList.length - 1;
    if (paramInt > j) {
      Arrays.fill(paramList, -1);
    } else {
      Arrays.fill(paramList, paramInt, j, -1);
    }
    paramList = this.mMeasureSpecCache;
    j = paramList.length - 1;
    if (paramInt > j) {
      Arrays.fill(paramList, 0L);
    } else {
      Arrays.fill(paramList, paramInt, j, 0L);
    }
  }
  
  int[] createReorderedIndices(SparseIntArray paramSparseIntArray)
  {
    int i = this.mFlexContainer.getFlexItemCount();
    return sortOrdersIntoReorderedIndices(i, createOrders(i), paramSparseIntArray);
  }
  
  int[] createReorderedIndices(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams, SparseIntArray paramSparseIntArray)
  {
    int i = this.mFlexContainer.getFlexItemCount();
    List localList = createOrders(i);
    Order localOrder = new Order(null);
    if ((paramView != null) && ((paramLayoutParams instanceof FlexItem))) {
      localOrder.order = ((FlexItem)paramLayoutParams).getOrder();
    } else {
      localOrder.order = 1;
    }
    if ((paramInt != -1) && (paramInt != i))
    {
      if (paramInt < this.mFlexContainer.getFlexItemCount())
      {
        localOrder.index = paramInt;
        while (paramInt < i)
        {
          paramView = (Order)localList.get(paramInt);
          paramView.index += 1;
          paramInt++;
        }
      }
      localOrder.index = i;
    }
    else
    {
      localOrder.index = i;
    }
    localList.add(localOrder);
    return sortOrdersIntoReorderedIndices(i + 1, localList, paramSparseIntArray);
  }
  
  void determineCrossSize(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = this.mFlexContainer.getFlexDirection();
    if ((i != 0) && (i != 1))
    {
      if ((i != 2) && (i != 3))
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Invalid flex direction: ");
        ((StringBuilder)localObject).append(i);
        throw new IllegalArgumentException(((StringBuilder)localObject).toString());
      }
      paramInt2 = View.MeasureSpec.getMode(paramInt1);
      paramInt1 = View.MeasureSpec.getSize(paramInt1);
    }
    else
    {
      paramInt1 = View.MeasureSpec.getMode(paramInt2);
      i = View.MeasureSpec.getSize(paramInt2);
      paramInt2 = paramInt1;
      paramInt1 = i;
    }
    Object localObject = this.mFlexContainer.getFlexLinesInternal();
    if (paramInt2 == 1073741824)
    {
      int j = this.mFlexContainer.getSumOfCrossSize() + paramInt3;
      int k = ((List)localObject).size();
      i = 0;
      paramInt2 = 0;
      if (k == 1)
      {
        ((FlexLine)((List)localObject).get(0)).mCrossSize = (paramInt1 - paramInt3);
      }
      else if (((List)localObject).size() >= 2)
      {
        paramInt3 = this.mFlexContainer.getAlignContent();
        FlexLine localFlexLine;
        if (paramInt3 != 1)
        {
          if (paramInt3 != 2)
          {
            float f2;
            float f4;
            float f5;
            ArrayList localArrayList;
            if (paramInt3 != 3)
            {
              if (paramInt3 != 4)
              {
                if ((paramInt3 == 5) && (j < paramInt1))
                {
                  float f1 = (paramInt1 - j) / ((List)localObject).size();
                  i = ((List)localObject).size();
                  f2 = 0.0F;
                  while (paramInt2 < i)
                  {
                    localFlexLine = (FlexLine)((List)localObject).get(paramInt2);
                    float f3 = localFlexLine.mCrossSize + f1;
                    f4 = f3;
                    f5 = f2;
                    if (paramInt2 == ((List)localObject).size() - 1)
                    {
                      f4 = f3 + f2;
                      f5 = 0.0F;
                    }
                    paramInt3 = Math.round(f4);
                    f5 += f4 - paramInt3;
                    if (f5 > 1.0F)
                    {
                      paramInt1 = paramInt3 + 1;
                      f2 = f5 - 1.0F;
                    }
                    else
                    {
                      paramInt1 = paramInt3;
                      f2 = f5;
                      if (f5 < -1.0F)
                      {
                        paramInt1 = paramInt3 - 1;
                        f2 = f5 + 1.0F;
                      }
                    }
                    localFlexLine.mCrossSize = paramInt1;
                    paramInt2++;
                  }
                }
              }
              else if (j >= paramInt1)
              {
                this.mFlexContainer.setFlexLines(constructFlexLinesForAlignContentCenter((List)localObject, paramInt1, j));
              }
              else
              {
                paramInt1 = (paramInt1 - j) / (((List)localObject).size() * 2);
                localArrayList = new ArrayList();
                localFlexLine = new FlexLine();
                localFlexLine.mCrossSize = paramInt1;
                Iterator localIterator = ((List)localObject).iterator();
                while (localIterator.hasNext())
                {
                  localObject = (FlexLine)localIterator.next();
                  localArrayList.add(localFlexLine);
                  localArrayList.add(localObject);
                  localArrayList.add(localFlexLine);
                }
                this.mFlexContainer.setFlexLines(localArrayList);
              }
            }
            else if (j < paramInt1)
            {
              f4 = (paramInt1 - j) / (((List)localObject).size() - 1);
              localArrayList = new ArrayList();
              paramInt2 = ((List)localObject).size();
              f2 = 0.0F;
              paramInt1 = i;
              while (paramInt1 < paramInt2)
              {
                localArrayList.add((FlexLine)((List)localObject).get(paramInt1));
                f5 = f2;
                if (paramInt1 != ((List)localObject).size() - 1)
                {
                  localFlexLine = new FlexLine();
                  if (paramInt1 == ((List)localObject).size() - 2)
                  {
                    localFlexLine.mCrossSize = Math.round(f2 + f4);
                    f2 = 0.0F;
                  }
                  else
                  {
                    localFlexLine.mCrossSize = Math.round(f4);
                  }
                  paramInt3 = localFlexLine.mCrossSize;
                  f5 = f2 + (f4 - paramInt3);
                  if (f5 > 1.0F)
                  {
                    localFlexLine.mCrossSize = (paramInt3 + 1);
                    f2 = f5 - 1.0F;
                  }
                  else
                  {
                    f2 = f5;
                    if (f5 < -1.0F)
                    {
                      localFlexLine.mCrossSize = (paramInt3 - 1);
                      f2 = f5 + 1.0F;
                    }
                  }
                  localArrayList.add(localFlexLine);
                  f5 = f2;
                }
                paramInt1++;
                f2 = f5;
              }
              this.mFlexContainer.setFlexLines(localArrayList);
            }
          }
          else
          {
            this.mFlexContainer.setFlexLines(constructFlexLinesForAlignContentCenter((List)localObject, paramInt1, j));
          }
        }
        else
        {
          localFlexLine = new FlexLine();
          localFlexLine.mCrossSize = (paramInt1 - j);
          ((List)localObject).add(0, localFlexLine);
        }
      }
    }
  }
  
  void determineMainSize(int paramInt1, int paramInt2)
  {
    determineMainSize(paramInt1, paramInt2, 0);
  }
  
  void determineMainSize(int paramInt1, int paramInt2, int paramInt3)
  {
    ensureChildrenFrozen(this.mFlexContainer.getFlexItemCount());
    if (paramInt3 >= this.mFlexContainer.getFlexItemCount()) {
      return;
    }
    int i = this.mFlexContainer.getFlexDirection();
    int j = this.mFlexContainer.getFlexDirection();
    int k;
    if ((j != 0) && (j != 1))
    {
      if ((j != 2) && (j != 3))
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Invalid flex direction: ");
        ((StringBuilder)localObject).append(i);
        throw new IllegalArgumentException(((StringBuilder)localObject).toString());
      }
      i = View.MeasureSpec.getMode(paramInt2);
      j = View.MeasureSpec.getSize(paramInt2);
      if (i != 1073741824) {
        j = this.mFlexContainer.getLargestMainSize();
      }
      k = this.mFlexContainer.getPaddingTop();
      m = this.mFlexContainer.getPaddingBottom();
      i = j;
    }
    else
    {
      i = View.MeasureSpec.getMode(paramInt1);
      j = View.MeasureSpec.getSize(paramInt1);
      if (i != 1073741824) {
        j = this.mFlexContainer.getLargestMainSize();
      }
      k = this.mFlexContainer.getPaddingLeft();
      m = this.mFlexContainer.getPaddingRight();
      i = j;
    }
    k += m;
    j = 0;
    Object localObject = this.mIndexToFlexLine;
    if (localObject != null) {
      j = localObject[paramInt3];
    }
    localObject = this.mFlexContainer.getFlexLinesInternal();
    int m = ((List)localObject).size();
    for (paramInt3 = j; paramInt3 < m; paramInt3++)
    {
      FlexLine localFlexLine = (FlexLine)((List)localObject).get(paramInt3);
      j = localFlexLine.mMainSize;
      if ((j < i) && (localFlexLine.mAnyItemsHaveFlexGrow)) {
        expandFlexItems(paramInt1, paramInt2, localFlexLine, i, k, false);
      } else if ((j > i) && (localFlexLine.mAnyItemsHaveFlexShrink)) {
        shrinkFlexItems(paramInt1, paramInt2, localFlexLine, i, k, false);
      }
    }
  }
  
  void ensureIndexToFlexLine(int paramInt)
  {
    int[] arrayOfInt = this.mIndexToFlexLine;
    int i;
    if (arrayOfInt == null)
    {
      i = paramInt;
      if (paramInt < 10) {
        i = 10;
      }
      this.mIndexToFlexLine = new int[i];
    }
    else if (arrayOfInt.length < paramInt)
    {
      int j = arrayOfInt.length * 2;
      i = paramInt;
      if (j >= paramInt) {
        i = j;
      }
      this.mIndexToFlexLine = Arrays.copyOf(arrayOfInt, i);
    }
  }
  
  void ensureMeasureSpecCache(int paramInt)
  {
    long[] arrayOfLong = this.mMeasureSpecCache;
    int i;
    if (arrayOfLong == null)
    {
      i = paramInt;
      if (paramInt < 10) {
        i = 10;
      }
      this.mMeasureSpecCache = new long[i];
    }
    else if (arrayOfLong.length < paramInt)
    {
      int j = arrayOfLong.length * 2;
      i = paramInt;
      if (j >= paramInt) {
        i = j;
      }
      this.mMeasureSpecCache = Arrays.copyOf(arrayOfLong, i);
    }
  }
  
  void ensureMeasuredSizeCache(int paramInt)
  {
    long[] arrayOfLong = this.mMeasuredSizeCache;
    int i;
    if (arrayOfLong == null)
    {
      i = paramInt;
      if (paramInt < 10) {
        i = 10;
      }
      this.mMeasuredSizeCache = new long[i];
    }
    else if (arrayOfLong.length < paramInt)
    {
      int j = arrayOfLong.length * 2;
      i = paramInt;
      if (j >= paramInt) {
        i = j;
      }
      this.mMeasuredSizeCache = Arrays.copyOf(arrayOfLong, i);
    }
  }
  
  int extractHigherInt(long paramLong)
  {
    return (int)(paramLong >> 32);
  }
  
  int extractLowerInt(long paramLong)
  {
    return (int)paramLong;
  }
  
  boolean isOrderChangedFromLastMeasurement(SparseIntArray paramSparseIntArray)
  {
    int i = this.mFlexContainer.getFlexItemCount();
    if (paramSparseIntArray.size() != i) {
      return true;
    }
    for (int j = 0; j < i; j++)
    {
      View localView = this.mFlexContainer.getFlexItemAt(j);
      if ((localView != null) && (((FlexItem)localView.getLayoutParams()).getOrder() != paramSparseIntArray.get(j))) {
        return true;
      }
    }
    return false;
  }
  
  void layoutSingleChildHorizontal(View paramView, FlexLine paramFlexLine, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    FlexItem localFlexItem = (FlexItem)paramView.getLayoutParams();
    int i = this.mFlexContainer.getAlignItems();
    if (localFlexItem.getAlignSelf() != -1) {
      i = localFlexItem.getAlignSelf();
    }
    int j = paramFlexLine.mCrossSize;
    if (i != 0) {
      if (i != 1)
      {
        if (i != 2)
        {
          if (i != 3)
          {
            if (i != 4) {
              return;
            }
          }
          else
          {
            if (this.mFlexContainer.getFlexWrap() != 2)
            {
              i = Math.max(paramFlexLine.mMaxBaseline - paramView.getBaseline(), localFlexItem.getMarginTop());
              paramView.layout(paramInt1, paramInt2 + i, paramInt3, paramInt4 + i);
              return;
            }
            i = Math.max(paramFlexLine.mMaxBaseline - paramView.getMeasuredHeight() + paramView.getBaseline(), localFlexItem.getMarginBottom());
            paramView.layout(paramInt1, paramInt2 - i, paramInt3, paramInt4 - i);
            return;
          }
        }
        else
        {
          paramInt4 = (j - paramView.getMeasuredHeight() + localFlexItem.getMarginTop() - localFlexItem.getMarginBottom()) / 2;
          if (this.mFlexContainer.getFlexWrap() != 2)
          {
            paramInt2 += paramInt4;
            paramView.layout(paramInt1, paramInt2, paramInt3, paramView.getMeasuredHeight() + paramInt2);
            return;
          }
          paramInt2 -= paramInt4;
          paramView.layout(paramInt1, paramInt2, paramInt3, paramView.getMeasuredHeight() + paramInt2);
          return;
        }
      }
      else
      {
        if (this.mFlexContainer.getFlexWrap() != 2)
        {
          paramInt2 += j;
          paramView.layout(paramInt1, paramInt2 - paramView.getMeasuredHeight() - localFlexItem.getMarginBottom(), paramInt3, paramInt2 - localFlexItem.getMarginBottom());
          return;
        }
        paramView.layout(paramInt1, paramInt2 - j + paramView.getMeasuredHeight() + localFlexItem.getMarginTop(), paramInt3, paramInt4 - j + paramView.getMeasuredHeight() + localFlexItem.getMarginTop());
        return;
      }
    }
    if (this.mFlexContainer.getFlexWrap() != 2) {
      paramView.layout(paramInt1, paramInt2 + localFlexItem.getMarginTop(), paramInt3, paramInt4 + localFlexItem.getMarginTop());
    } else {
      paramView.layout(paramInt1, paramInt2 - localFlexItem.getMarginBottom(), paramInt3, paramInt4 - localFlexItem.getMarginBottom());
    }
  }
  
  void layoutSingleChildVertical(View paramView, FlexLine paramFlexLine, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    FlexItem localFlexItem = (FlexItem)paramView.getLayoutParams();
    int i = this.mFlexContainer.getAlignItems();
    if (localFlexItem.getAlignSelf() != -1) {
      i = localFlexItem.getAlignSelf();
    }
    int j = paramFlexLine.mCrossSize;
    if (i != 0) {
      if (i != 1)
      {
        if (i != 2)
        {
          if ((i != 3) && (i != 4)) {
            return;
          }
        }
        else
        {
          paramFlexLine = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
          i = (j - paramView.getMeasuredWidth() + h.b(paramFlexLine) - h.a(paramFlexLine)) / 2;
          if (!paramBoolean)
          {
            paramView.layout(paramInt1 + i, paramInt2, paramInt3 + i, paramInt4);
            return;
          }
          paramView.layout(paramInt1 - i, paramInt2, paramInt3 - i, paramInt4);
          return;
        }
      }
      else
      {
        if (!paramBoolean)
        {
          paramView.layout(paramInt1 + j - paramView.getMeasuredWidth() - localFlexItem.getMarginRight(), paramInt2, paramInt3 + j - paramView.getMeasuredWidth() - localFlexItem.getMarginRight(), paramInt4);
          return;
        }
        paramView.layout(paramInt1 - j + paramView.getMeasuredWidth() + localFlexItem.getMarginLeft(), paramInt2, paramInt3 - j + paramView.getMeasuredWidth() + localFlexItem.getMarginLeft(), paramInt4);
        return;
      }
    }
    if (!paramBoolean) {
      paramView.layout(paramInt1 + localFlexItem.getMarginLeft(), paramInt2, paramInt3 + localFlexItem.getMarginLeft(), paramInt4);
    } else {
      paramView.layout(paramInt1 - localFlexItem.getMarginRight(), paramInt2, paramInt3 - localFlexItem.getMarginRight(), paramInt4);
    }
  }
  
  long makeCombinedLong(int paramInt1, int paramInt2)
  {
    long l = paramInt2;
    return paramInt1 & 0xFFFFFFFF | l << 32;
  }
  
  void stretchViews()
  {
    stretchViews(0);
  }
  
  void stretchViews(int paramInt)
  {
    if (paramInt >= this.mFlexContainer.getFlexItemCount()) {
      return;
    }
    int i = this.mFlexContainer.getFlexDirection();
    Object localObject1;
    Object localObject2;
    Object localObject3;
    if (this.mFlexContainer.getAlignItems() == 4)
    {
      localObject1 = this.mIndexToFlexLine;
      if (localObject1 != null) {
        paramInt = localObject1[paramInt];
      } else {
        paramInt = 0;
      }
      localObject1 = this.mFlexContainer.getFlexLinesInternal();
      int j = ((List)localObject1).size();
      while (paramInt < j)
      {
        localObject2 = (FlexLine)((List)localObject1).get(paramInt);
        int k = ((FlexLine)localObject2).mItemCount;
        for (int m = 0; m < k; m++)
        {
          int n = ((FlexLine)localObject2).mFirstIndex + m;
          if (m < this.mFlexContainer.getFlexItemCount())
          {
            localObject3 = this.mFlexContainer.getReorderedFlexItemAt(n);
            if ((localObject3 != null) && (((View)localObject3).getVisibility() != 8))
            {
              localObject4 = (FlexItem)((View)localObject3).getLayoutParams();
              if ((((FlexItem)localObject4).getAlignSelf() == -1) || (((FlexItem)localObject4).getAlignSelf() == 4)) {
                if ((i != 0) && (i != 1))
                {
                  if ((i != 2) && (i != 3))
                  {
                    localObject1 = new StringBuilder();
                    ((StringBuilder)localObject1).append("Invalid flex direction: ");
                    ((StringBuilder)localObject1).append(i);
                    throw new IllegalArgumentException(((StringBuilder)localObject1).toString());
                  }
                  stretchViewHorizontally((View)localObject3, ((FlexLine)localObject2).mCrossSize, n);
                }
                else
                {
                  stretchViewVertically((View)localObject3, ((FlexLine)localObject2).mCrossSize, n);
                }
              }
            }
          }
        }
        paramInt++;
      }
    }
    Object localObject4 = this.mFlexContainer.getFlexLinesInternal().iterator();
    while (((Iterator)localObject4).hasNext())
    {
      localObject1 = (FlexLine)((Iterator)localObject4).next();
      localObject3 = ((FlexLine)localObject1).mIndicesAlignSelfStretch.iterator();
      while (((Iterator)localObject3).hasNext())
      {
        Integer localInteger = (Integer)((Iterator)localObject3).next();
        localObject2 = this.mFlexContainer.getReorderedFlexItemAt(localInteger.intValue());
        if ((i != 0) && (i != 1))
        {
          if ((i != 2) && (i != 3))
          {
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append("Invalid flex direction: ");
            ((StringBuilder)localObject1).append(i);
            throw new IllegalArgumentException(((StringBuilder)localObject1).toString());
          }
          stretchViewHorizontally((View)localObject2, ((FlexLine)localObject1).mCrossSize, localInteger.intValue());
        }
        else
        {
          stretchViewVertically((View)localObject2, ((FlexLine)localObject1).mCrossSize, localInteger.intValue());
        }
      }
    }
  }
  
  static class FlexLinesResult
  {
    int mChildState;
    List<FlexLine> mFlexLines;
    
    void reset()
    {
      this.mFlexLines = null;
      this.mChildState = 0;
    }
  }
  
  private static class Order
    implements Comparable<Order>
  {
    int index;
    int order;
    
    public int compareTo(Order paramOrder)
    {
      int i = this.order;
      int j = paramOrder.order;
      if (i != j) {
        return i - j;
      }
      return this.index - paramOrder.index;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Order{order=");
      localStringBuilder.append(this.order);
      localStringBuilder.append(", index=");
      localStringBuilder.append(this.index);
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.flexbox.FlexboxHelper
 * JD-Core Version:    0.7.0.1
 */