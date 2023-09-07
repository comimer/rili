package com.xiaomi.accountsdk.account;

import a6.d.b;
import a6.j;
import a6.k.d;
import a6.k.f;
import a6.k.h;
import a6.l;
import a6.m;
import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.text.TextUtils;
import android.util.Base64;
import com.xiaomi.account.exception.PassportCAException;
import com.xiaomi.account.privacy_data.master.PrivacyDataType;
import com.xiaomi.accountsdk.account.data.AccountInfo;
import com.xiaomi.accountsdk.account.data.AccountInfo.b;
import com.xiaomi.accountsdk.account.data.ActivatorPhoneInfo;
import com.xiaomi.accountsdk.account.data.Gender;
import com.xiaomi.accountsdk.account.data.MetaLoginData;
import com.xiaomi.accountsdk.account.data.PasswordLoginParams;
import com.xiaomi.accountsdk.account.data.PasswordLoginParams.b;
import com.xiaomi.accountsdk.account.data.PhoneTicketLoginParams;
import com.xiaomi.accountsdk.account.data.PhoneTokenRegisterParams;
import com.xiaomi.accountsdk.account.data.RegisterUserInfo;
import com.xiaomi.accountsdk.account.data.RegisterUserInfo.b;
import com.xiaomi.accountsdk.account.data.XiaomiUserCoreInfo;
import com.xiaomi.accountsdk.account.data.XiaomiUserCoreInfo.Education;
import com.xiaomi.accountsdk.account.data.XiaomiUserCoreInfo.Flag;
import com.xiaomi.accountsdk.account.data.XiaomiUserCoreInfo.Income;
import com.xiaomi.accountsdk.account.data.XiaomiUserCoreInfo.b;
import com.xiaomi.accountsdk.account.data.XiaomiUserCoreInfo.c;
import com.xiaomi.accountsdk.account.data.b.b;
import com.xiaomi.accountsdk.account.exception.AccountException;
import com.xiaomi.accountsdk.account.exception.HttpException;
import com.xiaomi.accountsdk.account.exception.InvalidCredentialException;
import com.xiaomi.accountsdk.account.exception.InvalidParameterException;
import com.xiaomi.accountsdk.account.exception.InvalidPhoneNumException;
import com.xiaomi.accountsdk.account.exception.InvalidTzSignException;
import com.xiaomi.accountsdk.account.exception.InvalidUserNameException;
import com.xiaomi.accountsdk.account.exception.InvalidVerifyCodeException;
import com.xiaomi.accountsdk.account.exception.NeedCaptchaException;
import com.xiaomi.accountsdk.account.exception.NeedNotificationException;
import com.xiaomi.accountsdk.account.exception.NeedVerificationException;
import com.xiaomi.accountsdk.account.exception.PackageNameDeniedException;
import com.xiaomi.accountsdk.account.exception.PassportIOException;
import com.xiaomi.accountsdk.account.exception.ReachLimitException;
import com.xiaomi.accountsdk.account.exception.TokenExpiredException;
import com.xiaomi.accountsdk.account.exception.UserRestrictedException;
import com.xiaomi.accountsdk.account.serverpassthrougherror.data.PassThroughErrorInfo;
import com.xiaomi.accountsdk.hasheddeviceidlib.HashedDeviceIdUtil;
import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.request.CipherException;
import com.xiaomi.accountsdk.request.InvalidResponseException;
import com.xiaomi.accountsdk.utils.AssertionUtils;
import com.xiaomi.accountsdk.utils.CloudCoder;
import com.xiaomi.accountsdk.utils.EasyMap;
import com.xiaomi.accountsdk.utils.XMPassportUtil;
import com.xiaomi.accountsdk.utils.b;
import com.xiaomi.accountsdk.utils.x;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
import p5.a;

public class XMPassport
{
  public static final boolean a = d.a;
  @Deprecated
  public static final String b = d.b;
  @Deprecated
  public static final String c = d.d;
  @Deprecated
  public static final String d = d.f;
  @Deprecated
  public static final String e = d.g;
  @Deprecated
  public static final String f = d.h;
  @Deprecated
  public static final String g = d.i;
  @Deprecated
  public static final String h = d.j;
  @Deprecated
  public static final String i = d.k;
  private static final Integer j = Integer.valueOf(0);
  static boolean k = false;
  private static final Integer l = Integer.valueOf(300000);
  
  public static String A(k.h paramh)
    throws IOException
  {
    if (paramh != null)
    {
      String str = paramh.h();
      paramh = str;
      if (str.startsWith("&&&START&&&")) {
        paramh = str.substring(11);
      }
      return paramh;
    }
    throw new IOException("failed to get response to check register verify code");
  }
  
  private static String B(String paramString1, String paramString2)
  {
    Object localObject = paramString1;
    if (!TextUtils.isEmpty(paramString1)) {
      if (TextUtils.isEmpty(paramString2))
      {
        localObject = paramString1;
      }
      else
      {
        localObject = e.b();
        if (localObject == null) {
          paramString2 = null;
        } else {
          paramString2 = new c((Context)localObject).a(paramString2);
        }
        if (TextUtils.isEmpty(paramString2)) {
          localObject = paramString1;
        } else {
          localObject = paramString1.replaceFirst(d.c, paramString2);
        }
      }
    }
    return localObject;
  }
  
  private static String C(com.xiaomi.accountsdk.account.data.c paramc)
    throws InvalidResponseException, CipherException, IOException, AuthenticationFailureException, AccessDeniedException
  {
    Object localObject1 = j.a(d.z, new EasyMap().easyPut("userId", paramc.e()).easyPut("method", "json"), g(paramc), true, paramc.b());
    if (localObject1 != null)
    {
      Object localObject2 = ((k.f)localObject1).h("code");
      paramc = new PassThroughErrorInfo((k.f)localObject1);
      if (j.equals(localObject2))
      {
        localObject3 = ((k.f)localObject1).h("data");
        if ((localObject3 instanceof Map))
        {
          paramc = ((Map)localObject3).get("uploadUrl");
          if (paramc != null) {
            return paramc.toString();
          }
          throw new InvalidResponseException("uploadUrl is null");
        }
      }
      localObject1 = ((k.f)localObject1).h("description");
      Object localObject3 = new StringBuilder();
      ((StringBuilder)localObject3).append("requestUploadUserIcon failed, code: ");
      ((StringBuilder)localObject3).append(localObject2);
      ((StringBuilder)localObject3).append("; description: ");
      ((StringBuilder)localObject3).append(localObject1);
      b.g("XMPassport", ((StringBuilder)localObject3).toString());
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("requestUploadUserIcon failed, description: ");
      ((StringBuilder)localObject2).append(localObject1);
      throw new InvalidResponseException(((StringBuilder)localObject2).toString(), paramc);
    }
    throw new InvalidResponseException("requestUploadUserIcon request content is null");
  }
  
  public static int D(com.xiaomi.accountsdk.account.data.e parame)
    throws AccessDeniedException, AuthenticationFailureException, IOException, InvalidResponseException, NeedCaptchaException, ReachLimitException, TokenExpiredException, InvalidPhoneNumException
  {
    if (parame != null)
    {
      Object localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(d.d);
      ((StringBuilder)localObject1).append("/sendServiceLoginTicket");
      Object localObject2 = ((StringBuilder)localObject1).toString();
      localObject1 = new EasyMap().easyPutOpt("user", parame.a).easyPutOpt("userHash", parame.b).easyPutOpt("sid", parame.f).easyPutOpt("captCode", parame.h).easyPutOpt("type", parame.m).easyPut("_json", "true");
      c((EasyMap)localObject1);
      Object localObject3 = new EasyMap().easyPutOpt("activatorToken", parame.c).easyPutOpt("ick", parame.i).easyPutOpt("vToken", parame.k).easyPutOpt("vAction", parame.l);
      a((EasyMap)localObject3, parame.e);
      parame = l.i((String)localObject2, (Map)localObject1, (Map)localObject3, new EasyMap().easyPutOpt("vToken", parame.g), null, true, null);
      if (parame != null)
      {
        parame = A(parame);
        try
        {
          localObject1 = new org/json/JSONObject;
          ((JSONObject)localObject1).<init>(parame);
          int m = ((JSONObject)localObject1).getInt("code");
          parame = ((JSONObject)localObject1).optString("description");
          localObject3 = new com/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;
          ((PassThroughErrorInfo)localObject3).<init>((JSONObject)localObject1);
          localObject2 = new java/lang/StringBuilder;
          ((StringBuilder)localObject2).<init>();
          ((StringBuilder)localObject2).append("code: ");
          ((StringBuilder)localObject2).append(m);
          ((StringBuilder)localObject2).append(", desc: ");
          ((StringBuilder)localObject2).append(parame);
          localObject2 = ((StringBuilder)localObject2).toString();
          StringBuilder localStringBuilder = new java/lang/StringBuilder;
          localStringBuilder.<init>();
          localStringBuilder.append("sendPhoneLoginTicket: ");
          localStringBuilder.append((String)localObject2);
          b.g("XMPassport", localStringBuilder.toString());
          if (m != 0)
          {
            if (m != 21317)
            {
              if (m != 70008)
              {
                if (m != 70022)
                {
                  if (m != 87001)
                  {
                    localObject1 = new com/xiaomi/accountsdk/request/InvalidResponseException;
                    ((InvalidResponseException)localObject1).<init>(m, parame, (PassThroughErrorInfo)localObject3);
                    throw ((Throwable)localObject1);
                  }
                  localObject3 = new com/xiaomi/accountsdk/account/exception/NeedCaptchaException;
                  ((NeedCaptchaException)localObject3).<init>(m, parame, ((JSONObject)localObject1).getString("captchaUrl"), ((JSONObject)localObject1).optString("type"));
                  throw ((Throwable)localObject3);
                }
                parame = new com/xiaomi/accountsdk/account/exception/ReachLimitException;
                parame.<init>((String)localObject2);
                throw parame;
              }
              localObject1 = new com/xiaomi/accountsdk/account/exception/InvalidPhoneNumException;
              ((InvalidPhoneNumException)localObject1).<init>(parame);
              throw ((Throwable)localObject1);
            }
            parame = new com/xiaomi/accountsdk/account/exception/TokenExpiredException;
            parame.<init>((String)localObject2);
            throw parame;
          }
          m = ((JSONObject)localObject1).getJSONObject("data").optInt("vCodeLen");
          return m;
        }
        catch (JSONException parame)
        {
          throw new InvalidResponseException("result not json");
        }
      }
      throw new InvalidResponseException("result content is null");
    }
    throw new IllegalArgumentException("send phone ticket params is null");
  }
  
