package k5;

import android.accounts.Account;
import android.content.Context;
import com.xiaomi.passport.accountmanager.g;

public class b
{
  public static String a(Context paramContext, Account paramAccount, String paramString)
  {
    g localg = g.z(paramContext);
    paramContext = new StringBuilder();
    paramContext.append(paramString);
    paramContext.append("_ph");
    return localg.o(paramAccount, paramContext.toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     k5.b
 * JD-Core Version:    0.7.0.1
 */