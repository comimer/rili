package com.xiaomi.passport;

import a6.k;
import android.content.Context;
import android.os.Build;
import android.util.Base64;
import com.xiaomi.account.privacy_data.master.PrivacyDataType;
import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.utils.EasyMap;
import com.xiaomi.accountsdk.utils.b;
import com.xiaomi.accountsdk.utils.i;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import org.json.JSONException;
import org.json.JSONObject;
import p5.a;

public class g
  implements h.c
{
  private static String b(Context paramContext, int paramInt, String paramString1, String paramString2)
  {
    try
    {
      JSONObject localJSONObject = new org/json/JSONObject;
      localJSONObject.<init>();
      localJSONObject.put("deviceType", Build.DEVICE);
      localJSONObject.put("oaid", a.c(paramContext, PrivacyDataType.OAID, new String[0]));
      localJSONObject.put("code", String.valueOf(paramInt));
      localJSONObject.put("nonce", i.a());
      localJSONObject.put("deviceId", paramString2);
      localJSONObject.put("cpuId", paramString1);
      localJSONObject.put("fid", "");
      localJSONObject.put("publicKey", "");
      localJSONObject.put("root", "");
      paramContext = localJSONObject.toString();
      return paramContext;
    }
    catch (JSONException paramContext)
    {
      throw new IllegalStateException("should not happen");
    }
  }
  
  private static void c(Context paramContext, int paramInt, String paramString1, String paramString2)
  {
    paramContext = Base64.encodeToString(b(paramContext, paramInt, paramString1, paramString2).getBytes(StandardCharsets.UTF_8), 10);
    paramContext = new EasyMap().easyPut("fidNonce", paramContext).easyPut("fidNonceSign", "");
    try
    {
      k.t("https://tz.sec.xiaomi.com/session", paramContext, null, true);
    }
    catch (AuthenticationFailureException paramContext) {}catch (AccessDeniedException paramContext) {}catch (IOException paramContext) {}
    paramString1 = new StringBuilder();
    paramString1.append("reportNoService err msg:");
    paramString1.append(paramContext.getMessage());
    b.g("SecurityDeviceReporter", paramString1.toString());
  }
  
  public void a(Context paramContext, int paramInt, String paramString1, String paramString2)
  {
    c(paramContext.getApplicationContext(), paramInt, paramString1, paramString2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.g
 * JD-Core Version:    0.7.0.1
 */