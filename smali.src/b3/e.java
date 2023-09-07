package b3;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class e
{
  private final List<String> a = new ArrayList();
  private final Map<String, List<a<?, ?>>> b = new HashMap();
  
  private List<a<?, ?>> c(String paramString)
  {
    try
    {
      if (!this.a.contains(paramString)) {
        this.a.add(paramString);
      }
      List localList = (List)this.b.get(paramString);
      Object localObject = localList;
      if (localList == null)
      {
        localObject = new java/util/ArrayList;
        ((ArrayList)localObject).<init>();
        this.b.put(paramString, localObject);
      }
      return localObject;
    }
    finally {}
  }
  
  public <T, R> void a(String paramString, n2.e<T, R> parame, Class<T> paramClass, Class<R> paramClass1)
  {
    try
    {
      paramString = c(paramString);
      a locala = new b3/e$a;
      locala.<init>(paramClass, paramClass1, parame);
      paramString.add(locala);
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public <T, R> List<n2.e<T, R>> b(Class<T> paramClass, Class<R> paramClass1)
  {
    try
    {
      ArrayList localArrayList = new java/util/ArrayList;
      localArrayList.<init>();
      Iterator localIterator1 = this.a.iterator();
      while (localIterator1.hasNext())
      {
        Object localObject = (String)localIterator1.next();
        localObject = (List)this.b.get(localObject);
        if (localObject != null)
        {
          Iterator localIterator2 = ((List)localObject).iterator();
          while (localIterator2.hasNext())
          {
            localObject = (a)localIterator2.next();
            if (((a)localObject).a(paramClass, paramClass1)) {
              localArrayList.add(((a)localObject).c);
            }
          }
        }
      }
      return localArrayList;
    }
    finally {}
  }
  
  public <T, R> List<Class<R>> d(Class<T> paramClass, Class<R> paramClass1)
  {
    try
    {
      ArrayList localArrayList = new java/util/ArrayList;
      localArrayList.<init>();
      Iterator localIterator1 = this.a.iterator();
      while (localIterator1.hasNext())
      {
        Object localObject = (String)localIterator1.next();
        localObject = (List)this.b.get(localObject);
        if (localObject != null)
        {
          Iterator localIterator2 = ((List)localObject).iterator();
          while (localIterator2.hasNext())
          {
            localObject = (a)localIterator2.next();
            if ((((a)localObject).a(paramClass, paramClass1)) && (!localArrayList.contains(((a)localObject).b))) {
              localArrayList.add(((a)localObject).b);
            }
          }
        }
      }
      return localArrayList;
    }
    finally {}
  }
  
  public void e(List<String> paramList)
  {
    try
    {
      Object localObject1 = new java/util/ArrayList;
      ((ArrayList)localObject1).<init>(this.a);
      this.a.clear();
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        localObject2 = (String)localIterator.next();
        this.a.add(localObject2);
      }
      Object localObject2 = ((List)localObject1).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject1 = (String)((Iterator)localObject2).next();
        if (!paramList.contains(localObject1)) {
          this.a.add(localObject1);
        }
      }
      return;
    }
    finally {}
  }
  
  private static class a<T, R>
  {
    private final Class<T> a;
    final Class<R> b;
    final n2.e<T, R> c;
    
    public a(Class<T> paramClass, Class<R> paramClass1, n2.e<T, R> parame)
    {
      this.a = paramClass;
      this.b = paramClass1;
      this.c = parame;
    }
    
    public boolean a(Class<?> paramClass1, Class<?> paramClass2)
    {
      boolean bool;
      if ((this.a.isAssignableFrom(paramClass1)) && (paramClass2.isAssignableFrom(this.b))) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b3.e
 * JD-Core Version:    0.7.0.1
 */