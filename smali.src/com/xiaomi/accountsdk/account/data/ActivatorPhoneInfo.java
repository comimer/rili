package com.xiaomi.accountsdk.account.data;

import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ActivatorPhoneInfo
  implements Parcelable
{
  public static final Parcelable.Creator<ActivatorPhoneInfo> CREATOR = new a();
  public static final boolean IS_VERIFIED_DEFAULT_VALUE = false;
  private static final String KEY_ACTIVATOR_TOKEN = "activator_token";
  private static final String KEY_COPY_WRITER = "copy_writer";
  private static final String KEY_IS_VERIFIED = "is_verified";
  private static final String KEY_NEED_VERIFY = "need_verify";
  private static final String KEY_OPERATOR_LINK = "operator_link";
  private static final String KEY_PHONE = "phone";
  private static final String KEY_PHONE_HASH = "phone_hash";
  private static final String KEY_SLOT_ID = "slot_id";
  public static final boolean NEED_VERIFY_DEFAULT_VALUE = true;
  public final String activatorToken;
  public final String copyWriter;
  public final boolean isVerified;
  public final boolean needVerify;
  public final String operatorLink;
  public final String phone;
  public final String phoneHash;
  public final int slotId;
  
  public ActivatorPhoneInfo(b paramb)
  {
    this.phone = b.a(paramb);
    this.phoneHash = b.b(paramb);
    this.activatorToken = b.c(paramb);
    this.slotId = b.d(paramb);
    this.copyWriter = b.e(paramb);
    this.operatorLink = b.f(paramb);
    this.needVerify = b.g(paramb);
    this.isVerified = b.h(paramb);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean needVerifyPhone()
  {
    boolean bool;
    if ((!this.isVerified) && (this.needVerify)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("phone", this.phone);
    localBundle.putString("phone_hash", this.phoneHash);
    localBundle.putString("activator_token", this.activatorToken);
    localBundle.putInt("slot_id", this.slotId);
    localBundle.putString("copy_writer", this.copyWriter);
    localBundle.putString("operator_link", this.operatorLink);
    localBundle.putBoolean("need_verify", this.needVerify);
    localBundle.putBoolean("is_verified", this.isVerified);
    paramParcel.writeBundle(localBundle);
  }
  
  class a
    implements Parcelable.Creator<ActivatorPhoneInfo>
  {
    public ActivatorPhoneInfo a(Parcel paramParcel)
    {
      paramParcel = paramParcel.readBundle();
      if (paramParcel == null) {
        return null;
      }
      return new ActivatorPhoneInfo.b().o(paramParcel.getString("phone")).p(paramParcel.getString("phone_hash")).i(paramParcel.getString("activator_token")).q(paramParcel.getInt("slot_id")).k(paramParcel.getString("copy_writer")).n(paramParcel.getString("operator_link")).m(paramParcel.getBoolean("need_verify")).l(paramParcel.getBoolean("is_verified")).j();
    }
    
    public ActivatorPhoneInfo[] b(int paramInt)
    {
      return new ActivatorPhoneInfo[paramInt];
    }
  }
  
  public static final class b
  {
    private String a;
    private String b;
    private String c;
    private int d;
    private String e;
    private String f;
    private boolean g = true;
    private boolean h = false;
    
    public b i(String paramString)
    {
      this.c = paramString;
      return this;
    }
    
    public ActivatorPhoneInfo j()
    {
      return new ActivatorPhoneInfo(this);
    }
    
    public b k(String paramString)
    {
      this.e = paramString;
      return this;
    }
    
    public b l(boolean paramBoolean)
    {
      this.h = paramBoolean;
      return this;
    }
    
    public b m(boolean paramBoolean)
    {
      this.g = paramBoolean;
      return this;
    }
    
    public b n(String paramString)
    {
      this.f = paramString;
      return this;
    }
    
    public b o(String paramString)
    {
      this.a = paramString;
      return this;
    }
    
    public b p(String paramString)
    {
      this.b = paramString;
      return this;
    }
    
    public b q(int paramInt)
    {
      this.d = paramInt;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.data.ActivatorPhoneInfo
 * JD-Core Version:    0.7.0.1
 */