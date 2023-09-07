package com.google.android.flexbox;

import android.view.View;
import java.util.ArrayList;
import java.util.List;

public class FlexLine
{
  boolean mAnyItemsHaveFlexGrow;
  boolean mAnyItemsHaveFlexShrink;
  int mBottom = -2147483648;
  int mCrossSize;
  int mDividerLengthInMainSize;
  int mFirstIndex;
  int mGoneItemCount;
  List<Integer> mIndicesAlignSelfStretch = new ArrayList();
  int mItemCount;
  int mLastIndex;
  int mLeft = 2147483647;
  int mMainSize;
  int mMaxBaseline;
  int mRight = -2147483648;
  int mSumCrossSizeBefore;
  int mTop = 2147483647;
  float mTotalFlexGrow;
  float mTotalFlexShrink;
  
  public int getCrossSize()
  {
    return this.mCrossSize;
  }
  
  public int getFirstIndex()
  {
    return this.mFirstIndex;
  }
  
  public int getItemCount()
  {
    return this.mItemCount;
  }
  
  public int getItemCountNotGone()
  {
    return this.mItemCount - this.mGoneItemCount;
  }
  
  public int getMainSize()
  {
    return this.mMainSize;
  }
  
  public float getTotalFlexGrow()
  {
    return this.mTotalFlexGrow;
  }
  
  public float getTotalFlexShrink()
  {
    return this.mTotalFlexShrink;
  }
  
  void updatePositionFromView(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    FlexItem localFlexItem = (FlexItem)paramView.getLayoutParams();
    this.mLeft = Math.min(this.mLeft, paramView.getLeft() - localFlexItem.getMarginLeft() - paramInt1);
    this.mTop = Math.min(this.mTop, paramView.getTop() - localFlexItem.getMarginTop() - paramInt2);
    this.mRight = Math.max(this.mRight, paramView.getRight() + localFlexItem.getMarginRight() + paramInt3);
    this.mBottom = Math.max(this.mBottom, paramView.getBottom() + localFlexItem.getMarginBottom() + paramInt4);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.flexbox.FlexLine
 * JD-Core Version:    0.7.0.1
 */