package com.google.gson.internal.reflect;

import java.lang.reflect.AccessibleObject;

final class PreJava9ReflectionAccessor
  extends ReflectionAccessor
{
  public void makeAccessible(AccessibleObject paramAccessibleObject)
  {
    paramAccessibleObject.setAccessible(true);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.gson.internal.reflect.PreJava9ReflectionAccessor
 * JD-Core Version:    0.7.0.1
 */