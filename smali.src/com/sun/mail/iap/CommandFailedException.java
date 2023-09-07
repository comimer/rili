package com.sun.mail.iap;

public class CommandFailedException
  extends ProtocolException
{
  private static final long serialVersionUID = 793932807880443631L;
  
  public CommandFailedException() {}
  
  public CommandFailedException(c paramc)
  {
    super(paramc);
  }
  
  public CommandFailedException(String paramString)
  {
    super(paramString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.iap.CommandFailedException
 * JD-Core Version:    0.7.0.1
 */