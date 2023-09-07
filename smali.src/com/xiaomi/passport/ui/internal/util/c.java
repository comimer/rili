package com.xiaomi.passport.ui.internal.util;

import android.app.FragmentManager;
import android.content.Context;
import c7.a;
import c7.a.a;
import com.xiaomi.accountsdk.account.data.RegisterUserInfo;
import com.xiaomi.accountsdk.account.data.RegisterUserInfo.RegisterStatus;
import com.xiaomi.accountsdk.account.data.d;

public class c
{
  private Context a;
  private FragmentManager b;
  private boolean c = true;
  private Object d = new Object();
  
  private c(Context paramContext, FragmentManager paramFragmentManager)
  {
    this.a = paramContext;
    this.b = paramFragmentManager;
  }
  
  private void a(RegisterUserInfo paramRegisterUserInfo) {}
  
  public static RegisterUserInfo b(Context paramContext, FragmentManager paramFragmentManager, RegisterUserInfo paramRegisterUserInfo, d paramd)
  {
    return new c(paramContext, paramFragmentManager).c(paramRegisterUserInfo, paramd);
  }
  
  private RegisterUserInfo c(RegisterUserInfo paramRegisterUserInfo, d paramd)
  {
    int i;
    if ((paramRegisterUserInfo.status == RegisterUserInfo.RegisterStatus.STATUS_USED_POSSIBLY_RECYCLED) && (paramRegisterUserInfo.needGetActiveTime)) {
      i = 1;
    } else {
      i = 0;
    }
    if (i == 0) {
      return paramRegisterUserInfo;
    }
    if (paramRegisterUserInfo.needToast)
    {
      a(paramRegisterUserInfo);
      try
      {
        synchronized (this.d)
        {
          this.d.wait();
        }
        return a.b(this.a, paramRegisterUserInfo, new a.a(paramd.a, paramd.c, paramd.g), this.c);
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.internal.util.c
 * JD-Core Version:    0.7.0.1
 */