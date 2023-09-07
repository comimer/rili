package com.xiaomi.passport.snscorelib.internal.exception;

import com.xiaomi.accountsdk.account.serverpassthrougherror.data.PassThroughErrorInfo;

public class SNSLoginException
  extends Exception
{
  private int code;
  private PassThroughErrorInfo serverError;
  
  public SNSLoginException(int paramInt, String paramString)
  {
    super(paramString);
    this.serverError = null;
    this.code = paramInt;
  }
  
  public SNSLoginException(int paramInt, String paramString, PassThroughErrorInfo paramPassThroughErrorInfo)
  {
    super(paramString);
    this.code = paramInt;
    this.serverError = paramPassThroughErrorInfo;
  }
  
  public int getCode()
  {
    return this.code;
  }
  
  public PassThroughErrorInfo getServerError()
  {
    return this.serverError;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.snscorelib.internal.exception.SNSLoginException
 * JD-Core Version:    0.7.0.1
 */