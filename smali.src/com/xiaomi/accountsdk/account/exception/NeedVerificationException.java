package com.xiaomi.accountsdk.account.exception;

import com.xiaomi.accountsdk.account.data.MetaLoginData;

public class NeedVerificationException
  extends Exception
{
  private static final long serialVersionUID = 1L;
  private final MetaLoginData mMetaLoginData;
  private final String mStep1Token;
  private final String mUserId;
  
  public NeedVerificationException(MetaLoginData paramMetaLoginData, String paramString1, String paramString2)
  {
    super("Need verification code");
    this.mMetaLoginData = paramMetaLoginData;
    this.mStep1Token = paramString1;
    this.mUserId = paramString2;
  }
  
  public NeedVerificationException(String paramString)
  {
    this(null, null, paramString);
  }
  
  public MetaLoginData getMetaLoginData()
  {
    return this.mMetaLoginData;
  }
  
  public String getStep1Token()
  {
    return this.mStep1Token;
  }
  
  public String getUserId()
  {
    return this.mUserId;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.exception.NeedVerificationException
 * JD-Core Version:    0.7.0.1
 */