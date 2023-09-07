package a5;

import android.content.Context;
import android.util.Log;
import java.lang.reflect.Method;

public class a
{
  private static Object a;
  private static Class<?> b;
  private static Method c;
  private static Method d;
  private static Method e;
  private static Method f;
  
  static
  {
    try
    {
      Class localClass = Class.forName("com.android.id.impl.IdProviderImpl");
      b = localClass;
      a = localClass.newInstance();
      c = b.getMethod("getUDID", new Class[] { Context.class });
      d = b.getMethod("getOAID", new Class[] { Context.class });
      e = b.getMethod("getVAID", new Class[] { Context.class });
      f = b.getMethod("getAAID", new Class[] { Context.class });
    }
    catch (Exception localException)
    {
      Log.e("IdentifierManager", "reflect exception!", localException);
    }
  }
  
  public static String a(Context paramContext)
  {
    return b(paramContext, d);
  }
  
  private static String b(Context paramContext, Method paramMethod)
  {
    Object localObject = a;
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
        Log.e("IdentifierManager", "invoke exception!", paramContext);
      }
    }
    return null;
  }
  
  public static boolean c()
  {
    boolean bool;
    if ((b != null) && (a != null)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     a5.a
 * JD-Core Version:    0.7.0.1
 */