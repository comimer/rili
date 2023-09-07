package com.xiaomi.ad.entity.contract;

public abstract interface IResponseEntity
  extends IGsonEntity
{
  public static final int DEFAULT_ERROR_STATUS = -1;
  public static final int STATUS_OK = 0;
  
  public abstract String getErrorMessage();
  
  public abstract int getStatus();
  
  public abstract boolean isSuccessful();
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.ad.entity.contract.IResponseEntity
 * JD-Core Version:    0.7.0.1
 */