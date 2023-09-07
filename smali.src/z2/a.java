package z2;

import f3.k;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

class a
  implements l
{
  private final Set<m> a = Collections.newSetFromMap(new WeakHashMap());
  private boolean b;
  private boolean c;
  
  public void a(m paramm)
  {
    this.a.remove(paramm);
  }
  
  public void b(m paramm)
  {
    this.a.add(paramm);
    if (this.c) {
      paramm.onDestroy();
    } else if (this.b) {
      paramm.a();
    } else {
      paramm.b();
    }
  }
  
  void c()
  {
    this.c = true;
    Iterator localIterator = k.i(this.a).iterator();
    while (localIterator.hasNext()) {
      ((m)localIterator.next()).onDestroy();
    }
  }
  
  void d()
  {
    this.b = true;
    Iterator localIterator = k.i(this.a).iterator();
    while (localIterator.hasNext()) {
      ((m)localIterator.next()).a();
    }
  }
  
  void e()
  {
    this.b = false;
    Iterator localIterator = k.i(this.a).iterator();
    while (localIterator.hasNext()) {
      ((m)localIterator.next()).b();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z2.a
 * JD-Core Version:    0.7.0.1
 */