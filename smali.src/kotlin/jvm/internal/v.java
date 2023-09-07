package kotlin.jvm.internal;

import kotlin.reflect.d;
import kotlin.reflect.f;
import kotlin.reflect.g;
import kotlin.reflect.i;
import kotlin.reflect.k;
import kotlin.reflect.m;
import kotlin.reflect.n;
import kotlin.reflect.o;

public class v
{
  private static final w a;
  private static final d[] b = new d[0];
  
  static
  {
    Object localObject = null;
    try
    {
      w localw = (w)kotlin.reflect.jvm.internal.j.class.newInstance();
      localObject = localw;
    }
    catch (ClassCastException|ClassNotFoundException|InstantiationException|IllegalAccessException localClassCastException)
    {
      label13:
      break label13;
    }
    if (localObject == null) {
      localObject = new w();
    }
    a = (w)localObject;
  }
  
  public static g a(FunctionReference paramFunctionReference)
  {
    return a.a(paramFunctionReference);
  }
  
  public static d b(Class paramClass)
  {
    return a.b(paramClass);
  }
  
  public static f c(Class paramClass)
  {
    return a.c(paramClass, "");
  }
  
  public static f d(Class paramClass, String paramString)
  {
    return a.c(paramClass, paramString);
  }
  
  public static i e(MutablePropertyReference0 paramMutablePropertyReference0)
  {
    return a.d(paramMutablePropertyReference0);
  }
  
  public static kotlin.reflect.j f(MutablePropertyReference1 paramMutablePropertyReference1)
  {
    return a.e(paramMutablePropertyReference1);
  }
  
  public static k g(MutablePropertyReference2 paramMutablePropertyReference2)
  {
    return a.f(paramMutablePropertyReference2);
  }
  
  public static m h(PropertyReference0 paramPropertyReference0)
  {
    return a.g(paramPropertyReference0);
  }
  
  public static n i(PropertyReference1 paramPropertyReference1)
  {
    return a.h(paramPropertyReference1);
  }
  
  public static o j(PropertyReference2 paramPropertyReference2)
  {
    return a.i(paramPropertyReference2);
  }
  
  public static String k(p paramp)
  {
    return a.j(paramp);
  }
  
  public static String l(Lambda paramLambda)
  {
    return a.k(paramLambda);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.v
 * JD-Core Version:    0.7.0.1
 */