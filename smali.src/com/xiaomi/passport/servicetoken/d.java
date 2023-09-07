package com.xiaomi.passport.servicetoken;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import y5.a;

public final class d
{
  public static ServiceTokenResult a(Context paramContext, ServiceTokenResult paramServiceTokenResult)
  {
    if ((paramContext instanceof Activity))
    {
      paramContext = (Activity)paramContext;
      if ((!paramContext.isFinishing()) && (paramServiceTokenResult != null) && (paramServiceTokenResult.errorCode == ServiceTokenResult.ErrorCode.ERROR_USER_INTERACTION_NEEDED) && (paramServiceTokenResult.intent != null)) {
        return b(paramServiceTokenResult, paramContext);
      }
    }
    return paramServiceTokenResult;
  }
  
  private static ServiceTokenResult b(ServiceTokenResult paramServiceTokenResult, Activity paramActivity)
  {
    final b localb = new b(null);
    paramServiceTokenResult.intent.putExtra("accountAuthenticatorResponse", new ServiceTokenUIResponse(new a(localb)));
    paramActivity.startActivity(paramServiceTokenResult.intent);
    return localb.h();
  }
  
  class a
    extends a.a
  {
    a(b paramb) {}
    
    public void a(Bundle paramBundle)
      throws RemoteException
    {
      paramBundle = ServiceTokenResult.create(paramBundle, d.this.sid);
      localb.e(paramBundle);
    }
    
    public void b(int paramInt, String paramString)
      throws RemoteException
    {
      if (paramInt == 4) {
        localb.e(new ServiceTokenResult.b(d.this.sid).q(ServiceTokenResult.ErrorCode.ERROR_CANCELLED).o());
      } else {
        localb.e(d.this);
      }
    }
    
    public void e()
      throws RemoteException
    {
      localb.e(d.this);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.servicetoken.d
 * JD-Core Version:    0.7.0.1
 */