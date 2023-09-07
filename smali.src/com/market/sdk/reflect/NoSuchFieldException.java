package com.market.sdk.reflect;

public class NoSuchFieldException
  extends ReflectionException
{
  private static final long serialVersionUID = -7034897190745766943L;
  
  public NoSuchFieldException() {}
  
  public NoSuchFieldException(String paramString)
  {
    super(paramString);
  }
  
  public NoSuchFieldException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public NoSuchFieldException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.reflect.NoSuchFieldException
 * JD-Core Version:    0.7.0.1
 */