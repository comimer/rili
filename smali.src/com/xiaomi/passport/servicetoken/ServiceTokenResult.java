package com.xiaomi.passport.servicetoken;

import android.accounts.Account;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.content.Context;
import android.content.Intent;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Log;
import b7.h;
import com.xiaomi.accountsdk.utils.d;
import java.io.IOException;
import java.util.Map;
import k5.a;
import k5.b;
import k5.c;

public class ServiceTokenResult
  implements Parcelable
{
  private static final String AM_AUTH_TOKEN_SPLIT = ",";
  public static final Parcelable.Creator<ServiceTokenResult> CREATOR = new a();
  public static final String ERROR_MSG_PREFIX = "error#";
  private static final String PARCEL_BUNDLE_KEY_C_USER_ID = "cUserId";
  private static final String PARCEL_BUNDLE_KEY_ERROR_CODE = "errorCode";
  private static final String PARCEL_BUNDLE_KEY_ERROR_MESSAGE = "errorMessage";
  private static final String PARCEL_BUNDLE_KEY_ERROR_STACK_TRACE = "stackTrace";
  private static final String PARCEL_BUNDLE_KEY_INTENT = "intent";
  private static final String PARCEL_BUNDLE_KEY_PEEKED = "peeked";
  private static final String PARCEL_BUNDLE_KEY_PH = "ph";
  private static final String PARCEL_BUNDLE_KEY_SECURITY = "security";
  private static final String PARCEL_BUNDLE_KEY_SERVICE_TOKEN = "serviceToken";
  private static final String PARCEL_BUNDLE_KEY_SID = "sid";
  private static final String PARCEL_BUNDLE_KEY_SLH = "slh";
  private static final String PARCEL_BUNDLE_KEY_STS_COOKIES = "stsCookies";
  private static final String PARCEL_BUNDLE_KEY_USER_ID = "userId";
  private static final String PARCEL_V2_FLAG = "V2#";
  public static final int TO_STRING_MASK_SHOW_SECURITY = 2;
  public static final int TO_STRING_MASK_SHOW_SERVICETOKEN = 1;
  public final String cUserId;
  public final ErrorCode errorCode;
  public final String errorMessage;
  public final String errorStackTrace;
  public final Intent intent;
  public final boolean peeked;
  public final String ph;
  public final String security;
  public final String serviceToken;
  public final String sid;
  public final String slh;
  public final String stsCookies;
  private final boolean useV1Parcel;
  public final String userId;
  
  protected ServiceTokenResult(Parcel paramParcel)
  {
    Object localObject = paramParcel.readString();
    boolean bool = TextUtils.equals("V2#", (CharSequence)localObject);
    ErrorCode localErrorCode = null;
    int i;
    if (!bool)
    {
      this.sid = ((String)localObject);
      this.serviceToken = paramParcel.readString();
      this.stsCookies = null;
      this.security = paramParcel.readString();
      i = paramParcel.readInt();
      if (i == -1) {
        localErrorCode = null;
      } else {
        localErrorCode = ErrorCode.values()[i];
      }
      this.errorCode = localErrorCode;
      this.errorMessage = paramParcel.readString();
      this.errorStackTrace = paramParcel.readString();
      this.intent = ((Intent)paramParcel.readParcelable(Intent.class.getClassLoader()));
      this.slh = null;
      this.ph = null;
      this.cUserId = null;
      this.peeked = false;
      this.useV1Parcel = false;
      this.userId = null;
    }
    else
    {
      localObject = paramParcel.readBundle(Intent.class.getClassLoader());
      this.sid = ((BaseBundle)localObject).getString("sid");
      this.serviceToken = ((BaseBundle)localObject).getString("serviceToken");
      this.stsCookies = ((BaseBundle)localObject).getString("stsCookies");
      this.security = ((BaseBundle)localObject).getString("security");
      i = ((BaseBundle)localObject).getInt("errorCode");
      if (i == -1) {
        paramParcel = localErrorCode;
      } else {
        paramParcel = ErrorCode.values()[i];
      }
      this.errorCode = paramParcel;
      this.errorMessage = ((BaseBundle)localObject).getString("errorMessage");
      this.errorStackTrace = ((BaseBundle)localObject).getString("stackTrace");
      this.intent = ((Intent)((Bundle)localObject).getParcelable("intent"));
      this.slh = ((BaseBundle)localObject).getString("slh");
      this.ph = ((BaseBundle)localObject).getString("ph");
      this.cUserId = ((BaseBundle)localObject).getString("cUserId");
      this.peeked = ((BaseBundle)localObject).getBoolean("peeked");
      this.useV1Parcel = true;
      this.userId = ((BaseBundle)localObject).getString("userId");
    }
  }
  
  private ServiceTokenResult(b paramb)
  {
    this.sid = b.a(paramb);
    this.serviceToken = b.b(paramb);
    this.stsCookies = b.g(paramb);
    this.security = b.h(paramb);
    this.errorMessage = b.i(paramb);
    this.errorCode = b.j(paramb);
    this.intent = b.k(paramb);
    this.errorStackTrace = b.l(paramb);
    this.slh = b.m(paramb);
    this.ph = b.n(paramb);
    this.cUserId = b.c(paramb);
    this.peeked = b.d(paramb);
    this.useV1Parcel = b.e(paramb);
    this.userId = b.f(paramb);
  }
  
  private static String checkAsPart1AndGetPart2(String paramString1, String paramString2)
  {
    Object localObject1 = null;
    Object localObject2 = localObject1;
    if (paramString1 != null) {
      if (paramString2 == null)
      {
        localObject2 = localObject1;
      }
      else
      {
        paramString2 = paramString2.split(",");
        localObject2 = localObject1;
        if (paramString2.length == 2)
        {
          localObject2 = localObject1;
          if (paramString1.equalsIgnoreCase(paramString2[0])) {
            localObject2 = paramString2[1];
          }
        }
      }
    }
    return localObject2;
  }
  
  public static ServiceTokenResult create(Bundle paramBundle, String paramString)
  {
    if (paramBundle == null) {
      return new b(paramString).q(ErrorCode.ERROR_UNKNOWN).o();
    }
    if (paramBundle.containsKey("authtoken"))
    {
      paramBundle = create(paramBundle, paramString, paramBundle.getString("authtoken"), false);
      if (paramBundle != null) {
        return paramBundle;
      }
      return new b(paramString).q(ErrorCode.ERROR_AUTHENTICATOR_ERROR).r("invalid auth token").o();
    }
    Object localObject = (Intent)paramBundle.getParcelable("intent");
    if (localObject != null) {
      return new b(paramString).q(ErrorCode.ERROR_USER_INTERACTION_NEEDED).t((Intent)localObject).o();
    }
    if (!paramBundle.containsKey("errorCode")) {
      return new b(paramString).q(ErrorCode.ERROR_UNKNOWN).o();
    }
    int i = paramBundle.getInt("errorCode");
    localObject = paramBundle.getString("errorMessage");
    switch (i)
    {
    case 2: 
    default: 
      paramBundle = ErrorCode.ERROR_UNKNOWN;
      break;
    case 9: 
      paramBundle = ErrorCode.ERROR_AUTHENTICATOR_ERROR;
      break;
    case 8: 
      paramBundle = ErrorCode.ERROR_AUTHENTICATOR_ERROR;
      break;
    case 7: 
      paramBundle = ErrorCode.ERROR_AUTHENTICATOR_ERROR;
      break;
    case 6: 
      paramBundle = ErrorCode.ERROR_AUTHENTICATOR_ERROR;
      break;
    case 5: 
      paramBundle = ErrorCode.ERROR_AUTHENTICATOR_ERROR;
      break;
    case 4: 
      paramBundle = ErrorCode.ERROR_CANCELLED;
      break;
    case 3: 
      paramBundle = ErrorCode.ERROR_IOERROR;
      break;
    case 1: 
      paramBundle = ErrorCode.ERROR_REMOTE_EXCEPTION;
    }
    paramBundle = new b(paramString).q(paramBundle);
    paramString = new StringBuilder();
    paramString.append(i);
    paramString.append("#");
    paramString.append((String)localObject);
    return paramBundle.r(paramString.toString()).o();
  }
  
  public static ServiceTokenResult create(Bundle paramBundle, String paramString1, String paramString2, boolean paramBoolean)
  {
    boolean bool = TextUtils.isEmpty(paramString2);
    Object localObject = null;
    if (bool) {
      return null;
    }
    paramString2 = paramString2.split(",");
    CharSequence localCharSequence;
    if ((paramString1 != null) && (paramString1.startsWith("weblogin:")))
    {
      localCharSequence = paramString2[0];
      if (TextUtils.isEmpty(localCharSequence)) {
        return null;
      }
      paramString2 = null;
    }
    else
    {
      if ((paramString2.length != 2) || (TextUtils.isEmpty(paramString2[0])) || (TextUtils.isEmpty(paramString2[1]))) {
        break label147;
      }
      localCharSequence = paramString2[0];
      paramString2 = paramString2[1];
    }
    paramString1 = new b(paramString1).q(ErrorCode.ERROR_NONE).x(localCharSequence);
    if (paramBundle == null) {
      paramBundle = localObject;
    } else {
      paramBundle = paramBundle.getString("stsCookies");
    }
    return paramString1.z(paramBundle).w(paramString2).u(paramBoolean).o();
    label147:
    return null;
  }
  
  public static ServiceTokenResult create(String paramString, Exception paramException)
  {
    if ((paramException instanceof OperationCanceledException)) {
      localObject = ErrorCode.ERROR_CANCELLED;
    } else if ((paramException instanceof IOException)) {
      localObject = ErrorCode.ERROR_IOERROR;
    } else if ((paramException instanceof AuthenticatorException)) {
      localObject = ErrorCode.ERROR_AUTHENTICATOR_ERROR;
    } else if ((paramException instanceof SecurityException)) {
      localObject = ErrorCode.ERROR_OLD_MIUI_ACCOUNT_MANAGER_PERMISSION_ISSUE;
    } else {
      localObject = ErrorCode.ERROR_UNKNOWN;
    }
    b localb = new b(paramString).q((ErrorCode)localObject);
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("error#");
    if (paramException != null) {
      paramString = paramException.getMessage();
    } else {
      paramString = "";
    }
    ((StringBuilder)localObject).append(paramString);
    return localb.r(((StringBuilder)localObject).toString()).s(Log.getStackTraceString(paramException)).o();
  }
  
  private void writeToParcelV1(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.sid);
    paramParcel.writeString(this.serviceToken);
    paramParcel.writeString(this.security);
    ErrorCode localErrorCode = this.errorCode;
    int i;
    if (localErrorCode == null) {
      i = -1;
    } else {
      i = localErrorCode.ordinal();
    }
    paramParcel.writeInt(i);
    paramParcel.writeString(this.errorMessage);
    paramParcel.writeString(this.errorStackTrace);
    paramParcel.writeParcelable(this.intent, paramInt);
  }
  
  public ServiceTokenResult addAccountInfo(Context paramContext, Account paramAccount)
  {
    if ((this.errorCode == ErrorCode.ERROR_NONE) && (!TextUtils.isEmpty(this.sid)) && (!TextUtils.isEmpty(this.serviceToken)))
    {
      String str1 = d.e(this.serviceToken);
      String str2 = a.a(paramContext, paramAccount);
      String str3 = checkAsPart1AndGetPart2(str1, c.a(paramContext, paramAccount, this.sid));
      paramContext = checkAsPart1AndGetPart2(str1, b.a(paramContext, paramAccount, this.sid));
      return new b(this.sid).x(this.serviceToken).z(this.stsCookies).w(this.security).q(this.errorCode).r(this.errorMessage).s(this.errorStackTrace).u(this.peeked).p(str2).y(str3).v(paramContext).A(paramAccount.name).o();
    }
    return this;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof ServiceTokenResult)) {
      return false;
    }
    paramObject = (ServiceTokenResult)paramObject;
    if (this.userId != paramObject.userId) {
      return false;
    }
    if (this.peeked != paramObject.peeked) {
      return false;
    }
    if (this.useV1Parcel != paramObject.useV1Parcel) {
      return false;
    }
    Object localObject = this.sid;
    if (localObject != null ? !((String)localObject).equals(paramObject.sid) : paramObject.sid != null) {
      return false;
    }
    localObject = this.serviceToken;
    if (localObject != null ? !((String)localObject).equals(paramObject.serviceToken) : paramObject.serviceToken != null) {
      return false;
    }
    localObject = this.security;
    if (localObject != null ? !((String)localObject).equals(paramObject.security) : paramObject.security != null) {
      return false;
    }
    if (this.errorCode != paramObject.errorCode) {
      return false;
    }
    localObject = this.errorMessage;
    if (localObject != null ? !((String)localObject).equals(paramObject.errorMessage) : paramObject.errorMessage != null) {
      return false;
    }
    localObject = this.errorStackTrace;
    if (localObject != null ? !((String)localObject).equals(paramObject.errorStackTrace) : paramObject.errorStackTrace != null) {
      return false;
    }
    localObject = this.intent;
    if (localObject != null ? !localObject.equals(paramObject.intent) : paramObject.intent != null) {
      return false;
    }
    localObject = this.slh;
    if (localObject != null ? !((String)localObject).equals(paramObject.slh) : paramObject.slh != null) {
      return false;
    }
    localObject = this.ph;
    if (localObject != null ? !((String)localObject).equals(paramObject.ph) : paramObject.ph != null) {
      return false;
    }
    localObject = this.cUserId;
    paramObject = paramObject.cUserId;
    if (localObject != null) {
      bool = ((String)localObject).equals(paramObject);
    } else if (paramObject != null) {
      bool = false;
    }
    return bool;
  }
  
  public int hashCode()
  {
    Object localObject = this.sid;
    int i = 0;
    int j;
    if (localObject != null) {
      j = ((String)localObject).hashCode();
    } else {
      j = 0;
    }
    localObject = this.serviceToken;
    int k;
    if (localObject != null) {
      k = ((String)localObject).hashCode();
    } else {
      k = 0;
    }
    localObject = this.security;
    int m;
    if (localObject != null) {
      m = ((String)localObject).hashCode();
    } else {
      m = 0;
    }
    localObject = this.errorCode;
    int n;
    if (localObject != null) {
      n = localObject.hashCode();
    } else {
      n = 0;
    }
    localObject = this.errorMessage;
    int i1;
    if (localObject != null) {
      i1 = ((String)localObject).hashCode();
    } else {
      i1 = 0;
    }
    localObject = this.errorStackTrace;
    int i2;
    if (localObject != null) {
      i2 = ((String)localObject).hashCode();
    } else {
      i2 = 0;
    }
    localObject = this.intent;
    int i3;
    if (localObject != null) {
      i3 = localObject.hashCode();
    } else {
      i3 = 0;
    }
    localObject = this.slh;
    int i4;
    if (localObject != null) {
      i4 = ((String)localObject).hashCode();
    } else {
      i4 = 0;
    }
    localObject = this.ph;
    int i5;
    if (localObject != null) {
      i5 = ((String)localObject).hashCode();
    } else {
      i5 = 0;
    }
    localObject = this.cUserId;
    int i6;
    if (localObject != null) {
      i6 = ((String)localObject).hashCode();
    } else {
      i6 = 0;
    }
    int i7 = this.peeked;
    int i8 = this.useV1Parcel;
    localObject = this.userId;
    if (localObject != null) {
      i = ((String)localObject).hashCode();
    }
    return (((((((((((j * 31 + k) * 31 + m) * 31 + n) * 31 + i1) * 31 + i2) * 31 + i3) * 31 + i4) * 31 + i5) * 31 + i6) * 31 + i7) * 31 + i8) * 31 + i;
  }
  
  public String toAuthToken()
  {
    String str = this.security;
    if (str == null) {
      return this.serviceToken;
    }
    return String.format("%s%s%s", new Object[] { this.serviceToken, ",", str });
  }
  
  public String toString()
  {
    return toString(0);
  }
  
  public String toString(int paramInt)
  {
    int i = 1;
    int j;
    if ((paramInt & 0x1) == 1) {
      j = 1;
    } else {
      j = 0;
    }
    if ((paramInt & 0x2) == 2) {
      paramInt = i;
    } else {
      paramInt = 0;
    }
    String str1;
    if (j != 0) {
      str1 = this.serviceToken;
    } else {
      str1 = "serviceTokenMasked";
    }
    String str2;
    if (paramInt != 0) {
      str2 = this.security;
    } else {
      str2 = "securityMasked";
    }
    Object localObject;
    if ((!TextUtils.isEmpty(this.userId)) && (this.userId.length() > 3))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(TextUtils.substring(this.userId, 0, 2));
      ((StringBuilder)localObject).append("****");
      localObject = ((StringBuilder)localObject).toString();
    }
    else
    {
      localObject = this.cUserId;
    }
    StringBuffer localStringBuffer = new StringBuffer("ServiceTokenResult{");
    localStringBuffer.append("userId=");
    localStringBuffer.append((String)localObject);
    localStringBuffer.append('\'');
    localStringBuffer.append(", sid='");
    localStringBuffer.append(this.sid);
    localStringBuffer.append('\'');
    localStringBuffer.append(", serviceToken='");
    localStringBuffer.append(str1);
    localStringBuffer.append('\'');
    localStringBuffer.append(", stsCookies='");
    localStringBuffer.append(h.e(this.stsCookies).keySet());
    localStringBuffer.append('\'');
    localStringBuffer.append(", security='");
    localStringBuffer.append(str2);
    localStringBuffer.append('\'');
    localStringBuffer.append(", errorCode=");
    localStringBuffer.append(this.errorCode);
    localStringBuffer.append(", errorMessage='");
    localStringBuffer.append(this.errorMessage);
    localStringBuffer.append('\'');
    localStringBuffer.append(", errorStackTrace='");
    localStringBuffer.append(this.errorStackTrace);
    localStringBuffer.append('\'');
    localStringBuffer.append(", intent=");
    localStringBuffer.append(this.intent);
    localStringBuffer.append(", slh='");
    localStringBuffer.append(this.slh);
    localStringBuffer.append('\'');
    localStringBuffer.append(", ph='");
    localStringBuffer.append(this.ph);
    localStringBuffer.append('\'');
    localStringBuffer.append(", cUserId='");
    localStringBuffer.append(this.cUserId);
    localStringBuffer.append('\'');
    localStringBuffer.append(", peeked=");
    localStringBuffer.append(this.peeked);
    localStringBuffer.append('\'');
    localStringBuffer.append(", useV1Parcel=");
    localStringBuffer.append(this.useV1Parcel);
    localStringBuffer.append('}');
    return localStringBuffer.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (this.useV1Parcel)
    {
      writeToParcelV1(paramParcel, paramInt);
      return;
    }
    Bundle localBundle = new Bundle();
    localBundle.putString("sid", this.sid);
    localBundle.putString("serviceToken", this.serviceToken);
    localBundle.putString("stsCookies", this.stsCookies);
    localBundle.putString("security", this.security);
    ErrorCode localErrorCode = this.errorCode;
    if (localErrorCode == null) {
      paramInt = -1;
    } else {
      paramInt = localErrorCode.ordinal();
    }
    localBundle.putInt("errorCode", paramInt);
    localBundle.putString("errorMessage", this.errorMessage);
    localBundle.putString("stackTrace", this.errorStackTrace);
    localBundle.putParcelable("intent", this.intent);
    localBundle.putString("slh", this.slh);
    localBundle.putString("ph", this.ph);
    localBundle.putString("cUserId", this.cUserId);
    localBundle.putBoolean("peeked", this.peeked);
    localBundle.putString("userId", this.userId);
    paramParcel.writeString("V2#");
    paramParcel.writeBundle(localBundle);
  }
  
  public static enum ErrorCode
  {
    static
    {
      ErrorCode localErrorCode1 = new ErrorCode("ERROR_UNKNOWN", 0);
      ERROR_UNKNOWN = localErrorCode1;
      ErrorCode localErrorCode2 = new ErrorCode("ERROR_NONE", 1);
      ERROR_NONE = localErrorCode2;
      ErrorCode localErrorCode3 = new ErrorCode("ERROR_NO_ACCOUNT", 2);
      ERROR_NO_ACCOUNT = localErrorCode3;
      ErrorCode localErrorCode4 = new ErrorCode("ERROR_APP_PERMISSION_FORBIDDEN", 3);
      ERROR_APP_PERMISSION_FORBIDDEN = localErrorCode4;
      ErrorCode localErrorCode5 = new ErrorCode("ERROR_IOERROR", 4);
      ERROR_IOERROR = localErrorCode5;
      ErrorCode localErrorCode6 = new ErrorCode("ERROR_OLD_MIUI_ACCOUNT_MANAGER_PERMISSION_ISSUE", 5);
      ERROR_OLD_MIUI_ACCOUNT_MANAGER_PERMISSION_ISSUE = localErrorCode6;
      ErrorCode localErrorCode7 = new ErrorCode("ERROR_CANCELLED", 6);
      ERROR_CANCELLED = localErrorCode7;
      ErrorCode localErrorCode8 = new ErrorCode("ERROR_AUTHENTICATOR_ERROR", 7);
      ERROR_AUTHENTICATOR_ERROR = localErrorCode8;
      ErrorCode localErrorCode9 = new ErrorCode("ERROR_TIME_OUT", 8);
      ERROR_TIME_OUT = localErrorCode9;
      ErrorCode localErrorCode10 = new ErrorCode("ERROR_REMOTE_EXCEPTION", 9);
      ERROR_REMOTE_EXCEPTION = localErrorCode10;
      ErrorCode localErrorCode11 = new ErrorCode("ERROR_USER_INTERACTION_NEEDED", 10);
      ERROR_USER_INTERACTION_NEEDED = localErrorCode11;
      $VALUES = new ErrorCode[] { localErrorCode1, localErrorCode2, localErrorCode3, localErrorCode4, localErrorCode5, localErrorCode6, localErrorCode7, localErrorCode8, localErrorCode9, localErrorCode10, localErrorCode11 };
    }
    
    private ErrorCode() {}
  }
  
  class a
    implements Parcelable.Creator<ServiceTokenResult>
  {
    public ServiceTokenResult a(Parcel paramParcel)
    {
      return new ServiceTokenResult(paramParcel);
    }
    
    public ServiceTokenResult[] b(int paramInt)
    {
      return new ServiceTokenResult[paramInt];
    }
  }
  
  public static final class b
  {
    private final String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private ServiceTokenResult.ErrorCode g = ServiceTokenResult.ErrorCode.ERROR_NONE;
    private Intent h;
    private String i;
    private String j;
    private String k;
    private boolean l;
    private boolean m;
    private String n;
    
    public b(String paramString)
    {
      this.a = paramString;
    }
    
    public b A(String paramString)
    {
      this.n = paramString;
      return this;
    }
    
    public ServiceTokenResult o()
    {
      return new ServiceTokenResult(this, null);
    }
    
    public b p(String paramString)
    {
      this.k = paramString;
      return this;
    }
    
    public b q(ServiceTokenResult.ErrorCode paramErrorCode)
    {
      this.g = paramErrorCode;
      return this;
    }
    
    public b r(String paramString)
    {
      this.e = paramString;
      return this;
    }
    
    public b s(String paramString)
    {
      this.f = paramString;
      return this;
    }
    
    public b t(Intent paramIntent)
    {
      this.h = paramIntent;
      return this;
    }
    
    public b u(boolean paramBoolean)
    {
      this.l = paramBoolean;
      return this;
    }
    
    public b v(String paramString)
    {
      this.j = paramString;
      return this;
    }
    
    public b w(String paramString)
    {
      this.d = paramString;
      return this;
    }
    
    public b x(String paramString)
    {
      this.b = paramString;
      return this;
    }
    
    public b y(String paramString)
    {
      this.i = paramString;
      return this;
    }
    
    public b z(String paramString)
    {
      this.c = paramString;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.servicetoken.ServiceTokenResult
 * JD-Core Version:    0.7.0.1
 */