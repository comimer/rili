package com.google.gson.internal.reflect;

import com.google.gson.JsonIOException;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

final class UnsafeReflectionAccessor
  extends ReflectionAccessor
{
  private static Class unsafeClass;
  private final Field overrideField = getOverrideField();
  private final Object theUnsafe = getUnsafeInstance();
  
  private static Field getOverrideField()
  {
    try
    {
      Field localField = AccessibleObject.class.getDeclaredField("override");
      return localField;
    }
    catch (NoSuchFieldException localNoSuchFieldException) {}
    return null;
  }
  
  private static Object getUnsafeInstance()
  {
    Object localObject1 = null;
    try
    {
      Object localObject2 = Class.forName("sun.misc.Unsafe");
      unsafeClass = (Class)localObject2;
      localObject2 = ((Class)localObject2).getDeclaredField("theUnsafe");
      ((AccessibleObject)localObject2).setAccessible(true);
      localObject2 = ((Field)localObject2).get(null);
      localObject1 = localObject2;
    }
    catch (Exception localException)
    {
      label32:
      break label32;
    }
    return localObject1;
  }
  
  public void makeAccessible(AccessibleObject paramAccessibleObject)
  {
    if (!makeAccessibleWithUnsafe(paramAccessibleObject)) {
      try
      {
        paramAccessibleObject.setAccessible(true);
      }
      catch (SecurityException localSecurityException)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Gson couldn't modify fields for ");
        localStringBuilder.append(paramAccessibleObject);
        localStringBuilder.append("\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.");
        throw new JsonIOException(localStringBuilder.toString(), localSecurityException);
      }
    }
  }
  
  boolean makeAccessibleWithUnsafe(AccessibleObject paramAccessibleObject)
  {
    if ((this.theUnsafe != null) && (this.overrideField != null)) {}
    try
    {
      long l = ((Long)unsafeClass.getMethod("objectFieldOffset", new Class[] { Field.class }).invoke(this.theUnsafe, new Object[] { this.overrideField })).longValue();
      unsafeClass.getMethod("putBoolean", new Class[] { Object.class, Long.TYPE, Boolean.TYPE }).invoke(this.theUnsafe, new Object[] { paramAccessibleObject, Long.valueOf(l), Boolean.TRUE });
      return true;
    }
    catch (Exception paramAccessibleObject)
    {
      label116:
      break label116;
    }
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.gson.internal.reflect.UnsafeReflectionAccessor
 * JD-Core Version:    0.7.0.1
 */