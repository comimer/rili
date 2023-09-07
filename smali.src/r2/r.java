package r2;

import androidx.core.util.e;
import com.bumptech.glide.Registry.NoModelLoaderAvailableException;
import f3.j;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import n2.d;

public class r
{
  private static final c e = new c();
  private static final n<Object, Object> f = new a();
  private final List<b<?, ?>> a = new ArrayList();
  private final c b;
  private final Set<b<?, ?>> c = new HashSet();
  private final e<List<Throwable>> d;
  
  public r(e<List<Throwable>> parame)
  {
    this(parame, e);
  }
  
  r(e<List<Throwable>> parame, c paramc)
  {
    this.d = parame;
    this.b = paramc;
  }
  
  private <Model, Data> void a(Class<Model> paramClass, Class<Data> paramClass1, o<? extends Model, ? extends Data> paramo, boolean paramBoolean)
  {
    paramClass = new b(paramClass, paramClass1, paramo);
    paramClass1 = this.a;
    int i;
    if (paramBoolean) {
      i = paramClass1.size();
    } else {
      i = 0;
    }
    paramClass1.add(i, paramClass);
  }
  
  private <Model, Data> n<Model, Data> e(b<?, ?> paramb)
  {
    return (n)j.d(paramb.c.b(this));
  }
  
  private static <Model, Data> n<Model, Data> f()
  {
    return f;
  }
  
  <Model, Data> void b(Class<Model> paramClass, Class<Data> paramClass1, o<? extends Model, ? extends Data> paramo)
  {
    try
    {
      a(paramClass, paramClass1, paramo, true);
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  <Model> List<n<Model, ?>> c(Class<Model> paramClass)
  {
    try
    {
      ArrayList localArrayList = new java/util/ArrayList;
      localArrayList.<init>();
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext())
      {
        b localb = (b)localIterator.next();
        if ((!this.c.contains(localb)) && (localb.a(paramClass)))
        {
          this.c.add(localb);
          localArrayList.add(e(localb));
          this.c.remove(localb);
        }
      }
      return localArrayList;
    }
    finally
    {
      try
      {
        this.c.clear();
        throw paramClass;
      }
      finally {}
    }
  }
  
  public <Model, Data> n<Model, Data> d(Class<Model> paramClass, Class<Data> paramClass1)
  {
    try
    {
      ArrayList localArrayList = new java/util/ArrayList;
      localArrayList.<init>();
      Object localObject = this.a.iterator();
      int i = 0;
      while (((Iterator)localObject).hasNext())
      {
        b localb = (b)((Iterator)localObject).next();
        if (this.c.contains(localb))
        {
          i = 1;
        }
        else if (localb.b(paramClass, paramClass1))
        {
          this.c.add(localb);
          localArrayList.add(e(localb));
          this.c.remove(localb);
        }
      }
      if (localArrayList.size() > 1)
      {
        paramClass = this.b.a(localArrayList, this.d);
        return paramClass;
      }
      if (localArrayList.size() == 1)
      {
        paramClass = (n)localArrayList.get(0);
        return paramClass;
      }
      if (i != 0)
      {
        paramClass = f();
        return paramClass;
      }
      localObject = new com/bumptech/glide/Registry$NoModelLoaderAvailableException;
      ((Registry.NoModelLoaderAvailableException)localObject).<init>(paramClass, paramClass1);
      throw ((Throwable)localObject);
    }
    finally
    {
      try
      {
        this.c.clear();
        throw paramClass;
      }
      finally {}
    }
  }
  
  List<Class<?>> g(Class<?> paramClass)
  {
    try
    {
      ArrayList localArrayList = new java/util/ArrayList;
      localArrayList.<init>();
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext())
      {
        b localb = (b)localIterator.next();
        if ((!localArrayList.contains(localb.b)) && (localb.a(paramClass))) {
          localArrayList.add(localb.b);
        }
      }
      return localArrayList;
    }
    finally {}
  }
  
  private static class a
    implements n<Object, Object>
  {
    public n.a<Object> a(Object paramObject, int paramInt1, int paramInt2, d paramd)
    {
      return null;
    }
    
    public boolean b(Object paramObject)
    {
      return false;
    }
  }
  
  private static class b<Model, Data>
  {
    private final Class<Model> a;
    final Class<Data> b;
    final o<? extends Model, ? extends Data> c;
    
    public b(Class<Model> paramClass, Class<Data> paramClass1, o<? extends Model, ? extends Data> paramo)
    {
      this.a = paramClass;
      this.b = paramClass1;
      this.c = paramo;
    }
    
    public boolean a(Class<?> paramClass)
    {
      return this.a.isAssignableFrom(paramClass);
    }
    
    public boolean b(Class<?> paramClass1, Class<?> paramClass2)
    {
      boolean bool;
      if ((a(paramClass1)) && (this.b.isAssignableFrom(paramClass2))) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
  
  static class c
  {
    public <Model, Data> q<Model, Data> a(List<n<Model, Data>> paramList, e<List<Throwable>> parame)
    {
      return new q(paramList, parame);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r2.r
 * JD-Core Version:    0.7.0.1
 */