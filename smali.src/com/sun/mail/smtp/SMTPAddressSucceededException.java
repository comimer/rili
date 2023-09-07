package com.sun.mail.smtp;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;

public class SMTPAddressSucceededException
  extends MessagingException
{
  private static final long serialVersionUID = -1168335848623096749L;
  protected InternetAddress addr;
  protected String cmd;
  protected int rc;
  
  public SMTPAddressSucceededException(InternetAddress paramInternetAddress, String paramString1, int paramInt, String paramString2)
  {
    super(paramString2);
    this.addr = paramInternetAddress;
    this.cmd = paramString1;
    this.rc = paramInt;
  }
  
  public InternetAddress getAddress()
  {
    return this.addr;
  }
  
  public String getCommand()
  {
    return this.cmd;
  }
  
  public int getReturnCode()
  {
    return this.rc;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.smtp.SMTPAddressSucceededException
 * JD-Core Version:    0.7.0.1
 */