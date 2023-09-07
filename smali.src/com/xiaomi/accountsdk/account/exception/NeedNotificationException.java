package com.xiaomi.accountsdk.account.exception;

import a6.k.h;

public class NeedNotificationException
  extends Exception
{
  private static final long serialVersionUID = 1L;
  private final k.h loginContent;
  private final String notificationUrl;
  private final String userId;
  
  public NeedNotificationException(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, null);
  }
  
  public NeedNotificationException(String paramString1, String paramString2, k.h paramh)
  {
    this.userId = paramString1;
    this.notificationUrl = paramString2;
    this.loginContent = paramh;
  }
  
  public k.h getLoginContent()
  {
    return this.loginContent;
  }
  
  public String getNotificationUrl()
  {
    return this.notificationUrl;
  }
  
  public String getUserId()
  {
    return this.userId;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.exception.NeedNotificationException
 * JD-Core Version:    0.7.0.1
 */