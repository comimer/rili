package com.bumptech.glide.load.engine.bitmap_recycle;

import android.util.Log;
import f3.j;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

public final class i
  implements b
{
  private final g<a, Object> a = new g();
  private final b b = new b();
  private final Map<Class<?>, NavigableMap<Integer, Integer>> c = new HashMap();
  private final Map<Class<?>, a<?>> d = new HashMap();
  private final int e;
  private int f;
  
  public i(int paramInt)
  {
    this.e = paramInt;
  }
  
  private void e(int paramInt, Class<?> paramClass)
  {
    NavigableMap localNavigableMap = l(paramClass);
    paramClass = (Integer)localNavigableMap.get(Integer.valueOf(paramInt));
    if (paramClass != null)
    {
      if (paramClass.intValue() == 1) {
        localNavigableMap.remove(Integer.valueOf(paramInt));
      } else {
        localNavigableMap.put(Integer.valueOf(paramInt), Integer.valueOf(paramClass.intValue() - 1));
      }
      return;
    }
    paramClass = new StringBuilder();
    paramClass.append("Tried to decrement empty size, size: ");
    paramClass.append(paramInt);
    paramClass.append(", this: ");
    paramClass.append(this);
    throw new NullPointerException(paramClass.toString());
  }
  
  private void f()
  {
    g(this.e);
  }
  
  private void g(int paramInt)
  {
    while (this.f > paramInt)
    {
      Object localObject = this.a.f();
      j.d(localObject);
      a locala = h(localObject);
      this.f -= locala.c(localObject) * locala.b();
      e(locala.c(localObject), localObject.getClass());
      if (Log.isLoggable(locala.a(), 2))
      {
        String str = locala.a();
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("evicted: ");
        localStringBuilder.append(locala.c(localObject));
        Log.v(str, localStringBuilder.toString());
      }
    }
  }
  
  private <T> a<T> h(T paramT)
  {
    return i(paramT.getClass());
  }
  
  private <T> a<T> i(Class<T> paramClass)
  {
    a locala = (a)this.d.get(paramClass);
    Object localObject = locala;
    if (locala == null)
    {
      if (paramClass.equals([I.class))
      {
        localObject = new h();
      }
      else
      {
        if (!paramClass.equals([B.class)) {
          break label72;
        }
        localObject = new f();
      }
      this.d.put(paramClass, localObject);
      return localObject;
      label72:
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("No array pool found for: ");
      ((StringBuilder)localObject).append(paramClass.getSimpleName());
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    }
    return localObject;
  }
  
  private <T> T j(a parama)
  {
    return this.a.a(parama);
  }
  
  private <T> T k(a parama, Class<T> paramClass)
  {
    a locala = i(paramClass);
    Object localObject = j(parama);
    if (localObject != null)
    {
      this.f -= locala.c(localObject) * locala.b();
      e(locala.c(localObject), paramClass);
    }
    paramClass = (Class<T>)localObject;
    if (localObject == null)
    {
      if (Log.isLoggable(locala.a(), 2))
      {
        localObject = locala.a();
        paramClass = new StringBuilder();
        paramClass.append("Allocated ");
        paramClass.append(parama.b);
        paramClass.append(" bytes");
        Log.v((String)localObject, paramClass.toString());
      }
      paramClass = locala.newArray(parama.b);
    }
    return paramClass;
  }
  
  private NavigableMap<Integer, Integer> l(Class<?> paramClass)
  {
    NavigableMap localNavigableMap = (NavigableMap)this.c.get(paramClass);
    Object localObject = localNavigableMap;
    if (localNavigableMap == null)
    {
      localObject = new TreeMap();
      this.c.put(paramClass, localObject);
    }
    return localObject;
  }
  
  private boolean m()
  {
    int i = this.f;
    boolean bool;
    if ((i != 0) && (this.e / i < 2)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private boolean n(int paramInt)
  {
    boolean bool;
    if (paramInt <= this.e / 2) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private boolean o(int paramInt, Integer paramInteger)
  {
    boolean bool;
    if ((paramInteger != null) && ((m()) || (paramInteger.intValue() <= paramInt * 8))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void a(int paramInt)
  {
    if (paramInt >= 40) {
      try
      {
        b();
      }
      finally
      {
        break label44;
      }
    } else if ((paramInt >= 20) || (paramInt == 15)) {
      g(this.e / 2);
    }
    return;
    label44:
    throw localObject;
  }
  
  public void b()
  {
    try
    {
      g(0);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public <T> T c(int paramInt, Class<T> paramClass)
  {
    try
    {
      paramClass = k(this.b.e(paramInt, paramClass), paramClass);
      return paramClass;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  public <T> T d(int paramInt, Class<T> paramClass)
  {
    try
    {
      Object localObject = (Integer)l(paramClass).ceilingKey(Integer.valueOf(paramInt));
      if (o(paramInt, (Integer)localObject)) {
        localObject = this.b.e(((Integer)localObject).intValue(), paramClass);
      } else {
        localObject = this.b.e(paramInt, paramClass);
      }
      paramClass = k((a)localObject, paramClass);
      return paramClass;
    }
    finally {}
  }
  
  public <T> void put(T paramT)
  {
    try
    {
      Object localObject1 = paramT.getClass();
      Object localObject2 = i((Class)localObject1);
      int i = ((a)localObject2).c(paramT);
      int j = ((a)localObject2).b() * i;
      boolean bool = n(j);
      if (!bool) {
        return;
      }
      localObject2 = this.b.e(i, (Class)localObject1);
      this.a.d((l)localObject2, paramT);
      localObject1 = l((Class)localObject1);
      paramT = (Integer)((Map)localObject1).get(Integer.valueOf(((a)localObject2).b));
      int k = ((a)localObject2).b;
      i = 1;
      if (paramT != null) {
        i = 1 + paramT.intValue();
      }
      ((Map)localObject1).put(Integer.valueOf(k), Integer.valueOf(i));
      this.f += j;
      f();
      return;
    }
    finally {}
  }
  
  private static final class a
    implements l
  {
    private final i.b a;
    int b;
    private Class<?> c;
    
    a(i.b paramb)
    {
      this.a = paramb;
    }
    
    public void a()
    {
      this.a.c(this);
    }
    
    void b(int paramInt, Class<?> paramClass)
    {
      this.b = paramInt;
      this.c = paramClass;
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool1 = paramObject instanceof a;
      boolean bool2 = false;
      boolean bool3 = bool2;
      if (bool1)
      {
        paramObject = (a)paramObject;
        bool3 = bool2;
        if (this.b == paramObject.b)
        {
          bool3 = bool2;
          if (this.c == paramObject.c) {
            bool3 = true;
          }
        }
      }
      return bool3;
    }
    
    public int hashCode()
    {
      int i = this.b;
      Class localClass = this.c;
      int j;
      if (localClass != null) {
        j = localClass.hashCode();
      } else {
        j = 0;
      }
      return i * 31 + j;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Key{size=");
      localStringBuilder.append(this.b);
      localStringBuilder.append("array=");
      localStringBuilder.append(this.c);
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
  }
  
  private static final class b
    extends c<i.a>
  {
    protected i.a d()
    {
      return new i.a(this);
    }
    
    i.a e(int paramInt, Class<?> paramClass)
    {
      i.a locala = (i.a)b();
      locala.b(paramInt, paramClass);
      return locala;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.bitmap_recycle.i
 * JD-Core Version:    0.7.0.1
 */