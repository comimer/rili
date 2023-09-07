package com.bumptech.glide.load;

import java.io.IOException;

public final class HttpException
  extends IOException
{
  public static final int UNKNOWN = -1;
  private static final long serialVersionUID = 1L;
  private final int statusCode;
  
  public HttpException(int paramInt)
  {
    this("Http request failed", paramInt);
  }
  
  @Deprecated
  public HttpException(String paramString)
  {
    this(paramString, -1);
  }
  
  public HttpException(String paramString, int paramInt)
  {
    this(paramString, paramInt, null);
  }
  
  public HttpException(String paramString, int paramInt, Throwable paramThrowable)
  {
    super(localStringBuilder.toString(), paramThrowable);
    this.statusCode = paramInt;
  }
  
  public int getStatusCode()
  {
    return this.statusCode;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.HttpException
 * JD-Core Version:    0.7.0.1
 */