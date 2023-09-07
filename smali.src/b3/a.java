package b3;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class a
{
  private final List<a<?>> a = new ArrayList();
  
  public <T> void a(Class<T> paramClass, n2.a<T> parama)
  {
    try
    {
      List localList = this.a;
      a locala = new b3/a$a;
      locala.<init>(paramClass, parama);
      localList.add(locala);
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  public <T> n2.a<T> b(Class<T> paramClass)
  {
    try
    {
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext())
      {
        a locala = (a)localIterator.next();
        if (locala.a(paramClass))
        {
          paramClass = locala.b;
          return paramClass;
        }
      }
      return null;
    }
    finally {}
  }
  
  private static final class a<T>
  {
    private final Class<T> a;
    final n2.a<T> b;
    
    a(Class<T> paramClass, n2.a<T> parama)
    {
      this.a = paramClass;
      this.b = parama;
    }
    
    boolean a(Class<?> paramClass)
    {
      return this.a.isAssignableFrom(paramClass);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b3.a
 * JD-Core Version:    0.7.0.1
 */