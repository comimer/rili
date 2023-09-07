package com.xiaomi.passport.snscorelib.internal.request;

import a6.k.d;
import a6.k.h;
import a6.l;
import android.text.TextUtils;
import com.xiaomi.accountsdk.account.d;
import com.xiaomi.accountsdk.account.data.AccountInfo;
import com.xiaomi.accountsdk.account.data.AccountInfo.b;
import com.xiaomi.accountsdk.account.exception.NeedNotificationException;
import com.xiaomi.accountsdk.account.serverpassthrougherror.data.PassThroughErrorInfo;
import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.request.InvalidResponseException;
import com.xiaomi.accountsdk.utils.EasyMap;
import com.xiaomi.passport.snscorelib.internal.entity.SNSBindParameter;
import com.xiaomi.passport.snscorelib.internal.entity.SNSBindParameter.b;
import com.xiaomi.passport.snscorelib.internal.entity.SNSLoginParameter;
import com.xiaomi.passport.snscorelib.internal.entity.SNSTokenLoginResult;
import com.xiaomi.passport.snscorelib.internal.entity.SNSTokenLoginResult.b;
import com.xiaomi.passport.snscorelib.internal.exception.SNSLoginException;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import q6.a;

public class SNSRequest
{
  private static final String a;
  private static final String b;
  public static final String c;
  private static final String d;
  private static final String e;
  
  static
  {
    StringBuilder localStringBuilder = new StringBuilder();
    String str = d.d;
    localStringBuilder.append(str);
    localStringBuilder.append("/sns/login/load");
    a = localStringBuilder.toString();
    localStringBuilder = new StringBuilder();
    localStringBuilder.append(str);
    localStringBuilder.append("/sns/login/load/token");
    b = localStringBuilder.toString();
    localStringBuilder = new StringBuilder();
    localStringBuilder.append(d.j);
    localStringBuilder.append("/safe/user/accessToken/full/delete");
    c = localStringBuilder.toString();
    localStringBuilder = new StringBuilder();
    localStringBuilder.append(str);
    localStringBuilder.append("/sns/bind/bindSns");
    d = localStringBuilder.toString();
    localStringBuilder = new StringBuilder();
    localStringBuilder.append(str);
    localStringBuilder.append("/sns/token/bind/try");
    e = localStringBuilder.toString();
  }
  
  private static AccountInfo a(k.h paramh)
    throws NeedNotificationException, SNSRequest.NeedLoginForBindException, SNSLoginException, SNSRequest.BindLimitException, SNSRequest.RedirectToWebLoginException
  {
    try
    {
      Object localObject1 = paramh.h();
      localObject2 = new org/json/JSONObject;
      ((JSONObject)localObject2).<init>((String)localObject1);
      int i = ((JSONObject)localObject2).optInt("code");
      String str = ((JSONObject)localObject2).optString("description");
      localObject1 = new com/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;
      ((PassThroughErrorInfo)localObject1).<init>((JSONObject)localObject2);
      if (i == 0)
      {
        str = paramh.b("haveLocalUpChannel");
        localObject1 = new com/xiaomi/passport/snscorelib/internal/entity/SNSTokenLoginResult$b;
        ((SNSTokenLoginResult.b)localObject1).<init>();
        localObject1 = ((SNSTokenLoginResult.b)localObject1).y(((JSONObject)localObject2).optInt("Status")).u(((JSONObject)localObject2).optString("Sid")).A(((JSONObject)localObject2).optString("WebViewCallback")).p(((JSONObject)localObject2).optString("Callback")).r(((JSONObject)localObject2).optString("NotificationUrl")).z(((JSONObject)localObject2).optString("userId")).t(((JSONObject)localObject2).optString("passToken")).v(((JSONObject)localObject2).optString("snsBindTryUrl")).x(((JSONObject)localObject2).optString("sns_token_ph")).s(((JSONObject)localObject2).optString("openId")).w(((JSONObject)localObject2).optString("snsLoginUrl")).n(((JSONObject)localObject2).optBoolean("bindLimit"));
        if (!TextUtils.isEmpty(str)) {
          localObject2 = Boolean.valueOf(Boolean.parseBoolean(str));
        } else {
          localObject2 = null;
        }
        return b(((SNSTokenLoginResult.b)localObject1).q((Boolean)localObject2).o());
      }
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      ((StringBuilder)localObject2).append("getAccountInfo :code=");
      ((StringBuilder)localObject2).append(i);
      ((StringBuilder)localObject2).append(";message = ");
      ((StringBuilder)localObject2).append(str);
      com.xiaomi.accountsdk.utils.b.g("SNSRequest", ((StringBuilder)localObject2).toString());
      localObject2 = new com/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;
      ((SNSLoginException)localObject2).<init>(i, str, (PassThroughErrorInfo)localObject1);
      throw ((Throwable)localObject2);
    }
    catch (JSONException localJSONException)
    {
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("getAccountInfo:fail to parse JSONObject ");
      ((StringBuilder)localObject2).append(paramh);
      com.xiaomi.accountsdk.utils.b.h("SNSRequest", ((StringBuilder)localObject2).toString(), localJSONException);
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("getAccountInfo:fail to parse JSONObject: ");
      ((StringBuilder)localObject2).append(paramh);
      throw new SNSLoginException(3, ((StringBuilder)localObject2).toString());
    }
  }
  
