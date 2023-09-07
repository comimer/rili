package androidx.core.view;

import android.annotation.SuppressLint;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle.State;
import androidx.lifecycle.l;
import androidx.lifecycle.n;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

public class k
{
  private final Runnable a;
  private final CopyOnWriteArrayList<m> b = new CopyOnWriteArrayList();
  private final Map<m, a> c = new HashMap();
  
  public k(Runnable paramRunnable)
  {
    this.a = paramRunnable;
  }
  
  public void c(m paramm)
  {
    this.b.add(paramm);
    this.a.run();
  }
  
  public void d(m paramm, n paramn)
  {
    c(paramm);
    paramn = paramn.getLifecycle();
    Object localObject = (a)this.c.remove(paramm);
    if (localObject != null) {
      ((a)localObject).a();
    }
    localObject = new i(this, paramm);
    this.c.put(paramm, new a(paramn, (l)localObject));
  }
  
  @SuppressLint({"LambdaLast"})
  public void e(m paramm, n paramn, Lifecycle.State paramState)
  {
    paramn = paramn.getLifecycle();
    a locala = (a)this.c.remove(paramm);
    if (locala != null) {
      locala.a();
    }
    paramState = new j(this, paramState, paramm);
    this.c.put(paramm, new a(paramn, paramState));
  }
  
  public void h(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext()) {
      ((m)localIterator.next()).b(paramMenu, paramMenuInflater);
    }
  }
  
  public boolean i(MenuItem paramMenuItem)
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext()) {
      if (((m)localIterator.next()).a(paramMenuItem)) {
        return true;
      }
    }
    return false;
  }
  
  public void j(m paramm)
  {
    this.b.remove(paramm);
    paramm = (a)this.c.remove(paramm);
    if (paramm != null) {
      paramm.a();
    }
    this.a.run();
  }
  
  private static class a
  {
    final Lifecycle a;
    private l b;
    
    a(Lifecycle paramLifecycle, l paraml)
    {
      this.a = paramLifecycle;
      this.b = paraml;
      paramLifecycle.a(paraml);
    }
    
    void a()
    {
      this.a.c(this.b);
      this.b = null;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.k
 * JD-Core Version:    0.7.0.1
 */