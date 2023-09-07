package t1;

import android.util.Log;

public class b
{
  public static void a(String paramString1, String paramString2)
  {
    if (e(paramString1)) {
      Log.d(paramString1, paramString2);
    }
  }
  
  public static void b(String paramString1, String paramString2)
  {
    if (e(paramString1)) {
      Log.e(paramString1, paramString2);
    }
  }
  
  public static void c(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (e(paramString1)) {
      Log.e(paramString1, paramString2, paramThrowable);
    }
  }
  
  public static void d(String paramString1, String paramString2)
  {
    if (e(paramString1)) {
      Log.i(paramString1, paramString2);
    }
  }
  
  private static boolean e(String paramString)
  {
    if (paramString.contains("CalV")) {
      return Log.isLoggable("CalV", 2);
    }
    return true;
  }
  
  public static void f(String paramString1, String paramString2)
  {
    if (e(paramString1)) {
      Log.w(paramString1, paramString2);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     t1.b
 * JD-Core Version:    0.7.0.1
 */