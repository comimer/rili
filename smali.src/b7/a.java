package b7;

import a6.j;
import android.content.Context;
import android.os.BaseBundle;
import android.os.Bundle;
import android.text.TextUtils;
import com.xiaomi.accountsdk.account.XMPassport;
import com.xiaomi.accountsdk.account.d;
import com.xiaomi.accountsdk.account.data.AccountInfo;
import com.xiaomi.accountsdk.account.data.PasswordLoginParams;
import com.xiaomi.accountsdk.account.data.PasswordLoginParams.b;
import com.xiaomi.accountsdk.account.data.b.b;
import com.xiaomi.accountsdk.account.data.c;
import com.xiaomi.accountsdk.account.e;
import com.xiaomi.accountsdk.account.exception.IllegalDeviceException;
import com.xiaomi.accountsdk.account.exception.InvalidCredentialException;
import com.xiaomi.accountsdk.account.exception.InvalidUserNameException;
import com.xiaomi.accountsdk.account.exception.NeedCaptchaException;
import com.xiaomi.accountsdk.account.exception.NeedNotificationException;
import com.xiaomi.accountsdk.account.exception.NeedVerificationException;
import com.xiaomi.accountsdk.account.exception.PackageNameDeniedException;
import com.xiaomi.accountsdk.hasheddeviceidlib.HashedDeviceIdUtil;
import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.request.CipherException;
import com.xiaomi.accountsdk.request.InvalidResponseException;
import com.xiaomi.accountsdk.utils.EasyMap;
import com.xiaomi.accountsdk.utils.FidSigningUtil.FidSignException;
import com.xiaomi.accountsdk.utils.x;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import org.json.JSONException;
import org.json.JSONObject;
import z5.g;

public class a
{
  private static final Integer a = Integer.valueOf(0);
  private static final String b;
  