  private static JSONObject E(String paramString, Bitmap paramBitmap)
    throws IOException, InvalidResponseException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.JPEG, 80, localByteArrayOutputStream);
    paramString = m.a(paramString, new ByteArrayInputStream(localByteArrayOutputStream.toByteArray()), "userfile", "icon.jpg");
    try
    {
      if (!TextUtils.isEmpty(paramString))
      {
        paramBitmap = new JSONObject(paramString);
        return paramBitmap;
      }
    }
    catch (JSONException paramBitmap)
    {
      b.h("XMPassport", "uploadIconToServer error", paramBitmap);
      paramBitmap = new StringBuilder();
      paramBitmap.append("upload error: ");
      paramBitmap.append(paramString);
      throw new InvalidResponseException(paramBitmap.toString());
    }
  }
  
  public static String F(com.xiaomi.accountsdk.account.data.c paramc, Bitmap paramBitmap)
    throws InvalidResponseException, CipherException, IOException, AuthenticationFailureException, AccessDeniedException, InvalidParameterException
  {
    if ((paramc != null) && (paramBitmap != null))
    {
      b.g("XMPassport", "requestUploadUserIcon start: ");
      String str = C(paramc);
      b.g("XMPassport", "uploadIconToServer start: ");
      paramBitmap = E(str, paramBitmap);
      b.g("XMPassport", "commitUploadUserIcon start: ");
      return b(paramc, paramBitmap);
    }
    throw new IllegalArgumentException("invalid parameter");
  }
  
  public static void G(com.xiaomi.accountsdk.account.data.c paramc, com.xiaomi.accountsdk.account.data.f paramf)
    throws InvalidResponseException, CipherException, IOException, AuthenticationFailureException, AccessDeniedException, InvalidParameterException
  {
    if ((paramc != null) && (paramf != null))
    {
      Object localObject1 = d.Q;
      Object localObject2 = paramf.a();
      Object localObject3 = null;
      if (localObject2 != null) {
        localObject2 = new SimpleDateFormat("yyyy-MM-dd").format(((Calendar)localObject2).getTime());
      } else {
        localObject2 = null;
      }
      Object localObject4 = UUID.randomUUID().toString().substring(0, 15);
      localObject4 = new EasyMap().easyPut("userId", paramc.e()).easyPut("sid", paramc.c()).easyPut("transId", localObject4).easyPut("userName", paramf.c()).easyPut("birthday", localObject2);
      localObject2 = localObject3;
      if (paramf.b() != null) {
        localObject2 = paramf.b().getType();
      }
      localObject2 = j.e((String)localObject1, ((EasyMap)localObject4).easyPut("gender", localObject2), g(paramc), true, paramc.b());
      if (localObject2 != null)
      {
        paramf = (Integer)((k.f)localObject2).h("code");
        paramc = new PassThroughErrorInfo((k.f)localObject2);
        if (j.equals(paramf)) {
          return;
        }
        localObject2 = (String)((k.f)localObject2).h("description");
        localObject3 = new StringBuilder();
        ((StringBuilder)localObject3).append("code: ");
        ((StringBuilder)localObject3).append(paramf);
        ((StringBuilder)localObject3).append(", desc: ");
        ((StringBuilder)localObject3).append((String)localObject2);
        localObject3 = ((StringBuilder)localObject3).toString();
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("failed to upload xiaomi user info, ");
        ((StringBuilder)localObject1).append((String)localObject3);
        b.g("XMPassport", ((StringBuilder)localObject1).toString());
        int m = paramf.intValue();
        if (m != 10017)
        {
          if (m != 66108) {
            throw new InvalidResponseException((String)localObject3, paramc);
          }
          throw new InvalidParameterException(paramf.intValue(), (String)localObject2);
        }
        throw new InvalidParameterException(paramf.intValue(), (String)localObject2);
      }
      throw new InvalidResponseException("failed to upload xiaomi user profile");
    }
    throw new IllegalArgumentException("invalid parameter");
  }
  
  private static String a(EasyMap<String, String> paramEasyMap, String paramString)
  {
    if (paramEasyMap != null)
    {
      Application localApplication = e.b();
      String str = a.c(localApplication, PrivacyDataType.OAID, new String[0]);
      if (TextUtils.isEmpty(paramString)) {
        paramString = e();
      }
      if (localApplication != null) {
        AssertionUtils.a(localApplication, TextUtils.isEmpty(paramString) ^ true, "deviceId cannot be empty", true);
      }
      paramEasyMap.easyPutOpt("deviceId", paramString).easyPutOpt("pass_o", str).easyPutOpt("userSpaceId", x.a());
      return paramString;
    }
    throw new IllegalArgumentException("cookie params should not be null");
  }
  
  private static String b(com.xiaomi.accountsdk.account.data.c paramc, JSONObject paramJSONObject)
    throws InvalidResponseException, CipherException, IOException, AuthenticationFailureException, AccessDeniedException, InvalidParameterException
  {
    String str = d.A;
    Object localObject = UUID.randomUUID().toString().substring(0, 15);
    paramc = j.e(str, new EasyMap().easyPut("userId", paramc.e()).easyPut("sid", paramc.c()).easyPut("transId", localObject).easyPut("json", Base64.encodeToString(paramJSONObject.toString().getBytes(), 2)), g(paramc), true, paramc.b());
    if (paramc != null)
    {
      paramJSONObject = (Integer)paramc.h("code");
      str = (String)paramc.h("description");
      localObject = new PassThroughErrorInfo(paramc);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("commitUploadUserIcon failed, code: ");
      localStringBuilder.append(paramJSONObject);
      localStringBuilder.append("; description: ");
      localStringBuilder.append(str);
      b.g("XMPassport", localStringBuilder.toString());
      int m = paramJSONObject.intValue();
      if (m != 0)
      {
        if (m != 66108) {
          throw new InvalidResponseException(paramJSONObject.intValue(), str, (PassThroughErrorInfo)localObject);
        }
        throw new InvalidParameterException(paramJSONObject.intValue(), str);
      }
      paramc = paramc.h("data");
      if ((paramc instanceof Map))
      {
        paramc = ((Map)paramc).get("downloadUrl");
        if (paramc != null) {
          return paramc.toString();
        }
        throw new InvalidResponseException("downloadUrl is null");
      }
      return null;
    }
    throw new InvalidResponseException("commitUploadUserIcon content is null");
  }
  
  private static void c(EasyMap<String, String> paramEasyMap)
  {
    if (paramEasyMap != null) {
      paramEasyMap.putAll(XMPassportUtil.e());
    }
  }
  
  protected static String d(Long paramLong, String paramString)
  {
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("nonce", String.valueOf(paramLong));
    return CloudCoder.a(null, null, localTreeMap, paramString);
  }
  
  private static String e()
  {
    return new HashedDeviceIdUtil(e.b()).c();
  }
  
  public static MetaLoginData f(String paramString1, String paramString2)
    throws IOException, InvalidResponseException, AccessDeniedException, AuthenticationFailureException, InvalidUserNameException
  {
    try
    {
      l(paramString1, paramString2, null, null);
      throw new InvalidResponseException("Unexpected login success with empty pass token");
    }
    catch (PackageNameDeniedException paramString1)
    {
      throw new InvalidResponseException("PackageNameDeniedException is unexpected with empty userId or passToken");
    }
    catch (InvalidCredentialException paramString1) {}
    return paramString1.getMetaLoginData();
  }
  
  private static EasyMap<String, String> g(com.xiaomi.accountsdk.account.data.c paramc)
  {
    if (paramc != null)
    {
      EasyMap localEasyMap = new EasyMap().easyPut("serviceToken", paramc.d());
      if (TextUtils.isEmpty(paramc.a())) {
        localEasyMap.easyPut("userId", paramc.e());
      } else {
        localEasyMap.easyPut("cUserId", paramc.a());
      }
      localEasyMap.easyPut("uLocale", Locale.getDefault().toString());
      return localEasyMap;
    }
    throw new IllegalArgumentException("passportInfo is null");
  }
  
  private static MetaLoginData h(String paramString1, String paramString2)
    throws IOException, InvalidResponseException, AccessDeniedException, AuthenticationFailureException, InvalidUserNameException, NeedNotificationException
  {
    try
    {
      b.b localb = new com/xiaomi/accountsdk/account/data/b$b;
      localb.<init>();
      k(localb.s(paramString1).p(null).q(paramString2).l(true).j());
      throw new InvalidResponseException("Unexpected login success with empty pass token");
    }
    catch (PackageNameDeniedException paramString1)
    {
      throw new InvalidResponseException("PackageNameDeniedException is unexpected with empty userId or passToken");
    }
    catch (InvalidCredentialException paramString1) {}
    return paramString1.getMetaLoginData();
  }
  
  private static AccountInfo i(AccountInfo paramAccountInfo, Long paramLong)
    throws IOException, AccessDeniedException, InvalidResponseException, AuthenticationFailureException
  {
    String str1 = paramAccountInfo.serviceId;
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("start sts request: ");
    ((StringBuilder)localObject1).append(str1);
    b.g("XMPassport", ((StringBuilder)localObject1).toString());
    paramLong = d(paramLong, paramAccountInfo.security);
    if (paramLong != null)
    {
      k.h localh = l.h(paramAccountInfo.getAutoLoginUrl(), new EasyMap().easyPut("clientSign", paramLong).easyPut("_userIdNeedEncrypt", "true"), null, false);
      if (localh != null)
      {
        localObject1 = localh.b(String.format("%s_serviceToken", new Object[] { str1 }));
        paramLong = (Long)localObject1;
        if (TextUtils.isEmpty((CharSequence)localObject1))
        {
          paramLong = localh.b("serviceToken");
          if (TextUtils.isEmpty(paramLong))
          {
            paramAccountInfo = new StringBuilder();
            paramAccountInfo.append("no service token contained in callback cookies: ");
            paramAccountInfo.append(str1);
            throw new InvalidResponseException(0, paramAccountInfo.toString());
          }
        }
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append(str1);
        ((StringBuilder)localObject1).append("_slh");
        localObject1 = localh.b(((StringBuilder)localObject1).toString());
        Object localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append(str1);
        ((StringBuilder)localObject2).append("_ph");
        String str2 = localh.b(((StringBuilder)localObject2).toString());
        Object localObject3 = localh.a();
        localObject2 = new HashMap();
        Iterator localIterator = ((Set)localObject3).iterator();
        while (localIterator.hasNext())
        {
          localObject3 = (String)localIterator.next();
          ((Map)localObject2).put(localObject3, localh.b((String)localObject3));
        }
        return new AccountInfo.b().F(paramAccountInfo.userId).B(str1).w(paramAccountInfo.passToken).s(paramAccountInfo.encryptedUserId).C(paramLong).E(b7.h.i((Map)localObject2)).A(paramAccountInfo.security).y(paramAccountInfo.psecurity).t(paramAccountInfo.hasLocalChannel).D((String)localObject1).x(str2).z(paramAccountInfo.rePassToken).u(paramAccountInfo.hasPwd).v(paramAccountInfo.isChild).r();
      }
      throw new InvalidResponseException(0, "no response when get service token");
    }
    b.g("XMPassport", "failed to get client sign");
    throw new InvalidResponseException(0, "sign parameters failure");
  }
  
  public static XiaomiUserCoreInfo j(com.xiaomi.accountsdk.account.data.c paramc, String paramString, List<XiaomiUserCoreInfo.Flag> paramList)
    throws AccessDeniedException, AuthenticationFailureException, InvalidResponseException, CipherException, IOException
  {
    if (paramc != null)
    {
      if (paramList != null)
      {
        paramList = paramList.iterator();
        int m = 0;
        for (;;)
        {
          n = m;
          if (!paramList.hasNext()) {
            break;
          }
          m |= ((XiaomiUserCoreInfo.Flag)paramList.next()).value;
        }
      }
      int n = 0;
      String str = UUID.randomUUID().toString().substring(0, 15);
      paramList = d.x;
      paramString = new EasyMap().easyPut("userId", paramc.e()).easyPut("sid", paramString).easyPut("transId", str);
      if (n != 0) {
        paramString.easyPut("flags", String.valueOf(n));
      }
      paramString = j.a(paramList, paramString, g(paramc), true, paramc.b());
      return t(paramc.e(), paramString);
    }
    throw new IllegalArgumentException("passportInfo is null");
  }
  
  /* Error */
  public static AccountInfo k(com.xiaomi.accountsdk.account.data.b paramb)
    throws InvalidResponseException, InvalidCredentialException, IOException, AccessDeniedException, AuthenticationFailureException, InvalidUserNameException, NeedNotificationException, PackageNameDeniedException
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +428 -> 429
    //   4: aload_0
    //   5: getfield 800	com/xiaomi/accountsdk/account/data/b:d	Ljava/lang/String;
    //   8: astore_1
    //   9: aload_1
    //   10: astore_2
    //   11: aload_1
    //   12: invokestatic 106	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   15: ifeq +7 -> 22
    //   18: getstatic 803	com/xiaomi/accountsdk/account/d:N	Ljava/lang/String;
    //   21: astore_2
    //   22: aload_0
    //   23: getfield 804	com/xiaomi/accountsdk/account/data/b:c	Ljava/lang/String;
    //   26: astore_3
    //   27: aload_3
    //   28: astore_1
    //   29: aload_3
    //   30: invokestatic 106	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   33: ifeq +7 -> 40
    //   36: ldc_w 806
    //   39: astore_1
    //   40: aload_0
    //   41: getfield 807	com/xiaomi/accountsdk/account/data/b:a	Ljava/lang/String;
    //   44: astore 4
    //   46: aload_0
    //   47: getfield 808	com/xiaomi/accountsdk/account/data/b:b	Ljava/lang/String;
    //   50: astore 5
    //   52: aload_0
    //   53: getfield 809	com/xiaomi/accountsdk/account/data/b:e	Ljava/lang/String;
    //   56: astore 6
    //   58: aload_0
    //   59: getfield 810	com/xiaomi/accountsdk/account/data/b:f	Ljava/lang/String;
    //   62: astore 7
    //   64: aload_0
    //   65: getfield 812	com/xiaomi/accountsdk/account/data/b:g	Z
    //   68: istore 8
    //   70: aload_2
    //   71: invokestatic 818	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   74: ldc 255
    //   76: invokevirtual 821	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   79: astore 9
    //   81: new 138	com/xiaomi/accountsdk/utils/EasyMap
    //   84: dup
    //   85: invokespecial 140	com/xiaomi/accountsdk/utils/EasyMap:<init>	()V
    //   88: astore 10
    //   90: new 823	java/util/HashSet
    //   93: dup
    //   94: invokespecial 824	java/util/HashSet:<init>	()V
    //   97: astore_3
    //   98: aload 9
    //   100: invokestatic 106	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   103: ifeq +12 -> 115
    //   106: aload 10
    //   108: ldc 255
    //   110: aload_1
    //   111: invokevirtual 150	com/xiaomi/accountsdk/utils/EasyMap:easyPut	(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;
    //   114: pop
    //   115: aload 10
    //   117: ldc_w 266
    //   120: ldc_w 268
    //   123: invokevirtual 150	com/xiaomi/accountsdk/utils/EasyMap:easyPut	(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;
    //   126: pop
    //   127: aload_0
    //   128: getfield 825	com/xiaomi/accountsdk/account/data/b:i	Ljava/lang/String;
    //   131: invokestatic 106	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   134: ifne +16 -> 150
    //   137: aload 10
    //   139: ldc_w 827
    //   142: aload_0
    //   143: getfield 825	com/xiaomi/accountsdk/account/data/b:i	Ljava/lang/String;
    //   146: invokevirtual 150	com/xiaomi/accountsdk/utils/EasyMap:easyPut	(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;
    //   149: pop
    //   150: aload_0
    //   151: getfield 829	com/xiaomi/accountsdk/account/data/b:h	Z
    //   154: ifeq +15 -> 169
    //   157: aload 10
    //   159: ldc_w 831
    //   162: ldc_w 833
    //   165: invokevirtual 834	java/util/AbstractMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   168: pop
    //   169: aload 10
    //   171: invokestatic 271	com/xiaomi/accountsdk/account/XMPassport:c	(Lcom/xiaomi/accountsdk/utils/EasyMap;)V
    //   174: new 138	com/xiaomi/accountsdk/utils/EasyMap
    //   177: dup
    //   178: invokespecial 140	com/xiaomi/accountsdk/utils/EasyMap:<init>	()V
    //   181: ldc 142
    //   183: aload 4
    //   185: invokevirtual 150	com/xiaomi/accountsdk/utils/EasyMap:easyPut	(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;
    //   188: ldc_w 835
    //   191: aload 5
    //   193: invokevirtual 250	com/xiaomi/accountsdk/utils/EasyMap:easyPutOpt	(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;
    //   196: ldc_w 837
    //   199: aload 7
    //   201: invokevirtual 250	com/xiaomi/accountsdk/utils/EasyMap:easyPutOpt	(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;
    //   204: astore 9
    //   206: aload 9
    //   208: aload 6
    //   210: invokestatic 288	com/xiaomi/accountsdk/account/XMPassport:a	(Lcom/xiaomi/accountsdk/utils/EasyMap;Ljava/lang/String;)Ljava/lang/String;
    //   213: pop
    //   214: new 839	a6/f
    //   217: dup
    //   218: invokespecial 840	a6/f:<init>	()V
    //   221: astore 6
    //   223: aload 6
    //   225: aload_2
    //   226: invokevirtual 842	a6/f:e	(Ljava/lang/String;)V
    //   229: aload 6
    //   231: aload 9
    //   233: invokevirtual 844	a6/f:a	(Ljava/util/Map;)V
    //   236: aload 6
    //   238: aload 10
    //   240: invokevirtual 846	a6/f:c	(Ljava/util/Map;)V
    //   243: aload 6
    //   245: iconst_1
    //   246: invokevirtual 849	a6/f:d	(Z)V
    //   249: new 851	a6/d$a
    //   252: dup
    //   253: aload 6
    //   255: invokespecial 854	a6/d$a:<init>	(La6/f;)V
    //   258: astore_2
    //   259: aload_0
    //   260: getfield 825	com/xiaomi/accountsdk/account/data/b:i	Ljava/lang/String;
    //   263: invokestatic 106	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   266: ifne +17 -> 283
    //   269: aload_3
    //   270: aload_0
    //   271: getfield 825	com/xiaomi/accountsdk/account/data/b:i	Ljava/lang/String;
    //   274: invokestatic 857	com/xiaomi/accountsdk/account/f:a	(Ljava/lang/String;)Ljava/lang/String;
    //   277: invokeinterface 860 2 0
    //   282: pop
    //   283: aload_2
    //   284: invokevirtual 865	a6/e:b	()La6/k$h;
    //   287: astore_0
    //   288: aload_0
    //   289: ifnull +51 -> 340
    //   292: aload 4
    //   294: aload_0
    //   295: aload_1
    //   296: iconst_1
    //   297: aload_2
    //   298: invokevirtual 869	a6/d:d	()Z
    //   301: iload 8
    //   303: invokestatic 872	com/xiaomi/accountsdk/account/XMPassport:w	(Ljava/lang/String;La6/k$h;Ljava/lang/String;ZZZ)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    //   306: astore_0
    //   307: aload_3
    //   308: invokeinterface 683 1 0
    //   313: astore_2
    //   314: aload_2
    //   315: invokeinterface 689 1 0
    //   320: ifeq +18 -> 338
    //   323: aload_2
    //   324: invokeinterface 693 1 0
    //   329: checkcast 83	java/lang/String
    //   332: invokestatic 874	com/xiaomi/accountsdk/account/f:i	(Ljava/lang/String;)V
    //   335: goto -21 -> 314
    //   338: aload_0
    //   339: areturn
    //   340: new 74	java/io/IOException
    //   343: astore_0
    //   344: aload_0
    //   345: ldc_w 876
    //   348: invokespecial 97	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   351: aload_0
    //   352: athrow
    //   353: astore_0
    //   354: goto +42 -> 396
    //   357: astore_0
    //   358: new 878	java/lang/IllegalStateException
    //   361: astore_0
    //   362: aload_0
    //   363: invokespecial 879	java/lang/IllegalStateException:<init>	()V
    //   366: aload_0
    //   367: athrow
    //   368: astore_0
    //   369: new 127	com/xiaomi/accountsdk/request/InvalidResponseException
    //   372: astore_0
    //   373: aload_0
    //   374: ldc_w 881
    //   377: invokespecial 196	com/xiaomi/accountsdk/request/InvalidResponseException:<init>	(Ljava/lang/String;)V
    //   380: aload_0
    //   381: athrow
    //   382: astore_0
    //   383: new 127	com/xiaomi/accountsdk/request/InvalidResponseException
    //   386: astore_0
    //   387: aload_0
    //   388: ldc_w 883
    //   391: invokespecial 196	com/xiaomi/accountsdk/request/InvalidResponseException:<init>	(Ljava/lang/String;)V
    //   394: aload_0
    //   395: athrow
    //   396: aload_3
    //   397: invokeinterface 683 1 0
    //   402: astore_2
    //   403: aload_2
    //   404: invokeinterface 689 1 0
    //   409: ifeq +18 -> 427
    //   412: aload_2
    //   413: invokeinterface 693 1 0
    //   418: checkcast 83	java/lang/String
    //   421: invokestatic 874	com/xiaomi/accountsdk/account/f:i	(Ljava/lang/String;)V
    //   424: goto -21 -> 403
    //   427: aload_0
    //   428: athrow
    //   429: new 350	java/lang/IllegalArgumentException
    //   432: dup
    //   433: ldc_w 885
    //   436: invokespecial 353	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   439: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	440	0	paramb	com.xiaomi.accountsdk.account.data.b
    //   8	288	1	localObject1	Object
    //   10	403	2	localObject2	Object
    //   26	371	3	localObject3	Object
    //   44	249	4	str1	String
    //   50	142	5	str2	String
    //   56	198	6	localObject4	Object
    //   62	138	7	str3	String
    //   68	234	8	bool	boolean
    //   79	153	9	localObject5	Object
    //   88	151	10	localEasyMap	EasyMap
    // Exception table:
    //   from	to	target	type
    //   259	283	353	finally
    //   283	288	353	finally
    //   292	307	353	finally
    //   340	353	353	finally
    //   358	368	353	finally
    //   369	382	353	finally
    //   383	396	353	finally
    //   259	283	357	com/xiaomi/account/exception/PassportCAException
    //   283	288	357	com/xiaomi/account/exception/PassportCAException
    //   292	307	357	com/xiaomi/account/exception/PassportCAException
    //   340	353	357	com/xiaomi/account/exception/PassportCAException
    //   259	283	368	com/xiaomi/accountsdk/account/exception/NeedCaptchaException
    //   283	288	368	com/xiaomi/accountsdk/account/exception/NeedCaptchaException
    //   292	307	368	com/xiaomi/accountsdk/account/exception/NeedCaptchaException
    //   340	353	368	com/xiaomi/accountsdk/account/exception/NeedCaptchaException
    //   259	283	382	com/xiaomi/accountsdk/account/exception/NeedVerificationException
    //   283	288	382	com/xiaomi/accountsdk/account/exception/NeedVerificationException
    //   292	307	382	com/xiaomi/accountsdk/account/exception/NeedVerificationException
    //   340	353	382	com/xiaomi/accountsdk/account/exception/NeedVerificationException
  }
  
  public static AccountInfo l(String paramString1, String paramString2, String paramString3, String paramString4)
    throws InvalidResponseException, InvalidCredentialException, PackageNameDeniedException, IOException, AccessDeniedException, AuthenticationFailureException, InvalidUserNameException
  {
    return m(paramString1, paramString2, paramString3, paramString4, d.N);
  }
  
  public static AccountInfo m(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
    throws InvalidResponseException, InvalidCredentialException, PackageNameDeniedException, IOException, AccessDeniedException, AuthenticationFailureException, InvalidUserNameException
  {
    try
    {
      paramString1 = n(paramString1, paramString2, paramString3, paramString4, paramString5);
      return paramString1;
    }
    catch (NeedNotificationException paramString1)
    {
      throw new InvalidResponseException("Unexpected NeedNotificationException");
    }
  }
  
  public static AccountInfo n(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
    throws InvalidResponseException, InvalidCredentialException, IOException, AccessDeniedException, AuthenticationFailureException, InvalidUserNameException, NeedNotificationException, PackageNameDeniedException
  {
    return k(new b.b().s(paramString1).p(paramString4).q(paramString2).n(paramString5).k(paramString3).m(false).l(false).j());
  }
  
  public static AccountInfo o(PasswordLoginParams paramPasswordLoginParams)
    throws InvalidResponseException, InvalidCredentialException, InvalidUserNameException, NeedVerificationException, NeedCaptchaException, IOException, AccessDeniedException, AuthenticationFailureException, NeedNotificationException
  {
    if (paramPasswordLoginParams != null)
    {
      String str1 = paramPasswordLoginParams.password;
      if (str1 != null)
      {
        String str2 = paramPasswordLoginParams.userId;
        Object localObject1 = paramPasswordLoginParams.deviceId;
        String str3;
        if (TextUtils.isEmpty(paramPasswordLoginParams.serviceId)) {
          str3 = "passport";
        } else {
          str3 = paramPasswordLoginParams.serviceId;
        }
        Object localObject2 = paramPasswordLoginParams.verifyToken;
        String str4 = paramPasswordLoginParams.captIck;
        String str5 = paramPasswordLoginParams.captCode;
        boolean bool1 = paramPasswordLoginParams.returnStsUrl;
        boolean bool2 = paramPasswordLoginParams.needProcessNotification;
        MetaLoginData localMetaLoginData = paramPasswordLoginParams.metaLoginData;
        ActivatorPhoneInfo localActivatorPhoneInfo = paramPasswordLoginParams.activatorPhoneInfo;
        String str6 = paramPasswordLoginParams.countryCode;
        EasyMap localEasyMap = new EasyMap();
        PasswordEncryptor localPasswordEncryptor = e.e();
        if (localPasswordEncryptor != null) {
          try
          {
            localPasswordEncryptor.a(CloudCoder.e(str1));
          }
          catch (PasswordEncryptor.PasswordEncryptorException localPasswordEncryptorException)
          {
            b.h("XMPassport", "PasswordEncryptorException", localPasswordEncryptorException);
          }
        }
        localEasyMap.easyPut("hash", CloudCoder.e(str1));
        localEasyMap.easyPutOpt("user", str2).easyPutOpt("sid", str3).easyPutOpt("captCode", str5).easyPutOpt("cc", str6).easyPut("_json", "true");
        c(localEasyMap);
        paramPasswordLoginParams = new EasyMap().easyPutOpt("ick", str4).easyPutOpt("ticketToken", paramPasswordLoginParams.ticketToken);
        a(paramPasswordLoginParams, (String)localObject1);
        if (localActivatorPhoneInfo != null)
        {
          localEasyMap.easyPutOpt("userHash", localActivatorPhoneInfo.phoneHash);
          paramPasswordLoginParams.easyPutOpt("activatorToken", localActivatorPhoneInfo.activatorToken);
        }
        localObject1 = new EasyMap().easyPutOpt("vToken", localObject2);
        str1 = d.t;
        localObject2 = new a6.f();
        ((a6.f)localObject2).c(localEasyMap);
        ((a6.f)localObject2).a(paramPasswordLoginParams);
        ((a6.f)localObject2).b((Map)localObject1);
        ((a6.f)localObject2).e(str1);
        ((a6.f)localObject2).d(true);
        paramPasswordLoginParams = new d.b((a6.f)localObject2, str2, str3, localMetaLoginData);
        try
        {
          paramPasswordLoginParams = paramPasswordLoginParams.b();
          if (paramPasswordLoginParams != null) {
            try
            {
              paramPasswordLoginParams = u(paramPasswordLoginParams, str3, bool2, bool1);
              return paramPasswordLoginParams;
            }
            catch (PackageNameDeniedException paramPasswordLoginParams)
            {
              throw new InvalidResponseException("It's not loginByPassToken(), PackageNameDeniedException is unexpected");
            }
          }
          throw new IOException("failed to get response from server");
        }
        catch (PassportCAException paramPasswordLoginParams)
        {
          throw new IllegalStateException("this should never happen in product environment.Have you set sDisableLoginFallbackForTest to be true? ");
        }
      }
    }
    throw new IllegalArgumentException("password params should not be null");
  }
  
  public static AccountInfo p(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, MetaLoginData paramMetaLoginData, boolean paramBoolean, String[] paramArrayOfString)
    throws InvalidResponseException, InvalidCredentialException, InvalidUserNameException, NeedVerificationException, NeedCaptchaException, IOException, AccessDeniedException, AuthenticationFailureException, NeedNotificationException
  {
    return q(paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramMetaLoginData, paramBoolean, paramArrayOfString, false);
  }
  
  static AccountInfo q(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, MetaLoginData paramMetaLoginData, boolean paramBoolean1, String[] paramArrayOfString, boolean paramBoolean2)
    throws InvalidResponseException, InvalidCredentialException, InvalidUserNameException, NeedVerificationException, NeedCaptchaException, IOException, AccessDeniedException, AuthenticationFailureException, NeedNotificationException
  {
    return o(new PasswordLoginParams.b().B(paramString1).y(paramString4).t(paramString3).q(paramString5).r(paramString6).z(paramString2).w(paramMetaLoginData).x(paramBoolean1).v(paramBoolean2).u(paramArrayOfString).o());
  }
  
  public static AccountInfo r(PhoneTicketLoginParams paramPhoneTicketLoginParams)
    throws AccessDeniedException, AuthenticationFailureException, IOException, InvalidResponseException, InvalidUserNameException, NeedNotificationException, InvalidVerifyCodeException, InvalidPhoneNumException, InvalidTzSignException
  {
    if (paramPhoneTicketLoginParams != null)
    {
      Object localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(d.d);
      ((StringBuilder)localObject1).append("/serviceLoginTicketAuth");
      Object localObject2 = ((StringBuilder)localObject1).toString();
      Object localObject3 = h(paramPhoneTicketLoginParams.phone, paramPhoneTicketLoginParams.serviceId);
      if (TextUtils.isEmpty(paramPhoneTicketLoginParams.serviceId)) {
        localObject1 = "passport";
      } else {
        localObject1 = paramPhoneTicketLoginParams.serviceId;
      }
      localObject3 = new EasyMap().easyPutOpt("user", paramPhoneTicketLoginParams.phone).easyPutOpt("userHash", paramPhoneTicketLoginParams.phoneHash).easyPutOpt("ticket", paramPhoneTicketLoginParams.ticket).easyPut("sid", localObject1).easyPut("_json", "true").easyPut("_sign", ((MetaLoginData)localObject3).sign).easyPut("qs", ((MetaLoginData)localObject3).qs).easyPut("callback", ((MetaLoginData)localObject3).callback);
      c((EasyMap)localObject3);
      EasyMap localEasyMap = new EasyMap().easyPutOpt("activatorToken", paramPhoneTicketLoginParams.activatorToken).easyPutOpt("ticketToken", paramPhoneTicketLoginParams.ticketToken);
      String str = a(localEasyMap, paramPhoneTicketLoginParams.deviceId);
      Application localApplication = e.b();
      if ((localApplication != null) && (!TextUtils.isEmpty(str)))
      {
        Object localObject4 = new ArrayList();
        ((List)localObject4).add(str);
        if (!TextUtils.isEmpty(paramPhoneTicketLoginParams.phoneHash))
        {
          ((List)localObject4).add(paramPhoneTicketLoginParams.phoneHash);
        }
        else
        {
          if (TextUtils.isEmpty(paramPhoneTicketLoginParams.phone)) {
            break label322;
          }
          ((List)localObject4).add(paramPhoneTicketLoginParams.phone);
        }
        localObject4 = com.xiaomi.passport.h.h(localApplication, (String[])((List)localObject4).toArray(new String[0]), null, 10000L);
        if (localObject4 != null) {
          ((EasyMap)localObject3).easyPut("tzSign", localObject4);
        }
      }
      label322:
      localObject2 = l.j((String)localObject2, (Map)localObject3, localEasyMap, true);
      if (localObject2 != null) {
        return x((k.h)localObject2, (String)localObject1, paramPhoneTicketLoginParams.returnStsUrl);
      }
      throw new InvalidResponseException("result content is null");
    }
    throw new IllegalArgumentException("null phone ticket login params");
  }
  
  private static AccountInfo s(String paramString1, k.h paramh, String paramString2, String paramString3, boolean paramBoolean1, boolean paramBoolean2)
    throws InvalidResponseException, IOException, AccessDeniedException, AuthenticationFailureException
  {
    try
    {
      localObject1 = A(paramh);
      localJSONObject = new org/json/JSONObject;
      localJSONObject.<init>((String)localObject1);
      if (paramBoolean1)
      {
        localObject2 = localJSONObject.optString("passToken");
        str1 = localJSONObject.optString("cUserId");
      }
      else
      {
        localObject2 = paramh.b("passToken");
        str1 = paramh.b("cUserId");
      }
      str2 = localJSONObject.optString("ssecurity");
      localObject3 = Long.valueOf(localJSONObject.optLong("nonce"));
      str3 = localJSONObject.optString("psecurity");
      if ((str2 != null) && (localObject3 != null))
      {
        localObject4 = str2;
        localObject1 = localObject3;
        localObject5 = str3;
        if (str3 != null) {}
      }
      else
      {
        localObject4 = str2;
        localObject1 = localObject3;
      }
    }
    catch (JSONException paramString1)
    {
      Object localObject1;
      JSONObject localJSONObject;
      Object localObject2;
      String str1;
      String str2;
      Object localObject3;
      Object localObject4;
      Object localObject6;
      label330:
      int m;
      paramString1 = new StringBuilder();
      paramString1.append("parseLoginResult: ");
      paramString1.append(paramh);
      b.g("XMPassport", paramString1.toString());
      throw new InvalidResponseException("parseLoginResult JSONException");
    }
    try
    {
      localObject6 = paramh.b("extension-pragma");
      localObject5 = localObject6;
      localObject4 = str2;
      localObject1 = localObject3;
      if (TextUtils.isEmpty((CharSequence)localObject6))
      {
        localObject4 = str2;
        localObject1 = localObject3;
        localObject5 = paramh.b("Extension-Pragma");
        localObject4 = str2;
        localObject1 = localObject3;
        if (TextUtils.isEmpty((CharSequence)localObject5))
        {
          localObject4 = str2;
          localObject1 = localObject3;
          localObject5 = new com/xiaomi/accountsdk/request/InvalidResponseException;
          localObject4 = str2;
          localObject1 = localObject3;
          ((InvalidResponseException)localObject5).<init>("empty extension-pragma");
          localObject4 = str2;
          localObject1 = localObject3;
          throw ((Throwable)localObject5);
        }
      }
      localObject4 = str2;
      localObject1 = localObject3;
      localObject6 = new org/json/JSONObject;
      localObject4 = str2;
      localObject1 = localObject3;
      ((JSONObject)localObject6).<init>((String)localObject5);
      localObject4 = str2;
      localObject1 = localObject3;
      str2 = ((JSONObject)localObject6).optString("ssecurity");
      localObject4 = str2;
      localObject1 = localObject3;
      localObject3 = Long.valueOf(((JSONObject)localObject6).optLong("nonce"));
      localObject4 = str2;
      localObject1 = localObject3;
      localObject5 = ((JSONObject)localObject6).optString("psecurity");
      localObject1 = localObject3;
      localObject4 = str2;
    }
    catch (JSONException localJSONException)
    {
      localObject5 = str3;
      break label330;
    }
    if ((localObject4 != null) && (localObject1 != null) && (localObject5 != null))
    {
      str3 = paramh.b("re-pass-token");
      if (localJSONObject.optInt("pwd") == 1) {
        paramBoolean1 = true;
      } else {
        paramBoolean1 = false;
      }
      m = localJSONObject.optInt("child", -1);
      str2 = paramh.b("haveLocalUpChannel");
      localObject3 = localJSONObject.getString("location");
      localObject6 = new com/xiaomi/accountsdk/account/data/AccountInfo$b;
      ((AccountInfo.b)localObject6).<init>();
      paramString1 = ((AccountInfo.b)localObject6).F(paramString1).s(str1).B(paramString2).w((String)localObject2).y((String)localObject5);
      if (paramString3 == null) {
        paramString3 = (String)localObject3;
      }
      localObject2 = paramString1.q(paramString3).z(str3).u(paramBoolean1);
      paramString3 = null;
      if (m == -1)
      {
        paramString1 = null;
      }
      else
      {
        paramBoolean1 = true;
        if (m != 1) {
          paramBoolean1 = false;
        }
        paramString1 = Boolean.valueOf(paramBoolean1);
      }
      localObject4 = ((AccountInfo.b)localObject2).v(paramString1).A((String)localObject4);
      paramString1 = paramString3;
      if (!TextUtils.isEmpty(str2)) {
        paramString1 = Boolean.valueOf(Boolean.parseBoolean(str2));
      }
      paramString1 = ((AccountInfo.b)localObject4).t(paramString1).r();
      if (!TextUtils.isEmpty(paramString2))
      {
        paramBoolean1 = "passport".equals(paramString2);
        if ((!paramBoolean1) && (!paramBoolean2)) {
          try
          {
            paramString1 = i(paramString1, (Long)localObject1);
            return paramString1;
          }
          catch (AuthenticationFailureException paramString1)
          {
            b.h("XMPassport", "sts url request error", paramString1);
            paramString1.stsUrlRequestError(paramString2);
            throw paramString1;
          }
          catch (IOException paramString1)
          {
            b.h("XMPassport", "sts url request error", paramString1);
            paramString3 = new com/xiaomi/accountsdk/account/exception/PassportIOException;
            paramString3.<init>(paramString1);
            paramString3.stsUrlRequestError(paramString2);
            throw paramString3;
          }
          catch (InvalidResponseException paramString1)
          {
            b.h("XMPassport", "sts url request error", paramString1);
            paramString1.stsUrlRequestError(paramString2);
            throw paramString1;
          }
          catch (AccessDeniedException paramString1)
          {
            b.h("XMPassport", "sts url request error", paramString1);
            paramString1.stsUrlRequestError(paramString2);
            throw paramString1;
          }
        }
      }
      return paramString1;
    }
    paramString1 = new com/xiaomi/accountsdk/request/InvalidResponseException;
    paramString1.<init>("security, nonce or psecurity is null");
    throw paramString1;
  }
  
  private static XiaomiUserCoreInfo t(String paramString, k.f paramf)
    throws InvalidResponseException
  {
    if (paramf != null)
    {
      Object localObject1 = paramf.h("code");
      if (j.equals(localObject1))
      {
        localObject1 = new XiaomiUserCoreInfo.b(paramString);
        paramString = paramf.h("data");
        if ((paramString instanceof Map))
        {
          Map localMap = (Map)paramString;
          paramString = localMap.get("userName");
          if ((paramString instanceof String)) {
            ((XiaomiUserCoreInfo.b)localObject1).r((String)paramString);
          }
          paramString = localMap.get("icon");
          int m;
          Object localObject2;
          if ((paramString instanceof String))
          {
            paramf = (String)paramString;
            m = paramf.lastIndexOf(".");
            if ((paramf.length() > 0) && (m > 0))
            {
              paramString = paramf.substring(0, m);
              localObject2 = paramf.substring(paramf.lastIndexOf("."));
              paramf = new StringBuilder();
              paramf.append(paramString);
              paramf.append("_320");
              paramf.append((String)localObject2);
              ((XiaomiUserCoreInfo.b)localObject1).b(paramf.toString());
            }
          }
          paramString = localMap.get("sns");
          if ((paramString instanceof List)) {
            ((XiaomiUserCoreInfo.b)localObject1).q(XiaomiUserCoreInfo.c.b((List)paramString));
          }
          paramString = localMap.get("userAddresses");
          if ((paramString instanceof List))
          {
            localObject2 = new ArrayList();
            Iterator localIterator = ((List)paramString).iterator();
            while (localIterator.hasNext())
            {
              paramString = localIterator.next();
              if ((paramString instanceof Map))
              {
                Object localObject3 = (Map)paramString;
                paramf = ((Map)localObject3).get("addressType");
                paramString = ((Map)localObject3).get("address");
                Object localObject4 = ((Map)localObject3).get("flags");
                if (((paramf instanceof Integer)) && ((paramString instanceof String)))
                {
                  localObject3 = (Integer)paramf;
                  paramf = (String)paramString;
                  paramString = j;
                  if ((localObject4 instanceof Integer)) {
                    paramString = (Integer)localObject4;
                  }
                  if ((paramString.intValue() & 0x2) != 0) {
                    m = 1;
                  } else {
                    m = 0;
                  }
                  int n = ((Integer)localObject3).intValue();
                  if (n != 1)
                  {
                    if (n != 2)
                    {
                      if (n == 9)
                      {
                        m = paramf.lastIndexOf("@ALIAS");
                        paramString = paramf;
                        if (m > 0) {
                          paramString = paramf.substring(0, m);
                        }
                        ((XiaomiUserCoreInfo.b)localObject1).m(paramString);
                      }
                    }
                    else if (m != 0) {
                      ((XiaomiUserCoreInfo.b)localObject1).f(paramf);
                    }
                  }
                  else if (m != 0)
                  {
                    ((XiaomiUserCoreInfo.b)localObject1).p(paramf);
                    ((ArrayList)localObject2).add(0, paramf);
                  }
                  else if (paramString.intValue() == 8)
                  {
                    ((ArrayList)localObject2).add(paramf);
                  }
                }
              }
            }
            ((XiaomiUserCoreInfo.b)localObject1).n((ArrayList)localObject2);
          }
          paramString = localMap.get("birthday");
          if (((paramString instanceof String)) && (!TextUtils.isEmpty((String)paramString)))
          {
            localObject2 = Calendar.getInstance();
            paramf = new SimpleDateFormat("yyyy-MM-dd");
            try
            {
              ((Calendar)localObject2).setTime(paramf.parse((String)paramString));
              ((XiaomiUserCoreInfo.b)localObject1).c((Calendar)localObject2);
            }
            catch (ParseException paramString)
            {
              b.h("XMPassport", "getXiaomiUserProfile", paramString);
            }
          }
          paramString = localMap.get("gender");
          if ((paramString instanceof String))
          {
            paramString = (String)paramString;
            if (!TextUtils.isEmpty(paramString)) {
              if ("m".equals(paramString)) {
                ((XiaomiUserCoreInfo.b)localObject1).h(Gender.MALE);
              } else if ("f".equals(paramString)) {
                ((XiaomiUserCoreInfo.b)localObject1).h(Gender.FEMALE);
              }
            }
          }
          paramString = localMap.get("isSetSafeQuestions");
          if ((paramString != null) && ((paramString instanceof Boolean))) {
            ((XiaomiUserCoreInfo.b)localObject1).j(((Boolean)paramString).booleanValue());
          }
          paramString = localMap.get("locale");
          if ((paramString instanceof String))
          {
            paramString = (String)paramString;
            if (!TextUtils.isEmpty(paramString)) {
              ((XiaomiUserCoreInfo.b)localObject1).k(paramString);
            }
          }
          paramString = localMap.get("region");
          if ((paramString instanceof String))
          {
            paramString = (String)paramString;
            if (!TextUtils.isEmpty(paramString)) {
              ((XiaomiUserCoreInfo.b)localObject1).o(paramString);
            }
          }
          paramString = localMap.get("location");
          if ((paramString != null) && ((paramString instanceof String))) {
            ((XiaomiUserCoreInfo.b)localObject1).l((String)paramString);
          }
          paramString = localMap.get("education");
          if ((paramString instanceof String))
          {
            paramf = (String)paramString;
            if (!TextUtils.isEmpty(paramf))
            {
              paramf = XiaomiUserCoreInfo.Education.getEducationTypeByName(paramf);
              if (paramf != null)
              {
                ((XiaomiUserCoreInfo.b)localObject1).e(paramf);
              }
              else
              {
                paramf = new StringBuilder();
                paramf.append("invalid education value: ");
                paramf.append(paramString);
                throw new InvalidResponseException(paramf.toString());
              }
            }
          }
          paramString = localMap.get("income");
          if ((paramString instanceof String))
          {
            paramf = (String)paramString;
            if (!TextUtils.isEmpty(paramf))
            {
              paramf = XiaomiUserCoreInfo.Income.getIncomeTypeByName(paramf);
              if (paramf != null)
              {
                ((XiaomiUserCoreInfo.b)localObject1).i(paramf);
              }
              else
              {
                paramf = new StringBuilder();
                paramf.append("invalid income value: ");
                paramf.append(paramString);
                throw new InvalidResponseException(paramf.toString());
              }
            }
          }
          paramString = localMap.get("child");
          if ((paramString instanceof Boolean)) {
            ((XiaomiUserCoreInfo.b)localObject1).d(((Boolean)paramString).booleanValue());
          }
          paramString = localMap.get("familyMemberCount");
          if ((paramString instanceof Integer)) {
            ((XiaomiUserCoreInfo.b)localObject1).g(String.valueOf(paramString));
          }
        }
        return ((XiaomiUserCoreInfo.b)localObject1).a();
      }
      paramString = paramf.h("description");
      paramf = new StringBuilder();
      paramf.append("code: ");
      paramf.append(localObject1);
      paramf.append("; description: ");
      paramf.append(paramString);
      throw new InvalidResponseException(paramf.toString());
    }
    throw new InvalidResponseException("result content is null");
  }
  
  private static AccountInfo u(k.h paramh, String paramString, boolean paramBoolean1, boolean paramBoolean2)
    throws InvalidResponseException, InvalidCredentialException, PackageNameDeniedException, IOException, AccessDeniedException, NeedVerificationException, NeedCaptchaException, InvalidUserNameException, NeedNotificationException, AuthenticationFailureException
  {
    return v(paramh, paramString, paramBoolean1, false, paramBoolean2);
  }
  
  private static AccountInfo v(k.h paramh, String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
    throws InvalidResponseException, InvalidCredentialException, PackageNameDeniedException, IOException, AccessDeniedException, NeedVerificationException, NeedCaptchaException, InvalidUserNameException, NeedNotificationException, AuthenticationFailureException
  {
    return w(null, paramh, paramString, paramBoolean1, paramBoolean2, paramBoolean3);
  }
  
  private static AccountInfo w(String paramString1, k.h paramh, String paramString2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
    throws InvalidResponseException, InvalidCredentialException, IOException, AccessDeniedException, NeedVerificationException, NeedCaptchaException, InvalidUserNameException, NeedNotificationException, AuthenticationFailureException, PackageNameDeniedException
  {
    try
    {
      Object localObject1 = A(paramh);
      Object localObject2 = new org/json/JSONObject;
      ((JSONObject)localObject2).<init>((String)localObject1);
      int m = ((JSONObject)localObject2).getInt("code");
      localObject1 = ((JSONObject)localObject2).getString("desc");
      Object localObject3 = new com/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;
      ((PassThroughErrorInfo)localObject3).<init>((JSONObject)localObject2);
      Object localObject4 = new java/lang/StringBuilder;
      ((StringBuilder)localObject4).<init>();
      ((StringBuilder)localObject4).append("processLoginContent, code: ");
      ((StringBuilder)localObject4).append(m);
      ((StringBuilder)localObject4).append(", desc: ");
      ((StringBuilder)localObject4).append((String)localObject1);
      b.g("XMPassport", ((StringBuilder)localObject4).toString());
      if (m != 0)
      {
        if (m != 20003)
        {
          if (m != 22009)
          {
            if (m != 70002)
            {
              if (m != 70016)
              {
                if (m != 81003)
                {
                  if (m != 87001)
                  {
                    paramString1 = new com/xiaomi/accountsdk/request/InvalidResponseException;
                    paramString1.<init>(m, (String)localObject1, (PassThroughErrorInfo)localObject3);
                    throw paramString1;
                  }
                  paramString1 = ((JSONObject)localObject2).getString("captchaUrl");
                  paramString2 = ((JSONObject)localObject2).optString("type");
                  localObject3 = new com/xiaomi/accountsdk/account/exception/NeedCaptchaException;
                  ((NeedCaptchaException)localObject3).<init>(m, (String)localObject1, paramString1, paramString2);
                  throw ((Throwable)localObject3);
                }
                paramString2 = ((JSONObject)localObject2).getString("_sign");
                paramString1 = ((JSONObject)localObject2).getString("qs");
                localObject1 = ((JSONObject)localObject2).getString("callback");
                localObject3 = paramh.b("step1Token");
                localObject4 = ((JSONObject)localObject2).optString("userId");
                localObject2 = new com/xiaomi/accountsdk/account/exception/NeedVerificationException;
                localObject5 = new com/xiaomi/accountsdk/account/data/MetaLoginData;
                ((MetaLoginData)localObject5).<init>(paramString2, paramString1, (String)localObject1);
                ((NeedVerificationException)localObject2).<init>((MetaLoginData)localObject5, (String)localObject3, (String)localObject4);
                throw ((Throwable)localObject2);
              }
              localObject3 = ((JSONObject)localObject2).getString("_sign");
              localObject4 = ((JSONObject)localObject2).getString("qs");
              Object localObject5 = ((JSONObject)localObject2).getString("callback");
              paramString2 = ((JSONObject)localObject2).getString("captchaUrl");
              paramString1 = paramString2;
              if (TextUtils.equals("null", paramString2)) {
                paramString1 = null;
              }
              paramString2 = new com/xiaomi/accountsdk/account/exception/InvalidCredentialException;
              paramString2.<init>(m, (String)localObject1, true);
              localObject1 = new com/xiaomi/accountsdk/account/data/MetaLoginData;
              ((MetaLoginData)localObject1).<init>((String)localObject3, (String)localObject4, (String)localObject5);
              throw paramString2.metaLoginData((MetaLoginData)localObject1).captchaUrl(paramString1);
            }
            paramString1 = new com/xiaomi/accountsdk/account/exception/InvalidCredentialException;
            paramString1.<init>(m, (String)localObject1, false);
            throw paramString1;
          }
          paramString1 = new com/xiaomi/accountsdk/account/exception/PackageNameDeniedException;
          paramString1.<init>(m, (String)localObject1);
          b.i("XMPassport", paramString1);
          throw paramString1;
        }
        paramString1 = new com/xiaomi/accountsdk/account/exception/InvalidUserNameException;
        paramString1.<init>();
        throw paramString1;
      }
      if (paramBoolean2)
      {
        localObject1 = ((JSONObject)localObject2).optString("userId");
        localObject3 = ((JSONObject)localObject2).optString("passToken");
      }
      else
      {
        localObject1 = paramh.b("userId");
        localObject3 = paramh.b("passToken");
      }
      if ((paramBoolean1) && (paramString1 != null) && (((JSONObject)localObject2).optBoolean("disableHotfixMiui73508", false))) {
        paramBoolean1 = false;
      }
      m = ((JSONObject)localObject2).optInt("securityStatus", 0);
      paramString1 = new java/lang/StringBuilder;
      paramString1.<init>();
      paramString1.append("securityStatus: ");
      paramString1.append(m);
      b.g("XMPassport", paramString1.toString());
      if ((paramBoolean1) && (m != 0))
      {
        paramString1 = ((JSONObject)localObject2).getString("notificationUrl");
        if (paramString1 != null)
        {
          if (paramString1.startsWith("http"))
          {
            paramString2 = new com/xiaomi/accountsdk/account/exception/NeedNotificationException;
            paramString2.<init>((String)localObject1, paramString1, paramh);
            throw paramString2;
          }
          localObject3 = new com/xiaomi/accountsdk/account/exception/NeedNotificationException;
          paramString2 = new java/lang/StringBuilder;
          paramString2.<init>();
          paramString2.append(b);
          paramString2.append(paramString1);
          ((NeedNotificationException)localObject3).<init>((String)localObject1, paramString2.toString(), paramh);
          throw ((Throwable)localObject3);
        }
        paramString1 = new com/xiaomi/accountsdk/request/InvalidResponseException;
        paramString1.<init>("noticationUrl is null");
        throw paramString1;
      }
      if (!TextUtils.isEmpty((CharSequence)localObject1))
      {
        if (!TextUtils.isEmpty((CharSequence)localObject3)) {
          return s((String)localObject1, paramh, paramString2, null, paramBoolean2, paramBoolean3);
        }
        paramString1 = new com/xiaomi/accountsdk/request/InvalidResponseException;
        paramString1.<init>("no passToken in login response");
        throw paramString1;
      }
      paramString1 = new com/xiaomi/accountsdk/request/InvalidResponseException;
      paramString1.<init>("no user Id");
      throw paramString1;
    }
    catch (JSONException paramString1)
    {
      paramString1 = new StringBuilder();
      paramString1.append("processLoginContent: ");
      paramString1.append(paramh);
      b.g("XMPassport", paramString1.toString());
      throw new InvalidResponseException("processLoginContent JSONException");
    }
  }
  
  private static AccountInfo x(k.h paramh, String paramString, boolean paramBoolean)
    throws IOException, InvalidResponseException, NeedNotificationException, AccessDeniedException, InvalidVerifyCodeException, InvalidPhoneNumException, AuthenticationFailureException, InvalidTzSignException
  {
    try
    {
      Object localObject1 = A(paramh);
      Object localObject2 = new org/json/JSONObject;
      ((JSONObject)localObject2).<init>((String)localObject1);
      int m = ((JSONObject)localObject2).getInt("code");
      localObject1 = new java/lang/StringBuilder;
      ((StringBuilder)localObject1).<init>();
      ((StringBuilder)localObject1).append("code: ");
      ((StringBuilder)localObject1).append(m);
      ((StringBuilder)localObject1).append(", desc: ");
      ((StringBuilder)localObject1).append(((JSONObject)localObject2).optString("desc"));
      localObject1 = ((StringBuilder)localObject1).toString();
      Object localObject3 = new java/lang/StringBuilder;
      ((StringBuilder)localObject3).<init>();
      ((StringBuilder)localObject3).append("processPhoneLoginContent: ");
      ((StringBuilder)localObject3).append((String)localObject1);
      b.g("XMPassport", ((StringBuilder)localObject3).toString());
      if (m != 0)
      {
        if (m != 70008)
        {
          if (m != 70014)
          {
            if (m != 70069)
            {
              paramh = new com/xiaomi/accountsdk/request/InvalidResponseException;
              paramString = new com/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;
              paramString.<init>((JSONObject)localObject2);
              paramh.<init>(m, (String)localObject1, paramString);
              throw paramh;
            }
            paramh = new com/xiaomi/accountsdk/account/exception/InvalidTzSignException;
            paramh.<init>((String)localObject1);
            throw paramh;
          }
          paramh = new com/xiaomi/accountsdk/account/exception/InvalidVerifyCodeException;
          paramh.<init>((String)localObject1);
          throw paramh;
        }
        paramh = new com/xiaomi/accountsdk/account/exception/InvalidPhoneNumException;
        paramh.<init>((String)localObject1);
        throw paramh;
      }
      localObject1 = paramh.b("userId");
      localObject3 = paramh.b("passToken");
      if (((JSONObject)localObject2).optInt("securityStatus", 0) != 0)
      {
        paramString = ((JSONObject)localObject2).getString("notificationUrl");
        if (paramString != null)
        {
          localObject2 = new com/xiaomi/accountsdk/account/exception/NeedNotificationException;
          if (!paramString.startsWith("http"))
          {
            localObject3 = new java/lang/StringBuilder;
            ((StringBuilder)localObject3).<init>();
            ((StringBuilder)localObject3).append(b);
            ((StringBuilder)localObject3).append(paramString);
            paramString = ((StringBuilder)localObject3).toString();
          }
          ((NeedNotificationException)localObject2).<init>((String)localObject1, paramString, paramh);
          throw ((Throwable)localObject2);
        }
        paramh = new com/xiaomi/accountsdk/request/InvalidResponseException;
        paramh.<init>("notificationUrl is null");
        throw paramh;
      }
      if (!TextUtils.isEmpty((CharSequence)localObject1))
      {
        if (!TextUtils.isEmpty((CharSequence)localObject3)) {
          return s((String)localObject1, paramh, paramString, null, false, paramBoolean);
        }
        paramh = new com/xiaomi/accountsdk/request/InvalidResponseException;
        paramh.<init>("no passToken in login response");
        throw paramh;
      }
      paramh = new com/xiaomi/accountsdk/request/InvalidResponseException;
      paramh.<init>("no user Id in login response");
      throw paramh;
    }
    catch (JSONException paramh)
    {
      throw new InvalidResponseException("result not json");
    }
  }
  
  public static RegisterUserInfo y(com.xiaomi.accountsdk.account.data.d paramd)
    throws AccessDeniedException, AuthenticationFailureException, IOException, InvalidResponseException, InvalidVerifyCodeException, InvalidPhoneNumException
  {
    if (paramd != null)
    {
      Object localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(d.d);
      ((StringBuilder)localObject1).append("/phoneInfo");
      localObject1 = ((StringBuilder)localObject1).toString();
      Object localObject2 = new EasyMap().easyPutOpt("user", paramd.a).easyPutOpt("ticket", paramd.c).easyPutOpt("userHash", paramd.e).easyPutOpt("sid", paramd.h).easyPutOpt("type", paramd.d).easyPut("_json", "true");
      c((EasyMap)localObject2);
      Object localObject3 = new EasyMap().easyPutOpt("activatorToken", paramd.f);
      a((EasyMap)localObject3, paramd.b);
      boolean bool1 = true;
      localObject2 = l.j((String)localObject1, (Map)localObject2, (Map)localObject3, true);
      if (localObject2 != null)
      {
        localObject1 = A((k.h)localObject2);
        try
        {
          paramd = new org/json/JSONObject;
          paramd.<init>((String)localObject1);
          int m = paramd.getInt("code");
          localObject1 = new java/lang/StringBuilder;
          ((StringBuilder)localObject1).<init>();
          ((StringBuilder)localObject1).append("code: ");
          ((StringBuilder)localObject1).append(m);
          ((StringBuilder)localObject1).append(", desc: ");
          ((StringBuilder)localObject1).append(paramd.optString("description"));
          localObject1 = ((StringBuilder)localObject1).toString();
          localObject3 = new java/lang/StringBuilder;
          ((StringBuilder)localObject3).<init>();
          ((StringBuilder)localObject3).append("queryPhoneUserInfo: ");
          ((StringBuilder)localObject3).append((String)localObject1);
          b.g("XMPassport", ((StringBuilder)localObject3).toString());
          if (m != 0)
          {
            if (m != 10031)
            {
              if (m != 70008)
              {
                localObject3 = new com/xiaomi/accountsdk/request/InvalidResponseException;
                localObject2 = new com/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;
                ((PassThroughErrorInfo)localObject2).<init>(paramd);
                ((InvalidResponseException)localObject3).<init>(m, (String)localObject1, (PassThroughErrorInfo)localObject2);
                throw ((Throwable)localObject3);
              }
              paramd = new com/xiaomi/accountsdk/account/exception/InvalidPhoneNumException;
              paramd.<init>((String)localObject1);
              throw paramd;
            }
            paramd = new com/xiaomi/accountsdk/account/exception/InvalidVerifyCodeException;
            paramd.<init>((String)localObject1);
            throw paramd;
          }
          localObject1 = ((k.d)localObject2).b("ticketToken");
          paramd = paramd.getJSONObject("data");
          localObject2 = paramd.optString("tmpPhoneToken");
          if (TextUtils.isEmpty((CharSequence)localObject2)) {
            b.g("XMPassport", "tmpPhoneToken is null");
          }
          localObject3 = new com/xiaomi/accountsdk/account/data/RegisterUserInfo$b;
          ((RegisterUserInfo.b)localObject3).<init>(paramd.getInt("status"));
          localObject1 = ((RegisterUserInfo.b)localObject3).z(paramd.getString("id")).A(paramd.optString("nickname")).n(paramd.optString("portrait")).u(paramd.optString("phone")).y((String)localObject2).x((String)localObject1).r(paramd.optString("maskedUserId"));
          boolean bool2;
          if (paramd.optInt("pwd") == 1) {
            bool2 = true;
          } else {
            bool2 = false;
          }
          localObject1 = ((RegisterUserInfo.b)localObject1).q(bool2).o(paramd.optLong("bindTime", 0L)).s(paramd.optBoolean("needGetActiveTime", false)).t(paramd.optBoolean("needToast", false));
          if (paramd.optInt("registerPwd") == 1) {
            bool2 = bool1;
          } else {
            bool2 = false;
          }
          paramd = ((RegisterUserInfo.b)localObject1).v(bool2).p();
          return paramd;
        }
        catch (JSONException paramd)
        {
          throw new InvalidResponseException("result not json");
        }
      }
      throw new InvalidResponseException("result content is null");
    }
    throw new IllegalArgumentException("invalid params");
  }
  
  public static AccountInfo z(PhoneTokenRegisterParams paramPhoneTokenRegisterParams)
    throws IOException, AccessDeniedException, AuthenticationFailureException, InvalidResponseException, InvalidParameterException, TokenExpiredException, UserRestrictedException, ReachLimitException
  {
    if (paramPhoneTokenRegisterParams != null)
    {
      String str1 = paramPhoneTokenRegisterParams.phone;
      Object localObject1 = paramPhoneTokenRegisterParams.phoneHash;
      Object localObject2 = paramPhoneTokenRegisterParams.password;
      String str2 = paramPhoneTokenRegisterParams.region;
      Object localObject3 = paramPhoneTokenRegisterParams.ticketToken;
      Object localObject4 = paramPhoneTokenRegisterParams.activatorToken;
      boolean bool = paramPhoneTokenRegisterParams.noPwd;
      paramPhoneTokenRegisterParams = paramPhoneTokenRegisterParams.serviceId;
      Object localObject5 = B(d.J, str2);
      localObject1 = new EasyMap().easyPutOpt("phone", str1).easyPutOpt("phoneHash", localObject1).easyPutOpt("password", localObject2).easyPut("noPwd", String.valueOf(bool)).easyPut("_locale", XMPassportUtil.f(Locale.getDefault())).easyPutOpt("region", str2).easyPutOpt("sid", paramPhoneTokenRegisterParams).easyPut("_json", "true").easyPut("acceptLicense", "true");
      c((EasyMap)localObject1);
      localObject3 = new EasyMap().easyPutOpt("activatorToken", localObject4).easyPutOpt("ticketToken", localObject3);
      paramPhoneTokenRegisterParams = null;
      a((EasyMap)localObject3, null);
      bool = true;
      localObject3 = l.j((String)localObject5, (Map)localObject1, (Map)localObject3, true);
      try
      {
        localObject4 = A((k.h)localObject3);
        localObject5 = new org/json/JSONObject;
        ((JSONObject)localObject5).<init>((String)localObject4);
        int m = ((JSONObject)localObject5).getInt("code");
        localObject1 = ((JSONObject)localObject5).optString("description");
        localObject4 = new java/lang/StringBuilder;
        ((StringBuilder)localObject4).<init>();
        ((StringBuilder)localObject4).append("code: ");
        ((StringBuilder)localObject4).append(m);
        ((StringBuilder)localObject4).append(", desc: ");
        ((StringBuilder)localObject4).append((String)localObject1);
        localObject4 = ((StringBuilder)localObject4).toString();
        if (m == 0)
        {
          localObject1 = ((k.d)localObject3).b("userId");
          str1 = ((k.d)localObject3).b("cUserId");
          localObject4 = ((k.d)localObject3).b("passToken");
          str2 = ((JSONObject)localObject5).optString("user_synced_url");
          localObject5 = ((k.d)localObject3).b("haveLocalUpChannel");
          localObject3 = new com/xiaomi/accountsdk/account/data/AccountInfo$b;
          ((AccountInfo.b)localObject3).<init>();
          localObject3 = ((AccountInfo.b)localObject3).F((String)localObject1).s(str1).w((String)localObject4);
          if (TextUtils.isEmpty((CharSequence)localObject2)) {
            bool = false;
          }
          localObject2 = ((AccountInfo.b)localObject3).u(bool).G(str2);
          if (!TextUtils.isEmpty((CharSequence)localObject5)) {
            paramPhoneTokenRegisterParams = Boolean.valueOf(Boolean.parseBoolean((String)localObject5));
          }
          return ((AccountInfo.b)localObject2).t(paramPhoneTokenRegisterParams).r();
        }
        if (m != 10017)
        {
          if (m != 21317)
          {
            if (m != 20023)
            {
              if (m == 25004)
              {
                paramPhoneTokenRegisterParams = new com/xiaomi/accountsdk/account/exception/ReachLimitException;
                paramPhoneTokenRegisterParams.<init>((String)localObject4);
                throw paramPhoneTokenRegisterParams;
              }
              paramPhoneTokenRegisterParams = new com/xiaomi/accountsdk/request/InvalidResponseException;
              localObject2 = new com/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;
              ((PassThroughErrorInfo)localObject2).<init>((JSONObject)localObject5);
              paramPhoneTokenRegisterParams.<init>(m, (String)localObject4, (PassThroughErrorInfo)localObject2);
              throw paramPhoneTokenRegisterParams;
            }
            paramPhoneTokenRegisterParams = new com/xiaomi/accountsdk/account/exception/UserRestrictedException;
            paramPhoneTokenRegisterParams.<init>((String)localObject4);
            throw paramPhoneTokenRegisterParams;
          }
          paramPhoneTokenRegisterParams = new com/xiaomi/accountsdk/account/exception/TokenExpiredException;
          paramPhoneTokenRegisterParams.<init>((String)localObject4);
          throw paramPhoneTokenRegisterParams;
        }
        paramPhoneTokenRegisterParams = new com/xiaomi/accountsdk/account/exception/InvalidParameterException;
        paramPhoneTokenRegisterParams.<init>(m, (String)localObject1);
        throw paramPhoneTokenRegisterParams;
      }
      catch (JSONException paramPhoneTokenRegisterParams)
      {
        throw new InvalidResponseException("process result is failed", paramPhoneTokenRegisterParams);
      }
    }
    throw new IllegalArgumentException("phone can not be empty");
  }
  
  private static enum CheckAvailibilityType
  {
    static
    {
      CheckAvailibilityType localCheckAvailibilityType1 = new CheckAvailibilityType("EMAIL", 0);
      EMAIL = localCheckAvailibilityType1;
      CheckAvailibilityType localCheckAvailibilityType2 = new CheckAvailibilityType("PHONE", 1);
      PHONE = localCheckAvailibilityType2;
      $VALUES = new CheckAvailibilityType[] { localCheckAvailibilityType1, localCheckAvailibilityType2 };
    }
    
    private CheckAvailibilityType() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.XMPassport
 * JD-Core Version:    0.7.0.1
 */