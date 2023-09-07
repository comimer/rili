package androidx.lifecycle;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class r
{
  private static Map<Class<?>, Integer> a = new HashMap();
  private static Map<Class<?>, List<Constructor<? extends h>>> b = new HashMap();
  
  private static h a(Constructor<? extends h> paramConstructor, Object paramObject)
  {
    try
    {
      paramConstructor = (h)paramConstructor.newInstance(new Object[] { paramObject });
      return paramConstructor;
    }
    catch (InvocationTargetException paramConstructor)
    {
      throw new RuntimeException(paramConstructor);
    }
    catch (InstantiationException paramConstructor)
    {
      throw new RuntimeException(paramConstructor);
    }
    catch (IllegalAccessException paramConstructor)
    {
      throw new RuntimeException(paramConstructor);
    }
  }
  
  private static Constructor<? extends h> b(Class<?> paramClass)
  {
    try
    {
      Object localObject = paramClass.getPackage();
      String str = paramClass.getCanonicalName();
      if (localObject != null) {
        localObject = ((Package)localObject).getName();
      } else {
        localObject = "";
      }
      if (!((String)localObject).isEmpty()) {
        str = str.substring(((String)localObject).length() + 1);
      }
      str = c(str);
      if (((String)localObject).isEmpty())
      {
        localObject = str;
      }
      else
      {
        StringBuilder localStringBuilder = new java/lang/StringBuilder;
        localStringBuilder.<init>();
        localStringBuilder.append((String)localObject);
        localStringBuilder.append(".");
        localStringBuilder.append(str);
        localObject = localStringBuilder.toString();
      }
      paramClass = Class.forName((String)localObject).getDeclaredConstructor(new Class[] { paramClass });
      if (!paramClass.isAccessible()) {
        paramClass.setAccessible(true);
      }
      return paramClass;
    }
    catch (NoSuchMethodException paramClass)
    {
      throw new RuntimeException(paramClass);
    }
    catch (ClassNotFoundException paramClass) {}
    return null;
  }
  
  public static String c(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString.replace(".", "_"));
    localStringBuilder.append("_LifecycleAdapter");
    return localStringBuilder.toString();
  }
  
  private static int d(Class<?> paramClass)
  {
    Integer localInteger = (Integer)a.get(paramClass);
    if (localInteger != null) {
      return localInteger.intValue();
    }
    int i = g(paramClass);
    a.put(paramClass, Integer.valueOf(i));
    return i;
  }
  
  private static boolean e(Class<?> paramClass)
  {
    boolean bool;
    if ((paramClass != null) && (m.class.isAssignableFrom(paramClass))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  static l f(Object paramObject)
  {
    boolean bool1 = paramObject instanceof l;
    boolean bool2 = paramObject instanceof g;
    if ((bool1) && (bool2)) {
      return new FullLifecycleObserverAdapter((g)paramObject, (l)paramObject);
    }
    if (bool2) {
      return new FullLifecycleObserverAdapter((g)paramObject, null);
    }
    if (bool1) {
      return (l)paramObject;
    }
    Object localObject = paramObject.getClass();
    if (d((Class)localObject) == 2)
    {
      localObject = (List)b.get(localObject);
      int i = ((List)localObject).size();
      int j = 0;
      if (i == 1) {
        return new SingleGeneratedAdapterObserver(a((Constructor)((List)localObject).get(0), paramObject));
      }
      h[] arrayOfh = new h[((List)localObject).size()];
      while (j < ((List)localObject).size())
      {
        arrayOfh[j] = a((Constructor)((List)localObject).get(j), paramObject);
        j++;
      }
      return new CompositeGeneratedAdaptersObserver(arrayOfh);
    }
    return new ReflectiveGenericLifecycleObserver(paramObject);
  }
  
  private static int g(Class<?> paramClass)
  {
    if (paramClass.getCanonicalName() == null) {
      return 1;
    }
    Object localObject1 = b(paramClass);
    if (localObject1 != null)
    {
      b.put(paramClass, Collections.singletonList(localObject1));
      return 2;
    }
    if (b.c.d(paramClass)) {
      return 1;
    }
    Object localObject2 = paramClass.getSuperclass();
    localObject1 = null;
    if (e((Class)localObject2))
    {
      if (d((Class)localObject2) == 1) {
        return 1;
      }
      localObject1 = new ArrayList((Collection)b.get(localObject2));
    }
    for (Class localClass : paramClass.getInterfaces()) {
      if (e(localClass))
      {
        if (d(localClass) == 1) {
          return 1;
        }
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new ArrayList();
        }
        ((List)localObject2).addAll((Collection)b.get(localClass));
        localObject1 = localObject2;
      }
    }
    if (localObject1 != null)
    {
      b.put(paramClass, localObject1);
      return 2;
    }
    return 1;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.r
 * JD-Core Version:    0.7.0.1
 */