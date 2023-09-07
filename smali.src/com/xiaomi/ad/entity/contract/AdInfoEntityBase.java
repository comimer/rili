package com.xiaomi.ad.entity.contract;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import d6.e;

public abstract class AdInfoEntityBase
  extends GsonEntityBase
  implements IAdInfoEntity
{
  @Expose
  @SerializedName("ex")
  private String adPassBack;
  @Expose
  private long id = 0L;
  
  public final String getAdPassBack()
  {
    return e.a(this.adPassBack);
  }
  
  public final long getId()
  {
    return this.id;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.ad.entity.contract.AdInfoEntityBase
 * JD-Core Version:    0.7.0.1
 */