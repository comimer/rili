package com.google.android.material.internal;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;

class ViewOverlayApi18
  implements ViewOverlayImpl
{
  private final ViewOverlay viewOverlay;
  
  ViewOverlayApi18(View paramView)
  {
    this.viewOverlay = paramView.getOverlay();
  }
  
  public void add(Drawable paramDrawable)
  {
    this.viewOverlay.add(paramDrawable);
  }
  
  public void remove(Drawable paramDrawable)
  {
    this.viewOverlay.remove(paramDrawable);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.internal.ViewOverlayApi18
 * JD-Core Version:    0.7.0.1
 */