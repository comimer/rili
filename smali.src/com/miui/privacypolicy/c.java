package com.miui.privacypolicy;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONObject;

public class c
{
  protected static int a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    HashMap localHashMap = new HashMap();
    String str = paramString4;
    if (TextUtils.isEmpty(paramString4)) {
      str = paramContext.getPackageName();
    }
    localHashMap.put("pkg", str);
    localHashMap.put("policyName", paramString1);
    localHashMap.put("idContent", paramString2);
    localHashMap.put("miuiVersion", NetUtils.a);
    paramString2 = paramString5;
    if (TextUtils.isEmpty(paramString5)) {
      paramString2 = b.a(paramContext);
    }
    localHashMap.put("apkVersion", paramString2);
    paramString4 = a.e(paramContext, "privacy_temp_update_version", paramString1);
    paramString2 = paramString4;
    if (TextUtils.isEmpty(paramString4)) {
      paramString2 = "";
    }
    localHashMap.put("policyVersion", paramString2);
    localHashMap.put("language", Locale.getDefault().getLanguage());
    localHashMap.put("region", Locale.getDefault().getCountry());
    localHashMap.put("timestamp", paramString3);
    paramString2 = new JSONObject();
    try
    {
      paramString4 = localHashMap.entrySet().iterator();
      while (paramString4.hasNext())
      {
        paramString3 = (Map.Entry)paramString4.next();
        paramString2.put((String)paramString3.getKey(), (String)paramString3.getValue());
      }
      int i;
      return -3;
    }
    catch (Exception paramString3)
    {
      Log.e("Privacy_AgreeManager", "build jsonObject error, ", paramString3);
      paramString4 = NetUtils.h(localHashMap, "https://data.sec.miui.com/privacy/agree/v1", NetUtils.HttpMethod.POST, paramString2);
      if (TextUtils.isEmpty(paramString4))
      {
        a.g(paramString2.toString(), paramContext, "privacy_agree_error", paramString1);
        return -2;
      }
      try
      {
        paramString3 = new org/json/JSONObject;
        paramString3.<init>(paramString4);
        i = paramString3.optInt("code");
        paramString4 = paramString3.optString("message");
        if ((i == 200) && ("success".equals(paramString4)))
        {
          paramString4 = paramString3.optString("data");
          paramString3 = new org/json/JSONObject;
          paramString3.<init>(paramString4);
          paramString3 = paramString3.optString("latestPolicyVersion");
          if (!TextUtils.isEmpty(paramString3))
          {
            a.g(paramString3, paramContext, "privacy_version", paramString1);
            a.d(paramContext, "privacy_agree_error", paramString1);
            a.d(paramContext, "privacy_temp_update_version", paramString1);
            a.d(paramContext, "privacy_update", paramString1);
            return 1;
          }
        }
      }
      catch (Exception paramString3)
      {
        Log.e("Privacy_AgreeManager", "handlePrivacyAgreeTask error, ", paramString3);
        a.g(paramString2.toString(), paramContext, "privacy_agree_error", paramString1);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.privacypolicy.c
 * JD-Core Version:    0.7.0.1
 */