package com.xiaomi.onetrack.util;

import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.onetrack.f.a;

public class p
{
  public static boolean a = false;
  public static boolean b = false;
  public static boolean c = false;
  private static final int d = 3000;
  private static final String e = "OneTrack-Api-";
  private static final int f = 0;
  private static final int g = 1;
  private static final int h = 2;
  private static final int i = 3;
  private static final int j = 4;
  private static boolean k = false;
  private static boolean l = false;
  private static boolean m = false;
  private static boolean n = false;
  
  public static String a(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("OneTrack-Api-");
    localStringBuilder.append(paramString);
    return localStringBuilder.toString();
  }
  
  public static void a()
  {
    try
    {
      localObject = a.e();
      String str = ab.a("debug.onetrack.log");
      boolean bool1 = TextUtils.isEmpty(str);
      boolean bool2 = true;
      if ((!bool1) && (!TextUtils.isEmpty((CharSequence)localObject)) && (TextUtils.equals((CharSequence)localObject, str))) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      l = bool1;
      str = ab.a("debug.onetrack.upload");
      if ((!TextUtils.isEmpty(str)) && (!TextUtils.isEmpty((CharSequence)localObject)) && (TextUtils.equals((CharSequence)localObject, str))) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      b = bool1;
      str = ab.a("debug.onetrack.test");
      if ((!TextUtils.isEmpty(str)) && (!TextUtils.isEmpty((CharSequence)localObject)) && (TextUtils.equals((CharSequence)localObject, str))) {
        bool1 = bool2;
      } else {
        bool1 = false;
      }
      n = bool1;
      b();
      c();
    }
    catch (Exception localException)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("LogUtil static initializer: ");
      ((StringBuilder)localObject).append(localException.toString());
      Log.e("OneTrackSdk", ((StringBuilder)localObject).toString());
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("log on: ");
    ((StringBuilder)localObject).append(l);
    ((StringBuilder)localObject).append(", quick upload on: ");
    ((StringBuilder)localObject).append(b);
    Log.d("OneTrackSdk", ((StringBuilder)localObject).toString());
  }
  
  public static void a(String paramString1, String paramString2)
  {
    if (a) {
      a(a(paramString1), paramString2, 3);
    }
  }
  
  private static void a(String paramString1, String paramString2, int paramInt)
  {
    if (paramString2 == null) {
      return;
    }
    int i1 = 0;
    while (i1 <= paramString2.length() / 3000)
    {
      int i2 = i1 * 3000;
      int i3 = paramString2.length();
      int i4 = i1 + 1;
      i3 = Math.min(i3, i4 * 3000);
      i1 = i4;
      if (i2 < i3)
      {
        String str = paramString2.substring(i2, i3);
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
                  i1 = i4;
                }
                else
                {
                  Log.v(paramString1, str);
                  i1 = i4;
                }
              }
              else
              {
                Log.d(paramString1, str);
                i1 = i4;
              }
            }
            else
            {
              Log.i(paramString1, str);
              i1 = i4;
            }
          }
          else
          {
            Log.w(paramString1, str);
            i1 = i4;
          }
        }
        else
        {
          Log.e(paramString1, str);
          i1 = i4;
        }
      }
    }
  }
  
  public static void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (a) {
      Log.d(a(paramString1), paramString2, paramThrowable);
    }
  }
  
  public static void a(boolean paramBoolean)
  {
    k = paramBoolean;
    b();
  }
  
  private static void b()
  {
    boolean bool;
    if ((!k) && (!l)) {
      bool = false;
    } else {
      bool = true;
    }
    a = bool;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("updateDebugSwitch sEnable: ");
    localStringBuilder.append(a);
    localStringBuilder.append(" sDebugMode：");
    localStringBuilder.append(k);
    localStringBuilder.append(" sDebugProperty：");
    localStringBuilder.append(l);
    Log.d("OneTrackSdk", localStringBuilder.toString());
  }
  
  public static void b(String paramString1, String paramString2)
  {
    if (a) {
      a(a(paramString1), paramString2, 0);
    }
  }
  
  public static void b(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (a) {
      Log.e(a(paramString1), paramString2, paramThrowable);
    }
  }
  
  public static void b(boolean paramBoolean)
  {
    m = paramBoolean;
    c();
  }
  
  private static void c()
  {
    boolean bool;
    if ((!m) && (!n)) {
      bool = false;
    } else {
      bool = true;
    }
    c = bool;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("updateTestSwitch sTestEnable: ");
    localStringBuilder.append(c);
    localStringBuilder.append(" sTestMode：");
    localStringBuilder.append(m);
    localStringBuilder.append(" sTestProperty：");
    localStringBuilder.append(n);
    Log.d("OneTrackSdk", localStringBuilder.toString());
  }
  
  public static void c(String paramString1, String paramString2)
  {
    if (a) {
      a(a(paramString1), paramString2, 1);
    }
  }
  
  public static void c(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (a) {
      Log.w(a(paramString1), paramString2, paramThrowable);
    }
  }
  
  public static void d(String paramString1, String paramString2)
  {
    if (a) {
      a(a(paramString1), paramString2, 2);
    }
  }
  
  public static void d(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (a) {
      Log.i(a(paramString1), paramString2, paramThrowable);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.p
 * JD-Core Version:    0.7.0.1
 */