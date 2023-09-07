package com.sun.mail.smtp;

import javax.mail.Address;
import javax.mail.SendFailedException;
import javax.mail.internet.InternetAddress;

public class SMTPSendFailedException
  extends SendFailedException
{
  private static final long serialVersionUID = 8049122628728932894L;
  protected InternetAddress addr;
  protected String cmd;
  protected int rc;
  
  public SMTPSendFailedException(String paramString1, int paramInt, String paramString2, Exception paramException, Address[] paramArrayOfAddress1, Address[] paramArrayOfAddress2, Address[] paramArrayOfAddress3)
  {
    super(paramString2, paramException, paramArrayOfAddress1, paramArrayOfAddress2, paramArrayOfAddress3);
    this.cmd = paramString1;
    this.rc = paramInt;
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
 * Qualified Name:     com.sun.mail.smtp.SMTPSendFailedException
 * JD-Core Version:    0.7.0.1
 */