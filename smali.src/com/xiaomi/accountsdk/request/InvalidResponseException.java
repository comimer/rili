package com.xiaomi.accountsdk.request;

import com.xiaomi.accountsdk.account.exception.AccountException;
import com.xiaomi.accountsdk.account.serverpassthrougherror.data.PassThroughErrorInfo;

public class InvalidResponseException
  extends AccountException
{
  private static final long serialVersionUID = 5544530065307643635L;
  public boolean isHtmlOr302;
  private PassThroughErrorInfo serverError;
  
  public InvalidResponseException(int paramInt, String paramString)
  {
    super(paramInt, paramString);
    this.isHtmlOr302 = false;
    this.serverError = null;
  }
  
  public InvalidResponseException(int paramInt, String paramString, PassThroughErrorInfo paramPassThroughErrorInfo)
  {
    super(paramInt, paramString);
    this.isHtmlOr302 = false;
    this.serverError = paramPassThroughErrorInfo;
  }
  
  public InvalidResponseException(PassThroughErrorInfo paramPassThroughErrorInfo)
  {
    super(-1, null);
    this.isHtmlOr302 = false;
    this.serverError = paramPassThroughErrorInfo;
  }
  
  public InvalidResponseException(String paramString)
  {
    this(paramString, null);
  }
  
  public InvalidResponseException(String paramString, PassThroughErrorInfo paramPassThroughErrorInfo)
  {
    this(paramString);
    this.serverError = paramPassThroughErrorInfo;
  }
  
  public InvalidResponseException(String paramString, Throwable paramThrowable)
  {
    this(paramString, paramThrowable, false);
  }
  
  public InvalidResponseException(String paramString, Throwable paramThrowable, boolean paramBoolean)
  {
    super(-1, paramString, paramThrowable);
    this.serverError = null;
    this.isHtmlOr302 = paramBoolean;
  }
  
  public PassThroughErrorInfo getServerError()
  {
    return this.serverError;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.request.InvalidResponseException
 * JD-Core Version:    0.7.0.1
 */