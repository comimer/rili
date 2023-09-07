package com.xiaomi.passport.data;

import android.accounts.Account;
import android.content.Context;
import android.text.TextUtils;
import b7.e;
import com.xiaomi.accountsdk.account.data.c;
import com.xiaomi.passport.accountmanager.g;
import com.xiaomi.passport.servicetoken.ServiceTokenResult;
import com.xiaomi.passport.servicetoken.ServiceTokenResult.ErrorCode;
import com.xiaomi.passport.servicetoken.ServiceTokenResult.b;

public class a
  extends c
{
  private a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    super(paramString1, paramString2, paramString3, paramString4, paramString5);
  }
  
  public static a h(Context paramContext, String paramString)
  {
    String str = paramString;
    if (TextUtils.isEmpty(paramString)) {
      str = "passportapi";
    }
    Context localContext = paramContext.getApplicationContext();
    paramContext = g.z(localContext);
    paramString = paramContext.l();
    if (paramString == null)
    {
      com.xiaomi.accountsdk.utils.b.g("XMPassportInfo", "no xiaomi account");
      return null;
    }
    ServiceTokenResult localServiceTokenResult = paramContext.x(paramString, str, null).h();
    if (localServiceTokenResult == null)
    {
      com.xiaomi.accountsdk.utils.b.g("XMPassportInfo", "service token result is null");
      return null;
    }
    if (localServiceTokenResult.errorCode != ServiceTokenResult.ErrorCode.ERROR_NONE)
    {
      paramContext = new StringBuilder();
      paramContext.append("service token result error code = ");
      paramContext.append(localServiceTokenResult.errorCode);
      paramContext.append(" error msg: ");
      paramContext.append(localServiceTokenResult.errorMessage);
      com.xiaomi.accountsdk.utils.b.g("XMPassportInfo", paramContext.toString());
      return null;
    }
    paramContext = localServiceTokenResult.cUserId;
    if (TextUtils.isEmpty(paramContext)) {
      paramContext = new e(localContext).b();
    }
    return new a(paramString.name, paramContext, str, localServiceTokenResult.serviceToken, localServiceTokenResult.security);
  }
  
  public void i(Context paramContext)
  {
    Object localObject = g.z(paramContext.getApplicationContext());
    paramContext = ((g)localObject).l();
    if (paramContext == null)
    {
      com.xiaomi.accountsdk.utils.b.g("XMPassportInfo", "no xiaomi account");
      return;
    }
    ((g)localObject).f(new ServiceTokenResult.b(c()).x(d()).w(b()).o()).h();
    localObject = ((g)localObject).x(paramContext, c(), null).h();
    if (localObject == null)
    {
      com.xiaomi.accountsdk.utils.b.g("XMPassportInfo", "service token result is null");
      return;
    }
    if (((ServiceTokenResult)localObject).errorCode != ServiceTokenResult.ErrorCode.ERROR_NONE)
    {
      paramContext = new StringBuilder();
      paramContext.append("service token result error code = ");
      paramContext.append(((ServiceTokenResult)localObject).errorCode);
      com.xiaomi.accountsdk.utils.b.g("XMPassportInfo", paramContext.toString());
      return;
    }
    g(((ServiceTokenResult)localObject).serviceToken);
    f(((ServiceTokenResult)localObject).security);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.data.a
 * JD-Core Version:    0.7.0.1
 */