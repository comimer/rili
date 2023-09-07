package androidx.work;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public final class a
{
  final Executor a;
  final Executor b;
  final t c;
  final i d;
  final p e;
  final g f;
  final String g;
  final int h;
  final int i;
  final int j;
  final int k;
  private final boolean l;
  
  a(b paramb)
  {
    Object localObject = paramb.a;
    if (localObject == null) {
      this.a = a(false);
    } else {
      this.a = ((Executor)localObject);
    }
    localObject = paramb.d;
    if (localObject == null)
    {
      this.l = true;
      this.b = a(true);
    }
    else
    {
      this.l = false;
      this.b = ((Executor)localObject);
    }
    localObject = paramb.b;
    if (localObject == null) {
      this.c = t.c();
    } else {
      this.c = ((t)localObject);
    }
    localObject = paramb.c;
    if (localObject == null) {
      this.d = i.c();
    } else {
      this.d = ((i)localObject);
    }
    localObject = paramb.e;
    if (localObject == null) {
      this.e = new q0.a();
    } else {
      this.e = ((p)localObject);
    }
    this.h = paramb.h;
    this.i = paramb.i;
    this.j = paramb.j;
    this.k = paramb.k;
    this.f = paramb.f;
    this.g = paramb.g;
  }
  
  private Executor a(boolean paramBoolean)
  {
    return Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), b(paramBoolean));
  }
  
  private ThreadFactory b(final boolean paramBoolean)
  {
    return new a(paramBoolean);
  }
  
  public String c()
  {
    return this.g;
  }
  
  public g d()
  {
    return this.f;
  }
  
  public Executor e()
  {
    return this.a;
  }
  
  public i f()
  {
    return this.d;
  }
  
  public int g()
  {
    return this.j;
  }
  
  public int h()
  {
    return this.k;
  }
  
  public int i()
  {
    return this.i;
  }
  
  public int j()
  {
    return this.h;
  }
  
  public p k()
  {
    return this.e;
  }
  
  public Executor l()
  {
    return this.b;
  }
  
  public t m()
  {
    return this.c;
  }
  
  class a
    implements ThreadFactory
  {
    private final AtomicInteger a = new AtomicInteger(0);
    
    a(boolean paramBoolean) {}
    
    public Thread newThread(Runnable paramRunnable)
    {
      String str;
      if (paramBoolean) {
        str = "WM.task-";
      } else {
        str = "androidx.work-";
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(str);
      localStringBuilder.append(this.a.incrementAndGet());
      return new Thread(paramRunnable, localStringBuilder.toString());
    }
  }
  
  public static final class b
  {
    Executor a;
    t b;
    i c;
    Executor d;
    p e;
    g f;
    String g;
    int h = 4;
    int i = 0;
    int j = 2147483647;
    int k = 20;
    
    public a a()
    {
      return new a(this);
    }
  }
  
  public static abstract interface c
  {
    public abstract a a();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.a
 * JD-Core Version:    0.7.0.1
 */