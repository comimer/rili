package androidx.core.util;

public class g<T>
  extends f<T>
{
  private final Object c = new Object();
  
  public g(int paramInt)
  {
    super(paramInt);
  }
  
  public boolean a(T paramT)
  {
    synchronized (this.c)
    {
      boolean bool = super.a(paramT);
      return bool;
    }
  }
  
  public T b()
  {
    synchronized (this.c)
    {
      Object localObject2 = super.b();
      return localObject2;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.util.g
 * JD-Core Version:    0.7.0.1
 */