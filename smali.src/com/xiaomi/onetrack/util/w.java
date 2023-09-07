package com.xiaomi.onetrack.util;

import android.os.Looper;

public class w
{
  private static final String a = "ProcessUtil";
  
  public static boolean a()
  {
    boolean bool;
    if (Looper.myLooper() == Looper.getMainLooper()) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.w
 * JD-Core Version:    0.7.0.1
 */