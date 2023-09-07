package androidx.core.util;

import java.util.Objects;

public class c
{
  public static boolean a(Object paramObject1, Object paramObject2)
  {
    return a.a(paramObject1, paramObject2);
  }
  
  public static int b(Object... paramVarArgs)
  {
    return a.b(paramVarArgs);
  }
  
  public static <T> T c(T paramT)
  {
    paramT.getClass();
    return paramT;
  }
  
  public static <T> T d(T paramT, String paramString)
  {
    if (paramT != null) {
      return paramT;
    }
    throw new NullPointerException(paramString);
  }
  
  public static String e(Object paramObject, String paramString)
  {
    if (paramObject != null) {
      paramString = paramObject.toString();
    }
    return paramString;
  }
  
  static class a
  {
    static boolean a(Object paramObject1, Object paramObject2)
    {
      return Objects.equals(paramObject1, paramObject2);
    }
    
    static int b(Object... paramVarArgs)
    {
      return Objects.hash(paramVarArgs);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.util.c
 * JD-Core Version:    0.7.0.1
 */