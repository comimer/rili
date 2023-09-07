package com.google.android.material.internal;

import android.content.Context;
import android.view.SubMenu;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.i;

public class NavigationMenu
  extends g
{
  public NavigationMenu(Context paramContext)
  {
    super(paramContext);
  }
  
  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    i locali = (i)addInternal(paramInt1, paramInt2, paramInt3, paramCharSequence);
    paramCharSequence = new NavigationSubMenu(getContext(), this, locali);
    locali.x(paramCharSequence);
    return paramCharSequence;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.internal.NavigationMenu
 * JD-Core Version:    0.7.0.1
 */