package o5;

import android.util.Log;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

public class c
{
  private static final Map<Class<?>, Class<?>> a;
  
  static
  {
    HashMap localHashMap = new HashMap();
    a = localHashMap;
    Class localClass1 = Boolean.TYPE;
    localHashMap.put(Boolean.class, localClass1);
    localHashMap.put(Byte.class, Byte.TYPE);
    localHashMap.put(Character.class, Character.TYPE);
    localHashMap.put(Short.class, Short.TYPE);
    Class localClass2 = Integer.TYPE;
    localHashMap.put(Integer.class, localClass2);
    Class localClass3 = Float.TYPE;
    localHashMap.put(Float.class, localClass3);
    Class localClass4 = Long.TYPE;
    localHashMap.put(Long.class, localClass4);
    localHashMap.put(Double.class, Double.TYPE);
    localHashMap.put(localClass1, localClass1);
    localClass1 = Byte.TYPE;
    localHashMap.put(localClass1, localClass1);
    localClass1 = Character.TYPE;
    localHashMap.put(localClass1, localClass1);
    localClass1 = Short.TYPE;
    localHashMap.put(localClass1, localClass1);
    localHashMap.put(localClass2, localClass2);
    localHashMap.put(localClass3, localClass3);
    localHashMap.put(localClass4, localClass4);
    localClass3 = Double.TYPE;
    localHashMap.put(localClass3, localClass3);
  }
  
  public static <T> T a(String paramString1, String paramString2, Object... paramVarArgs)
  {
    try
    {
      paramVarArgs = b(Class.forName(paramString1), paramString2, paramVarArgs);
      return paramVarArgs;
    }
    catch (Exception paramVarArgs)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Meet exception when call Method '");
      localStringBuilder.append(paramString2);
      localStringBuilder.append("' in ");
      localStringBuilder.append(paramString1);
      Log.w("ReflectionCalls", localStringBuilder.toString(), paramVarArgs);
    }
    return null;
  }
  
  public static <T> T b(Class<?> paramClass, String paramString, Object... paramVarArgs)
    throws SecurityException, NoSuchMethodException, IllegalArgumentException, IllegalAccessException, InvocationTargetException
  {
    return e(paramClass, paramString, h(paramVarArgs)).invoke(null, i(paramVarArgs));
  }
  
  private static boolean c(Class<?>[] paramArrayOfClass1, Class<?>[] paramArrayOfClass2)
  {
    boolean bool1 = true;
    boolean bool2 = true;
    if (paramArrayOfClass1 == null)
    {
      bool1 = bool2;
      if (paramArrayOfClass2 != null) {
        if (paramArrayOfClass2.length == 0) {
          bool1 = bool2;
        } else {
          bool1 = false;
        }
      }
      return bool1;
    }
    if (paramArrayOfClass2 == null)
    {
      if (paramArrayOfClass1.length != 0) {
        bool1 = false;
      }
      return bool1;
    }
    if (paramArrayOfClass1.length != paramArrayOfClass2.length) {
      return false;
    }
    for (int i = 0; i < paramArrayOfClass1.length; i++) {
      if (!paramArrayOfClass1[i].isAssignableFrom(paramArrayOfClass2[i]))
      {
        Map localMap = a;
        if ((!localMap.containsKey(paramArrayOfClass1[i])) || (!((Class)localMap.get(paramArrayOfClass1[i])).equals(localMap.get(paramArrayOfClass2[i])))) {
          return false;
        }
      }
    }
    return true;
  }
  
  private static Method d(Method[] paramArrayOfMethod, String paramString, Class<?>[] paramArrayOfClass)
  {
    if (paramString != null)
    {
      int i = paramArrayOfMethod.length;
      for (int j = 0; j < i; j++)
      {
        Method localMethod = paramArrayOfMethod[j];
        if ((localMethod.getName().equals(paramString)) && (c(localMethod.getParameterTypes(), paramArrayOfClass))) {
          return localMethod;
        }
      }
      return null;
    }
    throw new NullPointerException("Method name must not be null.");
  }
  
  private static Method e(Class<?> paramClass, String paramString, Class<?>... paramVarArgs)
    throws NoSuchMethodException, SecurityException
  {
    Method localMethod = d(paramClass.getDeclaredMethods(), paramString, paramVarArgs);
    if (localMethod == null)
    {
      if (paramClass.getSuperclass() != null) {
        return e(paramClass.getSuperclass(), paramString, paramVarArgs);
      }
      throw new NoSuchMethodException();
    }
    localMethod.setAccessible(true);
    return localMethod;
  }
  
  public static <T> T f(Object paramObject, String paramString)
  {
    try
    {
      paramObject = g(paramObject.getClass(), paramObject, paramString);
      return paramObject;
    }
    catch (IllegalAccessException paramObject)
    {
      paramObject.printStackTrace();
    }
    catch (NoSuchFieldException paramObject)
    {
      paramObject.printStackTrace();
    }
    return null;
  }
  
  public static <T> T g(Class<? extends Object> paramClass, Object paramObject, String paramString)
    throws NoSuchFieldException, IllegalAccessException
  {
    Field localField = null;
    Object localObject = paramClass;
    paramClass = localField;
    while (paramClass == null)
    {
      try
      {
        localField = ((Class)localObject).getDeclaredField(paramString);
        paramClass = localField;
        localField.setAccessible(true);
        paramClass = localField;
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        localObject = ((Class)localObject).getSuperclass();
      }
      if (localObject == null) {
        throw new NoSuchFieldException();
      }
    }
    paramClass.setAccessible(true);
    return paramClass.get(paramObject);
  }
  
  private static Class<?>[] h(Object... paramVarArgs)
  {
    Class[] arrayOfClass = null;
    Object localObject = arrayOfClass;
    if (paramVarArgs != null)
    {
      localObject = arrayOfClass;
      if (paramVarArgs.length > 0)
      {
        arrayOfClass = new Class[paramVarArgs.length];
        for (int i = 0; i < paramVarArgs.length; i++)
        {
          localObject = paramVarArgs[i];
          if ((localObject != null) && ((localObject instanceof a)))
          {
            arrayOfClass[i] = ((a)localObject).a;
          }
          else
          {
            if (localObject == null) {
              localObject = null;
            } else {
              localObject = localObject.getClass();
            }
            arrayOfClass[i] = localObject;
          }
        }
        localObject = arrayOfClass;
      }
    }
    return localObject;
  }
  
  private static Object[] i(Object... paramVarArgs)
  {
    if ((paramVarArgs != null) && (paramVarArgs.length > 0))
    {
      Object[] arrayOfObject = new Object[paramVarArgs.length];
      for (int i = 0;; i++)
      {
        localObject = arrayOfObject;
        if (i >= paramVarArgs.length) {
          break;
        }
        localObject = paramVarArgs[i];
        if ((localObject != null) && ((localObject instanceof a))) {
          arrayOfObject[i] = ((a)localObject).b;
        } else {
          arrayOfObject[i] = localObject;
        }
      }
    }
    Object localObject = null;
    return localObject;
  }
  
  public static <T> T j(Class<? extends Object> paramClass, String paramString)
  {
    try
    {
      paramClass = g(paramClass, null, paramString);
      return paramClass;
    }
    catch (IllegalAccessException paramClass)
    {
      paramClass.printStackTrace();
    }
    catch (NoSuchFieldException paramClass)
    {
      paramClass.printStackTrace();
    }
    return null;
  }
  
  public static class a<T>
  {
    public final Class<? extends T> a;
    public final T b;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     o5.c
 * JD-Core Version:    0.7.0.1
 */