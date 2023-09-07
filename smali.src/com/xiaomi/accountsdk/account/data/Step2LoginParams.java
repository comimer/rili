package com.xiaomi.accountsdk.account.data;

import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Step2LoginParams
  implements Parcelable
{
  public static final Parcelable.Creator<Step2LoginParams> CREATOR = new a();
  private static final String DEVICE_ID = "deviceId";
  private static final String RETURN_STS_URL = "returnStsUrl";
  public String deviceId;
  public final MetaLoginData metaLoginData;
  public boolean returnStsUrl;
  public final String serviceId;
  public final String step1Token;
  public final String step2code;
  public final boolean trust;
  public final String userId;
  
  public Step2LoginParams(Parcel paramParcel)
  {
    this.userId = paramParcel.readString();
    this.serviceId = paramParcel.readString();
    this.step1Token = paramParcel.readString();
    this.step2code = paramParcel.readString();
    boolean bool;
    if (paramParcel.readInt() != 0) {
      bool = true;
    } else {
      bool = false;
    }
    this.trust = bool;
    this.metaLoginData = ((MetaLoginData)paramParcel.readParcelable(MetaLoginData.class.getClassLoader()));
    paramParcel = paramParcel.readBundle();
    if (paramParcel != null)
    {
      this.returnStsUrl = paramParcel.getBoolean("returnStsUrl", false);
      this.deviceId = paramParcel.getString("deviceId");
    }
  }
  
  private Step2LoginParams(b paramb)
  {
    this.userId = b.a(paramb);
    this.serviceId = b.b(paramb);
    this.step1Token = b.c(paramb);
    this.step2code = b.d(paramb);
    this.metaLoginData = b.e(paramb);
    this.trust = b.f(paramb);
    this.returnStsUrl = b.g(paramb);
    this.deviceId = b.h(paramb);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.userId);
    paramParcel.writeString(this.serviceId);
    paramParcel.writeString(this.step1Token);
    paramParcel.writeString(this.step2code);
    paramParcel.writeInt(this.trust);
    paramParcel.writeParcelable(this.metaLoginData, paramInt);
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("returnStsUrl", this.returnStsUrl);
    localBundle.putString("deviceId", this.deviceId);
    paramParcel.writeBundle(localBundle);
  }
  
  class a
    implements Parcelable.Creator<Step2LoginParams>
  {
    public Step2LoginParams a(Parcel paramParcel)
    {
      return new Step2LoginParams(paramParcel);
    }
    
    public Step2LoginParams[] b(int paramInt)
    {
      return new Step2LoginParams[paramInt];
    }
  }
  
  public static class b
  {
    private MetaLoginData a;
    private String b;
    private String c;
    private String d;
    private String e;
    private boolean f;
    private String g;
    private boolean h;
    
    public Step2LoginParams i()
    {
      return new Step2LoginParams(this, null);
    }
    
    public b j(MetaLoginData paramMetaLoginData)
    {
      this.a = paramMetaLoginData;
      return this;
    }
    
    public b k(String paramString)
    {
      this.d = paramString;
      return this;
    }
    
    public b l(String paramString)
    {
      this.c = paramString;
      return this;
    }
    
    public b m(String paramString)
    {
      this.b = paramString;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.data.Step2LoginParams
 * JD-Core Version:    0.7.0.1
 */