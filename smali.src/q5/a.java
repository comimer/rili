package q5;

import android.accounts.Account;
import android.text.TextUtils;
import com.xiaomi.accountsdk.utils.b;
import com.xiaomi.passport.accountmanager.g;

public class a
{
  private static void a(String paramString1, String paramString2)
  {
    if (!TextUtils.isEmpty(paramString1)) {
      return;
    }
    paramString1 = new StringBuilder();
    paramString1.append(paramString2);
    paramString1.append("must not be null");
    throw new IllegalArgumentException(paramString1.toString());
  }
  
  public static boolean b(g paramg, Account paramAccount, String paramString)
  {
    a(paramString, "packageName");
    boolean bool = false;
    if (paramAccount == null)
    {
      b.g("XmAccountManager", "no xiaomi account");
      return false;
    }
    if (paramg.m(paramAccount, paramString) == 1) {
      bool = true;
    }
    return bool;
  }
  
  public static boolean c(g paramg, Account paramAccount, String paramString)
  {
    a(paramString, "packageName");
    if (paramAccount == null)
    {
      b.g("XmAccountManager", "no xiaomi account");
      return false;
    }
    return paramg.k(paramAccount, paramString, 1);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     q5.a
 * JD-Core Version:    0.7.0.1
 */