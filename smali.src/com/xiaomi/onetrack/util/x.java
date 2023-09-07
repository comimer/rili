package com.xiaomi.onetrack.util;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.onetrack.b.e;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class x
{
  private static final String a = "RegionDomainManager";
  private static final String b = "CN";
  private static final String c = "INTL";
  private static final String d = "IN";
  private static final String e = "RU";
  private static final String f = "http://";
  private static final String g = "https://";
  private static final String h = "tracking.miui.com";
  private static final String i = "tracking.intl.miui.com";
  private static final String j = "tracking.rus.miui.com";
  private static final String k = "tracking.india.miui.com";
  private static final String l = "sdkconfig.ad.xiaomi.com";
  private static final String m = "sdkconfig.ad.intl.xiaomi.com";
  private static final String n = "sdkconfig.ad.india.xiaomi.com";
  private static final String o = "sdkconfig.ad.rus.xiaomi.com";
  private static final String p = "/track/v4";
  private static final String q = "/track/key_get";
  private static final String r = "/api/v4/detail/config";
  private static final String s = "/api/v4/detail/config_common";
  private static ConcurrentHashMap<String, String> u = new ConcurrentHashMap();
  private Context t;
  
  private x()
  {
    u.put("IN", "tracking.india.miui.com");
    u.put("RU", "tracking.rus.miui.com");
    f();
  }
  
  public static x a()
  {
    return a.a();
  }
  
  private String a(boolean paramBoolean, String paramString)
  {
    if (!paramBoolean) {
      return "tracking.miui.com";
    }
    String str = (String)u.get(paramString);
    paramString = str;
    if (TextUtils.isEmpty(str)) {
      paramString = "tracking.intl.miui.com";
    }
    return paramString;
  }
  
  private void f()
  {
    try
    {
      String str = aa.h();
      if (!TextUtils.isEmpty(str))
      {
        JSONObject localJSONObject = new org/json/JSONObject;
        localJSONObject.<init>(str);
        a(localJSONObject);
      }
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  private String g()
  {
    return "https://";
  }
  
  private String h()
  {
    return a(q.h(), q.i());
  }
  
  private String i()
  {
    boolean bool = q.h();
    String str = q.i();
    if (!bool) {
      return "sdkconfig.ad.xiaomi.com";
    }
    if (TextUtils.equals(str, "IN")) {
      return "sdkconfig.ad.india.xiaomi.com";
    }
    if (TextUtils.equals(str, "RU")) {
      return "sdkconfig.ad.rus.xiaomi.com";
    }
    return "sdkconfig.ad.intl.xiaomi.com";
  }
  
  public String a(String paramString1, String paramString2, String paramString3)
  {
    paramString1 = new StringBuilder(paramString1);
    paramString1.append(paramString2);
    paramString1.append(paramString3);
    return paramString1.toString();
  }
  
  public void a(JSONObject paramJSONObject)
  {
    try
    {
      Object localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      ((StringBuilder)localObject).append("updateHostMap:");
      ((StringBuilder)localObject).append(paramJSONObject.toString());
      p.a("RegionDomainManager", ((StringBuilder)localObject).toString());
      try
      {
        Iterator localIterator = paramJSONObject.keys();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          localObject = paramJSONObject.optString(str);
          if ((!TextUtils.isEmpty(str)) && (!TextUtils.isEmpty((CharSequence)localObject))) {
            u.put(str, localObject);
          }
        }
        paramJSONObject = new org/json/JSONObject;
        paramJSONObject.<init>(u);
        aa.b(paramJSONObject.toString());
      }
      catch (Exception localException)
      {
        paramJSONObject = new java/lang/StringBuilder;
        paramJSONObject.<init>();
        paramJSONObject.append("updateHostMap: ");
        paramJSONObject.append(localException.toString());
        p.a("RegionDomainManager", paramJSONObject.toString());
      }
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      localStringBuilder.append("merge config:");
      paramJSONObject = new org/json/JSONObject;
      paramJSONObject.<init>(u);
      localStringBuilder.append(paramJSONObject.toString());
      p.a("RegionDomainManager", localStringBuilder.toString());
      return;
    }
    finally {}
  }
  
  public String b()
  {
    try
    {
      if (TextUtils.isEmpty(aa.l())) {
        e.b();
      }
    }
    catch (Exception localException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("getTrackingUrl: ");
      localStringBuilder.append(localException.toString());
      p.a("RegionDomainManager", localStringBuilder.toString());
    }
    return a(g(), h(), "/track/v4");
  }
  
  public String c()
  {
    return a(g(), i(), "/api/v4/detail/config");
  }
  
  public String d()
  {
    return a(g(), i(), "/api/v4/detail/config_common");
  }
  
  public String e()
  {
    return a(g(), h(), "/track/key_get");
  }
  
  private static class a
  {
    private static final x a = new x(null);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.x
 * JD-Core Version:    0.7.0.1
 */