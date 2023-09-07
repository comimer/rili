package androidx.lifecycle;

import i.a;
import j.b;
import j.b.d;
import java.util.Iterator;
import java.util.Map.Entry;

public abstract class LiveData<T>
{
  static final Object k = new Object();
  final Object a = new Object();
  private b<v<? super T>, LiveData<T>.c> b = new b();
  int c = 0;
  private boolean d;
  private volatile Object e;
  volatile Object f;
  private int g;
  private boolean h;
  private boolean i;
  private final Runnable j;
  
  public LiveData()
  {
    Object localObject = k;
    this.f = localObject;
    this.j = new a();
    this.e = localObject;
    this.g = -1;
  }
  
  static void a(String paramString)
  {
    if (a.f().c()) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Cannot invoke ");
    localStringBuilder.append(paramString);
    localStringBuilder.append(" on a background thread");
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  private void c(LiveData<T>.c paramLiveData)
  {
    if (!paramLiveData.b) {
      return;
    }
    if (!paramLiveData.k())
    {
      paramLiveData.h(false);
      return;
    }
    int m = paramLiveData.c;
    int n = this.g;
    if (m >= n) {
      return;
    }
    paramLiveData.c = n;
    paramLiveData.a.d(this.e);
  }
  
  void b(int paramInt)
  {
    int m = this.c;
    this.c = (paramInt + m);
    if (this.d) {
      return;
    }
    this.d = true;
    try
    {
      for (;;)
      {
        int n = this.c;
        if (m == n) {
          break;
        }
        if ((m == 0) && (n > 0)) {
          paramInt = 1;
        } else {
          paramInt = 0;
        }
        if ((m > 0) && (n == 0)) {
          m = 1;
        } else {
          m = 0;
        }
        if (paramInt != 0) {
          j();
        } else if (m != 0) {
          k();
        }
        m = n;
      }
      return;
    }
    finally
    {
      this.d = false;
    }
  }
  
  void d(LiveData<T>.c paramLiveData)
  {
    if (this.h)
    {
      this.i = true;
      return;
    }
    this.h = true;
    do
    {
      this.i = false;
      LiveData<T>.c localLiveData;
      if (paramLiveData != null)
      {
        c(paramLiveData);
        localLiveData = null;
      }
      else
      {
        b.d locald = this.b.h();
        do
        {
          localLiveData = paramLiveData;
          if (!locald.hasNext()) {
            break;
          }
          c((c)((Map.Entry)locald.next()).getValue());
        } while (!this.i);
        localLiveData = paramLiveData;
      }
      paramLiveData = localLiveData;
    } while (this.i);
    this.h = false;
  }
  
  public T e()
  {
    Object localObject = this.e;
    if (localObject != k) {
      return localObject;
    }
    return null;
  }
  
  int f()
  {
    return this.g;
  }
  
  public boolean g()
  {
    boolean bool;
    if (this.c > 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void h(n paramn, v<? super T> paramv)
  {
    a("observe");
    if (paramn.getLifecycle().b() == Lifecycle.State.DESTROYED) {
      return;
    }
    LifecycleBoundObserver localLifecycleBoundObserver = new LifecycleBoundObserver(paramn, paramv);
    paramv = (c)this.b.l(paramv, localLifecycleBoundObserver);
    if ((paramv != null) && (!paramv.j(paramn))) {
      throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
    }
    if (paramv != null) {
      return;
    }
    paramn.getLifecycle().a(localLifecycleBoundObserver);
  }
  
  public void i(v<? super T> paramv)
  {
    a("observeForever");
    b localb = new b(paramv);
    paramv = (c)this.b.l(paramv, localb);
    if (!(paramv instanceof LifecycleBoundObserver))
    {
      if (paramv != null) {
        return;
      }
      localb.h(true);
      return;
    }
    throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
  }
  
  protected void j() {}
  
  protected void k() {}
  
  protected void l(T paramT)
  {
    synchronized (this.a)
    {
      int m;
      if (this.f == k) {
        m = 1;
      } else {
        m = 0;
      }
      this.f = paramT;
      if (m == 0) {
        return;
      }
      a.f().d(this.j);
      return;
    }
  }
  
  public void m(v<? super T> paramv)
  {
    a("removeObserver");
    paramv = (c)this.b.m(paramv);
    if (paramv == null) {
      return;
    }
    paramv.i();
    paramv.h(false);
  }
  
  protected void n(T paramT)
  {
    a("setValue");
    this.g += 1;
    this.e = paramT;
    d(null);
  }
  
  class LifecycleBoundObserver
    extends LiveData<T>.c
    implements l
  {
    final n e;
    
    LifecycleBoundObserver(v<? super T> paramv)
    {
      super(localv);
      this.e = paramv;
    }
    
    public void g(n paramn, Lifecycle.Event paramEvent)
    {
      paramn = this.e.getLifecycle().b();
      if (paramn == Lifecycle.State.DESTROYED)
      {
        LiveData.this.m(this.a);
        return;
      }
      paramEvent = null;
      while (paramEvent != paramn)
      {
        h(k());
        Lifecycle.State localState = this.e.getLifecycle().b();
        paramEvent = paramn;
        paramn = localState;
      }
    }
    
    void i()
    {
      this.e.getLifecycle().c(this);
    }
    
    boolean j(n paramn)
    {
      boolean bool;
      if (this.e == paramn) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    boolean k()
    {
      return this.e.getLifecycle().b().isAtLeast(Lifecycle.State.STARTED);
    }
  }
  
  class a
    implements Runnable
  {
    a() {}
    
    public void run()
    {
      synchronized (LiveData.this.a)
      {
        Object localObject2 = LiveData.this.f;
        LiveData.this.f = LiveData.k;
        LiveData.this.n(localObject2);
        return;
      }
    }
  }
  
  private class b
    extends LiveData<T>.c
  {
    b()
    {
      super(localv);
    }
    
    boolean k()
    {
      return true;
    }
  }
  
  private abstract class c
  {
    final v<? super T> a;
    boolean b;
    int c = -1;
    
    c()
    {
      Object localObject;
      this.a = localObject;
    }
    
    void h(boolean paramBoolean)
    {
      if (paramBoolean == this.b) {
        return;
      }
      this.b = paramBoolean;
      LiveData localLiveData = LiveData.this;
      int i;
      if (paramBoolean) {
        i = 1;
      } else {
        i = -1;
      }
      localLiveData.b(i);
      if (this.b) {
        LiveData.this.d(this);
      }
    }
    
    void i() {}
    
    boolean j(n paramn)
    {
      return false;
    }
    
    abstract boolean k();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.LiveData
 * JD-Core Version:    0.7.0.1
 */