package com.miui.maml.util;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewManager;

public abstract interface MamlViewManager
  extends ViewManager
{
  public abstract void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams);
  
  public Context getViewContext()
  {
    return null;
  }
  
  public Rect getViewLocationOnScreen()
  {
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.MamlViewManager
 * JD-Core Version:    0.7.0.1
 */