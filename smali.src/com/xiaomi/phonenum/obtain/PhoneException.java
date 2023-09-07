package com.xiaomi.phonenum.obtain;

import com.xiaomi.phonenum.bean.Error;

public class PhoneException
  extends Exception
{
  public final Error error;
  
  public PhoneException(Error paramError)
  {
    this(paramError, paramError.name());
  }
  
  public PhoneException(Error paramError, String paramString)
  {
    this(paramError, paramString, null);
  }
  
  public PhoneException(Error paramError, String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
    this.error = paramError;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.phonenum.obtain.PhoneException
 * JD-Core Version:    0.7.0.1
 */