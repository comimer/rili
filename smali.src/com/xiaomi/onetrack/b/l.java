package com.xiaomi.onetrack.b;

import org.json.JSONObject;

public class l
{
  public String a;
  public long b;
  public long c;
  public String d;
  public JSONObject e;
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("ConfigModel{appId='");
    localStringBuilder.append(this.a);
    localStringBuilder.append('\'');
    localStringBuilder.append(", commonSample=");
    localStringBuilder.append(this.b);
    localStringBuilder.append(", timeStamp=");
    localStringBuilder.append(this.c);
    localStringBuilder.append(", eventsHash='");
    localStringBuilder.append(this.d);
    localStringBuilder.append('\'');
    localStringBuilder.append(", appData='");
    localStringBuilder.append(this.e);
    localStringBuilder.append('\'');
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.b.l
 * JD-Core Version:    0.7.0.1
 */