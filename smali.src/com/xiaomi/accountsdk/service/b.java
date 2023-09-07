package com.xiaomi.accountsdk.service;

import android.content.Context;
import android.os.BaseBundle;
import z5.f;

public class b
  implements f
{
  public String a(Context paramContext)
  {
    paramContext = a.b(paramContext, "passport", 1, 5000);
    if (paramContext != null)
    {
      paramContext = paramContext.deviceInfo;
      if (paramContext != null) {
        return paramContext.getString("hashed_device_id");
      }
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.service.b
 * JD-Core Version:    0.7.0.1
 */