package com.miui.calendar.util;

import android.content.Context;
import android.util.Log;
import nb.b;
import nb.b.b;

public class z
{
  private static b.b a;
  
  public static void a(String paramString1, String paramString2)
  {
    if (j(paramString1)) {
      Log.d(paramString1, paramString2);
    }
  }
  
  public static void b(String paramString1, String paramString2)
  {
    if (!paramString1.contains("Cal:D")) {
      return;
    }
    paramString1 = paramString1.replace("Cal:D", "CalV");
    if (j(paramString1)) {
      Log.d(paramString1, paramString2);
    }
  }
  
  public static void c(String paramString1, String paramString2)
  {
    if (j(paramString1)) {
      Log.e(paramString1, paramString2);
    }
  }
  
  public static void d(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (j(paramString1)) {
      Log.e(paramString1, paramString2, paramThrowable);
    }
  }
  
  public static void e(String paramString1, String paramString2)
  {
    c(paramString1, paramString2);
    if ((l()) && (j(paramString1))) {
      try
      {
        a.b(paramString1, paramString2);
      }
      catch (Exception paramString1)
      {
        d("Cal:D", "eCached", paramString1);
      }
    }
  }
  
  public static void f(String paramString1, String paramString2, Throwable paramThrowable)
  {
    d(paramString1, paramString2, paramThrowable);
    if ((l()) && (j(paramString1))) {
      try
      {
        a.c(paramString1, paramString2, paramThrowable);
      }
      catch (Exception paramString1)
      {
        d("Cal:D", "eCached", paramString1);
      }
    }
  }
  
  public static void g(String paramString1, String paramString2)
  {
    if (j(paramString1)) {
      Log.i(paramString1, paramString2);
    }
  }
  
  public static void h(String paramString1, String paramString2)
  {
    g(paramString1, paramString2);
    if ((l()) && (j(paramString1))) {
      try
      {
        a.d(paramString1, paramString2);
      }
      catch (Exception paramString1)
      {
        d("Cal:D", "iCached", paramString1);
      }
    }
  }
  
  public static void i(Context paramContext)
  {
    a("Cal:D", "Logger init");
    if (k()) {
      a = b.a(paramContext);
    }
  }
  
  private static boolean j(String paramString)
  {
    boolean bool;
    if ((paramString.contains("CalV")) && (!Log.isLoggable("CalV", 2))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private static boolean k()
  {
    return true;
  }
  
  private static boolean l()
  {
    boolean bool;
    if (a != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static void m(String paramString1, String paramString2)
  {
    if (j(paramString1)) {
      Log.w(paramString1, paramString2);
    }
  }
  
  public static void n(String paramString1, String paramString2)
  {
    m(paramString1, paramString2);
    if ((l()) && (j(paramString1))) {
      try
      {
        a.f(paramString1, paramString2);
      }
      catch (Exception paramString1)
      {
        d("Cal:D", "wCached", paramString1);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.z
 * JD-Core Version:    0.7.0.1
 */