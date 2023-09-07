package androidx.lifecycle;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

@Deprecated
final class b
{
  static b c = new b();
  private final Map<Class<?>, a> a = new HashMap();
  private final Map<Class<?>, Boolean> b = new HashMap();
  
  private a a(Class<?> paramClass, Method[] paramArrayOfMethod)
  {
    Object localObject1 = paramClass.getSuperclass();
    HashMap localHashMap = new HashMap();
    if (localObject1 != null)
    {
      localObject1 = c((Class)localObject1);
      if (localObject1 != null) {
        localHashMap.putAll(((a)localObject1).b);
      }
    }
    localObject1 = paramClass.getInterfaces();
    int i = localObject1.length;
    Object localObject2;
    Object localObject3;
    for (int j = 0; j < i; j++)
    {
      localObject2 = c(localObject1[j]).b.entrySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (Map.Entry)((Iterator)localObject2).next();
        e(localHashMap, (b)((Map.Entry)localObject3).getKey(), (Lifecycle.Event)((Map.Entry)localObject3).getValue(), paramClass);
      }
    }
    if (paramArrayOfMethod == null) {
      paramArrayOfMethod = b(paramClass);
    }
    int k = paramArrayOfMethod.length;
    i = 0;
    j = i;
    while (i < k)
    {
      localObject1 = paramArrayOfMethod[i];
      localObject2 = (w)((Method)localObject1).getAnnotation(w.class);
      if (localObject2 != null)
      {
        localObject3 = ((Method)localObject1).getParameterTypes();
        if (localObject3.length > 0)
        {
          if (localObject3[0].isAssignableFrom(n.class)) {
            j = 1;
          } else {
            throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
          }
        }
        else {
          j = 0;
        }
        localObject2 = ((w)localObject2).value();
        if (localObject3.length > 1) {
          if (localObject3[1].isAssignableFrom(Lifecycle.Event.class))
          {
            if (localObject2 == Lifecycle.Event.ON_ANY) {
              j = 2;
            } else {
              throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
            }
          }
          else {
            throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
          }
        }
        if (localObject3.length <= 2)
        {
          e(localHashMap, new b(j, (Method)localObject1), (Lifecycle.Event)localObject2, paramClass);
          j = 1;
        }
      }
      else
      {
        i++;
        continue;
      }
      throw new IllegalArgumentException("cannot have more than 2 params");
    }
    paramArrayOfMethod = new a(localHashMap);
    this.a.put(paramClass, paramArrayOfMethod);
    this.b.put(paramClass, Boolean.valueOf(j));
    return paramArrayOfMethod;
  }
  
  private Method[] b(Class<?> paramClass)
  {
    try
    {
      paramClass = paramClass.getDeclaredMethods();
      return paramClass;
    }
    catch (NoClassDefFoundError paramClass)
    {
      throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", paramClass);
    }
  }
  
  private void e(Map<b, Lifecycle.Event> paramMap, b paramb, Lifecycle.Event paramEvent, Class<?> paramClass)
  {
    Lifecycle.Event localEvent = (Lifecycle.Event)paramMap.get(paramb);
    if ((localEvent != null) && (paramEvent != localEvent))
    {
      paramb = paramb.b;
      paramMap = new StringBuilder();
      paramMap.append("Method ");
      paramMap.append(paramb.getName());
      paramMap.append(" in ");
      paramMap.append(paramClass.getName());
      paramMap.append(" already declared with different @OnLifecycleEvent value: previous value ");
      paramMap.append(localEvent);
      paramMap.append(", new value ");
      paramMap.append(paramEvent);
      throw new IllegalArgumentException(paramMap.toString());
    }
    if (localEvent == null) {
      paramMap.put(paramb, paramEvent);
    }
  }
  
  a c(Class<?> paramClass)
  {
    a locala = (a)this.a.get(paramClass);
    if (locala != null) {
      return locala;
    }
    return a(paramClass, null);
  }
  
  boolean d(Class<?> paramClass)
  {
    Object localObject = (Boolean)this.b.get(paramClass);
    if (localObject != null) {
      return ((Boolean)localObject).booleanValue();
    }
    localObject = b(paramClass);
    int i = localObject.length;
    for (int j = 0; j < i; j++) {
      if ((w)localObject[j].getAnnotation(w.class) != null)
      {
        a(paramClass, (Method[])localObject);
        return true;
      }
    }
    this.b.put(paramClass, Boolean.FALSE);
    return false;
  }
  
  @Deprecated
  static class a
  {
    final Map<Lifecycle.Event, List<b.b>> a;
    final Map<b.b, Lifecycle.Event> b;
    
    a(Map<b.b, Lifecycle.Event> paramMap)
    {
      this.b = paramMap;
      this.a = new HashMap();
      Iterator localIterator = paramMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        Lifecycle.Event localEvent = (Lifecycle.Event)localEntry.getValue();
        List localList = (List)this.a.get(localEvent);
        paramMap = localList;
        if (localList == null)
        {
          paramMap = new ArrayList();
          this.a.put(localEvent, paramMap);
        }
        paramMap.add((b.b)localEntry.getKey());
      }
    }
    
    private static void b(List<b.b> paramList, n paramn, Lifecycle.Event paramEvent, Object paramObject)
    {
      if (paramList != null) {
        for (int i = paramList.size() - 1; i >= 0; i--) {
          ((b.b)paramList.get(i)).a(paramn, paramEvent, paramObject);
        }
      }
    }
    
    void a(n paramn, Lifecycle.Event paramEvent, Object paramObject)
    {
      b((List)this.a.get(paramEvent), paramn, paramEvent, paramObject);
      b((List)this.a.get(Lifecycle.Event.ON_ANY), paramn, paramEvent, paramObject);
    }
  }
  
  @Deprecated
  static final class b
  {
    final int a;
    final Method b;
    
    b(int paramInt, Method paramMethod)
    {
      this.a = paramInt;
      this.b = paramMethod;
      paramMethod.setAccessible(true);
    }
    
    void a(n paramn, Lifecycle.Event paramEvent, Object paramObject)
    {
      try
      {
        int i = this.a;
        if (i != 0)
        {
          if (i != 1)
          {
            if (i == 2) {
              this.b.invoke(paramObject, new Object[] { paramn, paramEvent });
            }
          }
          else {
            this.b.invoke(paramObject, new Object[] { paramn });
          }
        }
        else {
          this.b.invoke(paramObject, new Object[0]);
        }
        return;
      }
      catch (IllegalAccessException paramn)
      {
        throw new RuntimeException(paramn);
      }
      catch (InvocationTargetException paramn)
      {
        throw new RuntimeException("Failed to call observer method", paramn.getCause());
      }
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool = true;
      if (this == paramObject) {
        return true;
      }
      if (!(paramObject instanceof b)) {
        return false;
      }
      paramObject = (b)paramObject;
      if ((this.a != paramObject.a) || (!this.b.getName().equals(paramObject.b.getName()))) {
        bool = false;
      }
      return bool;
    }
    
    public int hashCode()
    {
      return this.a * 31 + this.b.getName().hashCode();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.b
 * JD-Core Version:    0.7.0.1
 */