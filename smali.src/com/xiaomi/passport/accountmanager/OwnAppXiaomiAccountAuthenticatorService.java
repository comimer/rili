package com.xiaomi.passport.accountmanager;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.xiaomi.accounts.a;
import com.xiaomi.accountsdk.utils.b;

public class OwnAppXiaomiAccountAuthenticatorService
  extends Service
{
  private d a;
  
  public IBinder onBind(Intent paramIntent)
  {
    paramIntent = new StringBuilder();
    paramIntent.append("return the AccountAuthenticator binder of package: ");
    paramIntent.append(getPackageName());
    b.g("OwnAppXiaomiAccountAuthenticatorService", paramIntent.toString());
    return this.a.j();
  }
  
  public void onCreate()
  {
    super.onCreate();
    this.a = new d(this);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.accountmanager.OwnAppXiaomiAccountAuthenticatorService
 * JD-Core Version:    0.7.0.1
 */