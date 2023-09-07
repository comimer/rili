package com.xiaomi.accountsdk.account;

import a6.k.h;
import a6.l;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.xiaomi.accountsdk.hasheddeviceidlib.HashedDeviceIdUtil;
import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.request.InvalidResponseException;
import com.xiaomi.accountsdk.utils.EasyMap;
import com.xiaomi.accountsdk.utils.XMPassportUtil;
import com.xiaomi.accountsdk.utils.b;
import java.io.IOException;
import java.util.Iterator;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class c
{
  private Context a;
  private SharedPreferences b;
  
  public c(Context paramContext)
  {
    Context localContext = paramContext.getApplicationContext();
    this.a = localContext;
    if (XMPassport.a) {
      paramContext = "region_config_staging";
    } else {
      paramContext = "region_config";
    }
    this.b = localContext.getSharedPreferences(paramContext, 0);
  }
  
  private void b()
  {
    long l1 = this.b.getLong("last_download_time", 0L);
    long l2 = this.b.getLong("download_interval_time", 86400000L);
    if (Math.abs(System.currentTimeMillis() - l1) < l2) {
      b.g("RegionConfig", "not download twice within interval time");
    } else {
      try
      {
        e(d());
      }
      catch (Exception localException)
      {
        b.h("RegionConfig", "download region config failed", localException);
      }
    }
  }
  
  private boolean c(JSONArray paramJSONArray, String paramString)
  {
    if ((paramJSONArray != null) && (!TextUtils.isEmpty(paramString)))
    {
      int i = paramJSONArray.length();
      for (int j = 0; j < i; j++) {
        if (TextUtils.equals(paramJSONArray.optString(j), paramString)) {
          return true;
        }
      }
    }
    return false;
  }
  
  private String d()
    throws AccessDeniedException, AuthenticationFailureException, IOException, InvalidResponseException
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append(d.d);
    ((StringBuilder)localObject1).append("/regionConfig");
    localObject1 = ((StringBuilder)localObject1).toString();
    Object localObject2 = XMPassportUtil.f(Locale.getDefault());
    localObject1 = l.h((String)localObject1, null, new EasyMap().easyPut("deviceId", new HashedDeviceIdUtil(this.a).c()).easyPut("_locale", localObject2), true);
    if (localObject1 != null)
    {
      localObject1 = XMPassport.A((k.h)localObject1);
      try
      {
        localObject2 = new org/json/JSONObject;
        ((JSONObject)localObject2).<init>((String)localObject1);
        if (((JSONObject)localObject2).getInt("code") == 0) {
          return ((JSONObject)localObject2).getString("data");
        }
        localObject2 = new com/xiaomi/accountsdk/request/InvalidResponseException;
        ((InvalidResponseException)localObject2).<init>(((String)localObject1).toString());
        throw ((Throwable)localObject2);
      }
      catch (JSONException localJSONException)
      {
        b.h("RegionConfig", "JSON ERROR", localJSONException);
        throw new InvalidResponseException(localJSONException.getMessage());
      }
    }
    throw new InvalidResponseException("result content is null");
  }
  
  private void e(String paramString)
  {
    try
    {
      JSONObject localJSONObject = new org/json/JSONObject;
      localJSONObject.<init>(paramString);
      localJSONObject = localJSONObject.getJSONObject("Config");
      long l1 = localJSONObject.getLong("client.update.interval");
      long l2 = localJSONObject.getLong("register.check.timeout");
      this.b.edit().putLong("last_download_time", System.currentTimeMillis()).putLong("download_interval_time", l1 * 1000L).putLong("check_timeout", l2 * 1000L).putString("region_json", paramString).commit();
    }
    catch (JSONException paramString)
    {
      b.h("RegionConfig", "JSON ERROR", paramString);
    }
  }
  
  public String a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    b();
    Object localObject = this.b.getString("region_json", null);
    if (localObject == null) {
      return null;
    }
    try
    {
      JSONObject localJSONObject = new org/json/JSONObject;
      localJSONObject.<init>((String)localObject);
      Iterator localIterator = localJSONObject.keys();
      while (localIterator.hasNext())
      {
        localObject = localJSONObject.getJSONObject((String)localIterator.next());
        if (c(((JSONObject)localObject).optJSONArray("region.codes"), paramString.toString()))
        {
          paramString = ((JSONObject)localObject).getString("register.domain");
          return paramString;
        }
      }
    }
    catch (JSONException paramString)
    {
      b.h("RegionConfig", "JSON ERROR", paramString);
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.c
 * JD-Core Version:    0.7.0.1
 */