package com.sun.mail.imap;

import javax.mail.AuthenticationFailedException;

public class ReferralException
  extends AuthenticationFailedException
{
  private static final long serialVersionUID = -3414063558596287683L;
  private String text;
  private String url;
  
  public ReferralException(String paramString1, String paramString2)
  {
    super(localStringBuilder.toString());
    this.url = paramString1;
    this.text = paramString2;
  }
  
  public String getText()
  {
    return this.text;
  }
  
  public String getUrl()
  {
    return this.url;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.imap.ReferralException
 * JD-Core Version:    0.7.0.1
 */