  private static AccountInfo b(SNSTokenLoginResult paramSNSTokenLoginResult)
    throws NeedNotificationException, SNSRequest.NeedLoginForBindException, SNSRequest.BindLimitException, SNSRequest.RedirectToWebLoginException
  {
    int i = paramSNSTokenLoginResult.status;
    if (i != 0)
    {
      if (i == 1)
      {
        str1 = paramSNSTokenLoginResult.snsLoginUrl;
        boolean bool = paramSNSTokenLoginResult.bindLimit;
        str2 = paramSNSTokenLoginResult.snsBindTryUrl;
        String str3 = paramSNSTokenLoginResult.snsTokenPh;
        String str4 = paramSNSTokenLoginResult.openId;
        String str5 = paramSNSTokenLoginResult.sid;
        paramSNSTokenLoginResult = paramSNSTokenLoginResult.hasLocalChannel;
        if (!bool)
        {
          if (!TextUtils.isEmpty(str1)) {
            throw new RedirectToWebLoginException(new SNSBindParameter.b().h(str1).j(str3).k(str4).i(str5).g(paramSNSTokenLoginResult).f());
          }
          throw new NeedLoginForBindException(new SNSBindParameter.b().h(str2).j(str3).k(str4).i(str5).g(paramSNSTokenLoginResult).f());
        }
        throw new BindLimitException();
      }
      paramSNSTokenLoginResult = new StringBuilder();
      paramSNSTokenLoginResult.append("unknown error:status=");
      paramSNSTokenLoginResult.append(i);
      throw new IllegalStateException(paramSNSTokenLoginResult.toString());
    }
    String str1 = paramSNSTokenLoginResult.notificationUrl;
    String str2 = paramSNSTokenLoginResult.sid;
    if (TextUtils.isEmpty(str1)) {
      return new AccountInfo.b().F(paramSNSTokenLoginResult.userId).w(paramSNSTokenLoginResult.passToken).r();
    }
    throw new NeedNotificationException(str2, str1);
  }
  
