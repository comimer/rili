package com.xiaomi.passport.ui.internal;

import android.accounts.AccountsException;

public class PassportUIException
  extends AccountsException
{
  public PassportUIException() {}
  
  public PassportUIException(String paramString)
  {
    super(paramString);
  }
  
  public PassportUIException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.internal.PassportUIException
 * JD-Core Version:    0.7.0.1
 */