package com.miui.privacypolicy;

import android.content.Context;
import android.os.Looper;
import android.util.Log;

public class d
{
  private static void a(String paramString)
  {
    if (Looper.myLooper() != Looper.getMainLooper()) {
      return;
    }
    Log.w("Privacy_PrivacyManager", paramString);
    throw new IllegalStateException(paramString);
  }
  
  public static int b(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    try
    {
      a("can not request privacy agree in main thread!");
      boolean bool = NetUtils.b;
      if (bool) {
        return -4;
      }
      long l = System.currentTimeMillis();
      int i = c.a(paramContext.getApplicationContext(), paramString1, paramString2, String.valueOf(l), paramString3, paramString4);
      return i;
    }
    finally {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.privacypolicy.d
 * JD-Core Version:    0.7.0.1
 */