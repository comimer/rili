package x5;

public class d<T>
{
  private T a;
  
  public d(T paramT)
  {
    this.a = paramT;
  }
  
  public T a()
  {
    try
    {
      Object localObject1 = this.a;
      return localObject1;
    }
    finally
    {
      localObject2 = finally;
      throw localObject2;
    }
  }
  
  public void b(T paramT)
  {
    try
    {
      this.a = paramT;
      return;
    }
    finally
    {
      paramT = finally;
      throw paramT;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x5.d
 * JD-Core Version:    0.7.0.1
 */