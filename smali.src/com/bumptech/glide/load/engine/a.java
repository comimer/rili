package com.bumptech.glide.load.engine;

import android.os.Process;
import f3.j;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import n2.b;

final class a
{
  private final boolean a;
  private final Executor b;
  final Map<b, d> c = new HashMap();
  private final ReferenceQueue<n<?>> d = new ReferenceQueue();
  private n.a e;
  private volatile boolean f;
  private volatile c g;
  
  a(boolean paramBoolean)
  {
    this(paramBoolean, Executors.newSingleThreadExecutor(new a()));
  }
  
  a(boolean paramBoolean, Executor paramExecutor)
  {
    this.a = paramBoolean;
    this.b = paramExecutor;
    paramExecutor.execute(new b());
  }
  
  void a(b paramb, n<?> paramn)
  {
    try
    {
      d locald = new com/bumptech/glide/load/engine/a$d;
      locald.<init>(paramb, paramn, this.d, this.a);
      paramb = (d)this.c.put(paramb, locald);
      if (paramb != null) {
        paramb.a();
      }
      return;
    }
    finally {}
  }
  
  void b()
  {
    while (!this.f) {
      try
      {
        c((d)this.d.remove());
        c localc = this.g;
        if (localc != null) {
          localc.a();
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        Thread.currentThread().interrupt();
      }
    }
  }
  
  void c(d paramd)
  {
    try
    {
      this.c.remove(paramd.a);
      if (paramd.b)
      {
        Object localObject = paramd.c;
        if (localObject != null)
        {
          localObject = new n((s)localObject, true, false, paramd.a, this.e);
          this.e.d(paramd.a, (n)localObject);
          return;
        }
      }
      return;
    }
    finally {}
  }
  
  void d(b paramb)
  {
    try
    {
      paramb = (d)this.c.remove(paramb);
      if (paramb != null) {
        paramb.a();
      }
      return;
    }
    finally {}
  }
  
  n<?> e(b paramb)
  {
    try
    {
      d locald = (d)this.c.get(paramb);
      if (locald == null) {
        return null;
      }
      paramb = (n)locald.get();
      if (paramb == null) {
        c(locald);
      }
      return paramb;
    }
    finally {}
  }
  
  /* Error */
  void f(n.a parama)
  {
    // Byte code:
    //   0: aload_1
    //   1: monitorenter
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: aload_1
    //   6: putfield 120	com/bumptech/glide/load/engine/a:e	Lcom/bumptech/glide/load/engine/n$a;
    //   9: aload_0
    //   10: monitorexit
    //   11: aload_1
    //   12: monitorexit
    //   13: return
    //   14: astore_2
    //   15: aload_0
    //   16: monitorexit
    //   17: aload_2
    //   18: athrow
    //   19: astore_2
    //   20: aload_1
    //   21: monitorexit
    //   22: aload_2
    //   23: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	24	0	this	a
    //   0	24	1	parama	n.a
    //   14	4	2	localObject1	Object
    //   19	4	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   4	11	14	finally
    //   15	17	14	finally
    //   2	4	19	finally
    //   11	13	19	finally
    //   17	19	19	finally
    //   20	22	19	finally
  }
  
  class a
    implements ThreadFactory
  {
    public Thread newThread(final Runnable paramRunnable)
    {
      return new Thread(new a(paramRunnable), "glide-active-resources");
    }
    
    class a
      implements Runnable
    {
      a(Runnable paramRunnable) {}
      
      public void run()
      {
        Process.setThreadPriority(10);
        paramRunnable.run();
      }
    }
  }
  
  class b
    implements Runnable
  {
    b() {}
    
    public void run()
    {
      a.this.b();
    }
  }
  
  static abstract interface c
  {
    public abstract void a();
  }
  
  static final class d
    extends WeakReference<n<?>>
  {
    final b a;
    final boolean b;
    s<?> c;
    
    d(b paramb, n<?> paramn, ReferenceQueue<? super n<?>> paramReferenceQueue, boolean paramBoolean)
    {
      super(paramReferenceQueue);
      this.a = ((b)j.d(paramb));
      if ((paramn.f()) && (paramBoolean)) {
        paramb = (s)j.d(paramn.e());
      } else {
        paramb = null;
      }
      this.c = paramb;
      this.b = paramn.f();
    }
    
    void a()
    {
      this.c = null;
      clear();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.a
 * JD-Core Version:    0.7.0.1
 */