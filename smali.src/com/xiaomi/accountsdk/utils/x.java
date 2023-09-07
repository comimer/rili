package com.xiaomi.accountsdk.utils;

import android.text.TextUtils;
import com.xiaomi.accountsdk.account.e;

public class x
{
  public static String a()
  {
    return b(e.g(), e.d());
  }
  
  static String b(String paramString1, String paramString2)
  {
    String str;
    if (!TextUtils.isEmpty(paramString1))
    {
      str = paramString1;
      if (!TextUtils.equals(paramString1, paramString2)) {}
    }
    else
    {
      str = null;
    }
    return str;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.utils.x
 * JD-Core Version:    0.7.0.1
 */