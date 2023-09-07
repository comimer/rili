package com.xiaomi.accountsdk.utils;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.util.TypedValue;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.lang.reflect.Method;

public class w
{
  public static void a(Context paramContext, WebView paramWebView)
  {
    if (paramWebView != null)
    {
      paramWebView = paramWebView.getSettings();
      int i = Build.VERSION.SDK_INT;
      if (i >= 33) {
        paramWebView.setAlgorithmicDarkeningAllowed(true);
      } else if ((i >= 29) && (i < 33)) {
        if (d(paramContext)) {
          e(paramWebView, 2);
        } else {
          e(paramWebView, 1);
        }
      }
      return;
    }
    throw new IllegalArgumentException("param webView shouldn't be null!");
  }
  
  public static float b(float paramFloat, Context paramContext)
  {
    return TypedValue.applyDimension(1, paramFloat, paramContext.getResources().getDisplayMetrics());
  }
  
  public static boolean c(Context paramContext)
  {
    boolean bool;
    if (paramContext.getResources().getConfiguration().uiMode == 32) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static boolean d(Context paramContext)
  {
    boolean bool;
    if ((paramContext.getResources().getConfiguration().uiMode & 0x30) == 32) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private static void e(WebSettings paramWebSettings, int paramInt)
  {
    try
    {
      paramWebSettings.getClass().getMethod("setForceDark", new Class[] { Integer.TYPE }).invoke(paramWebSettings, new Object[] { Integer.valueOf(paramInt) });
    }
    catch (Exception paramWebSettings)
    {
      b.h("UIUtils", "setWebSettingsForceDark reflect error", paramWebSettings);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.utils.w
 * JD-Core Version:    0.7.0.1
 */