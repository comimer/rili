package s4;

import android.util.Log;

public final class d
{
  private static e a = new c();
  
  public static void a(String paramString, Object... paramVarArgs)
  {
    a.c(null, paramString, paramVarArgs);
  }
  
  public static f b(String paramString)
  {
    c localc = new c();
    a = localc;
    return localc.a(paramString);
  }
  
  public static void c(String paramString)
  {
    a.b(paramString);
  }
  
  public static void d(String paramString)
  {
    if (Log.isLoggable("CalV", 2)) {
      a.b(paramString);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s4.d
 * JD-Core Version:    0.7.0.1
 */