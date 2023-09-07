package com.android.calendar.syncer.account;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.job.JobInfo;
import android.content.ContentResolver;
import android.content.Context;
import android.content.PeriodicSync;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.j;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/account/AccountHelper;", "", "Landroid/content/Context;", "context", "Landroid/accounts/Account;", "account", "", "createIfNoneExist", "b", "", "accountName", "accountType", "password", "Landroid/os/Bundle;", "userData", "c", "key", "j", "a", "Lkotlin/u;", "k", "", "h", "i", "syncInterval", "l", "m", "Landroid/accounts/Account;", "g", "()Landroid/accounts/Account;", "SUBSCRIPTION_ACCOUNT", "f", "IMPORT_ACCOUNT", "<init>", "()V", "AccountType", "ImportType", "syncer_release"}, k=1, mv={1, 7, 1})
public final class AccountHelper
{
  public static final AccountHelper a = new AccountHelper();
  private static final Account b;
  private static final Account c;
  
  static
  {
    AccountType localAccountType = AccountType.ACCOUNT_TYPE_CALENDAR;
    b = new Account("Subscription Calendar", localAccountType.getAccountType());
    c = new Account("Import Calendar", localAccountType.getAccountType());
  }
  
  public final Account a(Context paramContext, String paramString1, String paramString2, String paramString3, Bundle paramBundle)
  {
    try
    {
      r.f(paramContext, "context");
      r.f(paramString1, "accountName");
      r.f(paramString2, "accountType");
      AccountManager localAccountManager = AccountManager.get(paramContext);
      Account localAccount = new android/accounts/Account;
      localAccount.<init>(paramString1, paramString2);
      if (localAccountManager.addAccountExplicitly(localAccount, paramString3, paramBundle))
      {
        ContentResolver.setIsSyncable(localAccount, "com.android.calendar", 1);
        m(paramContext, paramString1, paramString2, JobInfo.getMinPeriodMillis() / 1000);
        return localAccount;
      }
      return null;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  public final Account b(Context paramContext, Account paramAccount, boolean paramBoolean)
  {
    try
    {
      r.f(paramContext, "context");
      r.f(paramAccount, "account");
      String str = paramAccount.name;
      r.e(str, "account.name");
      paramAccount = paramAccount.type;
      r.e(paramAccount, "account.type");
      paramContext = c(paramContext, str, paramAccount, null, null, paramBoolean);
      return paramContext;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  public final Account c(Context paramContext, String paramString1, String paramString2, String paramString3, Bundle paramBundle, boolean paramBoolean)
  {
    try
    {
      r.f(paramContext, "context");
      r.f(paramString1, "accountName");
      r.f(paramString2, "accountType");
      Account[] arrayOfAccount = AccountManager.get(paramContext).getAccountsByType(paramString2);
      r.e(arrayOfAccount, "am.getAccountsByType(accountType)");
      Object localObject1 = null;
      int i = paramString1.length();
      int j = 0;
      if (i == 0) {
        i = 1;
      } else {
        i = 0;
      }
      if (i != 0)
      {
        localObject1 = j.y(arrayOfAccount);
      }
      else
      {
        int k = arrayOfAccount.length;
        for (i = j; i < k; i++)
        {
          localObject2 = arrayOfAccount[i];
          if (TextUtils.equals(((Account)localObject2).name, paramString1)) {
            localObject1 = localObject2;
          }
        }
      }
      Object localObject2 = localObject1;
      if (localObject1 == null)
      {
        localObject2 = localObject1;
        if (paramBoolean) {
          localObject2 = a(paramContext, paramString1, paramString2, paramString3, paramBundle);
        }
      }
      paramContext = (Account)localObject2;
      return paramContext;
    }
    finally {}
  }
  
  public final Account f()
  {
    return c;
  }
  
  public final Account g()
  {
    return b;
  }
  
  public final long h(Context paramContext, Account paramAccount)
  {
    r.f(paramContext, "context");
    r.f(paramAccount, "account");
    String str = paramAccount.name;
    r.e(str, "account.name");
    paramAccount = paramAccount.type;
    r.e(paramAccount, "account.type");
    return i(paramContext, str, paramAccount);
  }
  
  public final long i(Context paramContext, String paramString1, String paramString2)
  {
    r.f(paramContext, "context");
    r.f(paramString1, "accountName");
    r.f(paramString2, "accountType");
    paramContext = e(this, paramContext, paramString1, paramString2, null, null, false, 56, null);
    long l1 = -1L;
    if (paramContext == null) {
      return -1L;
    }
    long l2 = l1;
    if (ContentResolver.getSyncAutomatically(paramContext, "com.android.calendar"))
    {
      paramContext = ContentResolver.getPeriodicSyncs(paramContext, "com.android.calendar").iterator();
      for (;;)
      {
        l2 = l1;
        if (!paramContext.hasNext()) {
          break;
        }
        l1 = ((PeriodicSync)paramContext.next()).period;
      }
    }
    return l2;
  }
  
  public final String j(Context paramContext, Account paramAccount, String paramString)
  {
    r.f(paramContext, "context");
    r.f(paramAccount, "account");
    r.f(paramString, "key");
    paramAccount = d(this, paramContext, paramAccount, false, 4, null);
    paramContext = AccountManager.get(paramContext);
    if (paramAccount == null) {
      return null;
    }
    try
    {
      paramContext = paramContext.getUserData(paramAccount, paramString);
    }
    catch (Exception paramContext)
    {
      Log.w("CalSync:D:AccountHelper", "read user data exception");
      paramContext = "";
    }
    return paramContext;
  }
  
  public final void k(Context paramContext, Account paramAccount)
  {
    try
    {
      r.f(paramContext, "context");
      r.f(paramAccount, "account");
      if ((!r.a(paramAccount.type, AccountType.ACCOUNT_TYPE_LOCAL.getAccountType())) && (!r.a(paramAccount.type, AccountType.ACCOUNT_TYPE_XIAOMI.getAccountType())))
      {
        AccountManager.get(paramContext).removeAccountExplicitly(paramAccount);
        return;
      }
      return;
    }
    finally {}
  }
  
  public final void l(Context paramContext, Account paramAccount, long paramLong)
  {
    r.f(paramContext, "context");
    r.f(paramAccount, "account");
    String str = paramAccount.name;
    r.e(str, "account.name");
    paramAccount = paramAccount.type;
    r.e(paramAccount, "account.type");
    m(paramContext, str, paramAccount, paramLong);
  }
  
  public final void m(Context paramContext, String paramString1, String paramString2, long paramLong)
  {
    r.f(paramContext, "context");
    r.f(paramString1, "accountName");
    r.f(paramString2, "accountType");
    paramString1 = e(this, paramContext, paramString1, paramString2, null, null, false, 56, null);
    if (paramString1 == null) {
      return;
    }
    if (paramLong == -1L)
    {
      Log.i("CalSync:D:AccountHelper", "Disabling automatic synchronization");
      ContentResolver.setSyncAutomatically(paramString1, "com.android.calendar", false);
    }
    else
    {
      paramContext = new StringBuilder();
      paramContext.append("Setting automatic synchronization with interval of ");
      paramContext.append(paramLong);
      paramContext.append(" seconds");
      Log.i("CalSync:D:AccountHelper", paramContext.toString());
      ContentResolver.setSyncAutomatically(paramString1, "com.android.calendar", true);
      ContentResolver.addPeriodicSync(paramString1, "com.android.calendar", new Bundle(), paramLong);
    }
  }
  
  @Metadata(d1={""}, d2={"Lcom/android/calendar/syncer/account/AccountHelper$AccountType;", "", "accountType", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getAccountType", "()Ljava/lang/String;", "ACCOUNT_TYPE_LOCAL", "ACCOUNT_TYPE_XIAOMI", "ACCOUNT_TYPE_CALENDAR", "ACCOUNT_TYPE_EMAIL", "syncer_release"}, k=1, mv={1, 7, 1}, xi=48)
  public static enum AccountType
  {
    private final String accountType;
    
    static
    {
      ACCOUNT_TYPE_CALENDAR = new AccountType("ACCOUNT_TYPE_CALENDAR", 2, "com.android.calendar");
      ACCOUNT_TYPE_EMAIL = new AccountType("ACCOUNT_TYPE_EMAIL", 3, "com.android.exchange");
    }
    
    private AccountType(String paramString)
    {
      this.accountType = paramString;
    }
    
    public final String getAccountType()
    {
      return this.accountType;
    }
  }
  
  @Metadata(d1={""}, d2={"Lcom/android/calendar/syncer/account/AccountHelper$ImportType;", "", "type", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getType", "()Ljava/lang/String;", "IMPORT", "SUBSCRIPTION", "CALDAV", "syncer_release"}, k=1, mv={1, 7, 1}, xi=48)
  public static enum ImportType
  {
    private final String type;
    
    static
    {
      CALDAV = new ImportType("CALDAV", 2, "caldav");
    }
    
    private ImportType(String paramString)
    {
      this.type = paramString;
    }
    
    public final String getType()
    {
      return this.type;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.account.AccountHelper
 * JD-Core Version:    0.7.0.1
 */