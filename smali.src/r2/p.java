package r2;

import androidx.core.util.e;
import com.bumptech.glide.Registry.NoModelLoaderAvailableException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class p
{
  private final r a;
  private final a b = new a();
  
  public p(e<List<Throwable>> parame)
  {
    this(new r(parame));
  }
  
  private p(r paramr)
  {
    this.a = paramr;
  }
  
  private static <A> Class<A> b(A paramA)
  {
    return paramA.getClass();
  }
  
  private <A> List<n<A, ?>> e(Class<A> paramClass)
  {
    try
    {
      List localList1 = this.b.b(paramClass);
      List localList2 = localList1;
      if (localList1 == null)
      {
        localList2 = Collections.unmodifiableList(this.a.c(paramClass));
        this.b.c(paramClass, localList2);
      }
      return localList2;
    }
    finally {}
  }
  
  public <Model, Data> void a(Class<Model> paramClass, Class<Data> paramClass1, o<? extends Model, ? extends Data> paramo)
  {
    try
    {
      this.a.b(paramClass, paramClass1, paramo);
      this.b.a();
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  public List<Class<?>> c(Class<?> paramClass)
  {
    try
    {
      paramClass = this.a.g(paramClass);
      return paramClass;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  public <A> List<n<A, ?>> d(A paramA)
  {
    List localList = e(b(paramA));
    if (!localList.isEmpty())
    {
      int i = localList.size();
      Object localObject1 = Collections.emptyList();
      int j = 1;
      int k = 0;
      while (k < i)
      {
        n localn = (n)localList.get(k);
        Object localObject2 = localObject1;
        int m = j;
        if (localn.b(paramA))
        {
          m = j;
          if (j != 0)
          {
            localObject1 = new ArrayList(i - k);
            m = 0;
          }
          ((List)localObject1).add(localn);
          localObject2 = localObject1;
        }
        k++;
        localObject1 = localObject2;
        j = m;
      }
      if (!((List)localObject1).isEmpty()) {
        return localObject1;
      }
      throw new Registry.NoModelLoaderAvailableException(paramA, localList);
    }
    throw new Registry.NoModelLoaderAvailableException(paramA);
  }
  
  private static class a
  {
    private final Map<Class<?>, a<?>> a = new HashMap();
    
    public void a()
    {
      this.a.clear();
    }
    
    public <Model> List<n<Model, ?>> b(Class<Model> paramClass)
    {
      paramClass = (a)this.a.get(paramClass);
      if (paramClass == null) {
        paramClass = null;
      } else {
        paramClass = paramClass.a;
      }
      return paramClass;
    }
    
    public <Model> void c(Class<Model> paramClass, List<n<Model, ?>> paramList)
    {
      if ((a)this.a.put(paramClass, new a(paramList)) == null) {
        return;
      }
      paramList = new StringBuilder();
      paramList.append("Already cached loaders for model: ");
      paramList.append(paramClass);
      throw new IllegalStateException(paramList.toString());
    }
    
    private static class a<Model>
    {
      final List<n<Model, ?>> a;
      
      public a(List<n<Model, ?>> paramList)
      {
        this.a = paramList;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r2.p
 * JD-Core Version:    0.7.0.1
 */