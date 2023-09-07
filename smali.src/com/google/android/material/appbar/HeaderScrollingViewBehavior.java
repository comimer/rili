package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout.f;
import androidx.core.view.a0;
import androidx.core.view.e;
import androidx.core.view.e1;
import java.util.List;
import v.a;

abstract class HeaderScrollingViewBehavior
  extends ViewOffsetBehavior<View>
{
  private int overlayTop;
  final Rect tempRect1 = new Rect();
  final Rect tempRect2 = new Rect();
  private int verticalLayoutGap = 0;
  
  public HeaderScrollingViewBehavior() {}
  
  public HeaderScrollingViewBehavior(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private static int resolveGravity(int paramInt)
  {
    int i = paramInt;
    if (paramInt == 0) {
      i = 8388659;
    }
    return i;
  }
  
  abstract View findFirstDependency(List<View> paramList);
  
  final int getOverlapPixelsForOffset(View paramView)
  {
    int i = this.overlayTop;
    int j = 0;
    if (i != 0)
    {
      float f = getOverlapRatioForOffset(paramView);
      j = this.overlayTop;
      j = a.b((int)(f * j), 0, j);
    }
    return j;
  }
  
  float getOverlapRatioForOffset(View paramView)
  {
    return 1.0F;
  }
  
  public final int getOverlayTop()
  {
    return this.overlayTop;
  }
  
  int getScrollRange(View paramView)
  {
    return paramView.getMeasuredHeight();
  }
  
  final int getVerticalLayoutGap()
  {
    return this.verticalLayoutGap;
  }
  
  protected void layoutChild(CoordinatorLayout paramCoordinatorLayout, View paramView, int paramInt)
  {
    View localView = findFirstDependency(paramCoordinatorLayout.getDependencies(paramView));
    if (localView != null)
    {
      CoordinatorLayout.f localf = (CoordinatorLayout.f)paramView.getLayoutParams();
      Rect localRect = this.tempRect1;
      localRect.set(paramCoordinatorLayout.getPaddingLeft() + localf.leftMargin, localView.getBottom() + localf.topMargin, paramCoordinatorLayout.getWidth() - paramCoordinatorLayout.getPaddingRight() - localf.rightMargin, paramCoordinatorLayout.getHeight() + localView.getBottom() - paramCoordinatorLayout.getPaddingBottom() - localf.bottomMargin);
      e1 locale1 = paramCoordinatorLayout.getLastWindowInsets();
      if ((locale1 != null) && (a0.w(paramCoordinatorLayout)) && (!a0.w(paramView)))
      {
        localRect.left += locale1.i();
        localRect.right -= locale1.j();
      }
      paramCoordinatorLayout = this.tempRect2;
      e.a(resolveGravity(localf.c), paramView.getMeasuredWidth(), paramView.getMeasuredHeight(), localRect, paramCoordinatorLayout, paramInt);
      paramInt = getOverlapPixelsForOffset(localView);
      paramView.layout(paramCoordinatorLayout.left, paramCoordinatorLayout.top - paramInt, paramCoordinatorLayout.right, paramCoordinatorLayout.bottom - paramInt);
      this.verticalLayoutGap = (paramCoordinatorLayout.top - localView.getBottom());
    }
    else
    {
      super.layoutChild(paramCoordinatorLayout, paramView, paramInt);
      this.verticalLayoutGap = 0;
    }
  }
  
  public boolean onMeasureChild(CoordinatorLayout paramCoordinatorLayout, View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = paramView.getLayoutParams().height;
    if ((i == -1) || (i == -2))
    {
      View localView = findFirstDependency(paramCoordinatorLayout.getDependencies(paramView));
      if (localView != null)
      {
        int j = View.MeasureSpec.getSize(paramInt3);
        if (j > 0)
        {
          paramInt3 = j;
          if (a0.w(localView))
          {
            e1 locale1 = paramCoordinatorLayout.getLastWindowInsets();
            paramInt3 = j;
            if (locale1 != null) {
              paramInt3 = j + (locale1.k() + locale1.h());
            }
          }
        }
        else
        {
          paramInt3 = paramCoordinatorLayout.getHeight();
        }
        paramInt3 += getScrollRange(localView);
        j = localView.getMeasuredHeight();
        if (shouldHeaderOverlapScrollingChild()) {
          paramView.setTranslationY(-j);
        } else {
          paramInt3 -= j;
        }
        if (i == -1) {
          j = 1073741824;
        } else {
          j = -2147483648;
        }
        paramCoordinatorLayout.onMeasureChild(paramView, paramInt1, paramInt2, View.MeasureSpec.makeMeasureSpec(paramInt3, j), paramInt4);
        return true;
      }
    }
    return false;
  }
  
  public final void setOverlayTop(int paramInt)
  {
    this.overlayTop = paramInt;
  }
  
  protected boolean shouldHeaderOverlapScrollingChild()
  {
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.appbar.HeaderScrollingViewBehavior
 * JD-Core Version:    0.7.0.1
 */