package com.miui.zeus.landingpage.sdk;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import java.lang.ref.WeakReference;

public final class h
{
  public static Context a;
  public static WeakReference<Activity> b;
  public static Handler c = new Handler(Looper.getMainLooper());
  public static Handler d;
  public static boolean e;
  public static String f;
  
  public static Context a()
  {
    Context localContext = a;
    if (localContext != null) {
      return localContext;
    }
    throw new IllegalStateException("GlobalHolder should be init before using");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.zeus.landingpage.sdk.h
 * JD-Core Version:    0.7.0.1
 */