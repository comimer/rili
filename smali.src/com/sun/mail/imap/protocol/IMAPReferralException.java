package com.sun.mail.imap.protocol;

import com.sun.mail.iap.ProtocolException;

public class IMAPReferralException
  extends ProtocolException
{
  private static final long serialVersionUID = 2578770669364251968L;
  private String url;
  
  public IMAPReferralException(String paramString1, String paramString2)
  {
    super(paramString1);
    this.url = paramString2;
  }
  
  public String getUrl()
  {
    return this.url;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.imap.protocol.IMAPReferralException
 * JD-Core Version:    0.7.0.1
 */