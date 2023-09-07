package com.xiaomi.account.service;

import android.accounts.Account;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import com.xiaomi.accountsdk.account.data.AccountInfo;
import com.xiaomi.accountsdk.account.data.AccountInfo.b;
import com.xiaomi.accountsdk.utils.u;
import com.xiaomi.passport.accountmanager.g;
import m5.a.a;

public class AppAccountExchangeService
  extends Service
{
  private a.a a;
  
  public IBinder onBind(Intent paramIntent)
  {
    if (this.a == null) {
      this.a = new a();
    }
    return this.a;
  }
  
  private class a
    extends a.a
  {
    private g a;
    
    /* Error */
    public a()
    {
      // Byte code:
      //   0: aload_0
      //   1: aload_1
      //   2: putfield 14	com/xiaomi/account/service/AppAccountExchangeService$a:b	Lcom/xiaomi/account/service/AppAccountExchangeService;
      //   5: aload_0
      //   6: invokespecial 17	m5/a$a:<init>	()V
      //   9: aload_0
      //   10: aload_1
      //   11: invokestatic 23	com/xiaomi/passport/accountmanager/g:z	(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/g;
      //   14: putfield 25	com/xiaomi/account/service/AppAccountExchangeService$a:a	Lcom/xiaomi/passport/accountmanager/g;
      //   17: goto +11 -> 28
      //   20: astore_1
      //   21: ldc 27
      //   23: ldc 29
      //   25: invokestatic 35	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
      //   28: return
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	29	0	this	a
      //   0	29	1	this$1	AppAccountExchangeService
      // Exception table:
      //   from	to	target	type
      //   9	17	20	finally
    }
    
    public void M(AccountInfo paramAccountInfo, String paramString)
      throws RemoteException
    {
      com.xiaomi.accountsdk.utils.b.g("AppAccountExchangeService", "not support add account from other apps");
    }
    
    public AccountInfo R(String paramString)
      throws RemoteException
    {
      if (this.a == null)
      {
        com.xiaomi.accountsdk.utils.b.g("AppAccountExchangeService", "XiaomiAccountManager not setup, skip");
        return null;
      }
      if (TextUtils.isEmpty(paramString))
      {
        com.xiaomi.accountsdk.utils.b.g("AppAccountExchangeService", "caller pkg name is empty");
        return null;
      }
      int i = Binder.getCallingUid();
      Object localObject1 = AppAccountExchangeService.this.getPackageManager().getPackagesForUid(i);
      int j = 0;
      int k = j;
      if (localObject1 != null)
      {
        k = j;
        if (localObject1.length > 0)
        {
          int m = localObject1.length;
          for (i = 0;; i++)
          {
            k = j;
            if (i >= m) {
              break;
            }
            if (TextUtils.equals(localObject1[i], paramString))
            {
              k = 1;
              break;
            }
          }
        }
      }
      if (k == 0)
      {
        com.xiaomi.accountsdk.utils.b.g("AppAccountExchangeService", "caller uid and pkg name mismatch");
        return null;
      }
      Object localObject2 = AppAccountExchangeService.this;
      localObject1 = ((Context)localObject2).getPackageName();
      boolean bool1 = TextUtils.equals(paramString, u.a((Context)localObject2));
      boolean bool2 = x5.b.b((Context)localObject2, (String)localObject1).equals(x5.b.b((Context)localObject2, paramString));
      if ((!bool1) && (!bool2))
      {
        com.xiaomi.accountsdk.utils.b.g("AppAccountExchangeService", "not called from sys account and caller signature is not same with mine");
        return null;
      }
      localObject1 = this.a.l();
      if (localObject1 == null)
      {
        com.xiaomi.accountsdk.utils.b.g("AppAccountExchangeService", "no account, skip");
        return null;
      }
      localObject2 = this.a.p((Account)localObject1);
      if (TextUtils.isEmpty((CharSequence)localObject2))
      {
        com.xiaomi.accountsdk.utils.b.g("AppAccountExchangeService", "password is empty, skip");
        return null;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("get account info success from ");
      localStringBuilder.append(paramString);
      com.xiaomi.accountsdk.utils.b.g("AppAccountExchangeService", localStringBuilder.toString());
      paramString = com.xiaomi.accountsdk.account.data.a.b((String)localObject2);
      return new AccountInfo.b().F(((Account)localObject1).name).w(paramString.a).y(paramString.b).r();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.account.service.AppAccountExchangeService
 * JD-Core Version:    0.7.0.1
 */