package i;

public abstract class d
{
  public abstract void a(Runnable paramRunnable);
  
  public void b(Runnable paramRunnable)
  {
    if (c()) {
      paramRunnable.run();
    } else {
      d(paramRunnable);
    }
  }
  
  public abstract boolean c();
  
  public abstract void d(Runnable paramRunnable);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     i.d
 * JD-Core Version:    0.7.0.1
 */