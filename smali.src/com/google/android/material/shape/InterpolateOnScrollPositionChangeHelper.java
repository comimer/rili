package com.google.android.material.shape;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.widget.ScrollView;

public class InterpolateOnScrollPositionChangeHelper
{
  private final int[] containerLocation = new int[2];
  private ScrollView containingScrollView;
  private MaterialShapeDrawable materialShapeDrawable;
  private final ViewTreeObserver.OnScrollChangedListener scrollChangedListener = new ViewTreeObserver.OnScrollChangedListener()
  {
    public void onScrollChanged()
    {
      InterpolateOnScrollPositionChangeHelper.this.updateInterpolationForScreenPosition();
    }
  };
  private final int[] scrollLocation = new int[2];
  private View shapedView;
  
  public InterpolateOnScrollPositionChangeHelper(View paramView, MaterialShapeDrawable paramMaterialShapeDrawable, ScrollView paramScrollView)
  {
    this.shapedView = paramView;
    this.materialShapeDrawable = paramMaterialShapeDrawable;
    this.containingScrollView = paramScrollView;
  }
  
  public void setContainingScrollView(ScrollView paramScrollView)
  {
    this.containingScrollView = paramScrollView;
  }
  
  public void setMaterialShapeDrawable(MaterialShapeDrawable paramMaterialShapeDrawable)
  {
    this.materialShapeDrawable = paramMaterialShapeDrawable;
  }
  
  public void startListeningForScrollChanges(ViewTreeObserver paramViewTreeObserver)
  {
    paramViewTreeObserver.addOnScrollChangedListener(this.scrollChangedListener);
  }
  
  public void stopListeningForScrollChanges(ViewTreeObserver paramViewTreeObserver)
  {
    paramViewTreeObserver.removeOnScrollChangedListener(this.scrollChangedListener);
  }
  
  public void updateInterpolationForScreenPosition()
  {
    ScrollView localScrollView = this.containingScrollView;
    if (localScrollView == null) {
      return;
    }
    if (localScrollView.getChildCount() != 0)
    {
      this.containingScrollView.getLocationInWindow(this.scrollLocation);
      this.containingScrollView.getChildAt(0).getLocationInWindow(this.containerLocation);
      int i = this.shapedView.getTop() - this.scrollLocation[1] + this.containerLocation[1];
      int j = this.shapedView.getHeight();
      int k = this.containingScrollView.getHeight();
      if (i < 0)
      {
        this.materialShapeDrawable.setInterpolation(Math.max(0.0F, Math.min(1.0F, i / j + 1.0F)));
        this.shapedView.invalidate();
      }
      else
      {
        i += j;
        if (i > k)
        {
          this.materialShapeDrawable.setInterpolation(Math.max(0.0F, Math.min(1.0F, 1.0F - (i - k) / j)));
          this.shapedView.invalidate();
        }
        else if (this.materialShapeDrawable.getInterpolation() != 1.0F)
        {
          this.materialShapeDrawable.setInterpolation(1.0F);
          this.shapedView.invalidate();
        }
      }
      return;
    }
    throw new IllegalStateException("Scroll bar must contain a child to calculate interpolation.");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.shape.InterpolateOnScrollPositionChangeHelper
 * JD-Core Version:    0.7.0.1
 */