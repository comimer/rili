package k5;

import android.accounts.Account;
import android.content.Context;
import com.xiaomi.passport.accountmanager.g;

public class c
{
  public static String a(Context paramContext, Account paramAccount, String paramString)
  {
    paramContext = g.z(paramContext);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    localStringBuilder.append("_slh");
    return paramContext.o(paramAccount, localStringBuilder.toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     k5.c
 * JD-Core Version:    0.7.0.1
 */