  private static String c(SNSLoginParameter paramSNSLoginParameter)
    throws AccessDeniedException, AuthenticationFailureException, IOException, InvalidResponseException, SNSLoginException
  {
    Object localObject1 = new EasyMap().easyPutOpt("code", paramSNSLoginParameter.code).easyPut("_json", "true");
    Object localObject2 = new JSONObject();
    try
    {
      ((JSONObject)localObject2).put("sid", paramSNSLoginParameter.sid);
      Object localObject3 = paramSNSLoginParameter.callback;
      Object localObject4 = localObject3;
      if (localObject3 == null) {
        localObject4 = "";
      }
      ((JSONObject)localObject2).put("callback", URLEncoder.encode((String)localObject4, "UTF-8"));
      ((JSONObject)localObject2).put("appid", paramSNSLoginParameter.appid);
      ((JSONObject)localObject2).put("locale", q6.b.a());
      ((JSONObject)localObject2).put("region", paramSNSLoginParameter.region);
      ((EasyMap)localObject1).easyPutOpt("state", a.a(((JSONObject)localObject2).toString().getBytes()));
      ((EasyMap)localObject1).easyPutOpt("t", paramSNSLoginParameter.requestStartTime);
      localObject2 = System.getProperty("http.agent");
      localObject4 = new EasyMap();
      localObject3 = new StringBuilder();
      ((StringBuilder)localObject3).append((String)localObject2);
      ((StringBuilder)localObject3).append(" AndroidSnsSDK/");
      ((StringBuilder)localObject3).append("5.3.0.release.8");
      ((StringBuilder)localObject3).append(" ");
      ((StringBuilder)localObject3).append(paramSNSLoginParameter.snsVersionName);
      paramSNSLoginParameter = ((EasyMap)localObject4).easyPut("User-Agent", ((StringBuilder)localObject3).toString());
      paramSNSLoginParameter = l.f(a, (Map)localObject1, paramSNSLoginParameter, null, true);
      if (paramSNSLoginParameter != null) {
        try
        {
          localObject1 = new org/json/JSONObject;
          ((JSONObject)localObject1).<init>(paramSNSLoginParameter.h());
          int i = ((JSONObject)localObject1).optInt("code");
          localObject4 = ((JSONObject)localObject1).optString("description");
          localObject3 = new com/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;
          ((PassThroughErrorInfo)localObject3).<init>((JSONObject)localObject1);
          if (i == 0) {
            return ((JSONObject)localObject1).getJSONObject("data").optString("location");
          }
          localObject1 = new java/lang/StringBuilder;
          ((StringBuilder)localObject1).<init>();
          ((StringBuilder)localObject1).append("getSNSTokenLoginUrl :code=");
          ((StringBuilder)localObject1).append(i);
          ((StringBuilder)localObject1).append(";message = ");
          ((StringBuilder)localObject1).append((String)localObject4);
          com.xiaomi.accountsdk.utils.b.g("SNSRequest", ((StringBuilder)localObject1).toString());
          localObject1 = new com/xiaomi/passport/snscorelib/internal/exception/SNSLoginException;
          ((SNSLoginException)localObject1).<init>(i, (String)localObject4, (PassThroughErrorInfo)localObject3);
          throw ((Throwable)localObject1);
        }
        catch (JSONException localJSONException1)
        {
          localObject3 = new StringBuilder();
          ((StringBuilder)localObject3).append("getSNSTokenLoginUrl: fail to parse JSONObject ");
          ((StringBuilder)localObject3).append(paramSNSLoginParameter.toString());
          com.xiaomi.accountsdk.utils.b.h("SNSRequest", ((StringBuilder)localObject3).toString(), localJSONException1);
          paramSNSLoginParameter = new StringBuilder();
          paramSNSLoginParameter.append("getSNSTokenLoginUrl: fail to parse JSONObject:");
          paramSNSLoginParameter.append(localJSONException1.toString());
          throw new SNSLoginException(3, paramSNSLoginParameter.toString());
        }
      }
      throw new SNSLoginException(3, "failed to getSNSTokenLoginUrl : stringContent is null");
    }
    catch (JSONException localJSONException2)
    {
      localJSONException2.printStackTrace();
      com.xiaomi.accountsdk.utils.b.h("SNSRequest", "getSNSTokenLoginUrl :invalid state params", localJSONException2);
      paramSNSLoginParameter = new StringBuilder();
      paramSNSLoginParameter.append("getSNSTokenLoginUrl:invalid state params:");
      paramSNSLoginParameter.append(localJSONException2.toString());
      throw new SNSLoginException(3, paramSNSLoginParameter.toString());
    }
  }
  
  public static AccountInfo d(SNSLoginParameter paramSNSLoginParameter)
    throws AccessDeniedException, AuthenticationFailureException, IOException, InvalidResponseException, SNSLoginException, NeedNotificationException, SNSRequest.NeedLoginForBindException, SNSRequest.BindLimitException, SNSRequest.RedirectToWebLoginException
  {
    Object localObject1;
    if (!TextUtils.isEmpty(paramSNSLoginParameter.expires_in)) {
      localObject1 = paramSNSLoginParameter.expires_in;
    } else {
      localObject1 = "-1";
    }
    EasyMap localEasyMap = new EasyMap().easyPutOpt("enToken", paramSNSLoginParameter.enToken).easyPutOpt("token", paramSNSLoginParameter.token).easyPutOpt("expires_in", localObject1).easyPutOpt("openId", paramSNSLoginParameter.openId);
    if (!TextUtils.isEmpty(paramSNSLoginParameter.phones)) {
      localEasyMap.easyPutOpt("_phones", paramSNSLoginParameter.phones);
    }
    localEasyMap.easyPut("_auto", String.valueOf(paramSNSLoginParameter.autoGenerateAccount)).easyPut("_snsQuickLogin", String.valueOf(paramSNSLoginParameter.snsQuickLogin)).easyPut("_json", "true");
    Object localObject2 = new JSONObject();
    try
    {
      ((JSONObject)localObject2).put("sid", paramSNSLoginParameter.sid);
      Object localObject3 = paramSNSLoginParameter.callback;
      localObject1 = localObject3;
      if (localObject3 == null) {
        localObject1 = "";
      }
      ((JSONObject)localObject2).put("callback", URLEncoder.encode((String)localObject1, "UTF-8"));
      ((JSONObject)localObject2).put("appid", paramSNSLoginParameter.appid);
      ((JSONObject)localObject2).put("locale", q6.b.a());
      ((JSONObject)localObject2).put("region", paramSNSLoginParameter.region);
      localEasyMap.easyPutOpt("state", a.a(((JSONObject)localObject2).toString().getBytes()));
      localEasyMap.easyPutOpt("t", paramSNSLoginParameter.requestStartTime);
      localObject2 = System.getProperty("http.agent");
      localObject1 = new EasyMap();
      localObject3 = new StringBuilder();
      ((StringBuilder)localObject3).append((String)localObject2);
      ((StringBuilder)localObject3).append(" AndroidSnsSDK/");
      ((StringBuilder)localObject3).append("5.3.0.release.8");
      ((StringBuilder)localObject3).append(" ");
      ((StringBuilder)localObject3).append(paramSNSLoginParameter.snsVersionName);
      paramSNSLoginParameter = ((EasyMap)localObject1).easyPut("User-Agent", ((StringBuilder)localObject3).toString());
      paramSNSLoginParameter = l.f(b, localEasyMap, paramSNSLoginParameter, null, true);
      if (paramSNSLoginParameter != null) {
        return a(paramSNSLoginParameter);
      }
      throw new SNSLoginException(3, "failed to snsLoginByAccessToken : stringContent is null");
    }
    catch (JSONException paramSNSLoginParameter)
    {
      paramSNSLoginParameter.printStackTrace();
      com.xiaomi.accountsdk.utils.b.h("SNSRequest", "snsLoginByAccessToken :invalid state params", paramSNSLoginParameter);
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("snsLoginByAccessToken :invalid state params:");
      ((StringBuilder)localObject1).append(paramSNSLoginParameter.toString());
      throw new SNSLoginException(3, ((StringBuilder)localObject1).toString());
    }
  }
  
