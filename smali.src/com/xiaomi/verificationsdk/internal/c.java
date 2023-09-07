package com.xiaomi.verificationsdk.internal;

import a6.k.h;
import a6.l;
import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.utils.EasyMap;
import com.xiaomi.accountsdk.utils.b;
import java.io.IOException;
import n7.d;
import org.json.JSONException;
import org.json.JSONObject;

public class c
{
  public static d a(String paramString)
  {
    try
    {
      Object localObject = new com/xiaomi/accountsdk/utils/EasyMap;
      ((EasyMap)localObject).<init>();
      paramString = l.f(paramString, ((EasyMap)localObject).easyPut("type", String.valueOf(2)), null, null, true);
      if (paramString == null) {
        return null;
      }
      localObject = new org/json/JSONObject;
      ((JSONObject)localObject).<init>(paramString.h());
      int i = ((JSONObject)localObject).optInt("maxDuration");
      int j = ((JSONObject)localObject).optInt("frequency");
      paramString = new n7/d;
      paramString.<init>();
      paramString.d(i);
      paramString.c(j);
      return paramString;
    }
    catch (AuthenticationFailureException paramString)
    {
      paramString.printStackTrace();
    }
    catch (AccessDeniedException paramString)
    {
      paramString.printStackTrace();
    }
    catch (IOException paramString)
    {
      paramString.printStackTrace();
    }
    catch (JSONException paramString)
    {
      b.h("VerifyRequest", "fail to parse JSONObject", paramString);
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.verificationsdk.internal.c
 * JD-Core Version:    0.7.0.1
 */