package com.xiaomi.accountsdk.utils;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import com.xiaomi.accountsdk.account.b.a;
import com.xiaomi.passport.accountmanager.g;
import com.xiaomi.passport.servicetoken.ServiceTokenResult;
import java.util.concurrent.ExecutionException;
import y5.a;
import y5.c;

public final class h
{
  private final Context a;
  private final Account b;
  
  public h(Context paramContext, Account paramAccount)
  {
    if (paramContext != null)
    {
      this.a = paramContext.getApplicationContext();
      this.b = paramAccount;
      return;
    }
    throw new IllegalArgumentException("context == null");
  }
  
  private String c()
  {
    g localg = g.z(this.a);
    Object localObject = this.b;
    String str = null;
    localObject = localg.x((Account)localObject, "passportapi", null).h();
    if (localObject != null) {
      str = ((ServiceTokenResult)localObject).cUserId;
    }
    return str;
  }
  
  private String d()
  {
    String str = "com.xiaomi.account.action.BIND_XIAOMI_ACCOUNT_SERVICE";
    Object localObject = new Intent("com.xiaomi.account.action.BIND_XIAOMI_ACCOUNT_SERVICE");
    if (this.a.getPackageManager().resolveService((Intent)localObject, 0) == null) {
      str = "android.intent.action.BIND_XIAOMI_ACCOUNT_SERVICE";
    }
    localObject = new c();
    new a(this.a, str, "com.xiaomi.account", (a)localObject).b();
    try
    {
      str = (String)((a)localObject).get();
      return str;
    }
    catch (ExecutionException localExecutionException)
    {
      b.h("MiuiCUserIdUtil", "getCUserId", localExecutionException);
    }
    catch (InterruptedException localInterruptedException)
    {
      b.h("MiuiCUserIdUtil", "getCUserId", localInterruptedException);
    }
    return null;
  }
  
  public final String b()
  {
    if (Looper.myLooper() != Looper.getMainLooper()) {
      try
      {
        String str = d();
        return str;
      }
      catch (SecurityException localSecurityException)
      {
        return c();
      }
    }
    throw new IllegalStateException("MiuiCUserIdUtil#getCUserId() should NOT be called on main thread!");
  }
  
  class a
    extends y5.b<com.xiaomi.accountsdk.account.b, String, String>
  {
    a(Context paramContext, String paramString1, String paramString2, a parama)
    {
      super(paramString1, paramString2, parama);
    }
    
    protected com.xiaomi.accountsdk.account.b j(IBinder paramIBinder)
    {
      return b.a.n0(paramIBinder);
    }
    
    protected String k()
      throws RemoteException
    {
      return ((com.xiaomi.accountsdk.account.b)h()).V(h.a(h.this));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.utils.h
 * JD-Core Version:    0.7.0.1
 */