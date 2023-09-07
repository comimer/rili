package com.xiaomi.onetrack.api;

import com.xiaomi.onetrack.util.p;
import org.json.JSONObject;

public class d
{
  private static final String a = "H5DataModel";
  private String b = a(paramJSONObject, a.a);
  private long c;
  private String d;
  private String e;
  private String f;
  private String g;
  
  public d(JSONObject paramJSONObject)
  {
    String str = a(paramJSONObject, a.e);
    try
    {
      this.c = Long.parseLong(str);
    }
    catch (Exception localException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("e_ts parse error: ");
      localStringBuilder.append(localException.getMessage());
      p.b("H5DataModel", localStringBuilder.toString());
    }
    this.d = a(paramJSONObject, a.h);
    this.e = a(paramJSONObject, a.i);
    this.f = a(paramJSONObject, a.j);
    this.g = a(paramJSONObject, a.k);
  }
  
  private String a(JSONObject paramJSONObject, String paramString)
  {
    paramJSONObject = paramJSONObject.opt(paramString);
    if (paramJSONObject == null) {
      return "";
    }
    return String.valueOf(paramJSONObject);
  }
  
  public String a()
  {
    return this.b;
  }
  
  public long b()
  {
    return this.c;
  }
  
  public String c()
  {
    return this.d;
  }
  
  public String d()
  {
    return this.e;
  }
  
  public String e()
  {
    return this.f;
  }
  
  public String f()
  {
    return this.g;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("H5DataModel{eventName='");
    localStringBuilder.append(this.b);
    localStringBuilder.append('\'');
    localStringBuilder.append(", e_ts=");
    localStringBuilder.append(this.c);
    localStringBuilder.append(", appId='");
    localStringBuilder.append(this.d);
    localStringBuilder.append('\'');
    localStringBuilder.append(", channel='");
    localStringBuilder.append(this.e);
    localStringBuilder.append('\'');
    localStringBuilder.append(", uid='");
    localStringBuilder.append(this.f);
    localStringBuilder.append('\'');
    localStringBuilder.append(", uidType='");
    localStringBuilder.append(this.g);
    localStringBuilder.append('\'');
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public static class a
  {
    public static String a = "event";
    public static String b = "session_id";
    public static String c = "instance_id";
    public static String d = "platform";
    public static String e = "e_ts";
    public static String f = "tz";
    public static String g = "sdk_ver";
    public static String h = "app_id";
    public static String i = "channel";
    public static String j = "uid";
    public static String k = "uid_type";
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.d
 * JD-Core Version:    0.7.0.1
 */