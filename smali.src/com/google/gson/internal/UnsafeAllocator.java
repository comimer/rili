package com.google.gson.internal;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

public abstract class UnsafeAllocator
{
  static void assertInstantiable(Class<?> paramClass)
  {
    int i = paramClass.getModifiers();
    if (!Modifier.isInterface(i))
    {
      if (!Modifier.isAbstract(i)) {
        return;
      }
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("Abstract class can't be instantiated! Class name: ");
      localStringBuilder.append(paramClass.getName());
      throw new UnsupportedOperationException(localStringBuilder.toString());
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Interface can't be instantiated! Interface name: ");
    localStringBuilder.append(paramClass.getName());
    throw new UnsupportedOperationException(localStringBuilder.toString());
  }
  
  public static UnsafeAllocator create()
  {
    try
    {
      Object localObject1 = Class.forName("sun.misc.Unsafe");
      final Object localObject4 = ((Class)localObject1).getDeclaredField("theUnsafe");
      ((AccessibleObject)localObject4).setAccessible(true);
      localObject4 = ((Field)localObject4).get(null);
      localObject1 = new UnsafeAllocator()
      {
        public <T> T newInstance(Class<T> paramAnonymousClass)
          throws Exception
        {
          UnsafeAllocator.assertInstantiable(paramAnonymousClass);
          return this.val$allocateInstance.invoke(localObject4, new Object[] { paramAnonymousClass });
        }
      };
      return localObject1;
    }
    catch (Exception localException1)
    {
      try
      {
        Object localObject2 = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", new Class[] { Class.class });
        ((AccessibleObject)localObject2).setAccessible(true);
        final int i = ((Integer)((Method)localObject2).invoke(null, new Object[] { Object.class })).intValue();
        localObject2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", new Class[] { Class.class, Integer.TYPE });
        ((AccessibleObject)localObject2).setAccessible(true);
        localObject2 = new UnsafeAllocator()
        {
          public <T> T newInstance(Class<T> paramAnonymousClass)
            throws Exception
          {
            UnsafeAllocator.assertInstantiable(paramAnonymousClass);
            return this.val$newInstance.invoke(null, new Object[] { paramAnonymousClass, Integer.valueOf(i) });
          }
        };
        return localObject2;
      }
      catch (Exception localException2)
      {
        try
        {
          Object localObject3 = ObjectInputStream.class.getDeclaredMethod("newInstance", new Class[] { Class.class, Class.class });
          ((AccessibleObject)localObject3).setAccessible(true);
          localObject3 = new UnsafeAllocator()
          {
            public <T> T newInstance(Class<T> paramAnonymousClass)
              throws Exception
            {
              UnsafeAllocator.assertInstantiable(paramAnonymousClass);
              return this.val$newInstance.invoke(null, new Object[] { paramAnonymousClass, Object.class });
            }
          };
          return localObject3;
        }
        catch (Exception localException3) {}
      }
    }
    new UnsafeAllocator()
    {
      public <T> T newInstance(Class<T> paramAnonymousClass)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Cannot allocate ");
        localStringBuilder.append(paramAnonymousClass);
        throw new UnsupportedOperationException(localStringBuilder.toString());
      }
    };
  }
  
  public abstract <T> T newInstance(Class<T> paramClass)
    throws Exception;
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.gson.internal.UnsafeAllocator
 * JD-Core Version:    0.7.0.1
 */