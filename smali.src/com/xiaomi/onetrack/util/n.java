package com.xiaomi.onetrack.util;

import android.content.Context;
import java.lang.reflect.Method;

public class n
{
  private static final String a = "IdentifierManager";
  private static Object b;
  private static Class<?> c;
  private static Method d;
  private static Method e;
  private static Method f;
  private static Method g;
  
  static
  {
    try
    {
      Class localClass = Class.forName("com.android.id.impl.IdProviderImpl");
      c = localClass;
      b = localClass.newInstance();
      d = c.getMethod("getUDID", new Class[] { Context.class });
      e = c.getMethod("getOAID", new Class[] { Context.class });
      f = c.getMethod("getVAID", new Class[] { Context.class });
      g = c.getMethod("getAAID", new Class[] { Context.class });
    }
    catch (Exception localException)
    {
      p.a("IdentifierManager", "reflect exception!", localException);
    }
  }
  
  public static String a(Context paramContext)
  {
    return a(paramContext, d);
  }
  
  private static String a(Context paramContext, Method paramMethod)
  {
    Object localObject = b;
    if ((localObject != null) && (paramMethod != null)) {
      try
      {
        paramContext = paramMethod.invoke(localObject, new Object[] { paramContext });
        if (paramContext != null)
        {
          paramContext = (String)paramContext;
          return paramContext;
        }
      }
      catch (Exception paramContext)
      {
        p.a("IdentifierManager", "invoke exception!", paramContext);
      }
    }
    return "";
  }
  
  public static boolean a()
  {
    boolean bool;
    if ((c != null) && (b != null)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static String b(Context paramContext)
  {
    return a(paramContext, e);
  }
  
  public static String c(Context paramContext)
  {
    return a(paramContext, f);
  }
  
  public static String d(Context paramContext)
  {
    return a(paramContext, g);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.n
 * JD-Core Version:    0.7.0.1
 */