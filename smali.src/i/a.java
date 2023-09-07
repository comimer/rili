package i;

import java.util.concurrent.Executor;

public class a
  extends d
{
  private static volatile a c;
  private static final Executor d = new a();
  private static final Executor e = new b();
  private d a;
  private d b;
  
  private a()
  {
    c localc = new c();
    this.b = localc;
    this.a = localc;
  }
  
  public static Executor e()
  {
    return e;
  }
  
  public static a f()
  {
    if (c != null) {
      return c;
    }
    try
    {
      if (c == null)
      {
        a locala = new i/a;
        locala.<init>();
        c = locala;
      }
      return c;
    }
    finally {}
  }
  
  public void a(Runnable paramRunnable)
  {
    this.a.a(paramRunnable);
  }
  
  public boolean c()
  {
    return this.a.c();
  }
  
  public void d(Runnable paramRunnable)
  {
    this.a.d(paramRunnable);
  }
  
  static final class a
    implements Executor
  {
    public void execute(Runnable paramRunnable)
    {
      a.f().d(paramRunnable);
    }
  }
  
  static final class b
    implements Executor
  {
    public void execute(Runnable paramRunnable)
    {
      a.f().a(paramRunnable);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     i.a
 * JD-Core Version:    0.7.0.1
 */