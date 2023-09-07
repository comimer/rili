package com.xiaomi.phonenum.utils;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.account.privacy_data.master.PrivacyDataType;

public class b
{
  public static boolean a(Context paramContext, int paramInt)
  {
    if (TextUtils.isEmpty(h7.a.i(paramContext).d(paramInt).c)) {
      return false;
    }
    paramContext = p5.a.a(paramContext, PrivacyDataType.SIM_IN_SERVICE, new String[] { String.valueOf(paramInt), String.valueOf(3000L) });
    if (paramContext == null)
    {
      com.xiaomi.accountsdk.utils.b.g("SimState", "unknown state");
      return false;
    }
    return Boolean.parseBoolean(paramContext);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.phonenum.utils.b
 * JD-Core Version:    0.7.0.1
 */