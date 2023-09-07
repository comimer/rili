package com.xiaomi.accountsdk.account.data;

import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.xiaomi.accountsdk.account.serverpassthrougherror.data.PassThroughErrorInfo;

public class MiLoginResult
  implements Parcelable
{
  public static final Parcelable.Creator<MiLoginResult> CREATOR = new a();
  public static final int ERROR_ACCESS_DENIED = 7;
  public static final int ERROR_CAPTCHA = 1;
  public static final int ERROR_ILLEGAL_DEVICE_ID = 9;
  public static final int ERROR_NEED_NOTIFICATION = 3;
  public static final int ERROR_NEED_STEP2_LOGIN = 2;
  public static final int ERROR_NETWORK = 5;
  public static final int ERROR_PASSWORD = 4;
  public static final int ERROR_REMOTE_FATAL_ERROR = 13;
  public static final int ERROR_SERVER = 6;
  public static final int ERROR_SSL = 10;
  @Deprecated
  public static final int ERROR_SSL_HAND_SHAKE = 10;
  public static final int ERROR_STEP2_CODE = 11;
  public static final int ERROR_UNKNOWN = 12;
  public static final int ERROR_USER_NAME = 8;
  private static final String KEY_HAS_PWD = "has_pwd";
  private static final String KEY_STS_ERROR = "sts_error";
  public static final int SUCCESS = 0;
  public final AccountInfo accountInfo;
  public final String captchaType;
  public final String captchaUrl;
  public final boolean hasPwd;
  public boolean isStsCallbackError;
  public final MetaLoginData metaLoginData;
  public final String notificationUrl;
  public final int resultCode;
  public PassThroughErrorInfo serverError;
  public final String serviceId;
  public final String step1Token;
  public final String userId;
  
  public MiLoginResult(Parcel paramParcel)
  {
    this.userId = paramParcel.readString();
    this.serviceId = paramParcel.readString();
    this.accountInfo = ((AccountInfo)paramParcel.readParcelable(AccountInfo.class.getClassLoader()));
    this.captchaUrl = paramParcel.readString();
    this.captchaType = paramParcel.readString();
    this.notificationUrl = paramParcel.readString();
    this.metaLoginData = ((MetaLoginData)paramParcel.readParcelable(MetaLoginData.class.getClassLoader()));
    this.step1Token = paramParcel.readString();
    this.resultCode = paramParcel.readInt();
    Bundle localBundle = paramParcel.readBundle();
    boolean bool;
    if (localBundle != null) {
      bool = localBundle.getBoolean("has_pwd");
    } else {
      bool = true;
    }
    this.hasPwd = bool;
    if (localBundle != null) {
      bool = localBundle.getBoolean("sts_error");
    } else {
      bool = false;
    }
    this.isStsCallbackError = bool;
    this.serverError = ((PassThroughErrorInfo)paramParcel.readParcelable(PassThroughErrorInfo.class.getClassLoader()));
  }
  
  private MiLoginResult(b paramb)
  {
    this.userId = b.a(paramb);
    this.serviceId = b.b(paramb);
    this.accountInfo = b.e(paramb);
    this.captchaUrl = b.f(paramb);
    this.captchaType = b.g(paramb);
    this.notificationUrl = b.h(paramb);
    this.metaLoginData = b.i(paramb);
    this.step1Token = b.j(paramb);
    this.resultCode = b.k(paramb);
    this.hasPwd = b.l(paramb);
    this.isStsCallbackError = b.c(paramb);
    this.serverError = b.d(paramb);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.userId);
    paramParcel.writeString(this.serviceId);
    paramParcel.writeParcelable(this.accountInfo, paramInt);
    paramParcel.writeString(this.captchaUrl);
    paramParcel.writeString(this.captchaType);
    paramParcel.writeString(this.notificationUrl);
    paramParcel.writeParcelable(this.metaLoginData, paramInt);
    paramParcel.writeString(this.step1Token);
    paramParcel.writeInt(this.resultCode);
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("has_pwd", this.hasPwd);
    localBundle.putBoolean("sts_error", this.isStsCallbackError);
    paramParcel.writeBundle(localBundle);
    paramParcel.writeParcelable(this.serverError, paramInt);
  }
  
  class a
    implements Parcelable.Creator<MiLoginResult>
  {
    public MiLoginResult a(Parcel paramParcel)
    {
      return new MiLoginResult(paramParcel);
    }
    
    public MiLoginResult[] b(int paramInt)
    {
      return new MiLoginResult[paramInt];
    }
  }
  
  public static class b {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.data.MiLoginResult
 * JD-Core Version:    0.7.0.1
 */