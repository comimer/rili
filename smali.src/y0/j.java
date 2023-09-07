package y0;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

public class j
  implements Executor
{
  private final ArrayDeque<a> a;
  private final Executor b;
  private final Object c;
  private volatile Runnable d;
  
  public j(Executor paramExecutor)
  {
    this.b = paramExecutor;
    this.a = new ArrayDeque();
    this.c = new Object();
  }
  
  public boolean a()
  {
    synchronized (this.c)
    {
      boolean bool;
      if (!this.a.isEmpty()) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
  
  void b()
  {
    synchronized (this.c)
    {
      Runnable localRunnable = (Runnable)this.a.poll();
      this.d = localRunnable;
      if (localRunnable != null) {
        this.b.execute(this.d);
      }
      return;
    }
  }
  
  public void execute(Runnable paramRunnable)
  {
    synchronized (this.c)
    {
      ArrayDeque localArrayDeque = this.a;
      a locala = new y0/j$a;
      locala.<init>(this, paramRunnable);
      localArrayDeque.add(locala);
      if (this.d == null) {
        b();
      }
      return;
    }
  }
  
  static class a
    implements Runnable
  {
    final j a;
    final Runnable b;
    
    a(j paramj, Runnable paramRunnable)
    {
      this.a = paramj;
      this.b = paramRunnable;
    }
    
    public void run()
    {
      try
      {
        this.b.run();
        return;
      }
      finally
      {
        this.a.b();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y0.j
 * JD-Core Version:    0.7.0.1
 */