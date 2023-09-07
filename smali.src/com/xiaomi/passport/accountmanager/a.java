package com.xiaomi.passport.accountmanager;

import android.accounts.Account;
import android.app.NotificationManager;
import android.content.Context;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.text.TextUtils;
import com.xiaomi.accountsdk.account.data.AccountInfo;
import com.xiaomi.accountsdk.hasheddeviceidlib.HashedDeviceIdUtil;
import com.xiaomi.accountsdk.hasheddeviceidlib.HashedDeviceIdUtil.a;
import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.request.CipherException;
import com.xiaomi.accountsdk.request.InvalidResponseException;
import com.xiaomi.accountsdk.utils.CloudCoder;
import com.xiaomi.accountsdk.utils.EasyMap;
import com.xiaomi.accountsdk.utils.FidSigningUtil.FidSignException;
import com.xiaomi.passport.LocalFeatures.LocalFeaturesManagerResponse;
import com.xiaomi.passport.servicetoken.ServiceTokenResult.b;
import com.xiaomi.passport.servicetoken.ServiceTokenUIResponse;
import com.xiaomi.passport.servicetoken.data.XmAccountVisibility;
import com.xiaomi.passport.servicetoken.data.XmAccountVisibility.ErrorCode;
import com.xiaomi.passport.servicetoken.data.XmAccountVisibility.b;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;
import k5.d;

