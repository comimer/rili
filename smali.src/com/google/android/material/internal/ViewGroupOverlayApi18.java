package com.google.android.material.internal;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import android.view.ViewOverlay;

class ViewGroupOverlayApi18
  implements ViewGroupOverlayImpl
{
  private final ViewGroupOverlay viewGroupOverlay;
  
  ViewGroupOverlayApi18(ViewGroup paramViewGroup)
  {
    this.viewGroupOverlay = paramViewGroup.getOverlay();
  }
  
  public void add(Drawable paramDrawable)
  {
    this.viewGroupOverlay.add(paramDrawable);
  }
  
  public void add(View paramView)
  {
    this.viewGroupOverlay.add(paramView);
  }
  
  public void remove(Drawable paramDrawable)
  {
    this.viewGroupOverlay.remove(paramDrawable);
  }
  
  public void remove(View paramView)
  {
    this.viewGroupOverlay.remove(paramView);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.internal.ViewGroupOverlayApi18
 * JD-Core Version:    0.7.0.1
 */