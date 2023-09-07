package f3;

import java.util.concurrent.Executor;

public final class e
{
  private static final Executor a = new a();
  private static final Executor b = new b();
  
  public static Executor a()
  {
    return b;
  }
  
  public static Executor b()
  {
    return a;
  }
  
  class a
    implements Executor
  {
    public void execute(Runnable paramRunnable)
    {
      k.u(paramRunnable);
    }
  }
  
  class b
    implements Executor
  {
    public void execute(Runnable paramRunnable)
    {
      paramRunnable.run();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f3.e
 * JD-Core Version:    0.7.0.1
 */