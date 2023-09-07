package com.xiaomi.accountsdk.account;

import android.accounts.Account;
import android.content.Context;
import android.os.BaseBundle;
import android.os.Bundle;
import android.provider.Settings.Global;
import com.xiaomi.accountsdk.account.data.AccountInfo;
import com.xiaomi.accountsdk.utils.b;
import com.xiaomi.passport.accountmanager.g;

public class a
{
  public static void a(Context paramContext, Bundle paramBundle, AccountInfo paramAccountInfo)
  {
    Object localObject = paramAccountInfo.isChild;
    if (localObject == null) {
      return;
    }
    if (((Boolean)localObject).booleanValue()) {
      localObject = "1";
    } else {
      localObject = "0";
    }
    paramBundle.putString("is_child_account", (String)localObject);
    if (g.B(paramContext))
    {
      paramBundle = new StringBuilder();
      paramBundle.append("isChild=");
      paramBundle.append(paramAccountInfo.isChild);
      paramBundle.append(", in system");
      b.g("ChildAccount", paramBundle.toString());
      Settings.Global.putInt(paramContext.getContentResolver(), "xiaomi_account_is_child", paramAccountInfo.isChild.booleanValue());
    }
  }
  
  public static void b(Context paramContext, Account paramAccount, AccountInfo paramAccountInfo)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("system: user data, child=");
    ((StringBuilder)localObject).append(paramAccountInfo.isChild);
    b.g("ChildAccount", ((StringBuilder)localObject).toString());
    if (paramAccountInfo.isChild == null) {
      return;
    }
    g localg = g.z(paramContext);
    if (paramAccountInfo.isChild.booleanValue()) {
      localObject = "1";
    } else {
      localObject = "0";
    }
    localg.u(paramAccount, "is_child_account", (String)localObject);
    if (g.B(paramContext)) {
      Settings.Global.putInt(paramContext.getContentResolver(), "xiaomi_account_is_child", paramAccountInfo.isChild.booleanValue());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.a
 * JD-Core Version:    0.7.0.1
 */