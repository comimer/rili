package com.android.dingtalk.openauth.web;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import com.android.dingtalk.openauth.R.id;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public abstract class BaseCommonActivity
  extends Activity
{
  private static void a(Activity paramActivity, boolean paramBoolean)
  {
    a.a(paramActivity, paramBoolean);
  }
  
  private static boolean a(Window paramWindow)
  {
    boolean bool = true;
    if (paramWindow != null)
    {
      Class localClass1 = paramWindow.getClass();
      try
      {
        Class localClass2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
        int i = localClass2.getField("EXTRA_FLAG_STATUS_BAR_DARK_MODE").getInt(localClass2);
        localClass2 = Integer.TYPE;
        localClass1.getMethod("setExtraFlags", new Class[] { localClass2, localClass2 }).invoke(paramWindow, new Object[] { Integer.valueOf(0), Integer.valueOf(i) });
      }
      catch (Exception paramWindow)
      {
        paramWindow.printStackTrace();
      }
    }
    else
    {
      bool = false;
    }
    return bool;
  }
  
  private static boolean b(Window paramWindow)
  {
    boolean bool;
    if (paramWindow != null) {
      try
      {
        paramWindow = paramWindow.getDecorView();
        paramWindow.setSystemUiVisibility(paramWindow.getSystemUiVisibility() | 0x2000);
        bool = true;
      }
      catch (Exception paramWindow)
      {
        paramWindow.printStackTrace();
      }
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static boolean c()
  {
    try
    {
      boolean bool = Build.BRAND.toLowerCase().equals("xiaomi");
      return bool;
    }
    finally {}
    return false;
  }
  
  public static boolean d()
  {
    try
    {
      boolean bool = Build.BRAND.toLowerCase().equals("meizu");
      return bool;
    }
    finally {}
    return false;
  }
  
  private int e()
  {
    return R.id.ui_common_base_ui_activity_status_bar_placeholder;
  }
  
  private boolean f()
  {
    String str = Build.MANUFACTURER;
    if ("Everest".equals(str)) {
      return false;
    }
    return !"HTC".equals(str);
  }
  
  public abstract int a();
  
  protected void a(View paramView)
  {
    if (f())
    {
      boolean bool = b(getWindow());
      if (c()) {
        a(getWindow());
      } else if (d()) {
        a(this, false);
      }
      if ((bool) && (getWindow() != null) && (getWindow().getDecorView() != null))
      {
        getWindow().clearFlags(67108864);
        getWindow().addFlags(-2147483648);
        getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility() | 0x400 | 0x100);
        getWindow().setStatusBarColor(0);
        if (paramView != null)
        {
          paramView.setVisibility(0);
          paramView.setBackgroundColor(-1);
          ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
          localLayoutParams.height = b();
          paramView.setLayoutParams(localLayoutParams);
        }
      }
    }
  }
  
  public int b()
  {
    try
    {
      Class localClass = Class.forName("com.android.internal.R$dimen");
      Object localObject = localClass.newInstance();
      int i = Integer.parseInt(String.valueOf(localClass.getField("status_bar_height").get(localObject)));
      i = getResources().getDimensionPixelSize(i);
      return i;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return 0;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(a());
    a(findViewById(e()));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.dingtalk.openauth.web.BaseCommonActivity
 * JD-Core Version:    0.7.0.1
 */