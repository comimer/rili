package u0;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import t0.a;
import v0.d;
import x0.p;

public abstract class c<T>
  implements a<T>
{
  private final List<String> a = new ArrayList();
  private T b;
  private d<T> c;
  private a d;
  
  c(d<T> paramd)
  {
    this.c = paramd;
  }
  
  private void h(a parama, T paramT)
  {
    if ((!this.a.isEmpty()) && (parama != null)) {
      if ((paramT != null) && (!c(paramT))) {
        parama.a(this.a);
      } else {
        parama.b(this.a);
      }
    }
  }
  
  public void a(T paramT)
  {
    this.b = paramT;
    h(this.d, paramT);
  }
  
  abstract boolean b(p paramp);
  
  abstract boolean c(T paramT);
  
  public boolean d(String paramString)
  {
    Object localObject = this.b;
    boolean bool;
    if ((localObject != null) && (c(localObject)) && (this.a.contains(paramString))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void e(Iterable<p> paramIterable)
  {
    this.a.clear();
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext())
    {
      p localp = (p)paramIterable.next();
      if (b(localp)) {
        this.a.add(localp.a);
      }
    }
    if (this.a.isEmpty()) {
      this.c.c(this);
    } else {
      this.c.a(this);
    }
    h(this.d, this.b);
  }
  
  public void f()
  {
    if (!this.a.isEmpty())
    {
      this.a.clear();
      this.c.c(this);
    }
  }
  
  public void g(a parama)
  {
    if (this.d != parama)
    {
      this.d = parama;
      h(parama, this.b);
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(List<String> paramList);
    
    public abstract void b(List<String> paramList);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     u0.c
 * JD-Core Version:    0.7.0.1
 */