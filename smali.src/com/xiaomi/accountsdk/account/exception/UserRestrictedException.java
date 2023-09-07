package com.xiaomi.accountsdk.account.exception;

public class UserRestrictedException
  extends Exception
{
  public UserRestrictedException()
  {
    super("User has been restricted by server");
  }
  
  public UserRestrictedException(String paramString)
  {
    super(paramString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.exception.UserRestrictedException
 * JD-Core Version:    0.7.0.1
 */