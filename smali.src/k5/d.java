package k5;

import android.accounts.Account;
import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.accountsdk.account.data.a;
import com.xiaomi.accountsdk.account.data.c;
import com.xiaomi.passport.accountmanager.g;
import com.xiaomi.passport.servicetoken.ServiceTokenResult;
import com.xiaomi.passport.servicetoken.ServiceTokenResult.b;

public class d
  extends c
{
  private d(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    super(paramString1, paramString2, paramString3, paramString4, paramString5);
  }
  
  public static d h(Context paramContext, String paramString)
  {
    String str = paramString;
    if (TextUtils.isEmpty(paramString)) {
      str = "passportapi";
    }
    Object localObject = g.z(paramContext.getApplicationContext());
    paramContext = ((g)localObject).l();
    if (paramContext == null)
    {
      com.xiaomi.accountsdk.utils.b.g("XMPassportInfo", "no xiaomi account");
      return null;
    }
    paramString = a.b(((g)localObject).x(paramContext, str, null).h().toAuthToken());
    if (paramString == null)
    {
      com.xiaomi.accountsdk.utils.b.g("XMPassportInfo", "auth token is null");
      return null;
    }
    localObject = ((g)localObject).o(paramContext, "encrypted_user_id");
    if (TextUtils.isEmpty((CharSequence)localObject))
    {
      com.xiaomi.accountsdk.utils.b.g("XMPassportInfo", "cUserId is null");
      return null;
    }
    return new d(paramContext.name, (String)localObject, str, paramString.a, paramString.b);
  }
  
  public void i(Context paramContext)
  {
    g localg = g.z(paramContext.getApplicationContext());
    paramContext = localg.l();
    if (paramContext == null)
    {
      com.xiaomi.accountsdk.utils.b.g("XMPassportInfo", "no xiaomi account");
      return;
    }
    localg.f(new ServiceTokenResult.b(c()).x(d()).w(b()).o()).h();
    paramContext = a.b(localg.x(paramContext, c(), null).h().toAuthToken());
    if (paramContext == null)
    {
      com.xiaomi.accountsdk.utils.b.g("XMPassportInfo", "auth token is null");
      return;
    }
    g(paramContext.a);
    f(paramContext.b);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     k5.d
 * JD-Core Version:    0.7.0.1
 */