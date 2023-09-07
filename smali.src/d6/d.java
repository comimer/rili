package d6;

import android.util.Log;

public class d
{
  private static int a;
  private static boolean b = false;
  
  static
  {
    int i;
    if (b.a()) {
      i = 4;
    } else {
      i = 1;
    }
    a = i;
  }
  
  public static String a(String paramString)
  {
    if (b)
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("AD-SDK-");
      localStringBuilder.append(paramString);
      return localStringBuilder.toString();
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("AD-PLUGIN-");
    localStringBuilder.append(paramString);
    return localStringBuilder.toString();
  }
  
  public static void b(String paramString1, String paramString2)
  {
    if (a >= 2) {
      f(a(paramString1), paramString2, 2);
    }
  }
  
  public static void c(String paramString1, String paramString2)
  {
    if (a >= 0) {
      f(a(paramString1), paramString2, 0);
    }
  }
  
  public static void d(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (a >= 0) {
      Log.e(a(paramString1), paramString2, paramThrowable);
    }
  }
  
  public static void e(String paramString1, String paramString2)
  {
    if (a >= 2) {
      f(a(paramString1), paramString2, 2);
    }
  }
  
  private static void f(String paramString1, String paramString2, int paramInt)
  {
    int i = 0;
    while (i <= paramString2.length() / 3000)
    {
      int j = i * 3000;
      int k = paramString2.length();
      int m = i + 1;
      k = Math.min(k, m * 3000);
      i = m;
      if (j < k)
      {
        String str = paramString2.substring(j, k);
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
                  i = m;
                }
                else
                {
                  Log.v(paramString1, str);
                  i = m;
                }
              }
              else
              {
                Log.d(paramString1, str);
                i = m;
              }
            }
            else
            {
              Log.i(paramString1, str);
              i = m;
            }
          }
          else
          {
            Log.w(paramString1, str);
            i = m;
          }
        }
        else
        {
          Log.e(paramString1, str);
          i = m;
        }
      }
    }
  }
  
  public static void g(String paramString1, String paramString2)
  {
    if (a >= 1) {
      f(a(paramString1), paramString2, 1);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     d6.d
 * JD-Core Version:    0.7.0.1
 */