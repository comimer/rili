package com.miui.maml.util;

import android.text.TextUtils;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class ReflectionHelper
{
  static HashMap<String, Class<?>> PRIMITIVE_TYPE;
  private static Map<String, Constructor> sConstructorCache;
  private static Map<String, Field> sFieldCache;
  private static Method sForNameMethod;
  private static Method sGetDeclaredConstructorMethod;
  private static Method sGetDeclaredFieldMethod;
  private static Method sGetDeclaredMethodMethod;
  private static Method sGetMethod = null;
  private static Method sInvokeMethod;
  private static Map<String, Method> sMethodCache;
  private static Method sNewInstanceMethod;
  private static Method sSetAccessibleMethod;
  private static Method sSetMethod;
  
  static
  {
    HashMap localHashMap = new HashMap();
    PRIMITIVE_TYPE = localHashMap;
    localHashMap.put("byte", Byte.TYPE);
    PRIMITIVE_TYPE.put("short", Short.TYPE);
    PRIMITIVE_TYPE.put("int", Integer.TYPE);
    PRIMITIVE_TYPE.put("long", Long.TYPE);
    PRIMITIVE_TYPE.put("char", Character.TYPE);
    PRIMITIVE_TYPE.put("boolean", Boolean.TYPE);
    PRIMITIVE_TYPE.put("float", Float.TYPE);
    PRIMITIVE_TYPE.put("double", Double.TYPE);
    PRIMITIVE_TYPE.put("byte[]", [B.class);
    PRIMITIVE_TYPE.put("short[]", [S.class);
    PRIMITIVE_TYPE.put("int[]", [I.class);
    PRIMITIVE_TYPE.put("long[]", [J.class);
    PRIMITIVE_TYPE.put("char[]", [C.class);
    PRIMITIVE_TYPE.put("boolean[]", [Z.class);
    PRIMITIVE_TYPE.put("float[]", [F.class);
    PRIMITIVE_TYPE.put("double[]", [D.class);
    sMethodCache = new HashMap();
    sFieldCache = new HashMap();
    sConstructorCache = new HashMap();
    sInvokeMethod = null;
    sGetDeclaredFieldMethod = null;
    sGetDeclaredMethodMethod = null;
    sSetAccessibleMethod = null;
    sGetDeclaredConstructorMethod = null;
    sNewInstanceMethod = null;
    sForNameMethod = null;
    sSetMethod = null;
  }
  
  private static Class forNameInternal(String paramString)
    throws NoSuchMethodException, InvocationTargetException, IllegalAccessException
  {
    if (sForNameMethod == null) {
      sForNameMethod = Class.class.getMethod("forName", new Class[] { String.class });
    }
    return (Class)sForNameMethod.invoke(null, new Object[] { paramString });
  }
  
  private static String generateConstructorCacheKey(Class<?> paramClass, Class<?>... paramVarArgs)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramClass.toString());
    localStringBuilder.append("/");
    localStringBuilder.append(Arrays.toString(paramVarArgs));
    return localStringBuilder.toString();
  }
  
  private static String generateFieldCacheKey(Class<?> paramClass, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramClass.toString());
    localStringBuilder.append("/");
    localStringBuilder.append(paramString);
    return localStringBuilder.toString();
  }
  
  private static String generateMethodCacheKey(Class<?> paramClass, String paramString, Class<?>[] paramArrayOfClass)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramClass.toString());
    localStringBuilder.append("/");
    localStringBuilder.append(paramString);
    localStringBuilder.append("/");
    localStringBuilder.append(Arrays.toString(paramArrayOfClass));
    return localStringBuilder.toString();
  }
  
  public static Class<?> getClass(String paramString)
    throws NoSuchMethodException, IllegalAccessException, InvocationTargetException
  {
    return forNameInternal(paramString);
  }
  
  public static Constructor getConstructor(Class<?> paramClass, Class<?>... paramVarArgs)
    throws NoSuchMethodException, IllegalAccessException, InvocationTargetException
  {
    String str = generateConstructorCacheKey(paramClass, paramVarArgs);
    Constructor localConstructor1 = (Constructor)sConstructorCache.get(str);
    Constructor localConstructor2 = localConstructor1;
    if (localConstructor1 == null)
    {
      localConstructor2 = getDeclaredConstructorInternal(paramClass, paramVarArgs);
      setAccessibleInternal(localConstructor2, true);
      sConstructorCache.put(str, localConstructor2);
    }
    return localConstructor2;
  }
  
  public static <T> T getConstructorInstance(Class<?> paramClass, Class<?>[] paramArrayOfClass, Object... paramVarArgs)
    throws IllegalAccessException, InvocationTargetException, NoSuchMethodException
  {
    paramClass = getConstructor(paramClass, paramArrayOfClass);
    if (paramClass == null) {
      return null;
    }
    return newInstanceInternal(paramClass, paramVarArgs);
  }
  
  private static Constructor getDeclaredConstructorInternal(Object paramObject, Class<?>... paramVarArgs)
    throws NoSuchMethodException, InvocationTargetException, IllegalAccessException
  {
    if (sGetDeclaredConstructorMethod == null) {
      sGetDeclaredConstructorMethod = Class.class.getMethod("getDeclaredConstructor", new Class[] { [Ljava.lang.Class.class });
    }
    return (Constructor)sGetDeclaredConstructorMethod.invoke(paramObject, new Object[] { paramVarArgs });
  }
  
  private static Field getDeclaredFieldInternal(Object paramObject, String paramString)
    throws NoSuchMethodException, InvocationTargetException, IllegalAccessException
  {
    if (sGetDeclaredFieldMethod == null) {
      sGetDeclaredFieldMethod = Class.class.getMethod("getDeclaredField", new Class[] { String.class });
    }
    return (Field)sGetDeclaredFieldMethod.invoke(paramObject, new Object[] { paramString });
  }
  
  private static Method getDeclaredMethodInternal(Object paramObject, String paramString, Class<?>... paramVarArgs)
    throws NoSuchMethodException, InvocationTargetException, IllegalAccessException
  {
    if (sGetDeclaredMethodMethod == null) {
      sGetDeclaredMethodMethod = Class.class.getMethod("getDeclaredMethod", new Class[] { String.class, [Ljava.lang.Class.class });
    }
    return (Method)sGetDeclaredMethodMethod.invoke(paramObject, new Object[] { paramString, paramVarArgs });
  }
  
  public static Object getEnumConstant(String paramString1, String paramString2)
  {
    if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString2))) {}
    try
    {
      paramString1 = Enum.valueOf(Class.forName(paramString1), paramString2);
      return paramString1;
    }
    catch (IllegalArgumentException|ClassNotFoundException|ClassCastException paramString1)
    {
      label28:
      break label28;
    }
    return null;
  }
  
  public static Field getField(Class<?> paramClass, String paramString)
    throws NoSuchMethodException, IllegalAccessException, InvocationTargetException
  {
    String str = generateFieldCacheKey(paramClass, paramString);
    Field localField1 = (Field)sFieldCache.get(str);
    Field localField2 = localField1;
    if (localField1 == null)
    {
      localField2 = getDeclaredFieldInternal(paramClass, paramString);
      setAccessibleInternal(localField2, true);
      sFieldCache.put(str, localField2);
    }
    return localField2;
  }
  
  public static <T> T getFieldValue(Class<?> paramClass, Object paramObject, String paramString)
    throws IllegalAccessException, NoSuchMethodException, InvocationTargetException
  {
    paramClass = getField(paramClass, paramString);
    if (paramClass == null) {
      return null;
    }
    return getInternal(paramClass, paramObject);
  }
  
  private static Object getInternal(Object paramObject1, Object paramObject2)
    throws NoSuchMethodException, InvocationTargetException, IllegalAccessException
  {
    if (sGetMethod == null) {
      sGetMethod = Field.class.getMethod("get", new Class[] { Object.class });
    }
    return sGetMethod.invoke(paramObject1, new Object[] { paramObject2 });
  }
  
  public static Method getMethod(Class<?> paramClass, String paramString, Class<?>... paramVarArgs)
    throws NoSuchMethodException, IllegalAccessException, InvocationTargetException
  {
    String str = generateMethodCacheKey(paramClass, paramString, paramVarArgs);
    Method localMethod1 = (Method)sMethodCache.get(str);
    Method localMethod2 = localMethod1;
    if (localMethod1 == null)
    {
      localMethod2 = getDeclaredMethodInternal(paramClass, paramString, paramVarArgs);
      setAccessibleInternal(localMethod2, true);
      sMethodCache.put(str, localMethod2);
    }
    return localMethod2;
  }
  
  public static void invoke(Class<?> paramClass, Object paramObject, String paramString, Class<?>[] paramArrayOfClass, Object... paramVarArgs)
    throws NoSuchMethodException, IllegalAccessException, InvocationTargetException
  {
    paramClass = getMethod(paramClass, paramString, paramArrayOfClass);
    if (paramClass != null) {
      invokeInternal(paramClass, new Object[] { paramObject, paramVarArgs });
    }
  }
  
  private static Object invokeInternal(Object paramObject, Object... paramVarArgs)
    throws NoSuchMethodException, InvocationTargetException, IllegalAccessException
  {
    if (sInvokeMethod == null) {
      sInvokeMethod = Method.class.getMethod("invoke", new Class[] { Object.class, [Ljava.lang.Object.class });
    }
    return sInvokeMethod.invoke(paramObject, paramVarArgs);
  }
  
  public static <T> T invokeObject(Class<?> paramClass, Object paramObject, String paramString, Class<?>[] paramArrayOfClass, Object... paramVarArgs)
    throws NoSuchMethodException, IllegalAccessException, InvocationTargetException
  {
    paramClass = getMethod(paramClass, paramString, paramArrayOfClass);
    if (paramClass != null) {
      return invokeInternal(paramClass, new Object[] { paramObject, paramVarArgs });
    }
    return null;
  }
  
  private static <T> T newInstanceInternal(Object paramObject, Object... paramVarArgs)
    throws NoSuchMethodException, InvocationTargetException, IllegalAccessException
  {
    if (sNewInstanceMethod == null) {
      sNewInstanceMethod = Constructor.class.getMethod("newInstance", new Class[] { [Ljava.lang.Object.class });
    }
    return sNewInstanceMethod.invoke(paramObject, new Object[] { paramVarArgs });
  }
  
  private static void setAccessibleInternal(Object paramObject, boolean paramBoolean)
    throws NoSuchMethodException, InvocationTargetException, IllegalAccessException
  {
    if (sSetAccessibleMethod == null) {
      sSetAccessibleMethod = AccessibleObject.class.getMethod("setAccessible", new Class[] { Boolean.TYPE });
    }
    sSetAccessibleMethod.invoke(paramObject, new Object[] { Boolean.valueOf(paramBoolean) });
  }
  
  public static void setFieldValue(Class<?> paramClass, Object paramObject1, String paramString, Object paramObject2)
    throws IllegalAccessException, NoSuchMethodException, InvocationTargetException
  {
    paramClass = getField(paramClass, paramString);
    if (paramClass != null) {
      setInternal(paramClass, paramObject1, paramObject2);
    }
  }
  
  private static void setInternal(Object paramObject1, Object paramObject2, Object paramObject3)
    throws NoSuchMethodException, InvocationTargetException, IllegalAccessException
  {
    if (sSetMethod == null) {
      sSetMethod = Field.class.getMethod("set", new Class[] { Object.class, Object.class });
    }
    sSetMethod.invoke(paramObject1, new Object[] { paramObject2, paramObject3 });
  }
  
  public static Class<?> strTypeToClass(String paramString)
  {
    try
    {
      paramString = strTypeToClassThrows(paramString);
      return paramString;
    }
    catch (ClassNotFoundException paramString) {}
    return null;
  }
  
  private static Class<?> strTypeToClassThrows(String paramString)
    throws ClassNotFoundException
  {
    if (PRIMITIVE_TYPE.containsKey(paramString)) {
      return (Class)PRIMITIVE_TYPE.get(paramString);
    }
    if (!paramString.contains("."))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("java.lang.");
      localStringBuilder.append(paramString);
      paramString = localStringBuilder.toString();
    }
    return Class.forName(paramString);
  }
  
  public static Class<?>[] strTypesToClass(String[] paramArrayOfString)
    throws ClassNotFoundException
  {
    if (paramArrayOfString == null) {
      return null;
    }
    Class[] arrayOfClass = new Class[paramArrayOfString.length];
    for (int i = 0; i < paramArrayOfString.length; i++) {
      arrayOfClass[i] = strTypeToClassThrows(paramArrayOfString[i]);
    }
    return arrayOfClass;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.ReflectionHelper
 * JD-Core Version:    0.7.0.1
 */