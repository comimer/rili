package androidx.room;

import android.annotation.SuppressLint;
import androidx.lifecycle.LiveData;
import i.a;
import i.d;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

class n<T>
  extends LiveData<T>
{
  final RoomDatabase l;
  final boolean m;
  final Callable<T> n;
  private final g o;
  final h.c p;
  final AtomicBoolean q = new AtomicBoolean(true);
  final AtomicBoolean r = new AtomicBoolean(false);
  final AtomicBoolean s = new AtomicBoolean(false);
  final Runnable t = new a();
  final Runnable u = new b();
  
  @SuppressLint({"RestrictedApi"})
  n(RoomDatabase paramRoomDatabase, g paramg, boolean paramBoolean, Callable<T> paramCallable, String[] paramArrayOfString)
  {
    this.l = paramRoomDatabase;
    this.m = paramBoolean;
    this.n = paramCallable;
    this.o = paramg;
    this.p = new c(paramArrayOfString);
  }
  
  protected void j()
  {
    super.j();
    this.o.b(this);
    p().execute(this.t);
  }
  
  protected void k()
  {
    super.k();
    this.o.c(this);
  }
  
  Executor p()
  {
    if (this.m) {
      return this.l.getTransactionExecutor();
    }
    return this.l.getQueryExecutor();
  }
  
  class a
    implements Runnable
  {
    a() {}
    
    public void run()
    {
      if (n.this.s.compareAndSet(false, true)) {
        n.this.l.getInvalidationTracker().b(n.this.p);
      }
      int i;
      do
      {
        if (n.this.r.compareAndSet(false, true))
        {
          Object localObject1 = null;
          i = 0;
          try
          {
            for (;;)
            {
              boolean bool = n.this.q.compareAndSet(true, false);
              if (bool) {
                try
                {
                  localObject1 = n.this.n.call();
                  i = 1;
                }
                catch (Exception localException)
                {
                  localObject1 = new java/lang/RuntimeException;
                  ((RuntimeException)localObject1).<init>("Exception while computing database live data.", localException);
                  throw ((Throwable)localObject1);
                }
              }
            }
            if (i != 0) {
              n.o(n.this, localObject1);
            }
          }
          finally
          {
            n.this.r.set(false);
          }
        }
        i = 0;
      } while ((i != 0) && (n.this.q.get()));
    }
  }
  
  class b
    implements Runnable
  {
    b() {}
    
    public void run()
    {
      boolean bool = n.this.g();
      if ((n.this.q.compareAndSet(false, true)) && (bool)) {
        n.this.p().execute(n.this.t);
      }
    }
  }
  
  class c
    extends h.c
  {
    c(String[] paramArrayOfString)
    {
      super();
    }
    
    public void b(Set<String> paramSet)
    {
      a.f().b(n.this.u);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.room.n
 * JD-Core Version:    0.7.0.1
 */