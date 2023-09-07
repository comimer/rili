package kotlin.jvm.internal;

import kotlin.reflect.d;
import kotlin.reflect.f;
import kotlin.reflect.g;
import kotlin.reflect.i;
import kotlin.reflect.j;
import kotlin.reflect.k;
import kotlin.reflect.n;
import kotlin.reflect.o;

public class w
{
  public g a(FunctionReference paramFunctionReference)
  {
    return paramFunctionReference;
  }
  
  public d b(Class paramClass)
  {
    return new m(paramClass);
  }
  
  public f c(Class paramClass, String paramString)
  {
    return new u(paramClass, paramString);
  }
  
  public i d(MutablePropertyReference0 paramMutablePropertyReference0)
  {
    return paramMutablePropertyReference0;
  }
  
  public j e(MutablePropertyReference1 paramMutablePropertyReference1)
  {
    return paramMutablePropertyReference1;
  }
  
  public k f(MutablePropertyReference2 paramMutablePropertyReference2)
  {
    return paramMutablePropertyReference2;
  }
  
  public kotlin.reflect.m g(PropertyReference0 paramPropertyReference0)
  {
    return paramPropertyReference0;
  }
  
  public n h(PropertyReference1 paramPropertyReference1)
  {
    return paramPropertyReference1;
  }
  
  public o i(PropertyReference2 paramPropertyReference2)
  {
    return paramPropertyReference2;
  }
  
  public String j(p paramp)
  {
    String str = paramp.getClass().getGenericInterfaces()[0].toString();
    paramp = str;
    if (str.startsWith("kotlin.jvm.functions.")) {
      paramp = str.substring(21);
    }
    return paramp;
  }
  
  public String k(Lambda paramLambda)
  {
    return j(paramLambda);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.w
 * JD-Core Version:    0.7.0.1
 */