abstract class a
  implements IXiaomiAccountManager
{
  private static final Object b = new Object();
  private static final String[] c = { "com.google.android.contacts", "com.google.android.apps.messaging", "com.google.android.dialer", "com.android.contacts", "com.miui.yellowpage" };
  protected Context a;
  
  public a(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
    HashedDeviceIdUtil.a.b().e(this.a);
  }
  
  private void A(String paramString, Account paramAccount)
  {
    try
    {
      paramString = z5.g.a(this.a, paramString);
    }
    catch (FidSigningUtil.FidSignException paramString)
    {
      com.xiaomi.accountsdk.utils.b.h("AbsXiaomiAccountManager", "handleSaveUDevId ", paramString);
      paramString = null;
    }
    if (paramString != null) {
      u(paramAccount, "acc_udevid", paramString);
    }
  }
  
  private void B(Account paramAccount, AccountInfo paramAccountInfo)
  {
    if (paramAccountInfo == null) {
      return;
    }
    Account localAccount = paramAccount;
    if (paramAccount == null) {
      localAccount = l();
    }
    if (localAccount == null)
    {
      com.xiaomi.accountsdk.utils.b.g("AbsXiaomiAccountManager", "no account, skip update account info");
      return;
    }
    paramAccount = paramAccountInfo.getEncryptedUserId();
    if (!TextUtils.isEmpty(paramAccount)) {
      u(localAccount, "encrypted_user_id", paramAccount);
    }
    if (paramAccountInfo.hasPwd) {
      u(localAccount, "has_password", Boolean.TRUE.toString());
    }
    com.xiaomi.accountsdk.account.a.b(this.a, localAccount, paramAccountInfo);
    String str = paramAccountInfo.getServiceId();
    paramAccount = paramAccountInfo.getServiceToken();
    if ((!TextUtils.isEmpty(str)) && (!TextUtils.isEmpty(paramAccount)))
    {
      t(localAccount, str, new ServiceTokenResult.b(str).x(paramAccount).w(paramAccountInfo.security).u(false).o());
      Object localObject1 = CloudCoder.e(paramAccount);
      boolean bool = TextUtils.isEmpty(paramAccountInfo.getSlh());
      Object localObject2 = null;
      if (bool)
      {
        paramAccount = null;
      }
      else
      {
        paramAccount = new StringBuilder();
        paramAccount.append((String)localObject1);
        paramAccount.append(",");
        paramAccount.append(paramAccountInfo.getSlh());
        paramAccount = paramAccount.toString();
      }
      if (TextUtils.isEmpty(paramAccountInfo.getPh()))
      {
        paramAccountInfo = (AccountInfo)localObject2;
      }
      else
      {
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append((String)localObject1);
        ((StringBuilder)localObject2).append(",");
        ((StringBuilder)localObject2).append(paramAccountInfo.getPh());
        paramAccountInfo = ((StringBuilder)localObject2).toString();
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append(str);
      ((StringBuilder)localObject2).append("_slh");
      localObject2 = ((StringBuilder)localObject2).toString();
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(str);
      ((StringBuilder)localObject1).append("_ph");
      str = ((StringBuilder)localObject1).toString();
      u(localAccount, (String)localObject2, paramAccount);
      u(localAccount, str, paramAccountInfo);
      localObject1 = new EasyMap();
      ((EasyMap)localObject1).easyPutOpt(localObject2, paramAccount);
      ((EasyMap)localObject1).easyPutOpt(str, paramAccountInfo);
      j5.a.c(this.a, localAccount.name, (Map)localObject1);
    }
  }
  
  private void C(Account paramAccount, Boolean paramBoolean)
  {
    if (paramBoolean != null) {
      u(paramAccount, "has_local_channel", String.valueOf(paramBoolean));
    }
  }
  
  private static void D(g paramg, Account paramAccount)
  {
    for (String str : c)
    {
      StringBuilder localStringBuilder;
      if (!q5.a.b(paramg, paramAccount, str))
      {
        boolean bool = q5.a.c(paramg, paramAccount, str);
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("setAccountVisibilityForApps, packageName=");
        localStringBuilder.append(str);
        localStringBuilder.append(", result=");
        localStringBuilder.append(bool);
        com.xiaomi.accountsdk.utils.b.g("AbsXiaomiAccountManager", localStringBuilder.toString());
      }
      else
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("setAccountVisibilityForApps, packageName=");
        localStringBuilder.append(str);
        localStringBuilder.append(" already visible.");
        com.xiaomi.accountsdk.utils.b.g("AbsXiaomiAccountManager", localStringBuilder.toString());
      }
    }
  }
  
  private boolean z(AccountInfo paramAccountInfo, Bundle paramBundle)
  {
    Account localAccount1 = new Account(paramAccountInfo.getUserId(), "com.xiaomi");
    String str = com.xiaomi.accountsdk.account.data.a.a(paramAccountInfo.getPassToken(), paramAccountInfo.getPsecurity()).c();
    synchronized (b)
    {
      Account localAccount2 = l();
      if (localAccount2 != null)
      {
        paramAccountInfo = p(localAccount2);
        if ((localAccount2.name.equals(localAccount1.name)) && (!TextUtils.isEmpty(str)) && (!TextUtils.equals(str, paramAccountInfo)))
        {
          h(localAccount2, str);
          r(localAccount1, IXiaomiAccountManager.UpdateType.POST_REFRESH);
        }
        return true;
      }
      r(localAccount1, IXiaomiAccountManager.UpdateType.PRE_ADD);
      boolean bool = w(paramAccountInfo, paramBundle);
      if (bool)
      {
        if (g.B(this.a))
        {
          D(g.z(this.a), localAccount1);
          ((NotificationManager)this.a.getSystemService("notification")).cancel(-255);
          q5.b.a(this.a);
        }
        r(localAccount1, IXiaomiAccountManager.UpdateType.POST_ADD);
      }
      return bool;
    }
  }
  
  public String b(Account paramAccount)
  {
    Object localObject = paramAccount;
    if (paramAccount == null) {
      localObject = l();
    }
    paramAccount = null;
    if (localObject == null) {
      return null;
    }
    localObject = g.z(this.a).p((Account)localObject);
    if (TextUtils.isEmpty((CharSequence)localObject)) {
      return null;
    }
    localObject = com.xiaomi.accountsdk.account.data.a.b((String)localObject);
    if (localObject != null) {
      paramAccount = ((com.xiaomi.accountsdk.account.data.a)localObject).a;
    }
    return paramAccount;
  }
  
  public i<XmAccountVisibility> c(h<XmAccountVisibility> paramh, Handler paramHandler)
  {
    return new a(paramh, paramHandler).d();
  }
  
  public void d(Account paramAccount, AccountInfo paramAccountInfo)
  {
    synchronized (b)
    {
      B(paramAccount, paramAccountInfo);
      return;
    }
  }
  
  public void i(Parcelable paramParcelable, Bundle paramBundle)
  {
    if (paramParcelable == null) {
      return;
    }
    if ((paramParcelable instanceof android.accounts.AccountAuthenticatorResponse))
    {
      paramParcelable = (android.accounts.AccountAuthenticatorResponse)paramParcelable;
      if (paramBundle == null) {
        paramParcelable.onError(4, "canceled");
      } else {
        paramParcelable.onResult(paramBundle);
      }
    }
    else if ((paramParcelable instanceof com.xiaomi.accounts.AccountAuthenticatorResponse))
    {
      paramParcelable = (com.xiaomi.accounts.AccountAuthenticatorResponse)paramParcelable;
      if (paramBundle == null) {
        paramParcelable.onError(4, "canceled");
      } else {
        paramParcelable.onResult(paramBundle);
      }
    }
    else if ((paramParcelable instanceof ServiceTokenUIResponse))
    {
      paramParcelable = (ServiceTokenUIResponse)paramParcelable;
      if (paramBundle == null) {
        paramParcelable.onError(4, "canceled");
      } else {
        paramParcelable.onResult(paramBundle);
      }
    }
    else if ((paramParcelable instanceof l5.a))
    {
      paramParcelable = (l5.a)paramParcelable;
      if (paramBundle == null) {
        paramParcelable.b(4, "canceled");
      } else {
        paramParcelable.a(paramBundle);
      }
    }
    else if ((paramParcelable instanceof LocalFeaturesManagerResponse))
    {
      paramParcelable = (LocalFeaturesManagerResponse)paramParcelable;
      if (paramBundle == null) {
        paramParcelable.onError(4, "canceled");
      } else {
        paramParcelable.onResult(paramBundle);
      }
    }
  }
  
  public boolean q(AccountInfo paramAccountInfo)
  {
    String str = paramAccountInfo.getUserId();
    Account localAccount = new Account(str, "com.xiaomi");
    Bundle localBundle = new Bundle();
    localBundle.putString("extra_user_id", str);
    localBundle.putString("authAccount", paramAccountInfo.getUserId());
    localBundle.putString("encrypted_user_id", paramAccountInfo.getEncryptedUserId());
    com.xiaomi.accountsdk.account.a.a(this.a, localBundle, paramAccountInfo);
    ??? = paramAccountInfo.serviceId;
    t(localAccount, (String)???, new ServiceTokenResult.b((String)???).x(paramAccountInfo.serviceToken).w(paramAccountInfo.security).u(false).o());
    synchronized (b)
    {
      boolean bool = z(paramAccountInfo, localBundle);
      B(localAccount, paramAccountInfo);
      j5.a.b(this.a, localAccount);
      A(str, localAccount);
      C(localAccount, paramAccountInfo.hasLocalChannel);
      return bool;
    }
  }
  
  public boolean s(Account paramAccount, String paramString)
  {
    Account localAccount = paramAccount;
    if (paramAccount == null) {
      localAccount = l();
    }
    if (localAccount == null)
    {
      com.xiaomi.accountsdk.utils.b.g("AbsXiaomiAccountManager", "no account");
      return false;
    }
    paramAccount = p(localAccount);
    boolean bool1 = true;
    boolean bool2 = true;
    boolean bool3 = true;
    boolean bool4 = true;
    boolean bool5 = true;
    if (TextUtils.isEmpty(paramAccount)) {
      return TextUtils.equals("true", o(localAccount, "has_password"));
    }
    boolean bool6 = bool5;
    boolean bool7 = bool1;
    boolean bool8 = bool2;
    boolean bool9 = bool3;
    boolean bool10 = bool4;
    try
    {
      paramAccount = new com/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;
      bool6 = bool5;
      bool7 = bool1;
      bool8 = bool2;
      bool9 = bool3;
      bool10 = bool4;
      paramAccount.<init>(this.a);
      bool6 = bool5;
      bool7 = bool1;
      bool8 = bool2;
      bool9 = bool3;
      bool10 = bool4;
      paramAccount = paramAccount.c();
      bool6 = bool5;
      bool7 = bool1;
      bool8 = bool2;
      bool9 = bool3;
      bool10 = bool4;
      d locald = d.h(this.a, "passportapi");
      if (locald != null)
      {
        bool6 = bool5;
        bool7 = bool1;
        bool8 = bool2;
        bool9 = bool3;
        bool10 = bool4;
        String str = UUID.randomUUID().toString().substring(0, 15);
        bool6 = bool5;
        bool7 = bool1;
        bool8 = bool2;
        bool10 = bool4;
        try
        {
          bool9 = b7.a.h(locald, paramString, paramAccount, str);
          bool5 = bool9;
        }
        catch (AuthenticationFailureException localAuthenticationFailureException)
        {
          for (;;)
          {
            bool6 = bool5;
            bool7 = bool1;
            bool8 = bool2;
            bool9 = bool3;
            bool10 = bool4;
            locald.i(this.a);
            bool6 = bool5;
            bool7 = bool1;
            bool8 = bool2;
            bool9 = bool3;
            bool10 = bool4;
            bool5 = b7.a.h(locald, paramString, paramAccount, str);
          }
        }
        bool6 = bool5;
        bool7 = bool5;
        bool8 = bool5;
        bool9 = bool5;
        bool10 = bool5;
        u(localAccount, "has_password", String.valueOf(bool5));
      }
      else
      {
        bool6 = bool5;
        bool7 = bool1;
        bool8 = bool2;
        bool9 = bool3;
        bool10 = bool4;
        com.xiaomi.accountsdk.utils.b.g("AbsXiaomiAccountManager", "passport info is null");
        bool6 = bool5;
        bool7 = bool1;
        bool8 = bool2;
        bool9 = bool3;
        bool10 = bool4;
        paramAccount = new com/xiaomi/accountsdk/request/AuthenticationFailureException;
        bool6 = bool5;
        bool7 = bool1;
        bool8 = bool2;
        bool9 = bool3;
        bool10 = bool4;
        paramAccount.<init>("passport info is null");
        bool6 = bool5;
        bool7 = bool1;
        bool8 = bool2;
        bool9 = bool3;
        bool10 = bool4;
        throw paramAccount;
      }
    }
    catch (IOException paramAccount)
    {
      com.xiaomi.accountsdk.utils.b.h("AbsXiaomiAccountManager", "handleQueryUserPassword error", paramAccount);
      bool5 = bool6;
    }
    catch (CipherException paramAccount)
    {
      com.xiaomi.accountsdk.utils.b.h("AbsXiaomiAccountManager", "handleQueryUserPassword error", paramAccount);
      bool5 = bool7;
    }
    catch (InvalidResponseException paramAccount)
    {
      com.xiaomi.accountsdk.utils.b.h("AbsXiaomiAccountManager", "handleQueryUserPassword error", paramAccount);
      bool5 = bool8;
    }
    catch (AuthenticationFailureException paramAccount)
    {
      com.xiaomi.accountsdk.utils.b.h("AbsXiaomiAccountManager", "handleQueryUserPassword error", paramAccount);
      bool5 = bool9;
    }
    catch (AccessDeniedException paramAccount)
    {
      com.xiaomi.accountsdk.utils.b.h("AbsXiaomiAccountManager", "handleQueryUserPassword error", paramAccount);
      bool5 = bool10;
    }
    return bool5;
  }
  
  class a
    extends i<XmAccountVisibility>
  {
    a(h paramh, Handler paramHandler)
    {
      super(paramHandler);
    }
    
    public XmAccountVisibility f()
    {
      Account localAccount = a.this.l();
      if (localAccount == null) {
        return new XmAccountVisibility.b(XmAccountVisibility.ErrorCode.ERROR_NO_ACCOUNT, null).h();
      }
      return new XmAccountVisibility.b(XmAccountVisibility.ErrorCode.ERROR_NONE, null).g(true, localAccount).h();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.accountmanager.a
 * JD-Core Version:    0.7.0.1
 */