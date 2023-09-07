package b7;

import android.accounts.Account;
import android.content.Context;
import com.xiaomi.passport.accountmanager.g;
import com.xiaomi.passport.servicetoken.ServiceTokenResult;
import com.xiaomi.passport.servicetoken.b;
import java.util.Map;

public class q
{
  public static void a(Context paramContext, String paramString, Map<String, String> paramMap)
  {
    g localg = g.z(paramContext);
    Account localAccount = localg.l();
    paramContext = localg.j(localAccount, paramString, null);
    if (paramContext != null) {
      localg.f(paramContext).h();
    }
    paramMap.putAll(h.e(localg.x(localAccount, paramString, null).h().stsCookies));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b7.q
 * JD-Core Version:    0.7.0.1
 */