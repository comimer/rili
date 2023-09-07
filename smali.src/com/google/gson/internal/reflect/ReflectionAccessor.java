package com.google.gson.internal.reflect;

import com.google.gson.internal.JavaVersion;
import java.lang.reflect.AccessibleObject;

public abstract class ReflectionAccessor
{
  private static final ReflectionAccessor instance;
  
  static
  {
    Object localObject;
    if (JavaVersion.getMajorJavaVersion() < 9) {
      localObject = new PreJava9ReflectionAccessor();
    } else {
      localObject = new UnsafeReflectionAccessor();
    }
    instance = (ReflectionAccessor)localObject;
  }
  
  public static ReflectionAccessor getInstance()
  {
    return instance;
  }
  
  public abstract void makeAccessible(AccessibleObject paramAccessibleObject);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.gson.internal.reflect.ReflectionAccessor
 * JD-Core Version:    0.7.0.1
 */