package com.xiaomi.phonenum.utils;

import android.content.Context;
import com.xiaomi.account.privacy_data.master.PrivacyDataType;
import p5.a;

public class c
{
  public static int a(Context paramContext, int paramInt)
  {
    paramContext = a.a(paramContext, PrivacyDataType.SUB_ID, new String[] { String.valueOf(paramInt) });
    try
    {
      paramInt = Integer.parseInt(paramContext);
      return paramInt;
    }
    catch (NumberFormatException paramContext) {}
    return -1;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.phonenum.utils.c
 * JD-Core Version:    0.7.0.1
 */