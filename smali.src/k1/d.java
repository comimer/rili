package k1;

import com.airbnb.lottie.f0;

public class d
{
  private static f0 a = new c();
  
  public static void a(String paramString)
  {
    a.debug(paramString);
  }
  
  public static void b(String paramString, Throwable paramThrowable)
  {
    a.error(paramString, paramThrowable);
  }
  
  public static void c(String paramString)
  {
    a.b(paramString);
  }
  
  public static void d(String paramString, Throwable paramThrowable)
  {
    a.a(paramString, paramThrowable);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     k1.d
 * JD-Core Version:    0.7.0.1
 */