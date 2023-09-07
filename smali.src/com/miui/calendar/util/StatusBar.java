package com.miui.calendar.util;

import android.app.Activity;
import android.view.View;
import android.view.Window;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class StatusBar
{
  private Activity a;
  private DarkMode b = DarkMode.INIT;
  private int c = 0;
  private Method d = null;
  
  public StatusBar(Activity paramActivity)
  {
    this.a = paramActivity;
    if (paramActivity != null)
    {
      paramActivity = paramActivity.getWindow().getClass();
      try
      {
        Class localClass = Class.forName("android.view.MiuiWindowManager$LayoutParams");
        this.c = localClass.getField("EXTRA_FLAG_STATUS_BAR_DARK_MODE").getInt(localClass);
        localClass = Integer.TYPE;
        this.d = paramActivity.getMethod("setExtraFlags", new Class[] { localClass, localClass });
      }
      catch (Exception paramActivity)
      {
        this.c = 0;
        this.d = null;
      }
    }
  }
  
  private void b(int paramInt, boolean paramBoolean)
  {
    Object localObject = this.a.getWindow();
    if (localObject == null) {
      return;
    }
    localObject = ((Window)localObject).getDecorView();
    int i = ((View)localObject).getSystemUiVisibility();
    if (paramBoolean) {
      paramInt |= i;
    } else {
      paramInt &= i;
    }
    ((View)localObject).setSystemUiVisibility(paramInt);
  }
  
  public void a(boolean paramBoolean)
  {
    DarkMode localDarkMode = this.b;
    Object localObject1 = DarkMode.ENABLE;
    if ((localDarkMode != localObject1) || (!paramBoolean))
    {
      localObject2 = DarkMode.DISABLE;
      if ((localDarkMode != localObject2) || (paramBoolean)) {}
    }
    else
    {
      return;
    }
    if (paramBoolean) {
      localObject2 = localObject1;
    }
    this.b = ((DarkMode)localObject2);
    Object localObject2 = this.d;
    if (localObject2 != null) {}
    try
    {
      localObject1 = this.a.getWindow();
      int i;
      if (paramBoolean) {
        i = this.c;
      } else {
        i = 0;
      }
      ((Method)localObject2).invoke(localObject1, new Object[] { Integer.valueOf(i), Integer.valueOf(this.c) });
    }
    catch (Exception localException)
    {
      label114:
      break label114;
    }
    localObject2 = this.a.getWindow();
    if (!paramBoolean) {
      ((Window)localObject2).addFlags(-2147483648);
    }
    b(8192, paramBoolean ^ true);
  }
  
  static enum DarkMode
  {
    static
    {
      DarkMode localDarkMode1 = new DarkMode("INIT", 0);
      INIT = localDarkMode1;
      DarkMode localDarkMode2 = new DarkMode("ENABLE", 1);
      ENABLE = localDarkMode2;
      DarkMode localDarkMode3 = new DarkMode("DISABLE", 2);
      DISABLE = localDarkMode3;
      $VALUES = new DarkMode[] { localDarkMode1, localDarkMode2, localDarkMode3 };
    }
    
    private DarkMode() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.StatusBar
 * JD-Core Version:    0.7.0.1
 */