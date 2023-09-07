package com.google.android.flexbox;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.n;
import androidx.recyclerview.widget.RecyclerView.p;
import androidx.recyclerview.widget.RecyclerView.z;
import java.util.List;

public class FlexboxItemDecoration
  extends RecyclerView.n
{
  public static final int BOTH = 3;
  public static final int HORIZONTAL = 1;
  private static final int[] LIST_DIVIDER_ATTRS = { 16843284 };
  public static final int VERTICAL = 2;
  private Drawable mDrawable;
  private int mOrientation;
  
  public FlexboxItemDecoration(Context paramContext)
  {
    paramContext = paramContext.obtainStyledAttributes(LIST_DIVIDER_ATTRS);
    this.mDrawable = paramContext.getDrawable(0);
    paramContext.recycle();
    setOrientation(3);
  }
  
  private void drawHorizontalDecorations(Canvas paramCanvas, RecyclerView paramRecyclerView)
  {
    if (!needsHorizontalDecoration()) {
      return;
    }
    FlexboxLayoutManager localFlexboxLayoutManager = (FlexboxLayoutManager)paramRecyclerView.getLayoutManager();
    int i = localFlexboxLayoutManager.getFlexDirection();
    int j = paramRecyclerView.getLeft();
    int k = paramRecyclerView.getPaddingLeft();
    int m = paramRecyclerView.getRight();
    int n = paramRecyclerView.getPaddingRight();
    int i1 = paramRecyclerView.getChildCount();
    for (int i2 = 0; i2 < i1; i2++)
    {
      View localView = paramRecyclerView.getChildAt(i2);
      RecyclerView.p localp = (RecyclerView.p)localView.getLayoutParams();
      int i3;
      int i4;
      if (i == 3)
      {
        i3 = localView.getBottom() + localp.bottomMargin;
        i4 = this.mDrawable.getIntrinsicHeight() + i3;
      }
      else
      {
        i4 = localView.getTop() - localp.topMargin;
        i3 = i4 - this.mDrawable.getIntrinsicHeight();
      }
      int i7;
      if (localFlexboxLayoutManager.isMainAxisDirectionHorizontal())
      {
        if (localFlexboxLayoutManager.isLayoutRtl())
        {
          i5 = Math.min(localView.getRight() + localp.rightMargin + this.mDrawable.getIntrinsicWidth(), m + n);
          i6 = localView.getLeft() - localp.leftMargin;
          break label286;
        }
        i5 = Math.max(localView.getLeft() - localp.leftMargin - this.mDrawable.getIntrinsicWidth(), j - k);
        i7 = localView.getRight();
        i6 = localp.rightMargin;
      }
      else
      {
        i5 = localView.getLeft() - localp.leftMargin;
        i7 = localView.getRight();
        i6 = localp.rightMargin;
      }
      i7 += i6;
      int i6 = i5;
      int i5 = i7;
      label286:
      this.mDrawable.setBounds(i6, i3, i5, i4);
      this.mDrawable.draw(paramCanvas);
    }
  }
  
  private void drawVerticalDecorations(Canvas paramCanvas, RecyclerView paramRecyclerView)
  {
    if (!needsVerticalDecoration()) {
      return;
    }
    FlexboxLayoutManager localFlexboxLayoutManager = (FlexboxLayoutManager)paramRecyclerView.getLayoutManager();
    int i = paramRecyclerView.getTop();
    int j = paramRecyclerView.getPaddingTop();
    int k = paramRecyclerView.getBottom();
    int m = paramRecyclerView.getPaddingBottom();
    int n = paramRecyclerView.getChildCount();
    int i1 = localFlexboxLayoutManager.getFlexDirection();
    for (int i2 = 0; i2 < n; i2++)
    {
      View localView = paramRecyclerView.getChildAt(i2);
      RecyclerView.p localp = (RecyclerView.p)localView.getLayoutParams();
      int i3;
      int i4;
      if (localFlexboxLayoutManager.isLayoutRtl())
      {
        i3 = localView.getRight() + localp.rightMargin;
        i4 = this.mDrawable.getIntrinsicWidth() + i3;
      }
      else
      {
        i4 = localView.getLeft() - localp.leftMargin;
        i3 = i4 - this.mDrawable.getIntrinsicWidth();
      }
      int i5;
      int i6;
      if (localFlexboxLayoutManager.isMainAxisDirectionHorizontal())
      {
        i5 = localView.getTop() - localp.topMargin;
        i6 = localView.getBottom();
      }
      for (int i7 = localp.bottomMargin;; i7 = localp.bottomMargin)
      {
        i6 += i7;
        break;
        if (i1 == 3)
        {
          i6 = Math.min(localView.getBottom() + localp.bottomMargin + this.mDrawable.getIntrinsicHeight(), k + m);
          i5 = localView.getTop() - localp.topMargin;
          break;
        }
        i5 = Math.max(localView.getTop() - localp.topMargin - this.mDrawable.getIntrinsicHeight(), i - j);
        i6 = localView.getBottom();
      }
      this.mDrawable.setBounds(i3, i5, i4, i6);
      this.mDrawable.draw(paramCanvas);
    }
  }
  
  private boolean isFirstItemInLine(int paramInt, List<FlexLine> paramList, FlexboxLayoutManager paramFlexboxLayoutManager)
  {
    int i = paramFlexboxLayoutManager.getPositionToFlexLineIndex(paramInt);
    boolean bool = true;
    if ((i != -1) && (i < paramFlexboxLayoutManager.getFlexLinesInternal().size()) && (((FlexLine)paramFlexboxLayoutManager.getFlexLinesInternal().get(i)).mFirstIndex == paramInt)) {
      return true;
    }
    if (paramInt == 0) {
      return true;
    }
    if (paramList.size() == 0) {
      return false;
    }
    if (((FlexLine)paramList.get(paramList.size() - 1)).mLastIndex != paramInt - 1) {
      bool = false;
    }
    return bool;
  }
  
  private boolean needsHorizontalDecoration()
  {
    int i = this.mOrientation;
    boolean bool = true;
    if ((i & 0x1) <= 0) {
      bool = false;
    }
    return bool;
  }
  
  private boolean needsVerticalDecoration()
  {
    boolean bool;
    if ((this.mOrientation & 0x2) > 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void setOffsetAlongCrossAxis(Rect paramRect, int paramInt, FlexboxLayoutManager paramFlexboxLayoutManager, List<FlexLine> paramList)
  {
    if (paramList.size() == 0) {
      return;
    }
    if (paramFlexboxLayoutManager.getPositionToFlexLineIndex(paramInt) == 0) {
      return;
    }
    if (paramFlexboxLayoutManager.isMainAxisDirectionHorizontal())
    {
      if (!needsHorizontalDecoration())
      {
        paramRect.top = 0;
        paramRect.bottom = 0;
        return;
      }
      paramRect.top = this.mDrawable.getIntrinsicHeight();
      paramRect.bottom = 0;
    }
    else
    {
      if (!needsVerticalDecoration()) {
        return;
      }
      if (paramFlexboxLayoutManager.isLayoutRtl())
      {
        paramRect.right = this.mDrawable.getIntrinsicWidth();
        paramRect.left = 0;
      }
      else
      {
        paramRect.left = this.mDrawable.getIntrinsicWidth();
        paramRect.right = 0;
      }
    }
  }
  
  private void setOffsetAlongMainAxis(Rect paramRect, int paramInt1, FlexboxLayoutManager paramFlexboxLayoutManager, List<FlexLine> paramList, int paramInt2)
  {
    if (isFirstItemInLine(paramInt1, paramList, paramFlexboxLayoutManager)) {
      return;
    }
    if (paramFlexboxLayoutManager.isMainAxisDirectionHorizontal())
    {
      if (!needsVerticalDecoration())
      {
        paramRect.left = 0;
        paramRect.right = 0;
        return;
      }
      if (paramFlexboxLayoutManager.isLayoutRtl())
      {
        paramRect.right = this.mDrawable.getIntrinsicWidth();
        paramRect.left = 0;
      }
      else
      {
        paramRect.left = this.mDrawable.getIntrinsicWidth();
        paramRect.right = 0;
      }
    }
    else
    {
      if (!needsHorizontalDecoration())
      {
        paramRect.top = 0;
        paramRect.bottom = 0;
        return;
      }
      if (paramInt2 == 3)
      {
        paramRect.bottom = this.mDrawable.getIntrinsicHeight();
        paramRect.top = 0;
      }
      else
      {
        paramRect.top = this.mDrawable.getIntrinsicHeight();
        paramRect.bottom = 0;
      }
    }
  }
  
  public void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.z paramz)
  {
    int i = paramRecyclerView.getChildAdapterPosition(paramView);
    if (i == 0) {
      return;
    }
    if ((!needsHorizontalDecoration()) && (!needsVerticalDecoration()))
    {
      paramRect.set(0, 0, 0, 0);
      return;
    }
    paramView = (FlexboxLayoutManager)paramRecyclerView.getLayoutManager();
    paramRecyclerView = paramView.getFlexLines();
    setOffsetAlongMainAxis(paramRect, i, paramView, paramRecyclerView, paramView.getFlexDirection());
    setOffsetAlongCrossAxis(paramRect, i, paramView, paramRecyclerView);
  }
  
  public void onDraw(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.z paramz)
  {
    drawHorizontalDecorations(paramCanvas, paramRecyclerView);
    drawVerticalDecorations(paramCanvas, paramRecyclerView);
  }
  
  public void setDrawable(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      this.mDrawable = paramDrawable;
      return;
    }
    throw new IllegalArgumentException("Drawable cannot be null.");
  }
  
  public void setOrientation(int paramInt)
  {
    this.mOrientation = paramInt;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.flexbox.FlexboxItemDecoration
 * JD-Core Version:    0.7.0.1
 */