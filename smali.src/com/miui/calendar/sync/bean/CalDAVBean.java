package com.miui.calendar.sync.bean;

import androidx.annotation.Keep;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(d1={""}, d2={"Lcom/miui/calendar/sync/bean/CalDAVBean;", "", "username", "", "password", "serverAddress", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getPassword", "()Ljava/lang/String;", "getServerAddress", "getUsername", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
@Keep
public final class CalDAVBean
{
  private final String password;
  private final String serverAddress;
  private final String username;
  
  public CalDAVBean(String paramString1, String paramString2, String paramString3)
  {
    this.username = paramString1;
    this.password = paramString2;
    this.serverAddress = paramString3;
  }
  
  public final String component1()
  {
    return this.username;
  }
  
  public final String component2()
  {
    return this.password;
  }
  
  public final String component3()
  {
    return this.serverAddress;
  }
  
  public final CalDAVBean copy(String paramString1, String paramString2, String paramString3)
  {
    r.f(paramString1, "username");
    r.f(paramString2, "password");
    r.f(paramString3, "serverAddress");
    return new CalDAVBean(paramString1, paramString2, paramString3);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof CalDAVBean)) {
      return false;
    }
    paramObject = (CalDAVBean)paramObject;
    if (!r.a(this.username, paramObject.username)) {
      return false;
    }
    if (!r.a(this.password, paramObject.password)) {
      return false;
    }
    return r.a(this.serverAddress, paramObject.serverAddress);
  }
  
  public final String getPassword()
  {
    return this.password;
  }
  
  public final String getServerAddress()
  {
    return this.serverAddress;
  }
  
  public final String getUsername()
  {
    return this.username;
  }
  
  public int hashCode()
  {
    return (this.username.hashCode() * 31 + this.password.hashCode()) * 31 + this.serverAddress.hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("CalDAVBean(username=");
    localStringBuilder.append(this.username);
    localStringBuilder.append(", password=");
    localStringBuilder.append(this.password);
    localStringBuilder.append(", serverAddress=");
    localStringBuilder.append(this.serverAddress);
    localStringBuilder.append(')');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.sync.bean.CalDAVBean
 * JD-Core Version:    0.7.0.1
 */