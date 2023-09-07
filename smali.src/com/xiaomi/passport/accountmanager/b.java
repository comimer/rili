package com.xiaomi.passport.accountmanager;

import android.accounts.Account;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.os.Bundle;
import android.os.Handler;
import com.xiaomi.accountsdk.account.data.AccountInfo;

public abstract interface b
{
  public abstract void e(Account paramAccount);
  
  public abstract AccountManagerFuture<Bundle> g(Account paramAccount, Bundle paramBundle, AccountManagerCallback<Bundle> paramAccountManagerCallback, Handler paramHandler);
  
  public abstract void h(Account paramAccount, String paramString);
  
  public abstract boolean k(Account paramAccount, String paramString, int paramInt);
  
  public abstract int m(Account paramAccount, String paramString);
  
  public abstract String o(Account paramAccount, String paramString);
  
  public abstract String p(Account paramAccount);
  
  public abstract void u(Account paramAccount, String paramString1, String paramString2);
  
  public abstract boolean w(AccountInfo paramAccountInfo, Bundle paramBundle);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.accountmanager.b
 * JD-Core Version:    0.7.0.1
 */