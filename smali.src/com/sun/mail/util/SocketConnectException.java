package com.sun.mail.util;

import java.io.IOException;

public class SocketConnectException
  extends IOException
{
  private static final long serialVersionUID = 3997871560538755463L;
  private int cto;
  private String host;
  private int port;
  
  public SocketConnectException(String paramString1, Exception paramException, String paramString2, int paramInt1, int paramInt2)
  {
    super(paramString1);
    initCause(paramException);
    this.host = paramString2;
    this.port = paramInt1;
    this.cto = paramInt2;
  }
  
  public int getConnectionTimeout()
  {
    return this.cto;
  }
  
  public Exception getException()
  {
    return (Exception)getCause();
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
 * Qualified Name:     com.sun.mail.util.SocketConnectException
 * JD-Core Version:    0.7.0.1
 */