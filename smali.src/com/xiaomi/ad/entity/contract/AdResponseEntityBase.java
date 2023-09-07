package com.xiaomi.ad.entity.contract;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import d6.a;
import java.util.List;

public abstract class AdResponseEntityBase<T extends IAdInfoEntity>
  extends ResponseEntityBase
  implements IAdResponseEntity
{
  @Expose
  @SerializedName(alternate={"adInfoList"}, value="adInfos")
  private List<T> adInfos;
  
  public final T getAdInfo(int paramInt)
  {
    return (IAdInfoEntity)a.b(this.adInfos, paramInt);
  }
  
  public final int getAdInfoCount()
  {
    return a.c(this.adInfos);
  }
  
  public final List<T> getAdInfos()
  {
    return a.a(this.adInfos);
  }
  
  public final boolean hasAdInfos()
  {
    return a.e(this.adInfos);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.ad.entity.contract.AdResponseEntityBase
 * JD-Core Version:    0.7.0.1
 */