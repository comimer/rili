package com.xiaomi.accountsdk.account.exception;

import com.xiaomi.accountsdk.account.data.MetaLoginData;

public class InvalidCredentialException
  extends AccountException
{
  private static final long serialVersionUID = 1L;
  public String captchaUrl;
  public final boolean hasPwd;
  public MetaLoginData metaLoginData;
  
  public InvalidCredentialException(int paramInt, String paramString, boolean paramBoolean)
  {
    super(paramInt, paramString);
    this.hasPwd = paramBoolean;
  }
  
  public InvalidCredentialException(boolean paramBoolean)
  {
    super(i, str);
    this.hasPwd = paramBoolean;
  }
  
  public InvalidCredentialException captchaUrl(String paramString)
  {
    this.captchaUrl = paramString;
    return this;
  }
  
  public String getCaptchaUrl()
  {
    return this.captchaUrl;
  }
  
  public boolean getHasPwd()
  {
    return this.hasPwd;
  }
  
  public MetaLoginData getMetaLoginData()
  {
    return this.metaLoginData;
  }
  
  public InvalidCredentialException metaLoginData(MetaLoginData paramMetaLoginData)
  {
    this.metaLoginData = paramMetaLoginData;
    return this;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.exception.InvalidCredentialException
 * JD-Core Version:    0.7.0.1
 */