package r0;

import android.content.Context;
import android.text.TextUtils;
import androidx.work.WorkInfo.State;
import androidx.work.k;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import q0.e;
import t0.c;
import x0.p;

public class b
  implements e, c, q0.b
{
  private static final String i = k.f("GreedyScheduler");
  private final Context a;
  private final q0.i b;
  private final t0.d c;
  private final Set<p> d = new HashSet();
  private a e;
  private boolean f;
  private final Object g;
  Boolean h;
  
  public b(Context paramContext, androidx.work.a parama, z0.a parama1, q0.i parami)
  {
    this.a = paramContext;
    this.b = parami;
    this.c = new t0.d(paramContext, parama1, this);
    this.e = new a(this, parama.k());
    this.g = new Object();
  }
  
  private void g()
  {
    androidx.work.a locala = this.b.l();
    this.h = Boolean.valueOf(y0.i.b(this.a, locala));
  }
  
  private void h()
  {
    if (!this.f)
    {
      this.b.p().d(this);
      this.f = true;
    }
  }
  
  private void i(String paramString)
  {
    synchronized (this.g)
    {
      Iterator localIterator = this.d.iterator();
      while (localIterator.hasNext())
      {
        p localp = (p)localIterator.next();
        if (localp.a.equals(paramString))
        {
          k.c().a(i, String.format("Stopping tracking for %s", new Object[] { paramString }), new Throwable[0]);
          this.d.remove(localp);
          this.c.d(this.d);
        }
      }
      return;
    }
  }
  
  public boolean a()
  {
    return false;
  }
  
  public void b(List<String> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      paramList = (String)localIterator.next();
      k.c().a(i, String.format("Constraints not met: Cancelling work ID %s", new Object[] { paramList }), new Throwable[0]);
      this.b.A(paramList);
    }
  }
  
  public void c(String paramString, boolean paramBoolean)
  {
    i(paramString);
  }
  
  public void d(String paramString)
  {
    if (this.h == null) {
      g();
    }
    if (!this.h.booleanValue())
    {
      k.c().d(i, "Ignoring schedule request in non-main process", new Throwable[0]);
      return;
    }
    h();
    k.c().a(i, String.format("Cancelling work ID %s", new Object[] { paramString }), new Throwable[0]);
    a locala = this.e;
    if (locala != null) {
      locala.b(paramString);
    }
    this.b.A(paramString);
  }
  
  public void e(p... arg1)
  {
    if (this.h == null) {
      g();
    }
    if (!this.h.booleanValue())
    {
      k.c().d(i, "Ignoring schedule request in a secondary process", new Throwable[0]);
      return;
    }
    h();
    HashSet localHashSet1 = new HashSet();
    HashSet localHashSet2 = new HashSet();
    int j = ???.length;
    for (int k = 0; k < j; k++)
    {
      p localp = ???[k];
      long l1 = localp.a();
      long l2 = System.currentTimeMillis();
      if (localp.b == WorkInfo.State.ENQUEUED) {
        if (l2 < l1)
        {
          a locala = this.e;
          if (locala != null) {
            locala.a(localp);
          }
        }
        else if (localp.b())
        {
          if (localp.j.h())
          {
            k.c().a(i, String.format("Ignoring WorkSpec %s, Requires device idle.", new Object[] { localp }), new Throwable[0]);
          }
          else if (localp.j.e())
          {
            k.c().a(i, String.format("Ignoring WorkSpec %s, Requires ContentUri triggers.", new Object[] { localp }), new Throwable[0]);
          }
          else
          {
            localHashSet1.add(localp);
            localHashSet2.add(localp.a);
          }
        }
        else
        {
          k.c().a(i, String.format("Starting work for %s", new Object[] { localp.a }), new Throwable[0]);
          this.b.x(localp.a);
        }
      }
    }
    synchronized (this.g)
    {
      if (!localHashSet1.isEmpty())
      {
        k.c().a(i, String.format("Starting tracking for [%s]", new Object[] { TextUtils.join(",", localHashSet2) }), new Throwable[0]);
        this.d.addAll(localHashSet1);
        this.c.d(this.d);
      }
      return;
    }
  }
  
  public void f(List<String> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      String str = (String)paramList.next();
      k.c().a(i, String.format("Constraints met: Scheduling work ID %s", new Object[] { str }), new Throwable[0]);
      this.b.x(str);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r0.b
 * JD-Core Version:    0.7.0.1
 */