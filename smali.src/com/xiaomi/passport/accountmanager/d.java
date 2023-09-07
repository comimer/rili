package com.xiaomi.passport.accountmanager;

import android.accounts.Account;
import android.accounts.NetworkErrorException;
import android.content.Context;
import android.content.Intent;
import android.os.BaseBundle;
import android.os.Bundle;
import android.text.TextUtils;
import com.xiaomi.accounts.AccountAuthenticatorResponse;
import com.xiaomi.accountsdk.account.data.AccountInfo;
import com.xiaomi.accountsdk.account.data.AccountInfo.b;
import com.xiaomi.accountsdk.account.data.b.b;
import com.xiaomi.accountsdk.account.exception.AccountException;
import com.xiaomi.accountsdk.account.exception.HttpException;
import com.xiaomi.accountsdk.account.exception.IllegalDeviceException;
import com.xiaomi.accountsdk.account.exception.InvalidCredentialException;
import com.xiaomi.accountsdk.account.exception.InvalidUserNameException;
import com.xiaomi.accountsdk.account.exception.NeedCaptchaException;
import com.xiaomi.accountsdk.account.exception.NeedNotificationException;
import com.xiaomi.accountsdk.account.exception.NeedVerificationException;
import com.xiaomi.accountsdk.account.exception.PackageNameDeniedException;
import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.request.InvalidResponseException;
import com.xiaomi.accountsdk.utils.b;
import java.io.IOException;

