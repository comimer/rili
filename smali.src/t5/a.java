package t5;

import a6.l;
import android.accounts.Account;
import android.content.Context;
import android.os.BaseBundle;
import android.os.Build;
import android.os.Bundle;
import b7.h;
import com.xiaomi.accountsdk.account.XMPassport;
import com.xiaomi.accountsdk.account.d;
import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.request.InvalidResponseException;
import com.xiaomi.accountsdk.utils.EasyMap;
import com.xiaomi.accountsdk.utils.b;
import com.xiaomi.accountsdk.utils.x;
import com.xiaomi.passport.accountmanager.IXiaomiAccountManager.UpdateType;
import com.xiaomi.passport.accountmanager.g;
import com.xiaomi.passport.accountmanager.i;
import java.io.IOException;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

public class a
{
  private static String a(Context paramContext, Account paramAccount, Boolean paramBoolean1, String paramString, Boolean paramBoolean2, Boolean paramBoolean3)
    throws InvalidResponseException, AccessDeniedException, AuthenticationFailureException, IOException
  {
    if (paramAccount != null)
    {
      String str1 = d.z0;
      String str2 = Build.MODEL;
      String str3 = g.z(paramContext).o(paramAccount, "encrypted_user_id");
      String str4 = g.z(paramContext).b(paramAccount);
      String str5 = UUID.randomUUID().toString().substring(0, 15);
      paramAccount = new EasyMap().easyPut("userId", paramAccount.name).easyPutOpt("userSpaceId", x.a());
      if (paramBoolean2 == null) {
        paramContext = null;
      } else {
        paramContext = String.valueOf(paramBoolean2);
      }
      paramAccount = paramAccount.easyPutOpt("isMainSpace", paramContext);
      if (paramBoolean3 == null) {
        paramContext = null;
      } else {
        paramContext = String.valueOf(paramBoolean3);
      }
      paramAccount = paramAccount.easyPutOpt("isLastSpace", paramContext).easyPut("sid", paramString).easyPut("deviceModel", str2);
      if (paramBoolean1 == null) {
        paramContext = null;
      } else {
        paramContext = String.valueOf(paramBoolean1);
      }
      paramContext = paramAccount.easyPutOpt("isFindDeviceSwitchOn", paramContext).easyPut("_json", String.valueOf(true)).easyPut("traceId", str5);
      paramAccount = new EasyMap().easyPut("passToken", str4).easyPut("cUserId", str3);
      paramBoolean1 = new StringBuilder();
      paramBoolean1.append("logoutDevice traceId: ");
      paramBoolean1.append(str5);
      b.g("AccountLogout", paramBoolean1.toString());
      paramContext = XMPassport.A(l.h(str1, paramContext, paramAccount, true));
      try
      {
        paramContext = new JSONObject(paramContext);
        try
        {
          int i = paramContext.getInt("code");
          if (i != 0)
          {
            if (i != 2)
            {
              if (i != 70016)
              {
                paramContext = new StringBuilder();
                paramContext.append("unknown code=");
                paramContext.append(i);
                throw new InvalidResponseException(paramContext.toString());
              }
              throw new AuthenticationFailureException("un-authenticated");
            }
            try
            {
              paramContext = paramContext.getString("notificationUrl");
              return paramContext;
            }
            catch (JSONException paramContext)
            {
              throw new InvalidResponseException("response no notificationUrl");
            }
          }
          return null;
        }
        catch (JSONException paramContext)
        {
          throw new InvalidResponseException("response no code");
        }
        throw new IllegalStateException("no account when request logout");
      }
      catch (JSONException paramContext)
      {
        throw new InvalidResponseException("response not json");
      }
    }
  }
  
  public static String b(Context paramContext, Account paramAccount, String paramString)
    throws AccessDeniedException, AuthenticationFailureException, IOException, InvalidResponseException
  {
    return a(paramContext, paramAccount, null, paramString, null, null);
  }
  
  public static boolean c(Context paramContext)
  {
    if (!g.A(paramContext))
    {
      paramContext = g.z(paramContext);
      Account localAccount = paramContext.l();
      boolean bool1 = false;
      if (localAccount == null) {
        return false;
      }
      i locali = paramContext.y(null, null);
      boolean bool2;
      try
      {
        bool2 = ((Bundle)locali.getResult()).getBoolean("booleanResult");
      }
      catch (Exception localException)
      {
        b.h("AccountLogout", "error when remove account", localException);
        bool2 = bool1;
      }
      if (bool2)
      {
        b.g("AccountLogout", "Xiaomi account removed successfully!");
        h.a();
        paramContext.r(localAccount, IXiaomiAccountManager.UpdateType.POST_REMOVE);
      }
      return bool2;
    }
    throw new IllegalStateException("can not remove account directly when has system account");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     t5.a
 * JD-Core Version:    0.7.0.1
 */