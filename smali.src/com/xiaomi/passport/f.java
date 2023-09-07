package com.xiaomi.passport;

import android.content.Context;
import com.xiaomi.accountsdk.account.stat.AccountStatInterface;
import com.xiaomi.accountsdk.account.stat.AccountStatInterface.AccountStatType;
import com.xiaomi.accountsdk.hasheddeviceidlib.HashedDeviceIdUtil.a;
import com.xiaomi.accountsdk.utils.b.c;
import com.xiaomi.passport.accountmanager.g;
import r6.a.a;
import s6.d;
import u5.c;

public class f
{
  private static volatile boolean a = false;
  
  public static void a(Context paramContext, b paramb)
  {
    a = b.a(paramb);
    if (b.b(paramb) != null) {
      AccountStatInterface.c(paramContext, AccountStatInterface.AccountStatType.NONE, b.a(paramb));
    }
    g.C(paramContext, b.c(paramb));
    if (b.d(paramb) != null) {
      com.xiaomi.accountsdk.utils.b.n(b.d(paramb));
    }
    c.d(new x6.a());
    com.xiaomi.accountsdk.account.f.b("PassportSDK/5.3.0.release.8");
    com.xiaomi.accountsdk.account.f.b("passport-ui/5.3.0.release.8");
    com.xiaomi.accountsdk.account.f.b("XiaomiAccountSSO/5.3.0.release.8");
    l6.a.i(new d());
    new r6.a(new a(), null, null).c();
    HashedDeviceIdUtil.a.b().d(new com.xiaomi.accountsdk.service.b());
  }
  
  public static boolean b()
  {
    return a;
  }
  
  class a
    implements a.a<Void>
  {
    a() {}
    
    public Void a()
      throws Throwable
    {
      s5.a.k(f.this);
      return null;
    }
  }
  
  public static class b
  {
    private boolean a;
    private boolean b;
    private AccountStatInterface.AccountStatType c;
    private b.c d;
    
    public b(boolean paramBoolean1, boolean paramBoolean2)
    {
      this.b = paramBoolean1;
      this.a = paramBoolean2;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.f
 * JD-Core Version:    0.7.0.1
 */