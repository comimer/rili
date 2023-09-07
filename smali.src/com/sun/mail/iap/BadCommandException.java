package com.sun.mail.iap;

public class BadCommandException
  extends ProtocolException
{
  private static final long serialVersionUID = 5769722539397237515L;
  
  public BadCommandException() {}
  
  public BadCommandException(c paramc)
  {
    super(paramc);
  }
  
  public BadCommandException(String paramString)
  {
    super(paramString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.iap.BadCommandException
 * JD-Core Version:    0.7.0.1
 */