  static
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(d.j);
    localStringBuilder.append("/safe/user/isSetPassword");
    b = localStringBuilder.toString();
  }
  
  public static Bundle a(int paramInt, AccountInfo paramAccountInfo, boolean paramBoolean)
  {
    paramAccountInfo = b(paramAccountInfo, paramBoolean);
    if (paramInt == 0) {
      paramAccountInfo.putInt("errorCode", 4);
    }
    return paramAccountInfo;
  }
  
  public static Bundle b(AccountInfo paramAccountInfo, boolean paramBoolean)
  {
    Bundle localBundle = new Bundle();
    if (paramAccountInfo != null)
    {
      String str1 = paramAccountInfo.userId;
      if (str1 != null)
      {
        localBundle.putString("authAccount", str1);
        localBundle.putString("accountType", "com.xiaomi");
        if (!TextUtils.isEmpty(paramAccountInfo.encryptedUserId)) {
          localBundle.putString("encrypted_user_id", paramAccountInfo.encryptedUserId);
        }
        localBundle.putBoolean("has_password", paramAccountInfo.getHasPwd());
        if (!TextUtils.isEmpty(paramAccountInfo.autoLoginUrl))
        {
          localBundle.putString("sts_url_result", paramAccountInfo.autoLoginUrl);
          localBundle.putString("sts_url", paramAccountInfo.autoLoginUrl);
        }
        str1 = paramAccountInfo.getServiceId();
        String str2 = paramAccountInfo.getServiceToken();
        if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2))) {
          localBundle.putString("authtoken", com.xiaomi.accountsdk.account.data.a.a(str2, paramAccountInfo.getSecurity()).c());
        }
        localBundle.putString("stsCookies", paramAccountInfo.stsCookies);
        localBundle.putBoolean("booleanResult", true);
        localBundle.putBoolean("retry", paramBoolean);
        return localBundle;
      }
    }
    localBundle.putBoolean("booleanResult", false);
    return localBundle;
  }
  
  public static String c()
  {
    return new HashedDeviceIdUtil(e.b()).c();
  }
  
  public static AccountInfo d(Context paramContext, com.xiaomi.accountsdk.account.data.b paramb)
    throws InvalidResponseException, InvalidCredentialException, PackageNameDeniedException, IOException, AccessDeniedException, AuthenticationFailureException, InvalidUserNameException, IllegalDeviceException, NeedNotificationException
  {
    b.b localb = com.xiaomi.accountsdk.account.data.b.a(paramb);
    if (TextUtils.isEmpty(paramb.e)) {
      localb.k(c());
    }
    if (TextUtils.isEmpty(paramb.f)) {
      localb.r(g(paramContext, paramb.a));
    }
    return XMPassport.k(localb.j());
  }
  
  public static AccountInfo e(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
    throws IOException, NeedCaptchaException, InvalidUserNameException, InvalidResponseException, AccessDeniedException, AuthenticationFailureException, InvalidCredentialException, NeedVerificationException, IllegalDeviceException
  {
    try
    {
      paramString1 = f(paramString1, paramString2, paramString3, paramString4, paramString5, false);
      return paramString1;
    }
    catch (NeedNotificationException paramString1)
    {
      throw new InvalidResponseException("Unexpected NeedNotificationException");
    }
  }
  
  public static AccountInfo f(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, boolean paramBoolean)
    throws IOException, NeedCaptchaException, InvalidUserNameException, InvalidResponseException, AccessDeniedException, AuthenticationFailureException, InvalidCredentialException, NeedVerificationException, NeedNotificationException, IllegalDeviceException
  {
    return XMPassport.p(paramString1, paramString5, c(), paramString2, paramString3, paramString4, null, paramBoolean, null);
  }
  
  private static String g(Context paramContext, String paramString)
  {
    try
    {
      paramContext = g.a(paramContext, paramString);
    }
    catch (FidSigningUtil.FidSignException paramContext)
    {
      com.xiaomi.accountsdk.utils.b.g("AccountHelper", " getUDevId   FidSignException ");
      paramContext = null;
    }
    return paramContext;
  }
  
  public static boolean h(c paramc, String paramString1, String paramString2, String paramString3)
    throws AccessDeniedException, AuthenticationFailureException, InvalidResponseException, CipherException, IOException
  {
    if (paramc != null)
    {
      paramc = j.c(b, new EasyMap().easyPut("userId", paramc.e()).easyPutOpt("sid", paramString1).easyPut("transId", paramString3), new EasyMap().easyPut("cUserId", paramc.a()).easyPut("serviceToken", paramc.d()).easyPut("deviceId", paramString2).easyPutOpt("userSpaceId", x.a()), true, paramc.b());
      if (paramc != null)
      {
        paramc = XMPassport.A(paramc);
        try
        {
          paramString1 = new org/json/JSONObject;
          paramString1.<init>(paramc);
          int i = paramString1.getInt("code");
          if (i == 0) {
            return paramString1.getJSONObject("data").getBoolean("status");
          }
          paramString2 = new com/xiaomi/accountsdk/request/InvalidResponseException;
          paramString3 = new java/lang/StringBuilder;
          paramString3.<init>();
          paramString3.append("code: ");
          paramString3.append(i);
          paramString3.append("desc: ");
          paramString3.append(paramString1.optString("description"));
          paramString2.<init>(paramString3.toString());
          throw paramString2;
        }
        catch (JSONException paramString1)
        {
          paramString1 = new StringBuilder();
          paramString1.append("json error: ");
          paramString1.append(paramc);
          throw new InvalidResponseException(paramString1.toString());
        }
      }
      throw new InvalidResponseException("http response result should not be null");
    }
    throw new IllegalArgumentException("passport info should not be null");
  }
  
  public static boolean i(String paramString)
  {
    bool1 = TextUtils.isEmpty(paramString);
    bool2 = false;
    if (bool1) {
      return false;
    }
    try
    {
      Object localObject1 = new java/net/URL;
      ((URL)localObject1).<init>(paramString);
      Object localObject2 = new java/net/URL;
      ((URL)localObject2).<init>(XMPassport.b);
      String str = ((URL)localObject2).getProtocol();
      paramString = ((URL)localObject1).getProtocol();
      localObject2 = ((URL)localObject2).getHost();
      localObject1 = ((URL)localObject1).getHost();
      bool1 = bool2;
      if (str.equalsIgnoreCase(paramString))
      {
        bool1 = bool2;
        if (((String)localObject2).equalsIgnoreCase((String)localObject1)) {
          bool1 = true;
        }
      }
    }
    catch (MalformedURLException paramString)
    {
      for (;;)
      {
        bool1 = bool2;
      }
    }
    return bool1;
  }
  
  public static AccountInfo j(PasswordLoginParams paramPasswordLoginParams)
    throws IOException, NeedCaptchaException, InvalidUserNameException, InvalidResponseException, AccessDeniedException, AuthenticationFailureException, InvalidCredentialException, NeedVerificationException, NeedNotificationException, IllegalDeviceException
  {
    if (paramPasswordLoginParams != null)
    {
      PasswordLoginParams.b localb = PasswordLoginParams.copyFrom(paramPasswordLoginParams);
      if (TextUtils.isEmpty(paramPasswordLoginParams.deviceId)) {
        localb.t(c());
      }
      return XMPassport.o(localb.o());
    }
    throw new IllegalArgumentException("password login params is null");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b7.a
 * JD-Core Version:    0.7.0.1
 */