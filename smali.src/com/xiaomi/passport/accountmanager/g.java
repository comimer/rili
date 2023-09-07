package com.xiaomi.passport.accountmanager;

import android.accounts.Account;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.text.TextUtils;
import com.xiaomi.accountsdk.account.data.AccountInfo;
import com.xiaomi.accountsdk.utils.u;
import com.xiaomi.passport.servicetoken.ServiceTokenResult;
import com.xiaomi.passport.servicetoken.data.XmAccountVisibility;
import x5.a;

public class g
  implements IXiaomiAccountManager
{
  private static volatile g c;
  private static volatile Boolean d;
  private final Context a;
  private final IXiaomiAccountManager b;
  
  private g(Context paramContext, boolean paramBoolean)
  {
    Context localContext = paramContext.getApplicationContext();
    this.a = localContext;
    com.xiaomi.accountsdk.account.e.a((Application)localContext);
    com.xiaomi.accountsdk.account.e.i(true);
    if (!paramBoolean)
    {
      this.b = new OwnAppXiaomiAccountManager(localContext);
      com.xiaomi.accountsdk.utils.b.g("XiaomiAccountManager", "not use system xiaomi account first, use app xiaomi account");
      return;
    }
    if (B(localContext))
    {
      this.b = new e(localContext);
      com.xiaomi.accountsdk.utils.b.g("XiaomiAccountManager", "is in system account app");
    }
    else if (A(localContext))
    {
      String str = localContext.getPackageName();
      Object localObject = u.a(localContext);
      a locala = x5.b.b(paramContext, str);
      paramContext = x5.b.b(paramContext, (String)localObject);
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("caller signature = ");
      ((StringBuilder)localObject).append(locala);
      com.xiaomi.accountsdk.utils.b.g("XiaomiAccountManager", ((StringBuilder)localObject).toString());
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("sys account signature = ");
      ((StringBuilder)localObject).append(paramContext);
      com.xiaomi.accountsdk.utils.b.g("XiaomiAccountManager", ((StringBuilder)localObject).toString());
      if ((locala != null) && (paramContext != null) && (locala.equals(paramContext)))
      {
        this.b = new c(localContext);
        paramContext = new StringBuilder();
        paramContext.append("has system account app and current ");
        paramContext.append(str);
        paramContext.append(" has same signature");
        com.xiaomi.accountsdk.utils.b.g("XiaomiAccountManager", paramContext.toString());
      }
      else
      {
        this.b = new f(localContext);
        paramContext = new StringBuilder();
        paramContext.append("has system account app and current ");
        paramContext.append(str);
        paramContext.append(" has different signature");
        com.xiaomi.accountsdk.utils.b.g("XiaomiAccountManager", paramContext.toString());
      }
    }
    else
    {
      this.b = new OwnAppXiaomiAccountManager(localContext);
      com.xiaomi.accountsdk.utils.b.g("XiaomiAccountManager", "has no system account app");
    }
  }
  
  public static boolean A(Context paramContext)
  {
    return TextUtils.isEmpty(u.a(paramContext)) ^ true;
  }
  
  public static boolean B(Context paramContext)
  {
    return TextUtils.equals(paramContext.getPackageName(), u.a(paramContext));
  }
  
  public static g C(Context paramContext, boolean paramBoolean)
  {
    if (paramContext != null) {
      try
      {
        StringBuilder localStringBuilder = new java/lang/StringBuilder;
        localStringBuilder.<init>();
        localStringBuilder.append("setup ");
        localStringBuilder.append(paramBoolean);
        com.xiaomi.accountsdk.utils.b.g("XiaomiAccountManager", localStringBuilder.toString());
        if ((d != null) && (d.booleanValue() == paramBoolean))
        {
          paramContext = z(paramContext);
          return paramContext;
        }
        d = Boolean.valueOf(paramBoolean);
        c = null;
        paramContext = z(paramContext);
        return paramContext;
      }
      finally
      {
        break label100;
      }
    }
    paramContext = new java/lang/IllegalArgumentException;
    paramContext.<init>("context is null");
    throw paramContext;
    label100:
    throw paramContext;
  }
  
  public static g z(Context paramContext)
  {
    try
    {
      if (d != null)
      {
        if (paramContext != null)
        {
          if (c == null)
          {
            g localg = new com/xiaomi/passport/accountmanager/g;
            localg.<init>(paramContext, d.booleanValue());
            c = localg;
          }
          paramContext = c;
          return paramContext;
        }
        paramContext = new java/lang/IllegalArgumentException;
        paramContext.<init>("context is null");
        throw paramContext;
      }
      paramContext = new java/lang/IllegalStateException;
      paramContext.<init>("call setup first");
      throw paramContext;
    }
    finally {}
  }
  
  public Intent a(String paramString, Bundle paramBundle, Parcelable paramParcelable)
  {
    return this.b.a(paramString, paramBundle, paramParcelable);
  }
  
  public String b(Account paramAccount)
  {
    return this.b.b(paramAccount);
  }
  
  public i<XmAccountVisibility> c(h<XmAccountVisibility> paramh, Handler paramHandler)
  {
    com.xiaomi.accountsdk.utils.b.g("XiaomiAccountManager", "make account visible");
    return this.b.c(paramh, paramHandler);
  }
  
  public void d(Account paramAccount, AccountInfo paramAccountInfo)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("update info ");
    localStringBuilder.append(paramAccountInfo);
    com.xiaomi.accountsdk.utils.b.g("XiaomiAccountManager", localStringBuilder.toString());
    this.b.d(paramAccount, paramAccountInfo);
  }
  
  public void e(Account paramAccount)
  {
    com.xiaomi.accountsdk.utils.b.g("XiaomiAccountManager", "clear password");
    this.b.e(paramAccount);
  }
  
  public com.xiaomi.passport.servicetoken.b f(ServiceTokenResult paramServiceTokenResult)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("invalidate service token ");
    localStringBuilder.append(paramServiceTokenResult);
    com.xiaomi.accountsdk.utils.b.g("XiaomiAccountManager", localStringBuilder.toString());
    return this.b.f(paramServiceTokenResult);
  }
  
  public AccountManagerFuture<Bundle> g(Account paramAccount, Bundle paramBundle, AccountManagerCallback<Bundle> paramAccountManagerCallback, Handler paramHandler)
  {
    return this.b.g(paramAccount, paramBundle, paramAccountManagerCallback, paramHandler);
  }
  
  public void i(Parcelable paramParcelable, Bundle paramBundle)
  {
    this.b.i(paramParcelable, paramBundle);
  }
  
  public ServiceTokenResult j(Account paramAccount, String paramString, Bundle paramBundle)
  {
    paramString = this.b.j(paramAccount, paramString, paramBundle);
    paramAccount = new StringBuilder();
    paramAccount.append("peek service token ");
    paramAccount.append(paramString);
    com.xiaomi.accountsdk.utils.b.g("XiaomiAccountManager", paramAccount.toString());
    return paramString;
  }
  
  public boolean k(Account paramAccount, String paramString, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("set visibility ");
    localStringBuilder.append(paramInt);
    localStringBuilder.append(" from ");
    localStringBuilder.append(paramString);
    com.xiaomi.accountsdk.utils.b.g("XiaomiAccountManager", localStringBuilder.toString());
    return this.b.k(paramAccount, paramString, paramInt);
  }
  
  public Account l()
  {
    return this.b.l();
  }
  
  public int m(Account paramAccount, String paramString)
  {
    return this.b.m(paramAccount, paramString);
  }
  
  public Intent n(Bundle paramBundle, Parcelable paramParcelable)
  {
    return this.b.n(paramBundle, paramParcelable);
  }
  
  public String o(Account paramAccount, String paramString)
  {
    return this.b.o(paramAccount, paramString);
  }
  
  public String p(Account paramAccount)
  {
    return this.b.p(paramAccount);
  }
  
  public boolean q(AccountInfo paramAccountInfo)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("add/update info ");
    localStringBuilder.append(paramAccountInfo);
    com.xiaomi.accountsdk.utils.b.g("XiaomiAccountManager", localStringBuilder.toString());
    return this.b.q(paramAccountInfo);
  }
  
  public void r(Account paramAccount, IXiaomiAccountManager.UpdateType paramUpdateType)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("send update broadcast ");
    localStringBuilder.append(paramUpdateType.name());
    com.xiaomi.accountsdk.utils.b.g("XiaomiAccountManager", localStringBuilder.toString());
    this.b.r(paramAccount, paramUpdateType);
  }
  
  public boolean s(Account paramAccount, String paramString)
  {
    return this.b.s(paramAccount, paramString);
  }
  
  public void u(Account paramAccount, String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("set user data k=");
    localStringBuilder.append(paramString1);
    localStringBuilder.append(", v=");
    localStringBuilder.append(paramString2);
    com.xiaomi.accountsdk.utils.b.g("XiaomiAccountManager", localStringBuilder.toString());
    this.b.u(paramAccount, paramString1, paramString2);
  }
  
  public Intent v(String paramString1, String paramString2, Bundle paramBundle, Parcelable paramParcelable)
  {
    return this.b.v(paramString1, paramString2, paramBundle, paramParcelable);
  }
  
  public com.xiaomi.passport.servicetoken.b x(Account paramAccount, String paramString, Bundle paramBundle)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("get service token for ");
    localStringBuilder.append(paramString);
    com.xiaomi.accountsdk.utils.b.g("XiaomiAccountManager", localStringBuilder.toString());
    return this.b.x(paramAccount, paramString, paramBundle);
  }
  
  public i<Bundle> y(h<Bundle> paramh, Handler paramHandler)
  {
    return this.b.y(paramh, paramHandler);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.accountmanager.g
 * JD-Core Version:    0.7.0.1
 */