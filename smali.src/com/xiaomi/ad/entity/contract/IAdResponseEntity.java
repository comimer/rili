package com.xiaomi.ad.entity.contract;

import java.util.List;

public abstract interface IAdResponseEntity
  extends IResponseEntity
{
  public abstract <T extends IGsonEntity> T getAdInfo(int paramInt);
  
  public abstract int getAdInfoCount();
  
  public abstract <T extends IGsonEntity> List<T> getAdInfos();
  
  public abstract boolean hasAdInfos();
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.ad.entity.contract.IAdResponseEntity
 * JD-Core Version:    0.7.0.1
 */