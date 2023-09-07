package com.miui.calendar.sync.bean;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(d1={""}, d2={"Lcom/miui/calendar/sync/bean/DingAuthBean;", "", "errCode", "", "token", "", "errMsg", "(ILjava/lang/String;Ljava/lang/String;)V", "getErrCode", "()I", "getErrMsg", "()Ljava/lang/String;", "getToken", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
@Keep
public final class DingAuthBean
{
  @SerializedName("errcode")
  private final int errCode;
  @SerializedName("errmsg")
  private final String errMsg;
  @SerializedName("access_token")
  private final String token;
  
  public DingAuthBean(int paramInt, String paramString1, String paramString2)
  {
    this.errCode = paramInt;
    this.token = paramString1;
    this.errMsg = paramString2;
  }
  
  public final int component1()
  {
    return this.errCode;
  }
  
  public final String component2()
  {
    return this.token;
  }
  
  public final String component3()
  {
    return this.errMsg;
  }
  
  public final DingAuthBean copy(int paramInt, String paramString1, String paramString2)
  {
    r.f(paramString1, "token");
    r.f(paramString2, "errMsg");
    return new DingAuthBean(paramInt, paramString1, paramString2);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof DingAuthBean)) {
      return false;
    }
    paramObject = (DingAuthBean)paramObject;
    if (this.errCode != paramObject.errCode) {
      return false;
    }
    if (!r.a(this.token, paramObject.token)) {
      return false;
    }
    return r.a(this.errMsg, paramObject.errMsg);
  }
  
  public final int getErrCode()
  {
    return this.errCode;
  }
  
  public final String getErrMsg()
  {
    return this.errMsg;
  }
  
  public final String getToken()
  {
    return this.token;
  }
  
  public int hashCode()
  {
    return (Integer.hashCode(this.errCode) * 31 + this.token.hashCode()) * 31 + this.errMsg.hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("DingAuthBean(errCode=");
    localStringBuilder.append(this.errCode);
    localStringBuilder.append(", token=");
    localStringBuilder.append(this.token);
    localStringBuilder.append(", errMsg=");
    localStringBuilder.append(this.errMsg);
    localStringBuilder.append(')');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.sync.bean.DingAuthBean
 * JD-Core Version:    0.7.0.1
 */