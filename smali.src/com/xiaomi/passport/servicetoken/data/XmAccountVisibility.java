package com.xiaomi.passport.servicetoken.data;

import android.accounts.Account;
import android.content.Intent;
import android.os.BaseBundle;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;

public class XmAccountVisibility
  implements Parcelable
{
  public static final Parcelable.Creator<XmAccountVisibility> CREATOR = new a();
  private static final String KEY_ACCOUNT = "account";
  private static final String KEY_ACCOUNT_VISIBLE = "visible";
  private static final String KEY_BUILD_SDK_VERSION = "build_sdk_version";
  private static final String KEY_ERROR_CODE = "error_code";
  private static final String KEY_ERROR_MSG = "error_msg";
  private static final String KEY_NEW_CHOOSE_ACCOUNT_INTENT = "new_choose_account_intent";
  public final Account account;
  public final int buildSdkVersion;
  public final ErrorCode errorCode;
  public final String errorMsg;
  public final Intent newChooseAccountIntent;
  public final boolean visible;
  
  public XmAccountVisibility(Parcel paramParcel)
  {
    paramParcel = paramParcel.readBundle();
    this.errorCode = ErrorCode.values()[paramParcel.getInt("error_code")];
    this.errorMsg = paramParcel.getString("error_msg");
    this.visible = paramParcel.getBoolean("visible");
    this.account = ((Account)paramParcel.getParcelable("account"));
    this.buildSdkVersion = paramParcel.getInt("build_sdk_version");
    this.newChooseAccountIntent = ((Intent)paramParcel.getParcelable("new_choose_account_intent"));
  }
  
  public XmAccountVisibility(b paramb)
  {
    this.errorCode = b.a(paramb);
    this.errorMsg = b.b(paramb);
    this.visible = b.c(paramb);
    this.account = b.d(paramb);
    this.buildSdkVersion = b.e(paramb);
    this.newChooseAccountIntent = b.f(paramb);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer("AccountVisibility{");
    localStringBuffer.append(", errorCode=");
    localStringBuffer.append(this.errorCode);
    localStringBuffer.append(", errorMessage='");
    localStringBuffer.append(this.errorMsg);
    localStringBuffer.append('\'');
    localStringBuffer.append(", accountVisible='");
    localStringBuffer.append(this.visible);
    localStringBuffer.append('\'');
    localStringBuffer.append('}');
    return localStringBuffer.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("error_code", this.errorCode.ordinal());
    localBundle.putString("error_msg", this.errorMsg);
    localBundle.putBoolean("visible", this.visible);
    localBundle.putParcelable("account", this.account);
    localBundle.putInt("build_sdk_version", this.buildSdkVersion);
    localBundle.putParcelable("new_choose_account_intent", this.newChooseAccountIntent);
    paramParcel.writeBundle(localBundle);
  }
  
  public static enum ErrorCode
  {
    String errorMsg;
    
    static
    {
      ErrorCode localErrorCode1 = new ErrorCode("ERROR_NONE", 0, "successful");
      ERROR_NONE = localErrorCode1;
      ErrorCode localErrorCode2 = new ErrorCode("ERROR_NOT_SUPPORT", 1, "no support account service");
      ERROR_NOT_SUPPORT = localErrorCode2;
      ErrorCode localErrorCode3 = new ErrorCode("ERROR_PRE_ANDROID_O", 2, "no support account service, and pre o version");
      ERROR_PRE_ANDROID_O = localErrorCode3;
      ErrorCode localErrorCode4 = new ErrorCode("ERROR_NO_ACCOUNT", 3, "no account");
      ERROR_NO_ACCOUNT = localErrorCode4;
      ErrorCode localErrorCode5 = new ErrorCode("ERROR_NO_PERMISSION", 4, "no access account service permission");
      ERROR_NO_PERMISSION = localErrorCode5;
      ErrorCode localErrorCode6 = new ErrorCode("ERROR_CANCELLED", 5, "task cancelled");
      ERROR_CANCELLED = localErrorCode6;
      ErrorCode localErrorCode7 = new ErrorCode("ERROR_EXECUTION", 6, "execution error");
      ERROR_EXECUTION = localErrorCode7;
      ErrorCode localErrorCode8 = new ErrorCode("ERROR_UNKNOWN", 7, "unknown");
      ERROR_UNKNOWN = localErrorCode8;
      $VALUES = new ErrorCode[] { localErrorCode1, localErrorCode2, localErrorCode3, localErrorCode4, localErrorCode5, localErrorCode6, localErrorCode7, localErrorCode8 };
    }
    
    private ErrorCode(String paramString)
    {
      this.errorMsg = paramString;
    }
  }
  
  class a
    implements Parcelable.Creator<XmAccountVisibility>
  {
    public XmAccountVisibility a(Parcel paramParcel)
    {
      return new XmAccountVisibility(paramParcel);
    }
    
    public XmAccountVisibility[] b(int paramInt)
    {
      return new XmAccountVisibility[0];
    }
  }
  
  public static class b
  {
    private final XmAccountVisibility.ErrorCode a;
    private final String b;
    private boolean c;
    private Account d;
    private int e;
    private Intent f;
    
    public b(XmAccountVisibility.ErrorCode paramErrorCode, String paramString)
    {
      this.a = paramErrorCode;
      this.e = Build.VERSION.SDK_INT;
      String str = paramString;
      if (TextUtils.isEmpty(paramString)) {
        str = paramErrorCode.errorMsg;
      }
      this.b = str;
    }
    
    public b g(boolean paramBoolean, Account paramAccount)
    {
      this.c = paramBoolean;
      this.d = paramAccount;
      return this;
    }
    
    public XmAccountVisibility h()
    {
      return new XmAccountVisibility(this);
    }
    
    public b i(Intent paramIntent)
    {
      this.f = paramIntent;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.servicetoken.data.XmAccountVisibility
 * JD-Core Version:    0.7.0.1
 */