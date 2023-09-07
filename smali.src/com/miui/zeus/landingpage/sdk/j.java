package com.miui.zeus.landingpage.sdk;

import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.util.Patterns;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class j
{
  public static int a = 1;
  public static long b = Looper.getMainLooper().getThread().getId();
  public static String c = "zeus-lp";
  
  public static String a(String paramString)
  {
    String str;
    if (b == Thread.currentThread().getId()) {
      str = "Main";
    } else if (TextUtils.isEmpty(Thread.currentThread().getName())) {
      str = String.valueOf(Thread.currentThread().getId());
    } else {
      str = Thread.currentThread().getName();
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(c);
    localStringBuilder.append("-");
    localStringBuilder.append(paramString);
    localStringBuilder.append("-");
    if (!TextUtils.isEmpty(null))
    {
      localStringBuilder.append(null);
      localStringBuilder.append("-");
    }
    if (!TextUtils.isEmpty(null))
    {
      localStringBuilder.append("[");
      localStringBuilder.append(null);
      localStringBuilder.append("]");
      localStringBuilder.append("-");
    }
    localStringBuilder.append("[");
    localStringBuilder.append(str);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
  
  public static void a(String paramString1, String paramString2)
  {
    if (a >= 3) {
      a(a(paramString1), paramString2, 3);
    }
  }
  
  public static void a(String paramString1, String paramString2, int paramInt)
  {
    if (TextUtils.isEmpty(paramString2)) {
      return;
    }
    int i = paramString2.length() / 3000;
    int j = 0;
    while (j <= i)
    {
      int k = j * 3000;
      int m = paramString2.length();
      int n = j + 1;
      m = Math.min(m, n * 3000);
      j = n;
      if (k < m)
      {
        String str = paramString2.substring(k, m);
        if (paramInt != 0)
        {
          if (paramInt != 1)
          {
            if (paramInt != 2)
            {
              if (paramInt != 3)
              {
                if (paramInt != 4)
                {
                  j = n;
                }
                else
                {
                  Log.v(paramString1, str);
                  j = n;
                }
              }
              else
              {
                Log.d(paramString1, str);
                j = n;
              }
            }
            else
            {
              Log.i(paramString1, str);
              j = n;
            }
          }
          else
          {
            Log.w(paramString1, str);
            j = n;
          }
        }
        else
        {
          Log.e(paramString1, str);
          j = n;
        }
      }
    }
  }
  
  public static void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (a >= 0)
    {
      paramString1 = a(paramString1);
      String str = Patterns.IP_ADDRESS.matcher(Log.getStackTraceString(paramThrowable)).replaceAll("*.*.*.*");
      paramThrowable = new StringBuilder();
      paramThrowable.append(paramString2);
      paramThrowable.append("\n");
      paramThrowable.append(str);
      Log.e(paramString1, paramThrowable.toString());
    }
  }
  
  public static void a(String paramString, Object... paramVarArgs)
  {
    if (a >= 3)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      int i = paramVarArgs.length;
      for (int j = 0; j < i; j++)
      {
        Object localObject = paramVarArgs[j];
        if (localObject != null) {
          localStringBuilder.append(localObject.toString());
        }
      }
      a(paramString, localStringBuilder.toString());
    }
  }
  
  public static void b(String paramString1, String paramString2)
  {
    if (a >= 0) {
      a(a(paramString1), paramString2, 0);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.zeus.landingpage.sdk.j
 * JD-Core Version:    0.7.0.1
 */