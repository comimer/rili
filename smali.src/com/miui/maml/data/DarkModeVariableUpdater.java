package com.miui.maml.data;

import android.content.Context;
import android.content.Intent;
import com.miui.maml.NotifierManager;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;

public class DarkModeVariableUpdater
  extends NotifierVariableUpdater
{
  private IndexedVariable mDarkMode = new IndexedVariable("__darkmode", getRoot().getContext().mVariables, true);
  private IndexedVariable mDarkWallpaperMode = new IndexedVariable("__darkmode_wallpaper", getRoot().getContext().mVariables, true);
  
  public DarkModeVariableUpdater(VariableUpdaterManager paramVariableUpdaterManager)
  {
    super(paramVariableUpdaterManager, NotifierManager.TYPE_DARK_MODE);
  }
  
  public void onNotify(Context paramContext, Intent paramIntent, Object paramObject)
  {
    if ((paramObject instanceof Integer))
    {
      int i = ((Integer)paramObject).intValue();
      if ((i & 0x1) == 1) {
        this.mDarkMode.set(Boolean.TRUE);
      } else {
        this.mDarkMode.set(Boolean.FALSE);
      }
      if ((i & 0x3) == 3)
      {
        this.mDarkWallpaperMode.set(Boolean.TRUE);
        getRoot().setDarkWallpaperMode(true);
      }
      else
      {
        this.mDarkWallpaperMode.set(Boolean.FALSE);
        getRoot().setDarkWallpaperMode(false);
      }
      getRoot().requestUpdate();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.DarkModeVariableUpdater
 * JD-Core Version:    0.7.0.1
 */