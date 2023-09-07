package com.google.android.material.appbar;

import android.view.View;
import androidx.core.view.a0;

class ViewOffsetHelper
{
  private boolean horizontalOffsetEnabled = true;
  private int layoutLeft;
  private int layoutTop;
  private int offsetLeft;
  private int offsetTop;
  private boolean verticalOffsetEnabled = true;
  private final View view;
  
  public ViewOffsetHelper(View paramView)
  {
    this.view = paramView;
  }
  
  void applyOffsets()
  {
    View localView = this.view;
    a0.W(localView, this.offsetTop - (localView.getTop() - this.layoutTop));
    localView = this.view;
    a0.V(localView, this.offsetLeft - (localView.getLeft() - this.layoutLeft));
  }
  
  public int getLayoutLeft()
  {
    return this.layoutLeft;
  }
  
  public int getLayoutTop()
  {
    return this.layoutTop;
  }
  
  public int getLeftAndRightOffset()
  {
    return this.offsetLeft;
  }
  
  public int getTopAndBottomOffset()
  {
    return this.offsetTop;
  }
  
  public boolean isHorizontalOffsetEnabled()
  {
    return this.horizontalOffsetEnabled;
  }
  
  public boolean isVerticalOffsetEnabled()
  {
    return this.verticalOffsetEnabled;
  }
  
  void onViewLayout()
  {
    this.layoutTop = this.view.getTop();
    this.layoutLeft = this.view.getLeft();
  }
  
  public void setHorizontalOffsetEnabled(boolean paramBoolean)
  {
    this.horizontalOffsetEnabled = paramBoolean;
  }
  
  public boolean setLeftAndRightOffset(int paramInt)
  {
    if ((this.horizontalOffsetEnabled) && (this.offsetLeft != paramInt))
    {
      this.offsetLeft = paramInt;
      applyOffsets();
      return true;
    }
    return false;
  }
  
  public boolean setTopAndBottomOffset(int paramInt)
  {
    if ((this.verticalOffsetEnabled) && (this.offsetTop != paramInt))
    {
      this.offsetTop = paramInt;
      applyOffsets();
      return true;
    }
    return false;
  }
  
  public void setVerticalOffsetEnabled(boolean paramBoolean)
  {
    this.verticalOffsetEnabled = paramBoolean;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.appbar.ViewOffsetHelper
 * JD-Core Version:    0.7.0.1
 */