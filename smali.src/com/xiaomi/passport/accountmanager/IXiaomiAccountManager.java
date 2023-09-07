package com.xiaomi.passport.accountmanager;

import android.accounts.Account;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import com.xiaomi.accountsdk.account.data.AccountInfo;
import com.xiaomi.passport.servicetoken.ServiceTokenResult;
import com.xiaomi.passport.servicetoken.data.XmAccountVisibility;

public abstract interface IXiaomiAccountManager
  extends b
{
  public abstract Intent a(String paramString, Bundle paramBundle, Parcelable paramParcelable);
  
  public abstract String b(Account paramAccount);
  
  public abstract i<XmAccountVisibility> c(h<XmAccountVisibility> paramh, Handler paramHandler);
  
  public abstract void d(Account paramAccount, AccountInfo paramAccountInfo);
  
  public abstract com.xiaomi.passport.servicetoken.b f(ServiceTokenResult paramServiceTokenResult);
  
  public abstract void i(Parcelable paramParcelable, Bundle paramBundle);
  
  public abstract ServiceTokenResult j(Account paramAccount, String paramString, Bundle paramBundle);
  
  public abstract Account l();
  
  public abstract Intent n(Bundle paramBundle, Parcelable paramParcelable);
  
  public abstract boolean q(AccountInfo paramAccountInfo);
  
  public abstract void r(Account paramAccount, UpdateType paramUpdateType);
  
  public abstract boolean s(Account paramAccount, String paramString);
  
  public abstract void t(Account paramAccount, String paramString, ServiceTokenResult paramServiceTokenResult);
  
  public abstract Intent v(String paramString1, String paramString2, Bundle paramBundle, Parcelable paramParcelable);
  
  public abstract com.xiaomi.passport.servicetoken.b x(Account paramAccount, String paramString, Bundle paramBundle);
  
  public abstract i<Bundle> y(h<Bundle> paramh, Handler paramHandler);
  
  public static enum UpdateType
  {
    static
    {
      UpdateType localUpdateType1 = new UpdateType("PRE_ADD", 0);
      PRE_ADD = localUpdateType1;
      UpdateType localUpdateType2 = new UpdateType("POST_ADD", 1);
      POST_ADD = localUpdateType2;
      UpdateType localUpdateType3 = new UpdateType("POST_REFRESH", 2);
      POST_REFRESH = localUpdateType3;
      UpdateType localUpdateType4 = new UpdateType("PRE_REMOVE", 3);
      PRE_REMOVE = localUpdateType4;
      UpdateType localUpdateType5 = new UpdateType("POST_REMOVE", 4);
      POST_REMOVE = localUpdateType5;
      $VALUES = new UpdateType[] { localUpdateType1, localUpdateType2, localUpdateType3, localUpdateType4, localUpdateType5 };
    }
    
    private UpdateType() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.accountmanager.IXiaomiAccountManager
 * JD-Core Version:    0.7.0.1
 */