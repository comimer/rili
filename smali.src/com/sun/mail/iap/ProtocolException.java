package com.sun.mail.iap;

public class ProtocolException
  extends Exception
{
  private static final long serialVersionUID = -4360500807971797439L;
  protected transient c response;
  
  public ProtocolException()
  {
    this.response = null;
  }
  
  public ProtocolException(c paramc)
  {
    super(paramc.toString());
    this.response = paramc;
  }
  
  public ProtocolException(String paramString)
  {
    super(paramString);
    this.response = null;
  }
  
  public ProtocolException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
    this.response = null;
  }
  
  public c getResponse()
  {
    return this.response;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.iap.ProtocolException
 * JD-Core Version:    0.7.0.1
 */