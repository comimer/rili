package com.google.android.flexbox;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import androidx.core.view.a0;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class FlexboxLayout
  extends ViewGroup
  implements FlexContainer
{
  public static final int SHOW_DIVIDER_BEGINNING = 1;
  public static final int SHOW_DIVIDER_END = 4;
  public static final int SHOW_DIVIDER_MIDDLE = 2;
  public static final int SHOW_DIVIDER_NONE = 0;
  private int mAlignContent;
  private int mAlignItems;
  private Drawable mDividerDrawableHorizontal;
  private Drawable mDividerDrawableVertical;
  private int mDividerHorizontalHeight;
  private int mDividerVerticalWidth;
  private int mFlexDirection;
  private List<FlexLine> mFlexLines = new ArrayList();
  private FlexboxHelper.FlexLinesResult mFlexLinesResult = new FlexboxHelper.FlexLinesResult();
  private int mFlexWrap;
  private FlexboxHelper mFlexboxHelper = new FlexboxHelper(this);
  private int mJustifyContent;
  private int mMaxLine = -1;
  private SparseIntArray mOrderCache;
  private int[] mReorderedIndices;
  private int mShowDividerHorizontal;
  private int mShowDividerVertical;
  
  public FlexboxLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public FlexboxLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public FlexboxLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.FlexboxLayout, paramInt, 0);
    this.mFlexDirection = paramContext.getInt(R.styleable.FlexboxLayout_flexDirection, 0);
    this.mFlexWrap = paramContext.getInt(R.styleable.FlexboxLayout_flexWrap, 0);
    this.mJustifyContent = paramContext.getInt(R.styleable.FlexboxLayout_justifyContent, 0);
    this.mAlignItems = paramContext.getInt(R.styleable.FlexboxLayout_alignItems, 0);
    this.mAlignContent = paramContext.getInt(R.styleable.FlexboxLayout_alignContent, 0);
    this.mMaxLine = paramContext.getInt(R.styleable.FlexboxLayout_maxLine, -1);
    paramAttributeSet = paramContext.getDrawable(R.styleable.FlexboxLayout_dividerDrawable);
    if (paramAttributeSet != null)
    {
      setDividerDrawableHorizontal(paramAttributeSet);
      setDividerDrawableVertical(paramAttributeSet);
    }
    paramAttributeSet = paramContext.getDrawable(R.styleable.FlexboxLayout_dividerDrawableHorizontal);
    if (paramAttributeSet != null) {
      setDividerDrawableHorizontal(paramAttributeSet);
    }
    paramAttributeSet = paramContext.getDrawable(R.styleable.FlexboxLayout_dividerDrawableVertical);
    if (paramAttributeSet != null) {
      setDividerDrawableVertical(paramAttributeSet);
    }
    paramInt = paramContext.getInt(R.styleable.FlexboxLayout_showDivider, 0);
    if (paramInt != 0)
    {
      this.mShowDividerVertical = paramInt;
      this.mShowDividerHorizontal = paramInt;
    }
    paramInt = paramContext.getInt(R.styleable.FlexboxLayout_showDividerVertical, 0);
    if (paramInt != 0) {
      this.mShowDividerVertical = paramInt;
    }
    paramInt = paramContext.getInt(R.styleable.FlexboxLayout_showDividerHorizontal, 0);
    if (paramInt != 0) {
      this.mShowDividerHorizontal = paramInt;
    }
    paramContext.recycle();
  }
  
  private boolean allFlexLinesAreDummyBefore(int paramInt)
  {
    for (int i = 0; i < paramInt; i++) {
      if (((FlexLine)this.mFlexLines.get(i)).getItemCountNotGone() > 0) {
        return false;
      }
    }
    return true;
  }
  
  private boolean allViewsAreGoneBefore(int paramInt1, int paramInt2)
  {
    for (int i = 1; i <= paramInt2; i++)
    {
      View localView = getReorderedChildAt(paramInt1 - i);
      if ((localView != null) && (localView.getVisibility() != 8)) {
        return false;
      }
    }
    return true;
  }
  
  private void drawDividersHorizontal(Canvas paramCanvas, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = getPaddingLeft();
    int j = getPaddingRight();
    int k = Math.max(0, getWidth() - j - i);
    int m = this.mFlexLines.size();
    for (j = 0; j < m; j++)
    {
      FlexLine localFlexLine = (FlexLine)this.mFlexLines.get(j);
      for (int n = 0; n < localFlexLine.mItemCount; n++)
      {
        int i1 = localFlexLine.mFirstIndex + n;
        View localView = getReorderedChildAt(i1);
        if ((localView != null) && (localView.getVisibility() != 8))
        {
          LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
          if (hasDividerBeforeChildAtAlongMainAxis(i1, n))
          {
            if (paramBoolean1) {
              i1 = localView.getRight() + localLayoutParams.rightMargin;
            } else {
              i1 = localView.getLeft() - localLayoutParams.leftMargin - this.mDividerVerticalWidth;
            }
            drawVerticalDivider(paramCanvas, i1, localFlexLine.mTop, localFlexLine.mCrossSize);
          }
          if ((n == localFlexLine.mItemCount - 1) && ((this.mShowDividerVertical & 0x4) > 0))
          {
            if (paramBoolean1) {
              i1 = localView.getLeft() - localLayoutParams.leftMargin - this.mDividerVerticalWidth;
            } else {
              i1 = localView.getRight() + localLayoutParams.rightMargin;
            }
            drawVerticalDivider(paramCanvas, i1, localFlexLine.mTop, localFlexLine.mCrossSize);
          }
        }
      }
      if (hasDividerBeforeFlexLine(j))
      {
        if (paramBoolean2) {
          n = localFlexLine.mBottom;
        } else {
          n = localFlexLine.mTop - this.mDividerHorizontalHeight;
        }
        drawHorizontalDivider(paramCanvas, i, n, k);
      }
      if ((hasEndDividerAfterFlexLine(j)) && ((this.mShowDividerHorizontal & 0x4) > 0))
      {
        if (paramBoolean2) {
          n = localFlexLine.mTop - this.mDividerHorizontalHeight;
        } else {
          n = localFlexLine.mBottom;
        }
        drawHorizontalDivider(paramCanvas, i, n, k);
      }
    }
  }
  
  private void drawDividersVertical(Canvas paramCanvas, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = getPaddingTop();
    int j = getPaddingBottom();
    int k = Math.max(0, getHeight() - j - i);
    int m = this.mFlexLines.size();
    for (j = 0; j < m; j++)
    {
      FlexLine localFlexLine = (FlexLine)this.mFlexLines.get(j);
      for (int n = 0; n < localFlexLine.mItemCount; n++)
      {
        int i1 = localFlexLine.mFirstIndex + n;
        View localView = getReorderedChildAt(i1);
        if ((localView != null) && (localView.getVisibility() != 8))
        {
          LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
          if (hasDividerBeforeChildAtAlongMainAxis(i1, n))
          {
            if (paramBoolean2) {
              i1 = localView.getBottom() + localLayoutParams.bottomMargin;
            } else {
              i1 = localView.getTop() - localLayoutParams.topMargin - this.mDividerHorizontalHeight;
            }
            drawHorizontalDivider(paramCanvas, localFlexLine.mLeft, i1, localFlexLine.mCrossSize);
          }
          if ((n == localFlexLine.mItemCount - 1) && ((this.mShowDividerHorizontal & 0x4) > 0))
          {
            if (paramBoolean2) {
              i1 = localView.getTop() - localLayoutParams.topMargin - this.mDividerHorizontalHeight;
            } else {
              i1 = localView.getBottom() + localLayoutParams.bottomMargin;
            }
            drawHorizontalDivider(paramCanvas, localFlexLine.mLeft, i1, localFlexLine.mCrossSize);
          }
        }
      }
      if (hasDividerBeforeFlexLine(j))
      {
        if (paramBoolean1) {
          n = localFlexLine.mRight;
        } else {
          n = localFlexLine.mLeft - this.mDividerVerticalWidth;
        }
        drawVerticalDivider(paramCanvas, n, i, k);
      }
      if ((hasEndDividerAfterFlexLine(j)) && ((this.mShowDividerVertical & 0x4) > 0))
      {
        if (paramBoolean1) {
          n = localFlexLine.mLeft - this.mDividerVerticalWidth;
        } else {
          n = localFlexLine.mRight;
        }
        drawVerticalDivider(paramCanvas, n, i, k);
      }
    }
  }
  
  private void drawHorizontalDivider(Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3)
  {
    Drawable localDrawable = this.mDividerDrawableHorizontal;
    if (localDrawable == null) {
      return;
    }
    localDrawable.setBounds(paramInt1, paramInt2, paramInt3 + paramInt1, this.mDividerHorizontalHeight + paramInt2);
    this.mDividerDrawableHorizontal.draw(paramCanvas);
  }
  
  private void drawVerticalDivider(Canvas paramCanvas, int paramInt1, int paramInt2, int paramInt3)
  {
    Drawable localDrawable = this.mDividerDrawableVertical;
    if (localDrawable == null) {
      return;
    }
    localDrawable.setBounds(paramInt1, paramInt2, this.mDividerVerticalWidth + paramInt1, paramInt3 + paramInt2);
    this.mDividerDrawableVertical.draw(paramCanvas);
  }
  
  private boolean hasDividerBeforeChildAtAlongMainAxis(int paramInt1, int paramInt2)
  {
    boolean bool1 = allViewsAreGoneBefore(paramInt1, paramInt2);
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool4 = false;
    boolean bool5 = false;
    if (bool1)
    {
      if (isMainAxisDirectionHorizontal())
      {
        if ((this.mShowDividerVertical & 0x1) != 0) {
          bool5 = true;
        }
        return bool5;
      }
      bool5 = bool2;
      if ((this.mShowDividerHorizontal & 0x1) != 0) {
        bool5 = true;
      }
      return bool5;
    }
    if (isMainAxisDirectionHorizontal())
    {
      bool5 = bool3;
      if ((this.mShowDividerVertical & 0x2) != 0) {
        bool5 = true;
      }
      return bool5;
    }
    bool5 = bool4;
    if ((this.mShowDividerHorizontal & 0x2) != 0) {
      bool5 = true;
    }
    return bool5;
  }
  
  private boolean hasDividerBeforeFlexLine(int paramInt)
  {
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool4 = false;
    boolean bool5 = bool3;
    if (paramInt >= 0) {
      if (paramInt >= this.mFlexLines.size())
      {
        bool5 = bool3;
      }
      else
      {
        if (allFlexLinesAreDummyBefore(paramInt))
        {
          if (isMainAxisDirectionHorizontal())
          {
            bool5 = bool4;
            if ((this.mShowDividerHorizontal & 0x1) != 0) {
              bool5 = true;
            }
            return bool5;
          }
          bool5 = bool1;
          if ((this.mShowDividerVertical & 0x1) != 0) {
            bool5 = true;
          }
          return bool5;
        }
        if (isMainAxisDirectionHorizontal())
        {
          bool5 = bool2;
          if ((this.mShowDividerHorizontal & 0x2) != 0) {
            bool5 = true;
          }
          return bool5;
        }
        bool5 = bool3;
        if ((this.mShowDividerVertical & 0x2) != 0) {
          bool5 = true;
        }
      }
    }
    return bool5;
  }
  
  private boolean hasEndDividerAfterFlexLine(int paramInt)
  {
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = bool1;
    if (paramInt >= 0) {
      if (paramInt >= this.mFlexLines.size())
      {
        bool3 = bool1;
      }
      else
      {
        paramInt++;
        while (paramInt < this.mFlexLines.size())
        {
          if (((FlexLine)this.mFlexLines.get(paramInt)).getItemCountNotGone() > 0) {
            return false;
          }
          paramInt++;
        }
        if (isMainAxisDirectionHorizontal())
        {
          bool3 = bool2;
          if ((this.mShowDividerHorizontal & 0x4) != 0) {
            bool3 = true;
          }
          return bool3;
        }
        bool3 = bool1;
        if ((this.mShowDividerVertical & 0x4) != 0) {
          bool3 = true;
        }
      }
    }
    return bool3;
  }
  
  private void layoutHorizontal(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = getPaddingLeft();
    int j = getPaddingRight();
    int k = paramInt3 - paramInt1;
    paramInt3 = paramInt4 - paramInt2 - getPaddingBottom();
    paramInt1 = getPaddingTop();
    int m = this.mFlexLines.size();
    paramInt4 = 0;
    paramInt2 = i;
    while (paramInt4 < m)
    {
      FlexLine localFlexLine = (FlexLine)this.mFlexLines.get(paramInt4);
      int n = paramInt3;
      i = paramInt1;
      if (hasDividerBeforeFlexLine(paramInt4))
      {
        i = this.mDividerHorizontalHeight;
        n = paramInt3 - i;
        i = paramInt1 + i;
      }
      int i1 = this.mJustifyContent;
      paramInt1 = 4;
      paramInt3 = 1;
      float f2;
      float f3;
      Object localObject;
      if (i1 != 0)
      {
        if (i1 != 1)
        {
          if (i1 != 2)
          {
            if (i1 != 3)
            {
              if (i1 != 4)
              {
                if (i1 == 5)
                {
                  i1 = localFlexLine.getItemCountNotGone();
                  if (i1 != 0) {
                    f1 = (k - localFlexLine.mMainSize) / (i1 + 1);
                  } else {
                    f1 = 0.0F;
                  }
                  f2 = paramInt2 + f1;
                  f3 = k - j - f1;
                  break label466;
                }
                localObject = new StringBuilder();
                ((StringBuilder)localObject).append("Invalid justifyContent is set: ");
                ((StringBuilder)localObject).append(this.mJustifyContent);
                throw new IllegalStateException(((StringBuilder)localObject).toString());
              }
              i1 = localFlexLine.getItemCountNotGone();
              if (i1 != 0) {
                f1 = (k - localFlexLine.mMainSize) / i1;
              } else {
                f1 = 0.0F;
              }
              f2 = paramInt2;
              f3 = f1 / 2.0F;
              f2 += f3;
              f3 = k - j - f3;
              break label466;
            }
            f3 = paramInt2;
            i1 = localFlexLine.getItemCountNotGone();
            if (i1 != 1) {
              f2 = i1 - 1;
            } else {
              f2 = 1.0F;
            }
            f1 = (k - localFlexLine.mMainSize) / f2;
            f4 = k - j;
            f2 = f3;
            f3 = f4;
            break label466;
          }
          f2 = paramInt2;
          i1 = localFlexLine.mMainSize;
          f2 += (k - i1) / 2.0F;
          f3 = k - j - (k - i1) / 2.0F;
        }
        else
        {
          i1 = localFlexLine.mMainSize;
          f2 = k - i1 + j;
          f3 = i1 - paramInt2;
        }
      }
      else
      {
        f2 = paramInt2;
        f3 = k - j;
      }
      float f1 = 0.0F;
      label466:
      float f4 = Math.max(f1, 0.0F);
      for (i1 = 0; i1 < localFlexLine.mItemCount; i1++)
      {
        int i2 = localFlexLine.mFirstIndex + i1;
        View localView = getReorderedChildAt(i2);
        if (localView != null) {
          if (localView.getVisibility() == 8)
          {
            paramInt1 = 4;
          }
          else
          {
            localObject = (LayoutParams)localView.getLayoutParams();
            f1 = f2 + ((ViewGroup.MarginLayoutParams)localObject).leftMargin;
            f2 = f3 - ((ViewGroup.MarginLayoutParams)localObject).rightMargin;
            if (hasDividerBeforeChildAtAlongMainAxis(i2, i1))
            {
              paramInt1 = this.mDividerVerticalWidth;
              f5 = paramInt1;
              f3 = f1 + f5;
              f2 -= f5;
            }
            else
            {
              paramInt1 = 0;
              f3 = f1;
            }
            if ((i1 == localFlexLine.mItemCount - paramInt3) && ((this.mShowDividerVertical & 0x4) > 0)) {
              i2 = this.mDividerVerticalWidth;
            } else {
              i2 = 0;
            }
            if (this.mFlexWrap == 2)
            {
              if (paramBoolean) {
                this.mFlexboxHelper.layoutSingleChildHorizontal(localView, localFlexLine, Math.round(f2) - localView.getMeasuredWidth(), n - localView.getMeasuredHeight(), Math.round(f2), n);
              } else {
                this.mFlexboxHelper.layoutSingleChildHorizontal(localView, localFlexLine, Math.round(f3), n - localView.getMeasuredHeight(), Math.round(f3) + localView.getMeasuredWidth(), n);
              }
            }
            else if (paramBoolean) {
              this.mFlexboxHelper.layoutSingleChildHorizontal(localView, localFlexLine, Math.round(f2) - localView.getMeasuredWidth(), i, Math.round(f2), i + localView.getMeasuredHeight());
            } else {
              this.mFlexboxHelper.layoutSingleChildHorizontal(localView, localFlexLine, Math.round(f3), i, Math.round(f3) + localView.getMeasuredWidth(), i + localView.getMeasuredHeight());
            }
            int i3 = 4;
            f3 += localView.getMeasuredWidth() + f4 + ((ViewGroup.MarginLayoutParams)localObject).rightMargin;
            f1 = localView.getMeasuredWidth();
            float f5 = ((ViewGroup.MarginLayoutParams)localObject).leftMargin;
            if (paramBoolean) {
              localFlexLine.updatePositionFromView(localView, i2, 0, paramInt1, 0);
            } else {
              localFlexLine.updatePositionFromView(localView, paramInt1, 0, i2, 0);
            }
            f1 = f2 - (f1 + f4 + f5);
            f2 = f3;
            f3 = f1;
            paramInt1 = i3;
          }
        }
      }
      paramInt3 = localFlexLine.mCrossSize;
      paramInt1 = i + paramInt3;
      paramInt3 = n - paramInt3;
      paramInt4++;
    }
  }
  
  private void layoutVertical(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = getPaddingTop();
    int j = getPaddingBottom();
    int k = getPaddingRight();
    int m = getPaddingLeft();
    int n = paramInt4 - paramInt2;
    paramInt1 = paramInt3 - paramInt1 - k;
    int i1 = this.mFlexLines.size();
    paramInt3 = 0;
    paramInt2 = m;
    while (paramInt3 < i1)
    {
      FlexLine localFlexLine = (FlexLine)this.mFlexLines.get(paramInt3);
      m = paramInt2;
      paramInt4 = paramInt1;
      if (hasDividerBeforeFlexLine(paramInt3))
      {
        paramInt4 = this.mDividerVerticalWidth;
        m = paramInt2 + paramInt4;
        paramInt4 = paramInt1 - paramInt4;
      }
      paramInt1 = this.mJustifyContent;
      paramInt2 = 4;
      int i2 = 1;
      float f2;
      Object localObject;
      if (paramInt1 != 0)
      {
        if (paramInt1 != 1)
        {
          if (paramInt1 != 2)
          {
            if (paramInt1 != 3)
            {
              if (paramInt1 != 4)
              {
                if (paramInt1 == 5)
                {
                  paramInt1 = localFlexLine.getItemCountNotGone();
                  if (paramInt1 != 0) {
                    f1 = (n - localFlexLine.mMainSize) / (paramInt1 + 1);
                  } else {
                    f1 = 0.0F;
                  }
                  f2 = i + f1;
                  f3 = n - j - f1;
                  break label461;
                }
                localObject = new StringBuilder();
                ((StringBuilder)localObject).append("Invalid justifyContent is set: ");
                ((StringBuilder)localObject).append(this.mJustifyContent);
                throw new IllegalStateException(((StringBuilder)localObject).toString());
              }
              paramInt1 = localFlexLine.getItemCountNotGone();
              if (paramInt1 != 0) {
                f1 = (n - localFlexLine.mMainSize) / paramInt1;
              } else {
                f1 = 0.0F;
              }
              f2 = i;
              f3 = f1 / 2.0F;
              f2 += f3;
              f3 = n - j - f3;
              break label461;
            }
            f3 = i;
            paramInt1 = localFlexLine.getItemCountNotGone();
            if (paramInt1 != 1) {
              f2 = paramInt1 - 1;
            } else {
              f2 = 1.0F;
            }
            f1 = (n - localFlexLine.mMainSize) / f2;
            f4 = n - j;
            f2 = f3;
            f3 = f4;
            break label461;
          }
          f2 = i;
          paramInt1 = localFlexLine.mMainSize;
          f1 = (n - paramInt1) / 2.0F;
          f3 = n - j - (n - paramInt1) / 2.0F;
          f2 += f1;
          break label458;
        }
        paramInt1 = localFlexLine.mMainSize;
        f2 = n - paramInt1 + j;
        paramInt1 -= i;
      }
      else
      {
        f2 = i;
        paramInt1 = n - j;
      }
      float f3 = paramInt1;
      label458:
      float f1 = 0.0F;
      label461:
      float f4 = Math.max(f1, 0.0F);
      k = 0;
      paramInt1 = paramInt2;
      for (paramInt2 = k; paramInt2 < localFlexLine.mItemCount; paramInt2++)
      {
        k = localFlexLine.mFirstIndex + paramInt2;
        View localView = getReorderedChildAt(k);
        if (localView != null) {
          if (localView.getVisibility() == 8)
          {
            i2 = 1;
            paramInt1 = 4;
          }
          else
          {
            localObject = (LayoutParams)localView.getLayoutParams();
            f1 = f2 + ((ViewGroup.MarginLayoutParams)localObject).topMargin;
            f2 = f3 - ((ViewGroup.MarginLayoutParams)localObject).bottomMargin;
            if (hasDividerBeforeChildAtAlongMainAxis(k, paramInt2))
            {
              paramInt1 = this.mDividerHorizontalHeight;
              f5 = paramInt1;
              f3 = f1 + f5;
              f2 -= f5;
            }
            else
            {
              f3 = f1;
              paramInt1 = 0;
            }
            if ((paramInt2 == localFlexLine.mItemCount - 1) && ((this.mShowDividerHorizontal & 0x4) > 0)) {
              k = this.mDividerHorizontalHeight;
            } else {
              k = 0;
            }
            if (paramBoolean1)
            {
              if (paramBoolean2) {
                this.mFlexboxHelper.layoutSingleChildVertical(localView, localFlexLine, true, paramInt4 - localView.getMeasuredWidth(), Math.round(f2) - localView.getMeasuredHeight(), paramInt4, Math.round(f2));
              } else {
                this.mFlexboxHelper.layoutSingleChildVertical(localView, localFlexLine, true, paramInt4 - localView.getMeasuredWidth(), Math.round(f3), paramInt4, Math.round(f3) + localView.getMeasuredHeight());
              }
            }
            else if (paramBoolean2) {
              this.mFlexboxHelper.layoutSingleChildVertical(localView, localFlexLine, false, m, Math.round(f2) - localView.getMeasuredHeight(), m + localView.getMeasuredWidth(), Math.round(f2));
            } else {
              this.mFlexboxHelper.layoutSingleChildVertical(localView, localFlexLine, false, m, Math.round(f3), m + localView.getMeasuredWidth(), Math.round(f3) + localView.getMeasuredHeight());
            }
            int i3 = 4;
            i2 = 1;
            float f6 = localView.getMeasuredHeight();
            float f7 = ((ViewGroup.MarginLayoutParams)localObject).bottomMargin;
            f1 = localView.getMeasuredHeight();
            float f5 = ((ViewGroup.MarginLayoutParams)localObject).topMargin;
            if (paramBoolean2) {
              localFlexLine.updatePositionFromView(localView, 0, k, 0, paramInt1);
            } else {
              localFlexLine.updatePositionFromView(localView, 0, paramInt1, 0, k);
            }
            f3 += f6 + f4 + f7;
            f1 = f2 - (f1 + f4 + f5);
            f2 = f3;
            f3 = f1;
            paramInt1 = i3;
          }
        }
      }
      paramInt1 = localFlexLine.mCrossSize;
      paramInt2 = m + paramInt1;
      paramInt1 = paramInt4 - paramInt1;
      paramInt3++;
    }
  }
  
  private void measureHorizontal(int paramInt1, int paramInt2)
  {
    this.mFlexLines.clear();
    this.mFlexLinesResult.reset();
    this.mFlexboxHelper.calculateHorizontalFlexLines(this.mFlexLinesResult, paramInt1, paramInt2);
    this.mFlexLines = this.mFlexLinesResult.mFlexLines;
    this.mFlexboxHelper.determineMainSize(paramInt1, paramInt2);
    if (this.mAlignItems == 3)
    {
      Iterator localIterator = this.mFlexLines.iterator();
      while (localIterator.hasNext())
      {
        FlexLine localFlexLine = (FlexLine)localIterator.next();
        int i = -2147483648;
        int j = 0;
        while (j < localFlexLine.mItemCount)
        {
          View localView = getReorderedChildAt(localFlexLine.mFirstIndex + j);
          int k = i;
          if (localView != null) {
            if (localView.getVisibility() == 8)
            {
              k = i;
            }
            else
            {
              LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
              if (this.mFlexWrap != 2)
              {
                k = Math.max(localFlexLine.mMaxBaseline - localView.getBaseline(), localLayoutParams.topMargin);
                k = Math.max(i, localView.getMeasuredHeight() + k + localLayoutParams.bottomMargin);
              }
              else
              {
                k = Math.max(localFlexLine.mMaxBaseline - localView.getMeasuredHeight() + localView.getBaseline(), localLayoutParams.bottomMargin);
                k = Math.max(i, localView.getMeasuredHeight() + localLayoutParams.topMargin + k);
              }
            }
          }
          j++;
          i = k;
        }
        localFlexLine.mCrossSize = i;
      }
    }
    this.mFlexboxHelper.determineCrossSize(paramInt1, paramInt2, getPaddingTop() + getPaddingBottom());
    this.mFlexboxHelper.stretchViews();
    setMeasuredDimensionForFlex(this.mFlexDirection, paramInt1, paramInt2, this.mFlexLinesResult.mChildState);
  }
  
  private void measureVertical(int paramInt1, int paramInt2)
  {
    this.mFlexLines.clear();
    this.mFlexLinesResult.reset();
    this.mFlexboxHelper.calculateVerticalFlexLines(this.mFlexLinesResult, paramInt1, paramInt2);
    this.mFlexLines = this.mFlexLinesResult.mFlexLines;
    this.mFlexboxHelper.determineMainSize(paramInt1, paramInt2);
    this.mFlexboxHelper.determineCrossSize(paramInt1, paramInt2, getPaddingLeft() + getPaddingRight());
    this.mFlexboxHelper.stretchViews();
    setMeasuredDimensionForFlex(this.mFlexDirection, paramInt1, paramInt2, this.mFlexLinesResult.mChildState);
  }
  
  private void setMeasuredDimensionForFlex(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = View.MeasureSpec.getMode(paramInt2);
    int j = View.MeasureSpec.getSize(paramInt2);
    int k = View.MeasureSpec.getMode(paramInt3);
    int m = View.MeasureSpec.getSize(paramInt3);
    StringBuilder localStringBuilder;
    int n;
    if ((paramInt1 != 0) && (paramInt1 != 1))
    {
      if ((paramInt1 != 2) && (paramInt1 != 3))
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("Invalid flex direction: ");
        localStringBuilder.append(paramInt1);
        throw new IllegalArgumentException(localStringBuilder.toString());
      }
      paramInt1 = getLargestMainSize();
      n = getSumOfCrossSize() + getPaddingLeft() + getPaddingRight();
    }
    else
    {
      paramInt1 = getSumOfCrossSize() + getPaddingTop() + getPaddingBottom();
      n = getLargestMainSize();
    }
    if (i != -2147483648)
    {
      if (i != 0)
      {
        if (i == 1073741824)
        {
          i = paramInt4;
          if (j < n) {
            i = View.combineMeasuredStates(paramInt4, 16777216);
          }
          paramInt2 = View.resolveSizeAndState(j, paramInt2, i);
          paramInt4 = i;
        }
        else
        {
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("Unknown width mode is set: ");
          localStringBuilder.append(i);
          throw new IllegalStateException(localStringBuilder.toString());
        }
      }
      else {
        paramInt2 = View.resolveSizeAndState(n, paramInt2, paramInt4);
      }
    }
    else
    {
      if (j < n)
      {
        paramInt4 = View.combineMeasuredStates(paramInt4, 16777216);
        n = j;
      }
      paramInt2 = View.resolveSizeAndState(n, paramInt2, paramInt4);
    }
    if (k != -2147483648)
    {
      if (k != 0)
      {
        if (k == 1073741824)
        {
          n = paramInt4;
          if (m < paramInt1) {
            n = View.combineMeasuredStates(paramInt4, 256);
          }
          paramInt1 = View.resolveSizeAndState(m, paramInt3, n);
        }
        else
        {
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("Unknown height mode is set: ");
          localStringBuilder.append(k);
          throw new IllegalStateException(localStringBuilder.toString());
        }
      }
      else {
        paramInt1 = View.resolveSizeAndState(paramInt1, paramInt3, paramInt4);
      }
    }
    else
    {
      if (m < paramInt1)
      {
        paramInt4 = View.combineMeasuredStates(paramInt4, 256);
        paramInt1 = m;
      }
      paramInt1 = View.resolveSizeAndState(paramInt1, paramInt3, paramInt4);
    }
    setMeasuredDimension(paramInt2, paramInt1);
  }
  
  private void setWillNotDrawFlag()
  {
    if ((this.mDividerDrawableHorizontal == null) && (this.mDividerDrawableVertical == null)) {
      setWillNotDraw(true);
    } else {
      setWillNotDraw(false);
    }
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (this.mOrderCache == null) {
      this.mOrderCache = new SparseIntArray(getChildCount());
    }
    this.mReorderedIndices = this.mFlexboxHelper.createReorderedIndices(paramView, paramInt, paramLayoutParams, this.mOrderCache);
    super.addView(paramView, paramInt, paramLayoutParams);
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof LayoutParams;
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof LayoutParams)) {
      return new LayoutParams((LayoutParams)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new LayoutParams(paramLayoutParams);
  }
  
  public LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  public int getAlignContent()
  {
    return this.mAlignContent;
  }
  
  public int getAlignItems()
  {
    return this.mAlignItems;
  }
  
  public int getChildHeightMeasureSpec(int paramInt1, int paramInt2, int paramInt3)
  {
    return ViewGroup.getChildMeasureSpec(paramInt1, paramInt2, paramInt3);
  }
  
  public int getChildWidthMeasureSpec(int paramInt1, int paramInt2, int paramInt3)
  {
    return ViewGroup.getChildMeasureSpec(paramInt1, paramInt2, paramInt3);
  }
  
  public int getDecorationLengthCrossAxis(View paramView)
  {
    return 0;
  }
  
  public int getDecorationLengthMainAxis(View paramView, int paramInt1, int paramInt2)
  {
    boolean bool = isMainAxisDirectionHorizontal();
    int i = 0;
    int j = 0;
    if (bool)
    {
      if (hasDividerBeforeChildAtAlongMainAxis(paramInt1, paramInt2)) {
        j = 0 + this.mDividerVerticalWidth;
      }
      paramInt1 = j;
      if ((this.mShowDividerVertical & 0x4) <= 0) {
        return paramInt1;
      }
      paramInt1 = this.mDividerVerticalWidth;
    }
    else
    {
      j = i;
      if (hasDividerBeforeChildAtAlongMainAxis(paramInt1, paramInt2)) {
        j = 0 + this.mDividerHorizontalHeight;
      }
      paramInt1 = j;
      if ((this.mShowDividerHorizontal & 0x4) <= 0) {
        return paramInt1;
      }
      paramInt1 = this.mDividerHorizontalHeight;
    }
    paramInt1 = j + paramInt1;
    return paramInt1;
  }
  
  public Drawable getDividerDrawableHorizontal()
  {
    return this.mDividerDrawableHorizontal;
  }
  
  public Drawable getDividerDrawableVertical()
  {
    return this.mDividerDrawableVertical;
  }
  
  public int getFlexDirection()
  {
    return this.mFlexDirection;
  }
  
  public View getFlexItemAt(int paramInt)
  {
    return getChildAt(paramInt);
  }
  
  public int getFlexItemCount()
  {
    return getChildCount();
  }
  
  public List<FlexLine> getFlexLines()
  {
    ArrayList localArrayList = new ArrayList(this.mFlexLines.size());
    Iterator localIterator = this.mFlexLines.iterator();
    while (localIterator.hasNext())
    {
      FlexLine localFlexLine = (FlexLine)localIterator.next();
      if (localFlexLine.getItemCountNotGone() != 0) {
        localArrayList.add(localFlexLine);
      }
    }
    return localArrayList;
  }
  
  public List<FlexLine> getFlexLinesInternal()
  {
    return this.mFlexLines;
  }
  
  public int getFlexWrap()
  {
    return this.mFlexWrap;
  }
  
  public int getJustifyContent()
  {
    return this.mJustifyContent;
  }
  
  public int getLargestMainSize()
  {
    Iterator localIterator = this.mFlexLines.iterator();
    for (int i = -2147483648; localIterator.hasNext(); i = Math.max(i, ((FlexLine)localIterator.next()).mMainSize)) {}
    return i;
  }
  
  public int getMaxLine()
  {
    return this.mMaxLine;
  }
  
  public View getReorderedChildAt(int paramInt)
  {
    if (paramInt >= 0)
    {
      int[] arrayOfInt = this.mReorderedIndices;
      if (paramInt < arrayOfInt.length) {
        return getChildAt(arrayOfInt[paramInt]);
      }
    }
    return null;
  }
  
  public View getReorderedFlexItemAt(int paramInt)
  {
    return getReorderedChildAt(paramInt);
  }
  
  public int getShowDividerHorizontal()
  {
    return this.mShowDividerHorizontal;
  }
  
  public int getShowDividerVertical()
  {
    return this.mShowDividerVertical;
  }
  
  public int getSumOfCrossSize()
  {
    int i = this.mFlexLines.size();
    int j = 0;
    int k = 0;
    while (j < i)
    {
      FlexLine localFlexLine = (FlexLine)this.mFlexLines.get(j);
      int m = k;
      if (hasDividerBeforeFlexLine(j))
      {
        if (isMainAxisDirectionHorizontal()) {
          m = this.mDividerHorizontalHeight;
        } else {
          m = this.mDividerVerticalWidth;
        }
        m = k + m;
      }
      k = m;
      if (hasEndDividerAfterFlexLine(j))
      {
        if (isMainAxisDirectionHorizontal()) {
          k = this.mDividerHorizontalHeight;
        } else {
          k = this.mDividerVerticalWidth;
        }
        k = m + k;
      }
      k += localFlexLine.mCrossSize;
      j++;
    }
    return k;
  }
  
  public boolean isMainAxisDirectionHorizontal()
  {
    int i = this.mFlexDirection;
    boolean bool1 = true;
    boolean bool2 = bool1;
    if (i != 0) {
      if (i == 1) {
        bool2 = bool1;
      } else {
        bool2 = false;
      }
    }
    return bool2;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if ((this.mDividerDrawableVertical == null) && (this.mDividerDrawableHorizontal == null)) {
      return;
    }
    if ((this.mShowDividerHorizontal == 0) && (this.mShowDividerVertical == 0)) {
      return;
    }
    int i = a0.z(this);
    int j = this.mFlexDirection;
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool4 = true;
    if (j != 0)
    {
      if (j != 1)
      {
        if (j != 2)
        {
          if (j == 3)
          {
            if (i == 1) {
              bool3 = true;
            }
            bool1 = bool3;
            if (this.mFlexWrap == 2) {
              bool1 = bool3 ^ true;
            }
            drawDividersVertical(paramCanvas, bool1, true);
          }
        }
        else
        {
          if (i == 1) {
            bool3 = bool4;
          } else {
            bool3 = false;
          }
          bool1 = bool3;
          if (this.mFlexWrap == 2) {
            bool1 = bool3 ^ true;
          }
          drawDividersVertical(paramCanvas, bool1, false);
        }
      }
      else
      {
        if (i != 1) {
          bool3 = true;
        } else {
          bool3 = false;
        }
        if (this.mFlexWrap == 2) {
          bool1 = true;
        }
        drawDividersHorizontal(paramCanvas, bool3, bool1);
      }
    }
    else
    {
      if (i == 1) {
        bool3 = true;
      } else {
        bool3 = false;
      }
      bool1 = bool2;
      if (this.mFlexWrap == 2) {
        bool1 = true;
      }
      drawDividersHorizontal(paramCanvas, bool3, bool1);
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = a0.z(this);
    int j = this.mFlexDirection;
    boolean bool = false;
    paramBoolean = false;
    if (j != 0)
    {
      if (j != 1)
      {
        if (j != 2)
        {
          if (j == 3)
          {
            if (i == 1) {
              paramBoolean = true;
            }
            if (this.mFlexWrap == 2) {
              paramBoolean ^= true;
            }
            layoutVertical(paramBoolean, true, paramInt1, paramInt2, paramInt3, paramInt4);
          }
          else
          {
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("Invalid flex direction is set: ");
            localStringBuilder.append(this.mFlexDirection);
            throw new IllegalStateException(localStringBuilder.toString());
          }
        }
        else
        {
          paramBoolean = bool;
          if (i == 1) {
            paramBoolean = true;
          }
          if (this.mFlexWrap == 2) {
            paramBoolean ^= true;
          }
          layoutVertical(paramBoolean, false, paramInt1, paramInt2, paramInt3, paramInt4);
        }
      }
      else
      {
        if (i != 1) {
          paramBoolean = true;
        } else {
          paramBoolean = false;
        }
        layoutHorizontal(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      }
    }
    else
    {
      if (i == 1) {
        paramBoolean = true;
      } else {
        paramBoolean = false;
      }
      layoutHorizontal(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (this.mOrderCache == null) {
      this.mOrderCache = new SparseIntArray(getChildCount());
    }
    if (this.mFlexboxHelper.isOrderChangedFromLastMeasurement(this.mOrderCache)) {
      this.mReorderedIndices = this.mFlexboxHelper.createReorderedIndices(this.mOrderCache);
    }
    int i = this.mFlexDirection;
    if ((i != 0) && (i != 1))
    {
      if ((i != 2) && (i != 3))
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Invalid value for the flex direction is set: ");
        localStringBuilder.append(this.mFlexDirection);
        throw new IllegalStateException(localStringBuilder.toString());
      }
      measureVertical(paramInt1, paramInt2);
    }
    else
    {
      measureHorizontal(paramInt1, paramInt2);
    }
  }
  
  public void onNewFlexItemAdded(View paramView, int paramInt1, int paramInt2, FlexLine paramFlexLine)
  {
    if (hasDividerBeforeChildAtAlongMainAxis(paramInt1, paramInt2)) {
      if (isMainAxisDirectionHorizontal())
      {
        paramInt2 = paramFlexLine.mMainSize;
        paramInt1 = this.mDividerVerticalWidth;
        paramFlexLine.mMainSize = (paramInt2 + paramInt1);
        paramFlexLine.mDividerLengthInMainSize += paramInt1;
      }
      else
      {
        paramInt1 = paramFlexLine.mMainSize;
        paramInt2 = this.mDividerHorizontalHeight;
        paramFlexLine.mMainSize = (paramInt1 + paramInt2);
        paramFlexLine.mDividerLengthInMainSize += paramInt2;
      }
    }
  }
  
  public void onNewFlexLineAdded(FlexLine paramFlexLine)
  {
    int i;
    int j;
    if (isMainAxisDirectionHorizontal())
    {
      if ((this.mShowDividerVertical & 0x4) > 0)
      {
        i = paramFlexLine.mMainSize;
        j = this.mDividerVerticalWidth;
        paramFlexLine.mMainSize = (i + j);
        paramFlexLine.mDividerLengthInMainSize += j;
      }
    }
    else if ((this.mShowDividerHorizontal & 0x4) > 0)
    {
      j = paramFlexLine.mMainSize;
      i = this.mDividerHorizontalHeight;
      paramFlexLine.mMainSize = (j + i);
      paramFlexLine.mDividerLengthInMainSize += i;
    }
  }
  
  public void setAlignContent(int paramInt)
  {
    if (this.mAlignContent != paramInt)
    {
      this.mAlignContent = paramInt;
      requestLayout();
    }
  }
  
  public void setAlignItems(int paramInt)
  {
    if (this.mAlignItems != paramInt)
    {
      this.mAlignItems = paramInt;
      requestLayout();
    }
  }
  
  public void setDividerDrawable(Drawable paramDrawable)
  {
    setDividerDrawableHorizontal(paramDrawable);
    setDividerDrawableVertical(paramDrawable);
  }
  
  public void setDividerDrawableHorizontal(Drawable paramDrawable)
  {
    if (paramDrawable == this.mDividerDrawableHorizontal) {
      return;
    }
    this.mDividerDrawableHorizontal = paramDrawable;
    if (paramDrawable != null) {
      this.mDividerHorizontalHeight = paramDrawable.getIntrinsicHeight();
    } else {
      this.mDividerHorizontalHeight = 0;
    }
    setWillNotDrawFlag();
    requestLayout();
  }
  
  public void setDividerDrawableVertical(Drawable paramDrawable)
  {
    if (paramDrawable == this.mDividerDrawableVertical) {
      return;
    }
    this.mDividerDrawableVertical = paramDrawable;
    if (paramDrawable != null) {
      this.mDividerVerticalWidth = paramDrawable.getIntrinsicWidth();
    } else {
      this.mDividerVerticalWidth = 0;
    }
    setWillNotDrawFlag();
    requestLayout();
  }
  
  public void setFlexDirection(int paramInt)
  {
    if (this.mFlexDirection != paramInt)
    {
      this.mFlexDirection = paramInt;
      requestLayout();
    }
  }
  
  public void setFlexLines(List<FlexLine> paramList)
  {
    this.mFlexLines = paramList;
  }
  
  public void setFlexWrap(int paramInt)
  {
    if (this.mFlexWrap != paramInt)
    {
      this.mFlexWrap = paramInt;
      requestLayout();
    }
  }
  
  public void setJustifyContent(int paramInt)
  {
    if (this.mJustifyContent != paramInt)
    {
      this.mJustifyContent = paramInt;
      requestLayout();
    }
  }
  
  public void setMaxLine(int paramInt)
  {
    if (this.mMaxLine != paramInt)
    {
      this.mMaxLine = paramInt;
      requestLayout();
    }
  }
  
  public void setShowDivider(int paramInt)
  {
    setShowDividerVertical(paramInt);
    setShowDividerHorizontal(paramInt);
  }
  
  public void setShowDividerHorizontal(int paramInt)
  {
    if (paramInt != this.mShowDividerHorizontal)
    {
      this.mShowDividerHorizontal = paramInt;
      requestLayout();
    }
  }
  
  public void setShowDividerVertical(int paramInt)
  {
    if (paramInt != this.mShowDividerVertical)
    {
      this.mShowDividerVertical = paramInt;
      requestLayout();
    }
  }
  
  public void updateViewCache(int paramInt, View paramView) {}
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface DividerMode {}
  
  public static class LayoutParams
    extends ViewGroup.MarginLayoutParams
    implements FlexItem
  {
    public static final Parcelable.Creator<LayoutParams> CREATOR = new Parcelable.Creator()
    {
      public FlexboxLayout.LayoutParams createFromParcel(Parcel paramAnonymousParcel)
      {
        return new FlexboxLayout.LayoutParams(paramAnonymousParcel);
      }
      
      public FlexboxLayout.LayoutParams[] newArray(int paramAnonymousInt)
      {
        return new FlexboxLayout.LayoutParams[paramAnonymousInt];
      }
    };
    private int mAlignSelf = -1;
    private float mFlexBasisPercent = -1.0F;
    private float mFlexGrow = 0.0F;
    private float mFlexShrink = 1.0F;
    private int mMaxHeight = 16777215;
    private int mMaxWidth = 16777215;
    private int mMinHeight;
    private int mMinWidth;
    private int mOrder = 1;
    private boolean mWrapBefore;
    
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super();
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.FlexboxLayout_Layout);
      this.mOrder = paramContext.getInt(R.styleable.FlexboxLayout_Layout_layout_order, 1);
      this.mFlexGrow = paramContext.getFloat(R.styleable.FlexboxLayout_Layout_layout_flexGrow, 0.0F);
      this.mFlexShrink = paramContext.getFloat(R.styleable.FlexboxLayout_Layout_layout_flexShrink, 1.0F);
      this.mAlignSelf = paramContext.getInt(R.styleable.FlexboxLayout_Layout_layout_alignSelf, -1);
      this.mFlexBasisPercent = paramContext.getFraction(R.styleable.FlexboxLayout_Layout_layout_flexBasisPercent, 1, 1, -1.0F);
      this.mMinWidth = paramContext.getDimensionPixelSize(R.styleable.FlexboxLayout_Layout_layout_minWidth, 0);
      this.mMinHeight = paramContext.getDimensionPixelSize(R.styleable.FlexboxLayout_Layout_layout_minHeight, 0);
      this.mMaxWidth = paramContext.getDimensionPixelSize(R.styleable.FlexboxLayout_Layout_layout_maxWidth, 16777215);
      this.mMaxHeight = paramContext.getDimensionPixelSize(R.styleable.FlexboxLayout_Layout_layout_maxHeight, 16777215);
      this.mWrapBefore = paramContext.getBoolean(R.styleable.FlexboxLayout_Layout_layout_wrapBefore, false);
      paramContext.recycle();
    }
    
    protected LayoutParams(Parcel paramParcel)
    {
      super(0);
      this.mOrder = paramParcel.readInt();
      this.mFlexGrow = paramParcel.readFloat();
      this.mFlexShrink = paramParcel.readFloat();
      this.mAlignSelf = paramParcel.readInt();
      this.mFlexBasisPercent = paramParcel.readFloat();
      this.mMinWidth = paramParcel.readInt();
      this.mMinHeight = paramParcel.readInt();
      this.mMaxWidth = paramParcel.readInt();
      this.mMaxHeight = paramParcel.readInt();
      if (paramParcel.readByte() != 0) {
        bool = true;
      }
      this.mWrapBefore = bool;
      this.bottomMargin = paramParcel.readInt();
      this.leftMargin = paramParcel.readInt();
      this.rightMargin = paramParcel.readInt();
      this.topMargin = paramParcel.readInt();
      this.height = paramParcel.readInt();
      this.width = paramParcel.readInt();
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
    
    public LayoutParams(LayoutParams paramLayoutParams)
    {
      super();
      this.mOrder = paramLayoutParams.mOrder;
      this.mFlexGrow = paramLayoutParams.mFlexGrow;
      this.mFlexShrink = paramLayoutParams.mFlexShrink;
      this.mAlignSelf = paramLayoutParams.mAlignSelf;
      this.mFlexBasisPercent = paramLayoutParams.mFlexBasisPercent;
      this.mMinWidth = paramLayoutParams.mMinWidth;
      this.mMinHeight = paramLayoutParams.mMinHeight;
      this.mMaxWidth = paramLayoutParams.mMaxWidth;
      this.mMaxHeight = paramLayoutParams.mMaxHeight;
      this.mWrapBefore = paramLayoutParams.mWrapBefore;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public int getAlignSelf()
    {
      return this.mAlignSelf;
    }
    
    public float getFlexBasisPercent()
    {
      return this.mFlexBasisPercent;
    }
    
    public float getFlexGrow()
    {
      return this.mFlexGrow;
    }
    
    public float getFlexShrink()
    {
      return this.mFlexShrink;
    }
    
    public int getHeight()
    {
      return this.height;
    }
    
    public int getMarginBottom()
    {
      return this.bottomMargin;
    }
    
    public int getMarginLeft()
    {
      return this.leftMargin;
    }
    
    public int getMarginRight()
    {
      return this.rightMargin;
    }
    
    public int getMarginTop()
    {
      return this.topMargin;
    }
    
    public int getMaxHeight()
    {
      return this.mMaxHeight;
    }
    
    public int getMaxWidth()
    {
      return this.mMaxWidth;
    }
    
    public int getMinHeight()
    {
      return this.mMinHeight;
    }
    
    public int getMinWidth()
    {
      return this.mMinWidth;
    }
    
    public int getOrder()
    {
      return this.mOrder;
    }
    
    public int getWidth()
    {
      return this.width;
    }
    
    public boolean isWrapBefore()
    {
      return this.mWrapBefore;
    }
    
    public void setAlignSelf(int paramInt)
    {
      this.mAlignSelf = paramInt;
    }
    
    public void setFlexBasisPercent(float paramFloat)
    {
      this.mFlexBasisPercent = paramFloat;
    }
    
    public void setFlexGrow(float paramFloat)
    {
      this.mFlexGrow = paramFloat;
    }
    
    public void setFlexShrink(float paramFloat)
    {
      this.mFlexShrink = paramFloat;
    }
    
    public void setHeight(int paramInt)
    {
      this.height = paramInt;
    }
    
    public void setMaxHeight(int paramInt)
    {
      this.mMaxHeight = paramInt;
    }
    
    public void setMaxWidth(int paramInt)
    {
      this.mMaxWidth = paramInt;
    }
    
    public void setMinHeight(int paramInt)
    {
      this.mMinHeight = paramInt;
    }
    
    public void setMinWidth(int paramInt)
    {
      this.mMinWidth = paramInt;
    }
    
    public void setOrder(int paramInt)
    {
      this.mOrder = paramInt;
    }
    
    public void setWidth(int paramInt)
    {
      this.width = paramInt;
    }
    
    public void setWrapBefore(boolean paramBoolean)
    {
      this.mWrapBefore = paramBoolean;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeInt(this.mOrder);
      paramParcel.writeFloat(this.mFlexGrow);
      paramParcel.writeFloat(this.mFlexShrink);
      paramParcel.writeInt(this.mAlignSelf);
      paramParcel.writeFloat(this.mFlexBasisPercent);
      paramParcel.writeInt(this.mMinWidth);
      paramParcel.writeInt(this.mMinHeight);
      paramParcel.writeInt(this.mMaxWidth);
      paramParcel.writeInt(this.mMaxHeight);
      paramParcel.writeByte(this.mWrapBefore);
      paramParcel.writeInt(this.bottomMargin);
      paramParcel.writeInt(this.leftMargin);
      paramParcel.writeInt(this.rightMargin);
      paramParcel.writeInt(this.topMargin);
      paramParcel.writeInt(this.height);
      paramParcel.writeInt(this.width);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.flexbox.FlexboxLayout
 * JD-Core Version:    0.7.0.1
 */