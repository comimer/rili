package com.market.sdk.reflect;

public class IllegalArgumentException
  extends ReflectionException
{
  private static final long serialVersionUID = -7034897190745766945L;
  
  public IllegalArgumentException() {}
  
  public IllegalArgumentException(String paramString)
  {
    super(paramString);
  }
  
  public IllegalArgumentException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public IllegalArgumentException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.reflect.IllegalArgumentException
 * JD-Core Version:    0.7.0.1
 */