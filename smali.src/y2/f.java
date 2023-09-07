package y2;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class f
{
  private final List<a<?, ?>> a = new ArrayList();
  
  public <Z, R> e<Z, R> a(Class<Z> paramClass, Class<R> paramClass1)
  {
    try
    {
      if (paramClass1.isAssignableFrom(paramClass))
      {
        paramClass = g.b();
        return paramClass;
      }
      Object localObject1 = this.a.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (a)((Iterator)localObject1).next();
        if (((a)localObject2).a(paramClass, paramClass1))
        {
          paramClass = ((a)localObject2).c;
          return paramClass;
        }
      }
      Object localObject2 = new java/lang/IllegalArgumentException;
      localObject1 = new java/lang/StringBuilder;
      ((StringBuilder)localObject1).<init>();
      ((StringBuilder)localObject1).append("No transcoder registered to transcode from ");
      ((StringBuilder)localObject1).append(paramClass);
      ((StringBuilder)localObject1).append(" to ");
      ((StringBuilder)localObject1).append(paramClass1);
      ((IllegalArgumentException)localObject2).<init>(((StringBuilder)localObject1).toString());
      throw ((Throwable)localObject2);
    }
    finally {}
  }
  
  public <Z, R> List<Class<R>> b(Class<Z> paramClass, Class<R> paramClass1)
  {
    try
    {
      ArrayList localArrayList = new java/util/ArrayList;
      localArrayList.<init>();
      if (paramClass1.isAssignableFrom(paramClass))
      {
        localArrayList.add(paramClass1);
        return localArrayList;
      }
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext()) {
        if (((a)localIterator.next()).a(paramClass, paramClass1)) {
          localArrayList.add(paramClass1);
        }
      }
      return localArrayList;
    }
    finally {}
  }
  
  public <Z, R> void c(Class<Z> paramClass, Class<R> paramClass1, e<Z, R> parame)
  {
    try
    {
      List localList = this.a;
      a locala = new y2/f$a;
      locala.<init>(paramClass, paramClass1, parame);
      localList.add(locala);
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  private static final class a<Z, R>
  {
    private final Class<Z> a;
    private final Class<R> b;
    final e<Z, R> c;
    
    a(Class<Z> paramClass, Class<R> paramClass1, e<Z, R> parame)
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
 * Qualified Name:     y2.f
 * JD-Core Version:    0.7.0.1
 */