package androidx.room;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

class s
  implements Executor
{
  private final Executor a;
  private final ArrayDeque<Runnable> b = new ArrayDeque();
  private Runnable c;
  
  s(Executor paramExecutor)
  {
    this.a = paramExecutor;
  }
  
  void a()
  {
    try
    {
      Runnable localRunnable = (Runnable)this.b.poll();
      this.c = localRunnable;
      if (localRunnable != null) {
        this.a.execute(localRunnable);
      }
      return;
    }
    finally {}
  }
  
  public void execute(Runnable paramRunnable)
  {
    try
    {
      ArrayDeque localArrayDeque = this.b;
      a locala = new androidx/room/s$a;
      locala.<init>(this, paramRunnable);
      localArrayDeque.offer(locala);
      if (this.c == null) {
        a();
      }
      return;
    }
    finally
    {
      paramRunnable = finally;
      throw paramRunnable;
    }
  }
  
  class a
    implements Runnable
  {
    a(Runnable paramRunnable) {}
    
    public void run()
    {
      try
      {
        this.a.run();
        return;
      }
      finally
      {
        s.this.a();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.room.s
 * JD-Core Version:    0.7.0.1
 */