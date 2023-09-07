package com.android.dingtalk.openauth.utils;

import android.util.Log;

public class c
{
  private static final String a = "DDOpenAuth";
  
  public static void a(String paramString)
  {
    if (DDAuthUtil.isDebug(null)) {
      Log.i("DDOpenAuth", paramString);
    }
  }
  
  public static void b(String paramString)
  {
    Log.e("DDOpenAuth", paramString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.dingtalk.openauth.utils.c
 * JD-Core Version:    0.7.0.1
 */