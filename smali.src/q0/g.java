package q0;

import android.text.TextUtils;
import androidx.work.ExistingWorkPolicy;
import androidx.work.k;
import androidx.work.m;
import androidx.work.q;
import androidx.work.s;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import y0.b;
import z0.a;

public class g
  extends q
{
  private static final String j = k.f("WorkContinuationImpl");
  private final i a;
  private final String b;
  private final ExistingWorkPolicy c;
  private final List<? extends s> d;
  private final List<String> e;
  private final List<String> f;
  private final List<g> g;
  private boolean h;
  private m i;
  
  public g(i parami, String paramString, ExistingWorkPolicy paramExistingWorkPolicy, List<? extends s> paramList)
  {
    this(parami, paramString, paramExistingWorkPolicy, paramList, null);
  }
  
  public g(i parami, String paramString, ExistingWorkPolicy paramExistingWorkPolicy, List<? extends s> paramList, List<g> paramList1)
  {
    this.a = parami;
    this.b = paramString;
    this.c = paramExistingWorkPolicy;
    this.d = paramList;
    this.g = paramList1;
    this.e = new ArrayList(paramList.size());
    this.f = new ArrayList();
    if (paramList1 != null)
    {
      parami = paramList1.iterator();
      while (parami.hasNext())
      {
        paramString = (g)parami.next();
        this.f.addAll(paramString.f);
      }
    }
    for (int k = 0; k < paramList.size(); k++)
    {
      parami = ((s)paramList.get(k)).b();
      this.e.add(parami);
      this.f.add(parami);
    }
  }
  
  public g(i parami, List<? extends s> paramList)
  {
    this(parami, null, ExistingWorkPolicy.KEEP, paramList, null);
  }
  
  private static boolean i(g paramg, Set<String> paramSet)
  {
    paramSet.addAll(paramg.c());
    Object localObject = l(paramg);
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext()) {
      if (((Set)localObject).contains((String)localIterator.next())) {
        return true;
      }
    }
    localObject = paramg.e();
    if ((localObject != null) && (!((List)localObject).isEmpty()))
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        if (i((g)((Iterator)localObject).next(), paramSet)) {
          return true;
        }
      }
    }
    paramSet.removeAll(paramg.c());
    return false;
  }
  
  public static Set<String> l(g paramg)
  {
    HashSet localHashSet = new HashSet();
    paramg = paramg.e();
    if ((paramg != null) && (!paramg.isEmpty()))
    {
      paramg = paramg.iterator();
      while (paramg.hasNext()) {
        localHashSet.addAll(((g)paramg.next()).c());
      }
    }
    return localHashSet;
  }
  
  public m a()
  {
    if (!this.h)
    {
      b localb = new b(this);
      this.a.s().b(localb);
      this.i = localb.d();
    }
    else
    {
      k.c().h(j, String.format("Already enqueued work ids (%s)", new Object[] { TextUtils.join(", ", this.e) }), new Throwable[0]);
    }
    return this.i;
  }
  
  public ExistingWorkPolicy b()
  {
    return this.c;
  }
  
  public List<String> c()
  {
    return this.e;
  }
  
  public String d()
  {
    return this.b;
  }
  
  public List<g> e()
  {
    return this.g;
  }
  
  public List<? extends s> f()
  {
    return this.d;
  }
  
  public i g()
  {
    return this.a;
  }
  
  public boolean h()
  {
    return i(this, new HashSet());
  }
  
  public boolean j()
  {
    return this.h;
  }
  
  public void k()
  {
    this.h = true;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     q0.g
 * JD-Core Version:    0.7.0.1
 */