  public static AccountInfo e(SNSLoginParameter paramSNSLoginParameter)
    throws AccessDeniedException, AuthenticationFailureException, IOException, InvalidResponseException, SNSLoginException, NeedNotificationException, SNSRequest.NeedLoginForBindException, SNSRequest.BindLimitException, SNSRequest.RedirectToWebLoginException
  {
    Object localObject1 = c(paramSNSLoginParameter);
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append((String)localObject1);
    ((StringBuilder)localObject2).append("&");
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("_auto=");
    ((StringBuilder)localObject1).append(String.valueOf(paramSNSLoginParameter.autoGenerateAccount));
    ((StringBuilder)localObject2).append(((StringBuilder)localObject1).toString());
    if (!TextUtils.isEmpty(paramSNSLoginParameter.phones))
    {
      ((StringBuilder)localObject2).append("&");
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("_phones=");
      ((StringBuilder)localObject1).append(String.valueOf(URLEncoder.encode(paramSNSLoginParameter.phones)));
      ((StringBuilder)localObject2).append(((StringBuilder)localObject1).toString());
    }
    ((StringBuilder)localObject2).append("&");
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("_snsQuickLogin=");
    ((StringBuilder)localObject1).append(String.valueOf(paramSNSLoginParameter.snsQuickLogin));
    ((StringBuilder)localObject2).append(((StringBuilder)localObject1).toString());
    localObject2 = ((StringBuilder)localObject2).toString();
    String str = System.getProperty("http.agent");
    EasyMap localEasyMap = new EasyMap();
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append(str);
    ((StringBuilder)localObject1).append(" AndroidSnsSDK/");
    ((StringBuilder)localObject1).append("5.3.0.release.8");
    ((StringBuilder)localObject1).append(" ");
    ((StringBuilder)localObject1).append(paramSNSLoginParameter.snsVersionName);
    return a(l.f((String)localObject2, null, localEasyMap.easyPut("User-Agent", ((StringBuilder)localObject1).toString()), null, true));
  }
  
  public static class BindLimitException
    extends Exception
  {}
  
  public static class NeedLoginForBindException
    extends Exception
  {
    private final SNSBindParameter mSNSBindParameter;
    
    public NeedLoginForBindException(SNSBindParameter paramSNSBindParameter)
    {
      this.mSNSBindParameter = paramSNSBindParameter;
    }
    
    public SNSBindParameter getSNSBindParameter()
    {
      return this.mSNSBindParameter;
    }
  }
  
  public static class RedirectToWebLoginException
    extends Exception
  {
    private final SNSBindParameter snsBindParameter;
    
    public RedirectToWebLoginException(SNSBindParameter paramSNSBindParameter)
    {
      this.snsBindParameter = paramSNSBindParameter;
    }
    
    public SNSBindParameter getSNSBindParameter()
    {
      return this.snsBindParameter;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.snscorelib.internal.request.SNSRequest
 * JD-Core Version:    0.7.0.1
 */