package com.market.sdk.reflect;

public class NoSuchMethodException
  extends ReflectionException
{
  private static final long serialVersionUID = -7034897190745766942L;
  
  public NoSuchMethodException() {}
  
  public NoSuchMethodException(String paramString)
  {
    super(paramString);
  }
  
  public NoSuchMethodException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public NoSuchMethodException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.reflect.NoSuchMethodException
 * JD-Core Version:    0.7.0.1
 */