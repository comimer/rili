package com.xiaomi.accountsdk.account.exception;

public class InvalidUserNameException
  extends Exception
{
  private static final long serialVersionUID = 1L;
  
  public InvalidUserNameException()
  {
    super("No such a user");
  }
  
  public InvalidUserNameException(String paramString)
  {
    super(paramString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.exception.InvalidUserNameException
 * JD-Core Version:    0.7.0.1
 */