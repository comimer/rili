package androidx.lifecycle;

import android.annotation.SuppressLint;
import j.b;
import j.b.d;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map.Entry;

public class o
  extends Lifecycle
{
  private j.a<m, a> b = new j.a();
  private Lifecycle.State c;
  private final WeakReference<n> d;
  private int e = 0;
  private boolean f = false;
  private boolean g = false;
  private ArrayList<Lifecycle.State> h = new ArrayList();
  private final boolean i;
  
  public o(n paramn)
  {
    this(paramn, true);
  }
  
  private o(n paramn, boolean paramBoolean)
  {
    this.d = new WeakReference(paramn);
    this.c = Lifecycle.State.INITIALIZED;
    this.i = paramBoolean;
  }
  
  private void d(n paramn)
  {
    Iterator localIterator = this.b.descendingIterator();
    while ((localIterator.hasNext()) && (!this.g))
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      a locala = (a)localEntry.getValue();
      while ((locala.a.compareTo(this.c) > 0) && (!this.g) && (this.b.contains((m)localEntry.getKey())))
      {
        Lifecycle.Event localEvent = Lifecycle.Event.downFrom(locala.a);
        if (localEvent == null) {
          break label125;
        }
        n(localEvent.getTargetState());
        locala.a(paramn, localEvent);
        m();
      }
      continue;
      label125:
      paramn = new StringBuilder();
      paramn.append("no event down from ");
      paramn.append(locala.a);
      throw new IllegalStateException(paramn.toString());
    }
  }
  
  private Lifecycle.State e(m paramm)
  {
    paramm = this.b.n(paramm);
    Object localObject = null;
    if (paramm != null) {
      paramm = ((a)paramm.getValue()).a;
    } else {
      paramm = null;
    }
    if (!this.h.isEmpty())
    {
      localObject = this.h;
      localObject = (Lifecycle.State)((ArrayList)localObject).get(((ArrayList)localObject).size() - 1);
    }
    return k(k(this.c, paramm), (Lifecycle.State)localObject);
  }
  
  @SuppressLint({"RestrictedApi"})
  private void f(String paramString)
  {
    if ((this.i) && (!i.a.f().c()))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Method ");
      localStringBuilder.append(paramString);
      localStringBuilder.append(" must be called on the main thread");
      throw new IllegalStateException(localStringBuilder.toString());
    }
  }
  
  private void g(n paramn)
  {
    b.d locald = this.b.h();
    while ((locald.hasNext()) && (!this.g))
    {
      Map.Entry localEntry = (Map.Entry)locald.next();
      a locala = (a)localEntry.getValue();
      while ((locala.a.compareTo(this.c) < 0) && (!this.g) && (this.b.contains((m)localEntry.getKey())))
      {
        n(locala.a);
        Lifecycle.Event localEvent = Lifecycle.Event.upFrom(locala.a);
        if (localEvent == null) {
          break label125;
        }
        locala.a(paramn, localEvent);
        m();
      }
      continue;
      label125:
      paramn = new StringBuilder();
      paramn.append("no event up from ");
      paramn.append(locala.a);
      throw new IllegalStateException(paramn.toString());
    }
  }
  
  private boolean i()
  {
    int j = this.b.size();
    boolean bool = true;
    if (j == 0) {
      return true;
    }
    Lifecycle.State localState1 = ((a)this.b.c().getValue()).a;
    Lifecycle.State localState2 = ((a)this.b.j().getValue()).a;
    if ((localState1 != localState2) || (this.c != localState2)) {
      bool = false;
    }
    return bool;
  }
  
  static Lifecycle.State k(Lifecycle.State paramState1, Lifecycle.State paramState2)
  {
    Lifecycle.State localState = paramState1;
    if (paramState2 != null)
    {
      localState = paramState1;
      if (paramState2.compareTo(paramState1) < 0) {
        localState = paramState2;
      }
    }
    return localState;
  }
  
  private void l(Lifecycle.State paramState)
  {
    if (this.c == paramState) {
      return;
    }
    this.c = paramState;
    if ((!this.f) && (this.e == 0))
    {
      this.f = true;
      p();
      this.f = false;
      return;
    }
    this.g = true;
  }
  
  private void m()
  {
    ArrayList localArrayList = this.h;
    localArrayList.remove(localArrayList.size() - 1);
  }
  
  private void n(Lifecycle.State paramState)
  {
    this.h.add(paramState);
  }
  
  private void p()
  {
    n localn = (n)this.d.get();
    if (localn != null)
    {
      while (!i())
      {
        this.g = false;
        if (this.c.compareTo(((a)this.b.c().getValue()).a) < 0) {
          d(localn);
        }
        Map.Entry localEntry = this.b.j();
        if ((!this.g) && (localEntry != null) && (this.c.compareTo(((a)localEntry.getValue()).a) > 0)) {
          g(localn);
        }
      }
      this.g = false;
      return;
    }
    throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
  }
  
  public void a(m paramm)
  {
    f("addObserver");
    Object localObject1 = this.c;
    Object localObject2 = Lifecycle.State.DESTROYED;
    if (localObject1 != localObject2) {
      localObject2 = Lifecycle.State.INITIALIZED;
    }
    localObject1 = new a(paramm, (Lifecycle.State)localObject2);
    if ((a)this.b.l(paramm, localObject1) != null) {
      return;
    }
    n localn = (n)this.d.get();
    if (localn == null) {
      return;
    }
    int j;
    if ((this.e == 0) && (!this.f)) {
      j = 0;
    } else {
      j = 1;
    }
    localObject2 = e(paramm);
    this.e += 1;
    while ((((a)localObject1).a.compareTo((Enum)localObject2) < 0) && (this.b.contains(paramm)))
    {
      n(((a)localObject1).a);
      localObject2 = Lifecycle.Event.upFrom(((a)localObject1).a);
      if (localObject2 != null)
      {
        ((a)localObject1).a(localn, (Lifecycle.Event)localObject2);
        m();
        localObject2 = e(paramm);
      }
      else
      {
        paramm = new StringBuilder();
        paramm.append("no event up from ");
        paramm.append(((a)localObject1).a);
        throw new IllegalStateException(paramm.toString());
      }
    }
    if (j == 0) {
      p();
    }
    this.e -= 1;
  }
  
  public Lifecycle.State b()
  {
    return this.c;
  }
  
  public void c(m paramm)
  {
    f("removeObserver");
    this.b.m(paramm);
  }
  
  public void h(Lifecycle.Event paramEvent)
  {
    f("handleLifecycleEvent");
    l(paramEvent.getTargetState());
  }
  
  @Deprecated
  public void j(Lifecycle.State paramState)
  {
    f("markState");
    o(paramState);
  }
  
  public void o(Lifecycle.State paramState)
  {
    f("setCurrentState");
    l(paramState);
  }
  
  static class a
  {
    Lifecycle.State a;
    l b;
    
    a(m paramm, Lifecycle.State paramState)
    {
      this.b = r.f(paramm);
      this.a = paramState;
    }
    
    void a(n paramn, Lifecycle.Event paramEvent)
    {
      Lifecycle.State localState = paramEvent.getTargetState();
      this.a = o.k(this.a, localState);
      this.b.g(paramn, paramEvent);
      this.a = localState;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.o
 * JD-Core Version:    0.7.0.1
 */