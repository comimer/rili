package com.google.android.material.internal;

import android.content.Context;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.r;

public class NavigationSubMenu
  extends r
{
  public NavigationSubMenu(Context paramContext, NavigationMenu paramNavigationMenu, i parami)
  {
    super(paramContext, paramNavigationMenu, parami);
  }
  
  public void onItemsChanged(boolean paramBoolean)
  {
    super.onItemsChanged(paramBoolean);
    ((g)getParentMenu()).onItemsChanged(paramBoolean);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.internal.NavigationSubMenu
 * JD-Core Version:    0.7.0.1
 */