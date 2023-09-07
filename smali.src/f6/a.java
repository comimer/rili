package f6;

import android.util.Log;

public class a
{
  public static boolean a = false;
  
  public static String a(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Analytics-Api-");
    localStringBuilder.append(paramString);
    return localStringBuilder.toString();
  }
  
  public static void b(String paramString1, String paramString2)
  {
    if (a) {
      Log.d(a(paramString1), paramString2);
    }
  }
  
  public static void c(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (a) {
      Log.d(a(paramString1), paramString2, paramThrowable);
    }
  }
  
  public static void d(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (a) {
      Log.e(a(paramString1), paramString2, paramThrowable);
    }
  }
  
  public static void e(String paramString1, String paramString2)
  {
    if (a) {
      Log.i(a(paramString1), paramString2);
    }
  }
  
  public static void f(String paramString1, String paramString2)
  {
    if (a) {
      Log.w(a(paramString1), paramString2);
    }
  }
  
  public static void g(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (a) {
      Log.w(a(paramString1), paramString2, paramThrowable);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f6.a
 * JD-Core Version:    0.7.0.1
 */