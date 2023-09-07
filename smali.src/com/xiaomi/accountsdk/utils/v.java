package com.xiaomi.accountsdk.utils;

import android.content.Context;
import android.view.accessibility.AccessibilityManager;

public class v
{
  public static boolean a(Context paramContext)
  {
    paramContext = (AccessibilityManager)paramContext.getSystemService("accessibility");
    boolean bool;
    if ((paramContext.isEnabled()) && (paramContext.isTouchExplorationEnabled())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.utils.v
 * JD-Core Version:    0.7.0.1
 */