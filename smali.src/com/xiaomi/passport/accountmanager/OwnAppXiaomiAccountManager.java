package com.xiaomi.passport.accountmanager;

import android.accounts.Account;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import android.text.TextUtils;
import com.xiaomi.accountsdk.account.data.AccountInfo;
import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.request.InvalidResponseException;
import com.xiaomi.accountsdk.utils.u;
import com.xiaomi.passport.servicetoken.ServiceTokenResult;
import com.xiaomi.passport.servicetoken.ServiceTokenResult.ErrorCode;
import com.xiaomi.passport.servicetoken.ServiceTokenResult.b;
import com.xiaomi.passport.servicetoken.c.a;
import com.xiaomi.passport.webview.PassportJsbWebPageLifecycleListener;
import java.io.IOException;
import m6.e;
import m6.e.b;
import m6.e.c;

class OwnAppXiaomiAccountManager
  extends a
{
  private final com.xiaomi.accounts.c d;
  
  public OwnAppXiaomiAccountManager(Context paramContext)
  {
    super(paramContext);
    s5.a.k(this.a);
    this.d = com.xiaomi.accounts.c.s(paramContext);
  }
  
  public Intent a(String paramString, Bundle paramBundle, Parcelable paramParcelable)
  {
    Intent localIntent = l6.a.a(this.a);
    localIntent.putExtra("service_id", paramString);
    localIntent.putExtras(paramBundle);
    localIntent.addFlags(67108864);
    localIntent.putExtra("accountAuthenticatorResponse", paramParcelable);
    return localIntent;
  }
  
  public void e(Account paramAccount)
  {
    this.d.i(paramAccount);
  }
  
  public com.xiaomi.passport.servicetoken.b f(final ServiceTokenResult paramServiceTokenResult)
  {
    return new d(paramServiceTokenResult).b();
  }
  
  public AccountManagerFuture<Bundle> g(Account paramAccount, Bundle paramBundle, AccountManagerCallback<Bundle> paramAccountManagerCallback, Handler paramHandler)
  {
    return this.d.j(paramAccount, paramBundle, null, paramAccountManagerCallback, paramHandler);
  }
  
  public void h(Account paramAccount, String paramString)
  {
    this.d.z(paramAccount, paramString);
  }
  
  public ServiceTokenResult j(Account paramAccount, String paramString, Bundle paramBundle)
  {
    String str = this.d.t(paramAccount, paramString);
    boolean bool = TextUtils.isEmpty(str);
    Object localObject = null;
    paramBundle = localObject;
    if (!bool)
    {
      paramString = ServiceTokenResult.create(null, paramString, str, true);
      if (paramString == null) {
        paramBundle = localObject;
      } else {
        paramBundle = paramString.addAccountInfo(this.a, paramAccount);
      }
    }
    return paramBundle;
  }
  
  public boolean k(Account paramAccount, String paramString, int paramInt)
  {
    return true;
  }
  
  public Account l()
  {
    Account[] arrayOfAccount = this.d.n("com.xiaomi");
    if (arrayOfAccount.length > 0) {
      return arrayOfAccount[0];
    }
    return null;
  }
  
  public int m(Account paramAccount, String paramString)
  {
    return 1;
  }
  
  public Intent n(Bundle paramBundle, Parcelable paramParcelable)
  {
    Intent localIntent = l6.a.e(this.a);
    localIntent.putExtra("accountAuthenticatorResponse", paramParcelable);
    if (paramBundle != null) {
      localIntent.putExtras(paramBundle);
    }
    localIntent.addFlags(67108864);
    return localIntent;
  }
  
  public String o(Account paramAccount, String paramString)
  {
    return this.d.q(paramAccount, paramString);
  }
  
  public String p(Account paramAccount)
  {
    return this.d.p(paramAccount);
  }
  
  public void r(Account paramAccount, IXiaomiAccountManager.UpdateType paramUpdateType)
  {
    if (paramUpdateType != null)
    {
      int i = e.a[paramUpdateType.ordinal()];
      String str = "com.xiaomi.accounts.LOGIN_ACCOUNTS_PRE_CHANGED";
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
                paramUpdateType = "com.xiaomi.accounts.LOGIN_ACCOUNTS_POST_CHANGED";
              } else {
                throw new IllegalStateException("this should not be happen");
              }
            }
            j = 1;
          }
          else
          {
            paramUpdateType = "com.xiaomi.accounts.LOGIN_ACCOUNTS_POST_CHANGED";
          }
        }
        else {
          paramUpdateType = "com.xiaomi.accounts.LOGIN_ACCOUNTS_POST_CHANGED";
        }
      }
      else {
        j = 2;
      }
      paramUpdateType = new Intent(paramUpdateType);
      paramUpdateType.putExtra("extra_account", paramAccount);
      paramUpdateType.putExtra("extra_update_type", j);
      paramUpdateType.setPackage(this.a.getPackageName());
      this.a.sendBroadcast(paramUpdateType);
      return;
    }
    throw new IllegalArgumentException();
  }
  
  public void t(Account paramAccount, String paramString, ServiceTokenResult paramServiceTokenResult)
  {
    if ((!TextUtils.isEmpty(paramString)) && (!TextUtils.isEmpty(paramServiceTokenResult.security)) && (!TextUtils.isEmpty(paramServiceTokenResult.serviceToken))) {
      this.d.y(paramAccount, paramString, paramServiceTokenResult.toAuthToken());
    }
  }
  
  public void u(Account paramAccount, String paramString1, String paramString2)
  {
    this.d.A(paramAccount, paramString1, paramString2);
  }
  
  public Intent v(String paramString1, String paramString2, Bundle paramBundle, Parcelable paramParcelable)
  {
    paramString1 = l6.a.c(this.a, paramParcelable, paramString2, paramString1, paramBundle);
    com.xiaomi.accountsdk.utils.c.a().d(this.a, paramString1);
    return paramString1;
  }
  
  public boolean w(final AccountInfo paramAccountInfo, Bundle paramBundle)
  {
    Account localAccount = new Account(paramAccountInfo.getUserId(), "com.xiaomi");
    String str = com.xiaomi.accountsdk.account.data.a.a(paramAccountInfo.getPassToken(), paramAccountInfo.getPsecurity()).c();
    boolean bool = this.d.h(localAccount, str, paramBundle);
    if (bool) {
      new r6.a(new a(paramAccountInfo), null, null).c();
    }
    return bool;
  }
  
  public com.xiaomi.passport.servicetoken.b x(final Account paramAccount, final String paramString, final Bundle paramBundle)
  {
    return new c(paramAccount, paramString, paramBundle).b();
  }
  
  public i<Bundle> y(h<Bundle> paramh, Handler paramHandler)
  {
    return new b(paramh, paramHandler, l()).d();
  }
  
  private static class _RemoveAccountPJWPLL
    implements PassportJsbWebPageLifecycleListener
  {
    public static final Parcelable.Creator<_RemoveAccountPJWPLL> CREATOR = new b();
    private final Account mAccount;
    
    public _RemoveAccountPJWPLL(Account paramAccount)
    {
      this.mAccount = paramAccount;
    }
    
    protected _RemoveAccountPJWPLL(Parcel paramParcel)
    {
      this.mAccount = ((Account)paramParcel.readParcelable(Account.class.getClassLoader()));
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public void onPageEntered(Activity paramActivity) {}
    
    public void onPageExited(Activity paramActivity)
    {
      int i = b7.c.a(paramActivity);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("retCode=");
      localStringBuilder.append(i);
      com.xiaomi.accountsdk.utils.b.g("OwnAppXiaomiAccountManager", localStringBuilder.toString());
      if (i != -1) {
        return;
      }
      new r6.a(new a(paramActivity.getApplicationContext()), null, null).c();
    }
    
    public void onPageHidden(Activity paramActivity) {}
    
    public void onPageShown(Activity paramActivity) {}
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeParcelable(this.mAccount, paramInt);
    }
    
    class a
      implements r6.a.a<Void>
    {
      a(Context paramContext) {}
      
      public Void a()
        throws Throwable
      {
        OwnAppXiaomiAccountManager localOwnAppXiaomiAccountManager = new OwnAppXiaomiAccountManager(this.a);
        localOwnAppXiaomiAccountManager.r(OwnAppXiaomiAccountManager._RemoveAccountPJWPLL.this.mAccount, IXiaomiAccountManager.UpdateType.PRE_REMOVE);
        if (((Boolean)OwnAppXiaomiAccountManager.E(localOwnAppXiaomiAccountManager).w(OwnAppXiaomiAccountManager._RemoveAccountPJWPLL.this.mAccount, null, null).getResult()).booleanValue()) {
          localOwnAppXiaomiAccountManager.r(OwnAppXiaomiAccountManager._RemoveAccountPJWPLL.this.mAccount, IXiaomiAccountManager.UpdateType.POST_REMOVE);
        }
        return null;
      }
    }
    
    class b
      implements Parcelable.Creator<OwnAppXiaomiAccountManager._RemoveAccountPJWPLL>
    {
      public OwnAppXiaomiAccountManager._RemoveAccountPJWPLL a(Parcel paramParcel)
      {
        return new OwnAppXiaomiAccountManager._RemoveAccountPJWPLL(paramParcel);
      }
      
      public OwnAppXiaomiAccountManager._RemoveAccountPJWPLL[] b(int paramInt)
      {
        return new OwnAppXiaomiAccountManager._RemoveAccountPJWPLL[paramInt];
      }
    }
  }
  
  class a
    implements r6.a.a<Void>
  {
    a(AccountInfo paramAccountInfo) {}
    
    public Void a()
      throws Throwable
    {
      Intent localIntent = new Intent("com.xiaomi.account.action.BIND_ACCOUNT_EXCHANGE_SERVICE_V2");
      localIntent.setPackage(u.a(OwnAppXiaomiAccountManager.this.a));
      boolean bool = OwnAppXiaomiAccountManager.this.a.bindService(localIntent, new a(), 1);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("bind ");
      localStringBuilder.append(localIntent);
      localStringBuilder.append(", ret=");
      localStringBuilder.append(bool);
      com.xiaomi.accountsdk.utils.b.g("OwnAppXiaomiAccountManager", localStringBuilder.toString());
      return null;
    }
    
    class a
      implements ServiceConnection
    {
      a() {}
      
      public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
      {
        com.xiaomi.accountsdk.utils.b.g("OwnAppXiaomiAccountManager", "bind success tryAddAccount");
        try
        {
          paramComponentName = m5.a.a.n0(paramIBinder);
          paramIBinder = OwnAppXiaomiAccountManager.a.this;
          paramComponentName.M(paramIBinder.a, paramIBinder.b.a.getPackageName());
        }
        catch (RemoteException paramComponentName)
        {
          com.xiaomi.accountsdk.utils.b.h("OwnAppXiaomiAccountManager", "tryAddAccount failed", paramComponentName);
        }
        OwnAppXiaomiAccountManager.this.a.unbindService(this);
      }
      
      public void onServiceDisconnected(ComponentName paramComponentName) {}
    }
  }
  
  class b
    extends i<Bundle>
  {
    b(h paramh, Handler paramHandler, Account paramAccount)
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
      try
      {
        localObject = t5.a.b(OwnAppXiaomiAccountManager.this.a, (Account)localObject, "passportapi");
        if (!TextUtils.isEmpty((CharSequence)localObject))
        {
          com.xiaomi.accountsdk.utils.b.g("AbsXiaomiAccountManager", "notification url is not empty, remove directly");
          localObject = new e.b().n((String)localObject).m(true).i(true).j(e.c.a(b7.h.a, true, null)).l(new OwnAppXiaomiAccountManager._RemoveAccountPJWPLL(this.d)).h();
          localObject = l6.a.g(OwnAppXiaomiAccountManager.this.a, (e)localObject);
          localBundle.putBoolean("booleanResult", false);
          localBundle.putString("errorMessage", "need user interaction");
          localBundle.putParcelable("intent", (Parcelable)localObject);
          return localBundle;
        }
        OwnAppXiaomiAccountManager.this.r(this.d, IXiaomiAccountManager.UpdateType.PRE_REMOVE);
        localObject = (Boolean)OwnAppXiaomiAccountManager.E(OwnAppXiaomiAccountManager.this).w(OwnAppXiaomiAccountManager.this.l(), null, null).getResult();
        localBundle.putBoolean("booleanResult", ((Boolean)localObject).booleanValue());
        if (((Boolean)localObject).booleanValue()) {
          OwnAppXiaomiAccountManager.this.r(this.d, IXiaomiAccountManager.UpdateType.POST_REMOVE);
        }
        return localBundle;
      }
      catch (InvalidResponseException localInvalidResponseException) {}catch (IOException localIOException) {}catch (AuthenticationFailureException localAuthenticationFailureException) {}catch (AccessDeniedException localAccessDeniedException) {}
      com.xiaomi.accountsdk.utils.b.h("XiaomiAccountManagerFuture", "request logout config failed", localAccessDeniedException);
      localBundle.putBoolean("booleanResult", false);
      localBundle.putString("errorMessage", "request logout config failed");
      return localBundle;
    }
  }
  
  class c
    extends c.a
  {
    c(Account paramAccount, String paramString, Bundle paramBundle) {}
    
    protected ServiceTokenResult a()
    {
      Object localObject1 = paramAccount;
      Object localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = OwnAppXiaomiAccountManager.this.l();
      }
      if (localObject2 == null) {
        return new ServiceTokenResult.b(paramString).q(ServiceTokenResult.ErrorCode.ERROR_NO_ACCOUNT).o();
      }
      localObject1 = OwnAppXiaomiAccountManager.this.j((Account)localObject2, paramString, paramBundle);
      if (localObject1 != null) {
        return ((ServiceTokenResult)localObject1).addAccountInfo(OwnAppXiaomiAccountManager.this.a, (Account)localObject2);
      }
      try
      {
        localObject1 = (Bundle)OwnAppXiaomiAccountManager.E(OwnAppXiaomiAccountManager.this).o((Account)localObject2, paramString, paramBundle, null, null, null).getResult();
        localObject1 = ServiceTokenResult.create((Bundle)localObject1, paramString);
        if (localObject1 == null) {
          localObject2 = null;
        } else {
          localObject2 = ((ServiceTokenResult)localObject1).addAccountInfo(OwnAppXiaomiAccountManager.this.a, (Account)localObject2);
        }
        return localObject2;
      }
      catch (Exception localException)
      {
        return ServiceTokenResult.create(paramString, localException);
      }
    }
  }
  
  class d
    extends c.a
  {
    d(ServiceTokenResult paramServiceTokenResult) {}
    
    protected ServiceTokenResult a()
    {
      Object localObject = paramServiceTokenResult;
      if (localObject == null) {
        localObject = null;
      } else {
        localObject = ((ServiceTokenResult)localObject).toAuthToken();
      }
      OwnAppXiaomiAccountManager.E(OwnAppXiaomiAccountManager.this).r("com.xiaomi", (String)localObject);
      return new ServiceTokenResult.b(paramServiceTokenResult.sid).o();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.accountmanager.OwnAppXiaomiAccountManager
 * JD-Core Version:    0.7.0.1
 */