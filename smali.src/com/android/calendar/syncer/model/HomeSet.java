package com.android.calendar.syncer.model;

import kotlin.Metadata;
import kotlin.jvm.internal.r;
import okhttp3.t;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/model/HomeSet;", "Lcom/android/calendar/syncer/model/IdEntity;", "", "component1", "component2", "Lokhttp3/t;", "component3", "", "component4", "", "component5", "id", "serviceId", "url", "privBind", "displayName", "copy", "toString", "", "hashCode", "", "other", "equals", "J", "getId", "()J", "setId", "(J)V", "getServiceId", "setServiceId", "Lokhttp3/t;", "getUrl", "()Lokhttp3/t;", "setUrl", "(Lokhttp3/t;)V", "Z", "getPrivBind", "()Z", "setPrivBind", "(Z)V", "Ljava/lang/String;", "getDisplayName", "()Ljava/lang/String;", "setDisplayName", "(Ljava/lang/String;)V", "<init>", "(JJLokhttp3/t;ZLjava/lang/String;)V", "syncer_release"}, k=1, mv={1, 7, 1})
public final class HomeSet
  extends IdEntity
{
  private String displayName;
  private long id;
  private boolean privBind;
  private long serviceId;
  private t url;
  
  public HomeSet(long paramLong1, long paramLong2, t paramt, boolean paramBoolean, String paramString)
  {
    this.id = paramLong1;
    this.serviceId = paramLong2;
    this.url = paramt;
    this.privBind = paramBoolean;
    this.displayName = paramString;
  }
  
  public final long component1()
  {
    return getId();
  }
  
  public final long component2()
  {
    return this.serviceId;
  }
  
  public final t component3()
  {
    return this.url;
  }
  
  public final boolean component4()
  {
    return this.privBind;
  }
  
  public final String component5()
  {
    return this.displayName;
  }
  
  public final HomeSet copy(long paramLong1, long paramLong2, t paramt, boolean paramBoolean, String paramString)
  {
    r.f(paramt, "url");
    return new HomeSet(paramLong1, paramLong2, paramt, paramBoolean, paramString);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof HomeSet)) {
      return false;
    }
    paramObject = (HomeSet)paramObject;
    if (getId() != paramObject.getId()) {
      return false;
    }
    if (this.serviceId != paramObject.serviceId) {
      return false;
    }
    if (!r.a(this.url, paramObject.url)) {
      return false;
    }
    if (this.privBind != paramObject.privBind) {
      return false;
    }
    return r.a(this.displayName, paramObject.displayName);
  }
  
  public final String getDisplayName()
  {
    return this.displayName;
  }
  
  public long getId()
  {
    return this.id;
  }
  
  public final boolean getPrivBind()
  {
    return this.privBind;
  }
  
  public final long getServiceId()
  {
    return this.serviceId;
  }
  
  public final t getUrl()
  {
    return this.url;
  }
  
  public int hashCode()
  {
    int i = Long.hashCode(getId());
    int j = Long.hashCode(this.serviceId);
    int k = this.url.hashCode();
    int m = this.privBind;
    int i1 = m;
    if (m != 0) {
      i1 = 1;
    }
    String str = this.displayName;
    int n;
    if (str == null) {
      m = 0;
    } else {
      n = str.hashCode();
    }
    return (((i * 31 + j) * 31 + k) * 31 + i1) * 31 + n;
  }
  
  public final void setDisplayName(String paramString)
  {
    this.displayName = paramString;
  }
  
  public void setId(long paramLong)
  {
    this.id = paramLong;
  }
  
  public final void setPrivBind(boolean paramBoolean)
  {
    this.privBind = paramBoolean;
  }
  
  public final void setServiceId(long paramLong)
  {
    this.serviceId = paramLong;
  }
  
  public final void setUrl(t paramt)
  {
    r.f(paramt, "<set-?>");
    this.url = paramt;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("HomeSet(id=");
    localStringBuilder.append(getId());
    localStringBuilder.append(", serviceId=");
    localStringBuilder.append(this.serviceId);
    localStringBuilder.append(", url=");
    localStringBuilder.append(this.url);
    localStringBuilder.append(", privBind=");
    localStringBuilder.append(this.privBind);
    localStringBuilder.append(", displayName=");
    localStringBuilder.append(this.displayName);
    localStringBuilder.append(')');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.model.HomeSet
 * JD-Core Version:    0.7.0.1
 */