package com.xiaomi.accountsdk.request;

import com.xiaomi.accountsdk.account.exception.HttpException;

public class AccessDeniedException
  extends HttpException
{
  private static final long serialVersionUID = -5989528856775006307L;
  
  public AccessDeniedException(int paramInt, String paramString)
  {
    super(paramInt, paramString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.request.AccessDeniedException
 * JD-Core Version:    0.7.0.1
 */