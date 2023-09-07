package com.xiaomi.accountsdk.service;

import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class DeviceInfoResult
  implements Parcelable
{
  public static final String BUNDLE_KEY_ANDROID_ID = "android_id";
  public static final String BUNDLE_KEY_HASHED_DEVICE_ID = "hashed_device_id";
  public static final Parcelable.Creator<DeviceInfoResult> CREATOR = new a();
  public static final int FLAG_ANDROID_ID = 2;
  public static final int FLAG_HASHED_DEVICE_ID = 1;
  private static final String PARCEL_BUNDLE_KEY_DEVICE_INFO = "device_info";
  private static final String PARCEL_BUNDLE_KEY_ERROR_CODE = "error_code";
  private static final String PARCEL_BUNDLE_KEY_ERROR_MESSAGE = "error_message";
  private static final String PARCEL_BUNDLE_KEY_ERROR_STACK_TRACE = "stacktrace";
  public final Bundle deviceInfo;
  public final ErrorCode errorCode;
  public final String errorMessage;
  public final String errorStackTrace;
  
  protected DeviceInfoResult(Parcel paramParcel)
  {
    Bundle localBundle = paramParcel.readBundle(DeviceInfoResult.class.getClassLoader());
    this.deviceInfo = localBundle.getBundle("device_info");
    int i = localBundle.getInt("error_code");
    if (i == -1) {
      paramParcel = null;
    } else {
      paramParcel = ErrorCode.values()[i];
    }
    this.errorCode = paramParcel;
    this.errorMessage = localBundle.getString("error_message");
    this.errorStackTrace = localBundle.getString("stacktrace");
  }
  
  private DeviceInfoResult(b paramb)
  {
    this.deviceInfo = b.a(paramb);
    this.errorMessage = b.b(paramb);
    this.errorCode = b.c(paramb);
    this.errorStackTrace = b.d(paramb);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof DeviceInfoResult)) {
      return false;
    }
    paramObject = (DeviceInfoResult)paramObject;
    Object localObject = this.deviceInfo;
    if (localObject != null ? !localObject.equals(paramObject.deviceInfo) : paramObject.deviceInfo != null) {
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
    paramObject = paramObject.errorStackTrace;
    return localObject != null ? ((String)localObject).equals(paramObject) : paramObject == null;
  }
  
  public int hashCode()
  {
    Object localObject = this.deviceInfo;
    int i = 0;
    int j;
    if (localObject != null) {
      j = localObject.hashCode();
    } else {
      j = 0;
    }
    localObject = this.errorCode;
    int k;
    if (localObject != null) {
      k = localObject.hashCode();
    } else {
      k = 0;
    }
    localObject = this.errorMessage;
    int m;
    if (localObject != null) {
      m = ((String)localObject).hashCode();
    } else {
      m = 0;
    }
    localObject = this.errorStackTrace;
    if (localObject != null) {
      i = ((String)localObject).hashCode();
    }
    return ((j * 31 + k) * 31 + m) * 31 + i;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBundle("device_info", this.deviceInfo);
    ErrorCode localErrorCode = this.errorCode;
    if (localErrorCode == null) {
      paramInt = -1;
    } else {
      paramInt = localErrorCode.ordinal();
    }
    localBundle.putInt("error_code", paramInt);
    localBundle.putString("error_message", this.errorMessage);
    localBundle.putString("stacktrace", this.errorStackTrace);
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
      ErrorCode localErrorCode3 = new ErrorCode("ERROR_APP_PERMISSION_FORBIDDEN", 2);
      ERROR_APP_PERMISSION_FORBIDDEN = localErrorCode3;
      ErrorCode localErrorCode4 = new ErrorCode("ERROR_TIME_OUT", 3);
      ERROR_TIME_OUT = localErrorCode4;
      ErrorCode localErrorCode5 = new ErrorCode("ERROR_NOT_SUPPORTED", 4);
      ERROR_NOT_SUPPORTED = localErrorCode5;
      ErrorCode localErrorCode6 = new ErrorCode("ERROR_EXECUTION_EXCEPTION", 5);
      ERROR_EXECUTION_EXCEPTION = localErrorCode6;
      ErrorCode localErrorCode7 = new ErrorCode("ERROR_QUERY_TOO_FREQUENTLY", 6);
      ERROR_QUERY_TOO_FREQUENTLY = localErrorCode7;
      $VALUES = new ErrorCode[] { localErrorCode1, localErrorCode2, localErrorCode3, localErrorCode4, localErrorCode5, localErrorCode6, localErrorCode7 };
    }
    
    private ErrorCode() {}
  }
  
  class a
    implements Parcelable.Creator<DeviceInfoResult>
  {
    public DeviceInfoResult a(Parcel paramParcel)
    {
      return new DeviceInfoResult(paramParcel);
    }
    
    public DeviceInfoResult[] b(int paramInt)
    {
      return new DeviceInfoResult[paramInt];
    }
  }
  
  public static final class b
  {
    private final Bundle a;
    private String b;
    private String c;
    private DeviceInfoResult.ErrorCode d = DeviceInfoResult.ErrorCode.ERROR_NONE;
    
    public b(Bundle paramBundle)
    {
      this.a = paramBundle;
    }
    
    public DeviceInfoResult e()
    {
      return new DeviceInfoResult(this, null);
    }
    
    public b f(DeviceInfoResult.ErrorCode paramErrorCode)
    {
      this.d = paramErrorCode;
      return this;
    }
    
    public b g(String paramString)
    {
      this.b = paramString;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.service.DeviceInfoResult
 * JD-Core Version:    0.7.0.1
 */