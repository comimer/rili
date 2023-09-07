package z2;

import c3.h;
import f3.k;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

public final class t
  implements m
{
  private final Set<h<?>> a = Collections.newSetFromMap(new WeakHashMap());
  
  public void a()
  {
    Iterator localIterator = k.i(this.a).iterator();
    while (localIterator.hasNext()) {
      ((h)localIterator.next()).a();
    }
  }
  
  public void b()
  {
    Iterator localIterator = k.i(this.a).iterator();
    while (localIterator.hasNext()) {
      ((h)localIterator.next()).b();
    }
  }
  
  public void k()
  {
    this.a.clear();
  }
  
  public List<h<?>> l()
  {
    return k.i(this.a);
  }
  
  public void m(h<?> paramh)
  {
    this.a.add(paramh);
  }
  
  public void n(h<?> paramh)
  {
    this.a.remove(paramh);
  }
  
  public void onDestroy()
  {
    Iterator localIterator = k.i(this.a).iterator();
    while (localIterator.hasNext()) {
      ((h)localIterator.next()).onDestroy();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z2.t
 * JD-Core Version:    0.7.0.1
 */