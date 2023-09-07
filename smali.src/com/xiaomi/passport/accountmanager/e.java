package com.xiaomi.passport.accountmanager;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.text.TextUtils;
import com.xiaomi.accountsdk.account.data.AccountInfo;
import com.xiaomi.accountsdk.utils.u;
import com.xiaomi.passport.servicetoken.ServiceTokenResult;
import com.xiaomi.passport.servicetoken.ServiceTokenResult.ErrorCode;
import com.xiaomi.passport.servicetoken.ServiceTokenResult.b;
import com.xiaomi.passport.servicetoken.b;
import com.xiaomi.passport.servicetoken.c.a;

class e
  extends a
{
  protected final AccountManager d;
  protected final Context e;
  
  public e(Context paramContext)
  {
    super(paramContext);
    this.d = AccountManager.get(paramContext);
    this.e = paramContext.getApplicationContext();
  }
  
  public Intent E()
  {
    Intent localIntent = new Intent("android.intent.action.MAIN");
    localIntent.addCategory("android.intent.category.DEFAULT");
    localIntent.setPackage(u.a(this.e));
    q5.c.a(localIntent);
    return localIntent;
  }
  
  public Intent a(String paramString, Bundle paramBundle, Parcelable paramParcelable)
  {
    Intent localIntent = new Intent("com.xiaomi.account.action.XIAOMI_ACCOUNT_LOGIN");
    localIntent.setPackage("com.xiaomi.account");
    localIntent.putExtra("service_id", paramString);
    localIntent.addFlags(67108864);
    localIntent.putExtra("accountAuthenticatorResponse", paramParcelable);
    if (paramBundle != null) {
      localIntent.putExtras(paramBundle);
    }
    localIntent.setPackage(u.a(this.e));
    localIntent.addCategory("android.intent.category.DEFAULT");
    q5.c.a(localIntent);
    return localIntent;
  }
  
  @SuppressLint({"MissingPermission"})
  public void e(Account paramAccount)
  {
    this.d.clearPassword(paramAccount);
  }
  
  @SuppressLint({"MissingPermission"})
  public b f(final ServiceTokenResult paramServiceTokenResult)
  {
    return new c(paramServiceTokenResult).b();
  }
  
  @SuppressLint({"MissingPermission"})
  public AccountManagerFuture<Bundle> g(Account paramAccount, Bundle paramBundle, AccountManagerCallback<Bundle> paramAccountManagerCallback, Handler paramHandler)
  {
    return this.d.confirmCredentials(paramAccount, paramBundle, null, paramAccountManagerCallback, paramHandler);
  }
  
  public void h(Account paramAccount, String paramString)
  {
    this.d.setPassword(paramAccount, paramString);
  }
  
  @SuppressLint({"MissingPermission"})
  public ServiceTokenResult j(Account paramAccount, String paramString, Bundle paramBundle)
  {
    String str = this.d.peekAuthToken(paramAccount, paramString);
    boolean bool = TextUtils.isEmpty(str);
    Object localObject = null;
    paramBundle = localObject;
    if (!bool)
    {
      paramString = ServiceTokenResult.create(null, paramString, str, true);
      if (paramString == null) {
        paramBundle = localObject;
      } else {
        paramBundle = paramString.addAccountInfo(this.e, paramAccount);
      }
    }
    return paramBundle;
  }
  
  public boolean k(Account paramAccount, String paramString, int paramInt)
  {
    return this.d.setAccountVisibility(paramAccount, paramString, paramInt);
  }
  
  @SuppressLint({"MissingPermission"})
  public Account l()
  {
    Account[] arrayOfAccount = this.d.getAccountsByType("com.xiaomi");
    if (arrayOfAccount.length > 0) {
      return arrayOfAccount[0];
    }
    return null;
  }
  
  public int m(Account paramAccount, String paramString)
  {
    return this.d.getAccountVisibility(paramAccount, paramString);
  }
  
  public Intent n(Bundle paramBundle, Parcelable paramParcelable)
  {
    Intent localIntent = new Intent("com.xiaomi.account.action.XIAOMI_ACCOUNT_QUICK_LOGIN");
    localIntent.setPackage("com.xiaomi.account");
    localIntent.putExtra("accountAuthenticatorResponse", paramParcelable);
    if (paramBundle != null) {
      localIntent.putExtras(paramBundle);
    }
    localIntent.addFlags(67108864);
    localIntent.setPackage(u.a(this.e));
    localIntent.addCategory("android.intent.category.DEFAULT");
    q5.c.a(localIntent);
    return localIntent;
  }
  
  @SuppressLint({"MissingPermission"})
  public String o(Account paramAccount, String paramString)
  {
    return this.d.getUserData(paramAccount, paramString);
  }
  
  public String p(Account paramAccount)
  {
    return this.d.getPassword(paramAccount);
  }
  
  @SuppressLint({"WrongConstant"})
  public void r(Account paramAccount, IXiaomiAccountManager.UpdateType paramUpdateType)
  {
    if (paramUpdateType != null)
    {
      int i = d.a[paramUpdateType.ordinal()];
      String str = "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED";
      int j = 3;
      paramUpdateType = str;
      if (i != 1)
      {
        if (i != 2)
        {
          if (i != 3)
          {
            paramUpdateType = str;
            if (i != 4) {
              if (i == 5) {
                paramUpdateType = "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED";
              } else {
                throw new IllegalStateException("this should not be happen");
              }
            }
            j = 1;
          }
          else
          {
            paramUpdateType = "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED";
          }
        }
        else {
          paramUpdateType = "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED";
        }
      }
      else {
        j = 2;
      }
      paramUpdateType = new Intent(paramUpdateType);
      paramUpdateType.putExtra("extra_account", paramAccount);
      paramUpdateType.putExtra("extra_update_type", j);
      paramUpdateType.addFlags(16777216);
      this.e.sendBroadcast(paramUpdateType);
      return;
    }
    throw new IllegalArgumentException();
  }
  
  @SuppressLint({"MissingPermission"})
  public void t(Account paramAccount, String paramString, ServiceTokenResult paramServiceTokenResult)
  {
    if ((!TextUtils.isEmpty(paramString)) && (!TextUtils.isEmpty(paramServiceTokenResult.security)) && (!TextUtils.isEmpty(paramServiceTokenResult.serviceToken))) {
      this.d.setAuthToken(paramAccount, paramString, paramServiceTokenResult.toAuthToken());
    }
  }
  
  @SuppressLint({"MissingPermission"})
  public void u(Account paramAccount, String paramString1, String paramString2)
  {
    this.d.setUserData(paramAccount, paramString1, paramString2);
  }
  
  public Intent v(String paramString1, String paramString2, Bundle paramBundle, Parcelable paramParcelable)
  {
    paramString1 = new Intent("com.xiaomi.account.action.PASSPORT_JSB_WEBVIEW");
    paramString1.addCategory("android.intent.category.DEFAULT");
    paramString2 = new m6.e.b().n(paramString2).m(true).i(true).j(m6.e.c.a(b7.h.a, true, null)).k(m6.e.d.a(true)).g(m6.e.a.b()).h();
    Bundle localBundle = new Bundle();
    paramString2.a(localBundle);
    paramString1.putExtras(localBundle);
    paramString1.putExtra("accountAuthenticatorResponse", paramParcelable);
    if (paramBundle != null) {
      paramString1.putExtras(paramBundle);
    }
    paramString1.setData(Uri.parse("xiaomiaccount://webview"));
    paramString1.setPackage(u.a(this.e));
    paramString1.addCategory("android.intent.category.DEFAULT");
    q5.c.a(paramString1);
    com.xiaomi.accountsdk.utils.c.a().d(this.e, paramString1);
    return paramString1;
  }
  
  public boolean w(AccountInfo paramAccountInfo, Bundle paramBundle)
  {
    Account localAccount = new Account(paramAccountInfo.getUserId(), "com.xiaomi");
    paramAccountInfo = com.xiaomi.accountsdk.account.data.a.a(paramAccountInfo.getPassToken(), paramAccountInfo.getPsecurity()).c();
    return this.d.addAccountExplicitly(localAccount, paramAccountInfo, paramBundle);
  }
  
  @SuppressLint({"MissingPermission"})
  public b x(final Account paramAccount, final String paramString, final Bundle paramBundle)
  {
    return new b(paramAccount, paramString, paramBundle).b();
  }
  
  @SuppressLint({"MissingPermission"})
  public i<Bundle> y(h<Bundle> paramh, Handler paramHandler)
  {
    return new a(paramh, paramHandler, l()).d();
  }
  
  class a
    extends i<Bundle>
  {
    a(h paramh, Handler paramHandler, Account paramAccount)
    {
      super(paramHandler);
    }
    
    public Bundle f()
      throws Exception
    {
      Bundle localBundle = new Bundle();
      Object localObject = this.d;
      if (localObject == null)
      {
        localBundle.putBoolean("booleanResult", false);
        localBundle.putString("errorMessage", "no account");
        return localBundle;
      }
      e.this.r((Account)localObject, IXiaomiAccountManager.UpdateType.PRE_REMOVE);
      localObject = e.this;
      localObject = (Boolean)((e)localObject).d.removeAccount(((e)localObject).l(), null, null).getResult();
      localBundle.putBoolean("booleanResult", ((Boolean)localObject).booleanValue());
      if (((Boolean)localObject).booleanValue()) {
        e.this.r(this.d, IXiaomiAccountManager.UpdateType.POST_REMOVE);
      }
      return localBundle;
    }
  }
  
  class b
    extends c.a
  {
    b(Account paramAccount, String paramString, Bundle paramBundle) {}
    
    protected ServiceTokenResult a()
    {
      Object localObject1 = paramAccount;
      Object localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = e.this.l();
      }
      if (localObject2 == null) {
        return new ServiceTokenResult.b(paramString).q(ServiceTokenResult.ErrorCode.ERROR_NO_ACCOUNT).o();
      }
      localObject1 = e.this.j((Account)localObject2, paramString, paramBundle);
      if (localObject1 != null) {
        return ((ServiceTokenResult)localObject1).addAccountInfo(e.this.e, (Account)localObject2);
      }
      try
      {
        localObject1 = (Bundle)e.this.d.getAuthToken((Account)localObject2, paramString, paramBundle, null, null, null).getResult();
        localObject1 = ServiceTokenResult.create((Bundle)localObject1, paramString);
        if (localObject1 == null) {
          localObject2 = null;
        } else {
          localObject2 = ((ServiceTokenResult)localObject1).addAccountInfo(e.this.e, (Account)localObject2);
        }
        return localObject2;
      }
      catch (Exception localException)
      {
        return ServiceTokenResult.create(paramString, localException);
      }
    }
  }
  
  class c
    extends c.a
  {
    c(ServiceTokenResult paramServiceTokenResult) {}
    
    protected ServiceTokenResult a()
    {
      Object localObject = paramServiceTokenResult;
      if (localObject == null) {
        localObject = null;
      } else {
        localObject = ((ServiceTokenResult)localObject).toAuthToken();
      }
      e.this.d.invalidateAuthToken("com.xiaomi", (String)localObject);
      return new ServiceTokenResult.b(paramServiceTokenResult.sid).o();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.accountmanager.e
 * JD-Core Version:    0.7.0.1
 */