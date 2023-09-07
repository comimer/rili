package k5;

import android.accounts.Account;
import android.content.Context;
import com.xiaomi.passport.accountmanager.g;

public class a
{
  public static String a(Context paramContext, Account paramAccount)
  {
    return g.z(paramContext).o(paramAccount, "encrypted_user_id");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     k5.a
 * JD-Core Version:    0.7.0.1
 */