package j3;

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

public class a<V>
  extends FutureTask<V>
{
  public a()
  {
    super(new a());
  }
  
  public V get()
  {
    try
    {
      Object localObject = super.get();
      return localObject;
    }
    catch (Exception localException) {}
    return null;
  }
  
  public void set(V paramV)
  {
    super.set(paramV);
  }
  
  class a
    implements Callable<V>
  {
    public V call()
      throws Exception
    {
      throw new IllegalStateException("this should never be called");
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j3.a
 * JD-Core Version:    0.7.0.1
 */