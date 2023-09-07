package com.sun.mail.iap;

public class ConnectionException
  extends ProtocolException
{
  private static final long serialVersionUID = 5749739604257464727L;
  private transient b p;
  
  public ConnectionException() {}
  
  public ConnectionException(b paramb, c paramc)
  {
    super(paramc);
    this.p = paramb;
  }
  
  public ConnectionException(String paramString)
  {
    super(paramString);
  }
  
  public b getProtocol()
  {
    return this.p;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.iap.ConnectionException
 * JD-Core Version:    0.7.0.1
 */