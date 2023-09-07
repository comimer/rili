package com.xiaomi.accountsdk.account.exception;

public class InvalidParameterException
  extends AccountException
{
  public String paramType;
  
  public InvalidParameterException(int paramInt, String paramString)
  {
    super(paramInt, paramString);
  }
  
  public InvalidParameterException(String paramString)
  {
    this(null, paramString);
  }
  
  public InvalidParameterException(String paramString1, String paramString2)
  {
    super(-1, paramString2);
    this.paramType = paramString1;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.exception.InvalidParameterException
 * JD-Core Version:    0.7.0.1
 */