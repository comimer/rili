package com.market.sdk.utils;

import android.text.TextUtils;
import android.util.Log;

public class b
{
  public static String a(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("MarketSdk-");
    localStringBuilder.append(paramString);
    return localStringBuilder.toString();
  }
  
  public static void b(String paramString1, String paramString2)
  {
    e(a(paramString1), paramString2, 3);
  }
  
  public static void c(String paramString1, String paramString2)
  {
    e(a(paramString1), paramString2, 0);
  }
  
  public static void d(String paramString1, String paramString2, Throwable paramThrowable)
  {
    f(a(paramString1), paramString2, paramThrowable, 0);
  }
  
  private static void e(String paramString1, String paramString2, int paramInt)
  {
    int i;
    if ((!TextUtils.isEmpty(paramString2)) && (paramString2.length() > 3000)) {
      i = 0;
    }
    while (i <= paramString2.length() / 3000)
    {
      int j = i * 3000;
      int k = paramString2.length();
      int m = i + 1;
      k = Math.min(k, m * 3000);
      i = m;
      if (j < k)
      {
        g(paramString1, paramString2.substring(j, k), paramInt);
        i = m;
        continue;
        g(paramString1, paramString2, paramInt);
      }
    }
  }
  
  private static void f(String paramString1, String paramString2, Throwable paramThrowable, int paramInt)
  {
    int i;
    if ((!TextUtils.isEmpty(paramString2)) && (paramString2.length() > 3000)) {
      i = 0;
    }
    while (i <= paramString2.length() / 3000)
    {
      int j = i * 3000;
      int k = paramString2.length();
      int m = i + 1;
      k = Math.min(k, m * 3000);
      i = m;
      if (j < k)
      {
        h(paramString1, paramString2.substring(j, k), paramThrowable, paramInt);
        i = m;
        continue;
        h(paramString1, paramString2, paramThrowable, paramInt);
      }
    }
  }
  
  private static void g(String paramString1, String paramString2, int paramInt)
  {
    String str = paramString2;
    if (paramString2 == null) {
      str = "";
    }
    if (paramInt != 0)
    {
      if (paramInt != 1)
      {
        if (paramInt != 2)
        {
          if (paramInt != 3)
          {
            if (paramInt == 4) {
              Log.v(paramString1, str);
            }
          }
          else {
            Log.d(paramString1, str);
          }
        }
        else {
          Log.i(paramString1, str);
        }
      }
      else {
        Log.w(paramString1, str);
      }
    }
    else {
      Log.e(paramString1, str);
    }
  }
  
  private static void h(String paramString1, String paramString2, Throwable paramThrowable, int paramInt)
  {
    String str = paramString2;
    if (paramString2 == null) {
      str = "";
    }
    if (paramInt != 0)
    {
      if (paramInt != 1)
      {
        if (paramInt != 2)
        {
          if (paramInt != 3)
          {
            if (paramInt == 4) {
              Log.v(paramString1, str, paramThrowable);
            }
          }
          else {
            Log.d(paramString1, str, paramThrowable);
          }
        }
        else {
          Log.i(paramString1, str, paramThrowable);
        }
      }
      else {
        Log.w(paramString1, str, paramThrowable);
      }
    }
    else {
      Log.e(paramString1, str, paramThrowable);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.utils.b
 * JD-Core Version:    0.7.0.1
 */