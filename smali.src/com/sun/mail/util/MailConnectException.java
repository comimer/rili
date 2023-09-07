package com.sun.mail.util;

import javax.mail.MessagingException;

public class MailConnectException
  extends MessagingException
{
  private static final long serialVersionUID = -3818807731125317729L;
  private int cto;
  private String host;
  private int port;
  
  public MailConnectException(SocketConnectException paramSocketConnectException)
  {
    super(localStringBuilder.toString());
    this.host = paramSocketConnectException.getHost();
    this.port = paramSocketConnectException.getPort();
    this.cto = paramSocketConnectException.getConnectionTimeout();
    setNextException(paramSocketConnectException.getException());
  }
  
  public int getConnectionTimeout()
  {
    return this.cto;
  }
  
  public String getHost()
  {
    return this.host;
  }
  
  public int getPort()
  {
    return this.port;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.util.MailConnectException
 * JD-Core Version:    0.7.0.1
 */