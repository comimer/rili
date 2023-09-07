package com.android.calendar.syncer.model;

import kotlin.Metadata;
import kotlin.jvm.internal.r;
import okhttp3.t;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/model/Service;", "", "", "component1", "", "component2", "component3", "Lokhttp3/t;", "component4", "id", "accountName", "type", "principal", "copy", "toString", "", "hashCode", "other", "", "equals", "J", "getId", "()J", "setId", "(J)V", "Ljava/lang/String;", "getAccountName", "()Ljava/lang/String;", "setAccountName", "(Ljava/lang/String;)V", "getType", "setType", "Lokhttp3/t;", "getPrincipal", "()Lokhttp3/t;", "setPrincipal", "(Lokhttp3/t;)V", "<init>", "(JLjava/lang/String;Ljava/lang/String;Lokhttp3/t;)V", "Companion", "syncer_release"}, k=1, mv={1, 7, 1})
public final class Service
{
  public static final Companion Companion = new Companion(null);
  public static final String TYPE_CALDAV = "caldav";
  private String accountName;
  private long id;
  private t principal;
  private String type;
  
  public Service(long paramLong, String paramString1, String paramString2, t paramt)
  {
    this.id = paramLong;
    this.accountName = paramString1;
    this.type = paramString2;
    this.principal = paramt;
  }
  
  public final long component1()
  {
    return this.id;
  }
  
  public final String component2()
  {
    return this.accountName;
  }
  
  public final String component3()
  {
    return this.type;
  }
  
  public final t component4()
  {
    return this.principal;
  }
  
  public final Service copy(long paramLong, String paramString1, String paramString2, t paramt)
  {
    r.f(paramString1, "accountName");
    r.f(paramString2, "type");
    return new Service(paramLong, paramString1, paramString2, paramt);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof Service)) {
      return false;
    }
    paramObject = (Service)paramObject;
    if (this.id != paramObject.id) {
      return false;
    }
    if (!r.a(this.accountName, paramObject.accountName)) {
      return false;
    }
    if (!r.a(this.type, paramObject.type)) {
      return false;
    }
    return r.a(this.principal, paramObject.principal);
  }
  
  public final String getAccountName()
  {
    return this.accountName;
  }
  
  public final long getId()
  {
    return this.id;
  }
  
  public final t getPrincipal()
  {
    return this.principal;
  }
  
  public final String getType()
  {
    return this.type;
  }
  
  public int hashCode()
  {
    int i = Long.hashCode(this.id);
    int j = this.accountName.hashCode();
    int k = this.type.hashCode();
    t localt = this.principal;
    int m;
    if (localt == null) {
      m = 0;
    } else {
      m = localt.hashCode();
    }
    return ((i * 31 + j) * 31 + k) * 31 + m;
  }
  
  public final void setAccountName(String paramString)
  {
    r.f(paramString, "<set-?>");
    this.accountName = paramString;
  }
  
  public final void setId(long paramLong)
  {
    this.id = paramLong;
  }
  
  public final void setPrincipal(t paramt)
  {
    this.principal = paramt;
  }
  
  public final void setType(String paramString)
  {
    r.f(paramString, "<set-?>");
    this.type = paramString;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Service(id=");
    localStringBuilder.append(this.id);
    localStringBuilder.append(", accountName=");
    localStringBuilder.append(this.accountName);
    localStringBuilder.append(", type=");
    localStringBuilder.append(this.type);
    localStringBuilder.append(", principal=");
    localStringBuilder.append(this.principal);
    localStringBuilder.append(')');
    return localStringBuilder.toString();
  }
  
  @Metadata(d1={""}, d2={"Lcom/android/calendar/syncer/model/Service$Companion;", "", "()V", "TYPE_CALDAV", "", "syncer_release"}, k=1, mv={1, 7, 1}, xi=48)
  public static final class Companion {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.model.Service
 * JD-Core Version:    0.7.0.1
 */