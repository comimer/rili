package com.xiaomi.accountsdk.request;

import com.xiaomi.accountsdk.account.exception.HttpException;

public class AuthenticationFailureException
  extends HttpException
{
  private static final long serialVersionUID = 1933476556350874440L;
  private String caDisableSecondsHeader = null;
  private String wwwAuthenticateHeader = null;
  
  public AuthenticationFailureException(int paramInt, String paramString)
  {
    super(paramInt, paramString);
  }
  
  public AuthenticationFailureException(String paramString)
  {
    super(0, paramString);
  }
  
  public String getCaDisableSecondsHeader()
  {
    return this.caDisableSecondsHeader;
  }
  
  public String getWwwAuthenticateHeader()
  {
    return this.wwwAuthenticateHeader;
  }
  
  public void setCaDisableSecondsHeader(String paramString)
  {
    this.caDisableSecondsHeader = paramString;
  }
  
  public void setWwwAuthenticateHeader(String paramString)
  {
    this.wwwAuthenticateHeader = paramString;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.request.AuthenticationFailureException
 * JD-Core Version:    0.7.0.1
 */