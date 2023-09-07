package com.xiaomi.ad.entity.contract;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public abstract class ResponseEntityBase
  extends GsonEntityBase
  implements IResponseEntity
{
  @Expose
  @SerializedName("message")
  private String errorMessage;
  @Expose
  @SerializedName("status")
  private int status = -1;
  
  public final String getErrorMessage()
  {
    return this.errorMessage;
  }
  
  public final int getStatus()
  {
    return this.status;
  }
  
  public final boolean isSuccessful()
  {
    boolean bool;
    if (this.status == 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.ad.entity.contract.ResponseEntityBase
 * JD-Core Version:    0.7.0.1
 */