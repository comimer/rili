package com.xiaomi.ad.entity.contract;

import org.json.JSONObject;

public abstract interface IGsonEntity
  extends IEntity
{
  public abstract JSONObject toJson();
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.ad.entity.contract.IGsonEntity
 * JD-Core Version:    0.7.0.1
 */