public class d
  extends com.xiaomi.accounts.a
{
  private Context c;
  
  public d(Context paramContext)
  {
    super(paramContext);
    this.c = paramContext;
  }
  
  private void n(Bundle paramBundle1, AccountAuthenticatorResponse paramAccountAuthenticatorResponse, boolean paramBoolean, Account paramAccount, String paramString, Bundle paramBundle2)
  {
    g localg = g.z(this.c);
    Object localObject = localg.o(paramAccount, "has_password");
    boolean bool = true;
    if ((!TextUtils.equals((CharSequence)localObject, String.valueOf(true))) && (!TextUtils.isEmpty(localg.b(paramAccount)))) {
      localg.s(paramAccount, null);
    }
    String str = g.z(this.c).o(paramAccount, "has_password");
    localObject = paramBundle2;
    if (paramBundle2 == null) {
      localObject = new Bundle();
    }
    ((BaseBundle)localObject).putString("userId", paramAccount.name);
    ((BaseBundle)localObject).putBoolean("need_retry_on_authenticator_response_result", paramBoolean);
    if (TextUtils.isEmpty(str)) {
      paramBoolean = bool;
    } else {
      paramBoolean = TextUtils.equals(str, String.valueOf(true));
    }
    ((BaseBundle)localObject).putBoolean("has_password", paramBoolean);
    paramAccountAuthenticatorResponse = localg.n((Bundle)localObject, paramAccountAuthenticatorResponse);
    paramAccountAuthenticatorResponse.putExtra("service_id", paramString);
    paramBundle1.putParcelable("intent", paramAccountAuthenticatorResponse);
  }
  
  private Bundle o(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, Account paramAccount, String paramString, Bundle paramBundle)
  {
    String str = paramBundle.getString("androidPackageName", this.c.getPackageName());
    if (paramString.startsWith("weblogin:")) {
      localObject1 = "websso";
    } else {
      localObject1 = paramString;
    }
    b.g("OwnAppXiaomiAccountAuthenticator", String.format("getting AuthToken, type: %s, package name: %s", new Object[] { localObject1, str }));
    Bundle localBundle = new Bundle();
    Object localObject1 = g.z(this.c).l();
    if ((localObject1 != null) && (((Account)localObject1).name.equals(paramAccount.name)))
    {
      boolean bool = TextUtils.isEmpty(paramString);
      localObject1 = "passportapi";
      if (bool)
      {
        b.g("OwnAppXiaomiAccountAuthenticator", "getting auth token, but no service url contained, use passportapi");
      }
      else
      {
        if (paramString.startsWith("weblogin:"))
        {
          localObject2 = paramString.substring(9);
          localObject3 = localObject2;
          if (b7.a.i((String)localObject2)) {
            break label184;
          }
          localBundle.putInt("errorCode", 7);
          localBundle.putString("errorMessage", "untrusted web sso url");
          return localBundle;
        }
        localObject1 = paramString;
      }
      Object localObject3 = null;
      label184:
      Object localObject2 = p(paramAccount);
      if (TextUtils.isEmpty((CharSequence)localObject2))
      {
        n(localBundle, paramAccountAuthenticatorResponse, true, paramAccount, (String)localObject1, paramBundle);
        b.g("OwnAppXiaomiAccountAuthenticator", "passToken is null");
        return localBundle;
      }
      localObject2 = new b.b().s(paramAccount.name).p((String)localObject2).o(str);
      if (localObject3 != null) {}
      try
      {
        ((b.b)localObject2).q(null);
        ((b.b)localObject2).n(localObject3);
        paramString = b7.a.d(this.c, ((b.b)localObject2).j());
        localBundle.putString("authAccount", paramString.getUserId());
        localBundle.putString("accountType", "weblogin:com.xiaomi");
        localBundle.putString("authtoken", paramString.getAutoLoginUrl());
        b.g("OwnAppXiaomiAccountAuthenticator", "web sso getAuthToken succeed");
        return localBundle;
      }
      catch (NeedNotificationException paramString)
      {
        b.h("OwnAppXiaomiAccountAuthenticator", "need notification ", paramString);
        if (localObject3 == null) {
          break label489;
        }
        paramAccountAuthenticatorResponse = new StringBuilder();
        paramAccountAuthenticatorResponse.append("websso return notification url: ");
        paramAccountAuthenticatorResponse.append((String)localObject1);
        b.g("OwnAppXiaomiAccountAuthenticator", paramAccountAuthenticatorResponse.toString());
        localBundle.putString("authAccount", paramAccount.name);
        localBundle.putString("accountType", "weblogin:com.xiaomi");
        localBundle.putString("authtoken", paramString.getNotificationUrl());
        return localBundle;
        localBundle.putParcelable("intent", g.z(this.c).v((String)localObject1, paramString.getNotificationUrl(), paramBundle, paramAccountAuthenticatorResponse));
      }
      catch (InvalidUserNameException paramAccountAuthenticatorResponse)
      {
        b.h("OwnAppXiaomiAccountAuthenticator", "no such a user", paramAccountAuthenticatorResponse);
      }
      catch (AuthenticationFailureException paramAccountAuthenticatorResponse)
      {
        b.h("OwnAppXiaomiAccountAuthenticator", "auth failure", paramAccountAuthenticatorResponse);
        localBundle.putInt("errorCode", 5);
        localBundle.putString("errorMessage", paramAccountAuthenticatorResponse.toString());
      }
      catch (AccessDeniedException paramAccountAuthenticatorResponse)
      {
        b.h("OwnAppXiaomiAccountAuthenticator", "access denied", paramAccountAuthenticatorResponse);
        localBundle.putInt("errorCode", 5);
        localBundle.putString("errorMessage", paramAccountAuthenticatorResponse.toString());
      }
      catch (PackageNameDeniedException paramAccount)
      {
        paramAccountAuthenticatorResponse = new StringBuilder();
        paramAccountAuthenticatorResponse.append("package name denied: ");
        paramAccountAuthenticatorResponse.append(str);
        b.h("OwnAppXiaomiAccountAuthenticator", paramAccountAuthenticatorResponse.toString(), paramAccount);
        localBundle.putInt("errorCode", 9);
        localBundle.putString("errorMessage", paramAccount.toString());
      }
      catch (InvalidCredentialException paramString)
      {
        b.h("OwnAppXiaomiAccountAuthenticator", "invalid credential, passToken is invalid", paramString);
        g.z(this.c).e(paramAccount);
        paramBundle.putString("captcha_url", paramString.getCaptchaUrl());
        n(localBundle, paramAccountAuthenticatorResponse, true, paramAccount, (String)localObject1, paramBundle);
      }
      catch (InvalidResponseException paramAccountAuthenticatorResponse)
      {
        b.h("OwnAppXiaomiAccountAuthenticator", "invalid response received when getting service token", paramAccountAuthenticatorResponse);
        localBundle.putInt("errorCode", 5);
        localBundle.putString("errorMessage", paramAccountAuthenticatorResponse.toString());
      }
      catch (IllegalDeviceException paramAccountAuthenticatorResponse)
      {
        b.h("OwnAppXiaomiAccountAuthenticator", "get device id failed when getting service token", paramAccountAuthenticatorResponse);
        localBundle.putInt("errorCode", 3);
        localBundle.putString("errorMessage", "illegal device exception");
      }
      catch (IOException paramAccountAuthenticatorResponse)
      {
        label489:
        b.h("OwnAppXiaomiAccountAuthenticator", "io exception when getting service token", paramAccountAuthenticatorResponse);
        localBundle.putInt("errorCode", 3);
        localBundle.putString("errorMessage", paramAccountAuthenticatorResponse.toString());
      }
      ((b.b)localObject2).q((String)localObject1);
      ((b.b)localObject2).n(null);
      localObject2 = b7.a.d(this.c, ((b.b)localObject2).j());
      g.z(this.c).d(paramAccount, (AccountInfo)localObject2);
      localObject2 = b7.a.b((AccountInfo)localObject2, false);
      if (localObject2 != null) {
        localBundle.putAll((Bundle)localObject2);
      }
      b.g("OwnAppXiaomiAccountAuthenticator", String.format("type: %s, package name: %s, getAuthToken succeed", new Object[] { paramString, str }));
      return localBundle;
    }
    localBundle.putBoolean("booleanResult", false);
    return localBundle;
  }
  
  private String p(Account paramAccount)
  {
    return g.z(this.c).b(paramAccount);
  }
  
  public Bundle c(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, String paramString1, String paramString2, String[] paramArrayOfString, Bundle paramBundle)
    throws NetworkErrorException
  {
    paramString1 = g.z(this.c).l();
    paramArrayOfString = new Bundle();
    if (paramString1 != null)
    {
      b.g("OwnAppXiaomiAccountAuthenticator", "a xiaomi account already exists");
      paramArrayOfString.putString("authAccount", paramString1.name);
      paramArrayOfString.putString("accountType", paramString1.type);
    }
    else
    {
      paramString1 = paramString2;
      if (TextUtils.isEmpty(paramString2))
      {
        b.g("OwnAppXiaomiAccountAuthenticator", "no service id contained, use passportapi");
        paramString1 = "passportapi";
      }
      paramArrayOfString.putParcelable("intent", g.z(this.c).a(paramString1, paramBundle, paramAccountAuthenticatorResponse));
    }
    return paramArrayOfString;
  }
  
  public Bundle e(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, Account paramAccount, Bundle paramBundle)
    throws NetworkErrorException
  {
    Bundle localBundle1 = new Bundle();
    boolean bool = false;
    int i = 1;
    Bundle localBundle2 = null;
    String str;
    if ((paramBundle != null) && (paramBundle.containsKey("password")))
    {
      str = paramAccount.name;
      paramAccount = paramBundle.getString("password");
      paramAccountAuthenticatorResponse = paramBundle.getString("captcha_code");
      paramBundle = paramBundle.getString("captcha_ick");
      try
      {
        try
        {
          paramAccountAuthenticatorResponse = b7.a.e(str, paramAccount, paramAccountAuthenticatorResponse, paramBundle, null);
          paramBundle = null;
          paramAccount = paramAccountAuthenticatorResponse;
          paramAccountAuthenticatorResponse = paramBundle;
        }
        catch (InvalidUserNameException paramAccountAuthenticatorResponse)
        {
          paramAccountAuthenticatorResponse.printStackTrace();
        }
        catch (NeedCaptchaException paramAccount)
        {
          paramAccountAuthenticatorResponse = paramAccount.getCaptchaUrl();
          paramAccount.printStackTrace();
          paramAccount = localBundle2;
        }
        catch (NeedVerificationException paramAccountAuthenticatorResponse)
        {
          for (;;)
          {
            paramAccountAuthenticatorResponse = new AccountInfo.b().F(str).r();
          }
        }
        catch (AuthenticationFailureException paramAccountAuthenticatorResponse)
        {
          paramAccountAuthenticatorResponse.printStackTrace();
        }
        catch (AccessDeniedException paramAccountAuthenticatorResponse)
        {
          paramAccountAuthenticatorResponse.printStackTrace();
        }
        catch (InvalidCredentialException paramAccount)
        {
          paramAccountAuthenticatorResponse = paramAccount.getCaptchaUrl();
          paramAccount.printStackTrace();
          paramAccount = localBundle2;
        }
        catch (InvalidResponseException paramAccountAuthenticatorResponse)
        {
          paramAccountAuthenticatorResponse.printStackTrace();
        }
        catch (IllegalDeviceException paramAccountAuthenticatorResponse)
        {
          paramAccountAuthenticatorResponse.printStackTrace();
        }
        paramAccountAuthenticatorResponse = null;
        paramAccount = localBundle2;
        localBundle1.putString("authAccount", str);
        localBundle1.putString("accountType", "com.xiaomi");
        if (paramAccount != null) {
          bool = true;
        }
        localBundle1.putBoolean("booleanResult", bool);
        localBundle1.putString("captcha_url", paramAccountAuthenticatorResponse);
      }
      catch (IOException paramAccountAuthenticatorResponse)
      {
        throw new NetworkErrorException("IO exception when sending request to passport server", paramAccountAuthenticatorResponse);
      }
    }
    else
    {
      str = g.z(this.c).p(paramAccount);
      int j = i;
      if (paramBundle != null) {
        if (paramBundle.getBoolean("verify_only", true)) {
          j = i;
        } else {
          j = 0;
        }
      }
      localBundle2 = paramBundle;
      if (j != 0)
      {
        localBundle2 = paramBundle;
        if (TextUtils.isEmpty(str))
        {
          localBundle2 = paramBundle;
          if (paramBundle == null) {
            localBundle2 = new Bundle();
          }
          localBundle2.putBoolean("verify_only", false);
        }
      }
      if (localBundle2 != null) {
        paramBundle = localBundle2.getString("service_id");
      } else {
        paramBundle = null;
      }
      n(localBundle1, paramAccountAuthenticatorResponse, false, paramAccount, paramBundle, localBundle2);
    }
    return localBundle1;
  }
  
  public Bundle f(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, String paramString)
  {
    return null;
  }
  
  public Bundle g(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, Account paramAccount)
    throws NetworkErrorException
  {
    paramAccountAuthenticatorResponse = new Bundle();
    paramAccountAuthenticatorResponse.putBoolean("booleanResult", true);
    return paramAccountAuthenticatorResponse;
  }
  
  public Bundle h(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, Account paramAccount, String paramString, Bundle paramBundle)
  {
    return q(o(paramAccountAuthenticatorResponse, paramAccount, paramString, paramBundle));
  }
  
  public String i(String paramString)
  {
    return null;
  }
  
  public Bundle l(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, Account paramAccount, String[] paramArrayOfString)
    throws NetworkErrorException
  {
    return null;
  }
  
  public Bundle m(AccountAuthenticatorResponse paramAccountAuthenticatorResponse, Account paramAccount, String paramString, Bundle paramBundle)
    throws NetworkErrorException
  {
    throw new UnsupportedOperationException("updateCredentials not supported");
  }
  
  Bundle q(Bundle paramBundle)
  {
    if (g.z(this.c).l() != null) {
      return paramBundle;
    }
    paramBundle = new Bundle();
    paramBundle.putBoolean("booleanResult", false);
    return paramBundle;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.accountmanager.d
 * JD-Core Version:    0.7.0.1
 */