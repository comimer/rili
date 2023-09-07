package com.xiaomi.accountsdk.utils;

import android.app.Activity;
import android.graphics.Point;
import android.view.Display;
import android.view.WindowManager;

public class n
{
  public static Point a(Activity paramActivity)
  {
    Point localPoint = new Point();
    paramActivity.getWindowManager().getDefaultDisplay().getSize(localPoint);
    return localPoint;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.utils.n
 * JD-Core Version:    0.7.0.1
 */