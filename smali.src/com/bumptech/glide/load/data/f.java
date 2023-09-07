package com.bumptech.glide.load.data;

import f3.j;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class f
{
  private static final e.a<?> b = new a();
  private final Map<Class<?>, e.a<?>> a = new HashMap();
  
  public <T> e<T> a(T paramT)
  {
    try
    {
      j.d(paramT);
      Object localObject1 = (e.a)this.a.get(paramT.getClass());
      Object localObject2 = localObject1;
      if (localObject1 == null)
      {
        Iterator localIterator = this.a.values().iterator();
        do
        {
          localObject2 = localObject1;
          if (!localIterator.hasNext()) {
            break;
          }
          localObject2 = (e.a)localIterator.next();
        } while (!((e.a)localObject2).a().isAssignableFrom(paramT.getClass()));
      }
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = b;
      }
      paramT = ((e.a)localObject1).b(paramT);
      return paramT;
    }
    finally {}
  }
  
  public void b(e.a<?> parama)
  {
    try
    {
      this.a.put(parama.a(), parama);
      return;
    }
    finally
    {
      parama = finally;
      throw parama;
    }
  }
  
  class a
    implements e.a<Object>
  {
    public Class<Object> a()
    {
      throw new UnsupportedOperationException("Not implemented");
    }
    
    public e<Object> b(Object paramObject)
    {
      return new f.b(paramObject);
    }
  }
  
  private static final class b
    implements e<Object>
  {
    private final Object a;
    
    b(Object paramObject)
    {
      this.a = paramObject;
    }
    
    public Object a()
    {
      return this.a;
    }
    
    public void b() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.data.f
 * JD-Core Version:    0.7.0.1
 */