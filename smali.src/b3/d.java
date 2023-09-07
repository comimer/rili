package b3;

import f3.i;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import n.a;
import n.g;

public class d
{
  private final AtomicReference<i> a = new AtomicReference();
  private final a<i, List<Class<?>>> b = new a();
  
  public List<Class<?>> a(Class<?> paramClass1, Class<?> arg2, Class<?> paramClass3)
  {
    i locali = (i)this.a.getAndSet(null);
    if (locali == null)
    {
      paramClass1 = new i(paramClass1, ???, paramClass3);
    }
    else
    {
      locali.a(paramClass1, ???, paramClass3);
      paramClass1 = locali;
    }
    synchronized (this.b)
    {
      paramClass3 = (List)this.b.get(paramClass1);
      this.a.set(paramClass1);
      return paramClass3;
    }
  }
  
  public void b(Class<?> paramClass1, Class<?> paramClass2, Class<?> paramClass3, List<Class<?>> paramList)
  {
    synchronized (this.b)
    {
      a locala2 = this.b;
      i locali = new f3/i;
      locali.<init>(paramClass1, paramClass2, paramClass3);
      locala2.put(locali, paramList);
      return;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b3.d
 * JD-Core Version:    0.7.0.1
 */