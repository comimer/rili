package com.xiaomi.accountsdk.account.stat;

import android.content.Context;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import w5.a;
import w5.c;
import w5.d;
import w5.e;

public abstract class AccountStatInterface
{
  private static volatile AccountStatInterface a;
  
  protected static Map<String, Object> a(Context paramContext)
  {
    paramContext = new HashMap();
    paramContext.put("language", Locale.getDefault().getLanguage());
    paramContext.put("account_sdk_version", "5.3.0.release.8");
    return paramContext;
  }
  
  public static AccountStatInterface b()
  {
    if (a != null) {
      return a;
    }
    throw new IllegalArgumentException("please call init first!!!");
  }
  
  public static void c(Context paramContext, AccountStatType paramAccountStatType, boolean paramBoolean)
  {
    int i = a.a[paramAccountStatType.ordinal()];
    if (i != 1)
    {
      if (i != 2)
      {
        if (i == 3) {
          a = new a();
        }
      }
      else {
        a = new e(paramContext, paramBoolean);
      }
    }
    else {
      a = new d(paramContext, paramBoolean);
    }
  }
  
  public abstract void d(c paramc);
  
  public static enum AccountStatType
  {
    static
    {
      AccountStatType localAccountStatType1 = new AccountStatType("ONETRACK", 0);
      ONETRACK = localAccountStatType1;
      AccountStatType localAccountStatType2 = new AccountStatType("PUBSUB", 1);
      PUBSUB = localAccountStatType2;
      AccountStatType localAccountStatType3 = new AccountStatType("NONE", 2);
      NONE = localAccountStatType3;
      $VALUES = new AccountStatType[] { localAccountStatType1, localAccountStatType2, localAccountStatType3 };
    }
    
    private AccountStatType() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.stat.AccountStatInterface
 * JD-Core Version:    0.7.0.1
 */