package com.xiaomi.accountsdk.utils;

import android.accounts.AccountManager;
import android.accounts.AuthenticatorDescription;
import android.content.Context;
import android.text.TextUtils;
import java.util.HashSet;
import java.util.Set;

public class u
{
  public static String a(Context paramContext)
  {
    HashSet localHashSet = new HashSet();
    for (Object localObject : AccountManager.get(paramContext).getAuthenticatorTypes()) {
      if (TextUtils.equals(localObject.type, "com.xiaomi")) {
        localHashSet.add(localObject.packageName);
      }
    }
    if (localHashSet.contains("com.xiaomi.account")) {
      return "com.xiaomi.account";
    }
    if (localHashSet.contains("com.xiaomi.controlscreen.account")) {
      return "com.xiaomi.controlscreen.account";
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.utils.u
 * JD-Core Version:    0.7.0.1
 */