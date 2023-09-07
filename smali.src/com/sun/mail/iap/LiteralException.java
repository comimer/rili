package com.sun.mail.iap;

public class LiteralException
  extends ProtocolException
{
  private static final long serialVersionUID = -6919179828339609913L;
  
  public LiteralException(c paramc)
  {
    super(paramc.toString());
    this.response = paramc;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.iap.LiteralException
 * JD-Core Version:    0.7.0.1
 */