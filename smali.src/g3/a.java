package g3;

import android.util.Log;
import androidx.core.util.e;
import androidx.core.util.g;
import java.util.ArrayList;
import java.util.List;

public final class a
{
  private static final g<Object> a = new a();
  
  private static <T extends f> e<T> a(e<T> parame, d<T> paramd)
  {
    return b(parame, paramd, c());
  }
  
  private static <T> e<T> b(e<T> parame, d<T> paramd, g<T> paramg)
  {
    return new e(parame, paramd, paramg);
  }
  
  private static <T> g<T> c()
  {
    return a;
  }
  
  public static <T extends f> e<T> d(int paramInt, d<T> paramd)
  {
    return a(new g(paramInt), paramd);
  }
  
  public static <T> e<List<T>> e()
  {
    return f(20);
  }
  
  public static <T> e<List<T>> f(int paramInt)
  {
    return b(new g(paramInt), new b(), new c());
  }
  
  class a
    implements a.g<Object>
  {
    public void a(Object paramObject) {}
  }
  
  class b
    implements a.d<List<T>>
  {
    public List<T> a()
    {
      return new ArrayList();
    }
  }
  
  class c
    implements a.g<List<T>>
  {
    public void b(List<T> paramList)
    {
      paramList.clear();
    }
  }
  
  public static abstract interface d<T>
  {
    public abstract T create();
  }
  
  private static final class e<T>
    implements e<T>
  {
    private final a.d<T> a;
    private final a.g<T> b;
    private final e<T> c;
    
    e(e<T> parame, a.d<T> paramd, a.g<T> paramg)
    {
      this.c = parame;
      this.a = paramd;
      this.b = paramg;
    }
    
    public boolean a(T paramT)
    {
      if ((paramT instanceof a.f)) {
        ((a.f)paramT).h().b(true);
      }
      this.b.a(paramT);
      return this.c.a(paramT);
    }
    
    public T b()
    {
      Object localObject1 = this.c.b();
      Object localObject2 = localObject1;
      if (localObject1 == null)
      {
        localObject1 = this.a.create();
        localObject2 = localObject1;
        if (Log.isLoggable("FactoryPools", 2))
        {
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append("Created new ");
          ((StringBuilder)localObject2).append(localObject1.getClass());
          Log.v("FactoryPools", ((StringBuilder)localObject2).toString());
          localObject2 = localObject1;
        }
      }
      if ((localObject2 instanceof a.f)) {
        ((a.f)localObject2).h().b(false);
      }
      return localObject2;
    }
  }
  
  public static abstract interface f
  {
    public abstract c h();
  }
  
  public static abstract interface g<T>
  {
    public abstract void a(T paramT);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g3.a
 * JD-Core Version:    0.7.0.1
 */