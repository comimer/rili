package b3;

import java.util.ArrayList;
import java.util.List;

public class f
{
  private final List<a<?>> a = new ArrayList();
  
  public <Z> void a(Class<Z> paramClass, n2.f<Z> paramf)
  {
    try
    {
      List localList = this.a;
      a locala = new b3/f$a;
      locala.<init>(paramClass, paramf);
      localList.add(locala);
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  public <Z> n2.f<Z> b(Class<Z> paramClass)
  {
    int i = 0;
    try
    {
      int j = this.a.size();
      while (i < j)
      {
        a locala = (a)this.a.get(i);
        if (locala.a(paramClass))
        {
          paramClass = locala.b;
          return paramClass;
        }
        i++;
      }
      return null;
    }
    finally {}
  }
  
  private static final class a<T>
  {
    private final Class<T> a;
    final n2.f<T> b;
    
    a(Class<T> paramClass, n2.f<T> paramf)
    {
      this.a = paramClass;
      this.b = paramf;
    }
    
    boolean a(Class<?> paramClass)
    {
      return this.a.isAssignableFrom(paramClass);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b3.f
 * JD-Core Version:    0.7.0.1
 */