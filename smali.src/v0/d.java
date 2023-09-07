package v0;

import android.content.Context;
import androidx.work.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;

public abstract class d<T>
{
  private static final String f = k.f("ConstraintTracker");
  protected final z0.a a;
  protected final Context b;
  private final Object c = new Object();
  private final Set<t0.a<T>> d = new LinkedHashSet();
  T e;
  
  d(Context paramContext, z0.a parama)
  {
    this.b = paramContext.getApplicationContext();
    this.a = parama;
  }
  
  public void a(t0.a<T> parama)
  {
    synchronized (this.c)
    {
      if (this.d.add(parama))
      {
        if (this.d.size() == 1)
        {
          this.e = b();
          k.c().a(f, String.format("%s: initial state = %s", new Object[] { getClass().getSimpleName(), this.e }), new Throwable[0]);
          e();
        }
        parama.a(this.e);
      }
      return;
    }
  }
  
  public abstract T b();
  
  public void c(t0.a<T> parama)
  {
    synchronized (this.c)
    {
      if ((this.d.remove(parama)) && (this.d.isEmpty())) {
        f();
      }
      return;
    }
  }
  
  public void d(T paramT)
  {
    synchronized (this.c)
    {
      Object localObject2 = this.e;
      if ((localObject2 != paramT) && ((localObject2 == null) || (!localObject2.equals(paramT))))
      {
        this.e = paramT;
        ArrayList localArrayList = new java/util/ArrayList;
        localArrayList.<init>(this.d);
        paramT = this.a.a();
        localObject2 = new v0/d$a;
        ((a)localObject2).<init>(this, localArrayList);
        paramT.execute((Runnable)localObject2);
        return;
      }
      return;
    }
  }
  
  public abstract void e();
  
  public abstract void f();
  
  class a
    implements Runnable
  {
    a(List paramList) {}
    
    public void run()
    {
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext()) {
        ((t0.a)localIterator.next()).a(d.this.e);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     v0.d
 * JD-Core Version:    0.7.0.1
 */