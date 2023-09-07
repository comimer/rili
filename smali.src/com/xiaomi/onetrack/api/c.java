package com.xiaomi.onetrack.api;

import com.xiaomi.onetrack.Configuration;
import com.xiaomi.onetrack.OneTrack.IEventHook;
import com.xiaomi.onetrack.ServiceQualityEvent;
import com.xiaomi.onetrack.c.i;
import com.xiaomi.onetrack.f.b;
import com.xiaomi.onetrack.f.b.b;
import com.xiaomi.onetrack.util.DeviceUtil;
import com.xiaomi.onetrack.util.aa;
import com.xiaomi.onetrack.util.q;
import com.xiaomi.onetrack.util.r;
import com.xiaomi.onetrack.util.v;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class c
{
  public static final String a = "B";
  public static final String b = "H";
  private static final String c = "EventDataBuilder";
  
  public static String a(long paramLong1, String paramString, long paramLong2, long paramLong3, Configuration paramConfiguration, OneTrack.IEventHook paramIEventHook, v paramv, boolean paramBoolean)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("H", b.a("onetrack_upgrade", paramConfiguration, paramIEventHook, paramv, paramBoolean, false));
    paramConfiguration = new JSONObject();
    paramConfiguration.put("last_ver_code", paramLong1);
    paramConfiguration.put("last_ver_name", paramString);
    paramConfiguration.put("cur_ver_code", paramLong2);
    paramConfiguration.put("last_upgrade_time", paramLong3);
    localJSONObject.put("B", paramConfiguration);
    return localJSONObject.toString();
  }
  
  public static String a(Configuration paramConfiguration, OneTrack.IEventHook paramIEventHook, v paramv, boolean paramBoolean)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("H", b.a("onetrack_cta_status", paramConfiguration, paramIEventHook, paramv, paramBoolean, false));
    paramConfiguration = new JSONObject();
    paramConfiguration.put("value", i.b());
    localJSONObject.put("B", paramConfiguration);
    return localJSONObject.toString();
  }
  
  public static String a(Configuration paramConfiguration, OneTrack.IEventHook paramIEventHook, JSONObject paramJSONObject, v paramv, boolean paramBoolean)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("H", b.a("onetrack_dau", paramConfiguration, paramIEventHook, paramv, paramBoolean, false));
    paramIEventHook = new JSONObject();
    paramv = com.xiaomi.onetrack.f.a.b();
    paramBoolean = aa.s();
    if (paramBoolean) {
      aa.c(false);
    }
    paramIEventHook.put("first_open", paramBoolean);
    if (q.a()) {
      paramBoolean = q.h();
    } else {
      paramBoolean = paramConfiguration.isInternational();
    }
    if (!paramBoolean)
    {
      if (paramConfiguration.isIMEIEnable()) {
        paramIEventHook.put("imeis", DeviceUtil.q(paramv));
      }
      if (paramConfiguration.isIMSIEnable()) {
        paramIEventHook.put("imsis", DeviceUtil.v(paramv));
      }
    }
    paramIEventHook.put("config_status", a.a(paramConfiguration));
    localJSONObject.put("B", r.a(paramIEventHook, paramJSONObject));
    return localJSONObject.toString();
  }
  
  public static String a(ServiceQualityEvent paramServiceQualityEvent, Configuration paramConfiguration, OneTrack.IEventHook paramIEventHook, v paramv, boolean paramBoolean)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("H", b.a("ot_service_quality", paramConfiguration, paramIEventHook, paramv, paramBoolean, false));
    paramConfiguration = new JSONObject();
    paramConfiguration.put("scheme", paramServiceQualityEvent.getScheme());
    paramConfiguration.put("host", paramServiceQualityEvent.getHost());
    paramConfiguration.put("port", paramServiceQualityEvent.getPort());
    paramConfiguration.put("path", paramServiceQualityEvent.getPath());
    paramConfiguration.put("ips", paramServiceQualityEvent.getIps());
    paramConfiguration.put("response", paramServiceQualityEvent.getResponseCode());
    paramConfiguration.put("status", paramServiceQualityEvent.getStatusCode());
    paramConfiguration.put("exception", paramServiceQualityEvent.getExceptionTag());
    paramConfiguration.put("result", paramServiceQualityEvent.getResultType());
    paramConfiguration.put("retry", paramServiceQualityEvent.getRetryCount());
    paramConfiguration.put("req_ts", paramServiceQualityEvent.getRequestTimestamp());
    paramConfiguration.put("req_net", paramServiceQualityEvent.getRequestNetType());
    paramConfiguration.put("dns", paramServiceQualityEvent.getDnsLookupTime());
    paramConfiguration.put("tcp_connect", paramServiceQualityEvent.getTcpConnectTime());
    paramConfiguration.put("handshake", paramServiceQualityEvent.getHandshakeTime());
    paramConfiguration.put("res_first_byte", paramServiceQualityEvent.getReceiveFirstByteTime());
    paramConfiguration.put("res_all_byte", paramServiceQualityEvent.getReceiveAllByteTime());
    paramConfiguration.put("req_data_send", paramServiceQualityEvent.getRequestDataSendTime());
    paramConfiguration.put("duration", paramServiceQualityEvent.getDuration());
    paramConfiguration.put("net_sdk_ver", paramServiceQualityEvent.getNetSdkVersion());
    paramServiceQualityEvent = paramServiceQualityEvent.getExtraParams();
    if ((paramServiceQualityEvent != null) && (paramServiceQualityEvent.size() > 0))
    {
      paramServiceQualityEvent = paramServiceQualityEvent.entrySet().iterator();
      while (paramServiceQualityEvent.hasNext())
      {
        paramv = (Map.Entry)paramServiceQualityEvent.next();
        paramIEventHook = (String)paramv.getKey();
        paramv = paramv.getValue();
        if (r.b(paramv)) {
          paramConfiguration.put(paramIEventHook, paramv);
        }
      }
    }
    localJSONObject.put("B", paramConfiguration);
    return localJSONObject.toString();
  }
  
  public static String a(d paramd, JSONObject paramJSONObject1, Configuration paramConfiguration, OneTrack.IEventHook paramIEventHook, JSONObject paramJSONObject2, v paramv, boolean paramBoolean)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("H", b.a(paramd, paramConfiguration, paramIEventHook, paramv, paramBoolean, false));
    localJSONObject.put("B", r.a(paramJSONObject1, paramJSONObject2));
    return localJSONObject.toString();
  }
  
  public static String a(String paramString1, String paramString2, long paramLong, Configuration paramConfiguration, OneTrack.IEventHook paramIEventHook, JSONObject paramJSONObject, v paramv, boolean paramBoolean)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("H", b.a(paramString2, paramConfiguration, paramIEventHook, paramv, paramBoolean, false));
    paramString2 = new JSONObject();
    paramString2.put("class", paramString1);
    paramString2.put("type", 2);
    paramString2.put("duration", paramLong);
    localJSONObject.put("B", r.a(paramString2, paramJSONObject));
    return localJSONObject.toString();
  }
  
  public static String a(String paramString1, String paramString2, Configuration paramConfiguration, OneTrack.IEventHook paramIEventHook, JSONObject paramJSONObject, boolean paramBoolean1, v paramv, boolean paramBoolean2)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("H", b.a(paramString2, paramConfiguration, paramIEventHook, paramv, paramBoolean2, false));
    paramString2 = new JSONObject();
    paramString2.put("class", paramString1);
    paramString2.put("type", 1);
    paramString2.put("app_start", paramBoolean1);
    localJSONObject.put("B", r.a(paramString2, paramJSONObject));
    return localJSONObject.toString();
  }
  
  public static String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, long paramLong, Configuration paramConfiguration, OneTrack.IEventHook paramIEventHook, JSONObject paramJSONObject, v paramv, boolean paramBoolean)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    paramConfiguration = b.a("onetrack_bug_report", paramConfiguration, paramIEventHook, paramv, paramBoolean, false);
    if (paramString5 != null) {
      paramConfiguration.put(b.b.o, paramString5);
    }
    localJSONObject.put("H", paramConfiguration);
    paramString5 = new JSONObject();
    paramString5.put("exception", paramString1);
    paramString5.put("type", paramString3);
    paramString5.put("message", paramString2);
    paramString5.put("feature", paramString4);
    paramString5.put("crashtime", paramLong);
    localJSONObject.put("B", r.a(paramString5, paramJSONObject));
    return localJSONObject.toString();
  }
  
  public static String a(String paramString1, String paramString2, JSONObject paramJSONObject1, Configuration paramConfiguration, OneTrack.IEventHook paramIEventHook, JSONObject paramJSONObject2, v paramv, boolean paramBoolean)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("H", b.a(paramString2, paramConfiguration, paramIEventHook, paramString1, paramv, paramBoolean, false));
    localJSONObject.put("B", r.a(paramJSONObject1, paramJSONObject2));
    return localJSONObject.toString();
  }
  
  public static String a(String paramString, JSONObject paramJSONObject1, Configuration paramConfiguration, OneTrack.IEventHook paramIEventHook, JSONObject paramJSONObject2, v paramv, JSONArray paramJSONArray, boolean paramBoolean)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    paramString = b.a(paramString, paramConfiguration, paramIEventHook, paramv, paramBoolean, true);
    if ((paramJSONArray != null) && (paramJSONArray.length() > 0)) {
      paramString.put(b.b.H, paramJSONArray);
    }
    localJSONObject.put("H", paramString);
    localJSONObject.put("B", r.a(paramJSONObject1, paramJSONObject2));
    return localJSONObject.toString();
  }
  
  public static String a(String paramString, JSONObject paramJSONObject1, Configuration paramConfiguration, OneTrack.IEventHook paramIEventHook, JSONObject paramJSONObject2, v paramv, boolean paramBoolean)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("H", b.a(paramString, paramConfiguration, paramIEventHook, paramv, paramBoolean, false));
    localJSONObject.put("B", r.a(paramJSONObject1, paramJSONObject2));
    return localJSONObject.toString();
  }
  
  public static String a(JSONObject paramJSONObject1, Configuration paramConfiguration, OneTrack.IEventHook paramIEventHook, JSONObject paramJSONObject2, v paramv, boolean paramBoolean)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("H", b.a("ot_profile_set", paramConfiguration, paramIEventHook, paramv, paramBoolean, false));
    localJSONObject.put("B", r.a(paramJSONObject1, paramJSONObject2));
    return localJSONObject.toString();
  }
  
  public static String b(JSONObject paramJSONObject1, Configuration paramConfiguration, OneTrack.IEventHook paramIEventHook, JSONObject paramJSONObject2, v paramv, boolean paramBoolean)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("H", b.a("ot_profile_increment", paramConfiguration, paramIEventHook, paramv, paramBoolean, false));
    localJSONObject.put("B", r.a(paramJSONObject1, paramJSONObject2));
    return localJSONObject.toString();
  }
  
  public static String c(JSONObject paramJSONObject1, Configuration paramConfiguration, OneTrack.IEventHook paramIEventHook, JSONObject paramJSONObject2, v paramv, boolean paramBoolean)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("H", b.a("ot_login", paramConfiguration, paramIEventHook, paramv, paramBoolean, false));
    localJSONObject.put("B", r.a(paramJSONObject1, paramJSONObject2));
    return localJSONObject.toString();
  }
  
  public static String d(JSONObject paramJSONObject1, Configuration paramConfiguration, OneTrack.IEventHook paramIEventHook, JSONObject paramJSONObject2, v paramv, boolean paramBoolean)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("H", b.a("ot_logout", paramConfiguration, paramIEventHook, paramv, paramBoolean, false));
    localJSONObject.put("B", r.a(paramJSONObject1, paramJSONObject2));
    return localJSONObject.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.c
 * JD-Core Version:    0.7.0.1
 */