package kotlin.jvm.internal;

import java.util.Arrays;
import kotlin.KotlinNullPointerException;
import kotlin.UninitializedPropertyAccessException;

public class r
{
  public static boolean a(Object paramObject1, Object paramObject2)
  {
    boolean bool;
    if (paramObject1 == null)
    {
      if (paramObject2 == null) {
        bool = true;
      } else {
        bool = false;
      }
    }
    else {
      bool = paramObject1.equals(paramObject2);
    }
    return bool;
  }
  
  public static void b(Object paramObject, String paramString)
  {
    if (paramObject != null) {
      return;
    }
    paramObject = new StringBuilder();
    paramObject.append(paramString);
    paramObject.append(" must not be null");
    throw ((IllegalStateException)m(new IllegalStateException(paramObject.toString())));
  }
  
  public static void c(Object paramObject)
  {
    if (paramObject == null) {
      p();
    }
  }
  
  public static void d(Object paramObject, String paramString)
  {
    if (paramObject == null) {
      q(paramString);
    }
  }
  
  public static void e(Object paramObject, String paramString)
  {
    if (paramObject != null) {
      return;
    }
    paramObject = new StringBuilder();
    paramObject.append(paramString);
    paramObject.append(" must not be null");
    throw ((NullPointerException)m(new NullPointerException(paramObject.toString())));
  }
  
  public static void f(Object paramObject, String paramString)
  {
    if (paramObject == null) {
      t(paramString);
    }
  }
  
  public static void g(Object paramObject, String paramString)
  {
    if (paramObject == null) {
      s(paramString);
    }
  }
  
  public static int h(int paramInt1, int paramInt2)
  {
    if (paramInt1 < paramInt2) {
      paramInt1 = -1;
    } else if (paramInt1 == paramInt2) {
      paramInt1 = 0;
    } else {
      paramInt1 = 1;
    }
    return paramInt1;
  }
  
  public static int i(long paramLong1, long paramLong2)
  {
    boolean bool = paramLong1 < paramLong2;
    int i;
    if (bool) {
      i = -1;
    } else if (i == 0) {
      i = 0;
    } else {
      i = 1;
    }
    return i;
  }
  
  private static String j(String paramString)
  {
    Object localObject = java.lang.Thread.currentThread().getStackTrace()[4];
    String str1 = ((StackTraceElement)localObject).getClassName();
    String str2 = ((StackTraceElement)localObject).getMethodName();
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Parameter specified as non-null is null: method ");
    ((StringBuilder)localObject).append(str1);
    ((StringBuilder)localObject).append(".");
    ((StringBuilder)localObject).append(str2);
    ((StringBuilder)localObject).append(", parameter ");
    ((StringBuilder)localObject).append(paramString);
    return ((StringBuilder)localObject).toString();
  }
  
  public static void k() {}
  
  public static void l(int paramInt, String paramString) {}
  
  private static <T extends Throwable> T m(T paramT)
  {
    return n(paramT, r.class.getName());
  }
  
  static <T extends Throwable> T n(T paramT, String paramString)
  {
    StackTraceElement[] arrayOfStackTraceElement = paramT.getStackTrace();
    int i = arrayOfStackTraceElement.length;
    int j = -1;
    for (int k = 0; k < i; k++) {
      if (paramString.equals(arrayOfStackTraceElement[k].getClassName())) {
        j = k;
      }
    }
    paramT.setStackTrace((StackTraceElement[])Arrays.copyOfRange(arrayOfStackTraceElement, j + 1, i));
    return paramT;
  }
  
  public static String o(String paramString, Object paramObject)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    localStringBuilder.append(paramObject);
    return localStringBuilder.toString();
  }
  
  public static void p()
  {
    throw ((NullPointerException)m(new NullPointerException()));
  }
  
  public static void q(String paramString)
  {
    throw ((NullPointerException)m(new NullPointerException(paramString)));
  }
  
  public static void r()
  {
    throw ((KotlinNullPointerException)m(new KotlinNullPointerException()));
  }
  
  private static void s(String paramString)
  {
    throw ((IllegalArgumentException)m(new IllegalArgumentException(j(paramString))));
  }
  
  private static void t(String paramString)
  {
    throw ((NullPointerException)m(new NullPointerException(j(paramString))));
  }
  
  public static void u()
  {
    v("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
  }
  
  public static void v(String paramString)
  {
    throw new UnsupportedOperationException(paramString);
  }
  
  public static void w(String paramString)
  {
    throw ((UninitializedPropertyAccessException)m(new UninitializedPropertyAccessException(paramString)));
  }
  
  public static void x(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("lateinit property ");
    localStringBuilder.append(paramString);
    localStringBuilder.append(" has not been initialized");
    w(localStringBuilder.toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.r
 * JD-Core Version:    0.7.0.1
 */