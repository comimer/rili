package com.xiaomi.accountsdk.account.data;

import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class PasswordLoginParams
  implements Parcelable
{
  private static final String ACTIVATOR_PHONE_INFO = "activatorPhoneInfo";
  protected static final String COUNTRY_CODE = "countryCode";
  public static final Parcelable.Creator<PasswordLoginParams> CREATOR = new a();
  protected static final String DEVICE_ID = "deviceId";
  protected static final String HASHED_ENV_FACTORS = "hashedEnvFactors";
  protected static final String META_LOGIN_DATA = "metaLoginData";
  protected static final String NEED_PROCESS_NOTIFICATION = "needProcessNotification";
  protected static final String RETURN_STS_URL = "returnStsUrl";
  protected static final String TICKET_TOKEN = "ticketToken";
  public ActivatorPhoneInfo activatorPhoneInfo;
  public final String captCode;
  public final String captIck;
  public String countryCode;
  public String deviceId;
  public String[] hashedEnvFactors;
  public MetaLoginData metaLoginData;
  public boolean needProcessNotification;
  public final String password;
  public boolean returnStsUrl;
  public final String serviceId;
  public String ticketToken;
  public final String userId;
  public final String verifyToken;
  
  public PasswordLoginParams(Parcel paramParcel)
  {
    this.userId = paramParcel.readString();
    this.password = paramParcel.readString();
    this.serviceId = paramParcel.readString();
    this.verifyToken = paramParcel.readString();
    this.captCode = paramParcel.readString();
    this.captIck = paramParcel.readString();
    paramParcel = paramParcel.readBundle();
    if (paramParcel != null)
    {
      this.deviceId = paramParcel.getString("deviceId");
      this.ticketToken = paramParcel.getString("ticketToken");
      this.metaLoginData = ((MetaLoginData)paramParcel.getParcelable("metaLoginData"));
      this.returnStsUrl = paramParcel.getBoolean("returnStsUrl", false);
      this.needProcessNotification = paramParcel.getBoolean("needProcessNotification", true);
      this.hashedEnvFactors = paramParcel.getStringArray("hashedEnvFactors");
      this.activatorPhoneInfo = ((ActivatorPhoneInfo)paramParcel.getParcelable("activatorPhoneInfo"));
      this.countryCode = paramParcel.getString("countryCode");
    }
  }
  
  private PasswordLoginParams(b paramb)
  {
    this.userId = b.a(paramb);
    this.password = b.g(paramb);
    this.serviceId = b.h(paramb);
    this.verifyToken = b.i(paramb);
    this.captCode = b.j(paramb);
    this.captIck = b.k(paramb);
    this.deviceId = b.l(paramb);
    this.ticketToken = b.m(paramb);
    this.metaLoginData = b.n(paramb);
    this.returnStsUrl = b.b(paramb);
    this.needProcessNotification = b.c(paramb);
    this.hashedEnvFactors = b.d(paramb);
    this.activatorPhoneInfo = b.e(paramb);
    this.countryCode = b.f(paramb);
  }
  
  public static b copyFrom(PasswordLoginParams paramPasswordLoginParams)
  {
    if (paramPasswordLoginParams == null) {
      return null;
    }
    return new b().B(paramPasswordLoginParams.userId).y(paramPasswordLoginParams.password).z(paramPasswordLoginParams.serviceId).C(paramPasswordLoginParams.verifyToken).q(paramPasswordLoginParams.captCode).r(paramPasswordLoginParams.captIck).t(paramPasswordLoginParams.deviceId).A(paramPasswordLoginParams.ticketToken).w(paramPasswordLoginParams.metaLoginData).v(paramPasswordLoginParams.returnStsUrl).x(paramPasswordLoginParams.needProcessNotification).u(paramPasswordLoginParams.hashedEnvFactors).s(paramPasswordLoginParams.countryCode).p(paramPasswordLoginParams.activatorPhoneInfo);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.userId);
    paramParcel.writeString(this.password);
    paramParcel.writeString(this.serviceId);
    paramParcel.writeString(this.verifyToken);
    paramParcel.writeString(this.captCode);
    paramParcel.writeString(this.captIck);
    Bundle localBundle = new Bundle();
    localBundle.putString("deviceId", this.deviceId);
    localBundle.putString("ticketToken", this.ticketToken);
    localBundle.putParcelable("metaLoginData", this.metaLoginData);
    localBundle.putBoolean("returnStsUrl", this.returnStsUrl);
    localBundle.putBoolean("needProcessNotification", this.needProcessNotification);
    localBundle.putStringArray("hashedEnvFactors", this.hashedEnvFactors);
    localBundle.putParcelable("activatorPhoneInfo", this.activatorPhoneInfo);
    localBundle.putString("countryCode", this.countryCode);
    paramParcel.writeBundle(localBundle);
  }
  
  class a
    implements Parcelable.Creator<PasswordLoginParams>
  {
    public PasswordLoginParams a(Parcel paramParcel)
    {
      return new PasswordLoginParams(paramParcel);
    }
    
    public PasswordLoginParams[] b(int paramInt)
    {
      return new PasswordLoginParams[paramInt];
    }
  }
  
  public static class b
  {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private MetaLoginData i;
    private boolean j = false;
    private boolean k = true;
    private String[] l;
    private ActivatorPhoneInfo m;
    private String n;
    
    public b A(String paramString)
    {
      this.h = paramString;
      return this;
    }
    
    public b B(String paramString)
    {
      this.a = paramString;
      return this;
    }
    
    public b C(String paramString)
    {
      this.d = paramString;
      return this;
    }
    
    public PasswordLoginParams o()
    {
      return new PasswordLoginParams(this, null);
    }
    
    public b p(ActivatorPhoneInfo paramActivatorPhoneInfo)
    {
      this.m = paramActivatorPhoneInfo;
      return this;
    }
    
    public b q(String paramString)
    {
      this.e = paramString;
      return this;
    }
    
    public b r(String paramString)
    {
      this.f = paramString;
      return this;
    }
    
    public b s(String paramString)
    {
      this.n = paramString;
      return this;
    }
    
    public b t(String paramString)
    {
      this.g = paramString;
      return this;
    }
    
    public b u(String[] paramArrayOfString)
    {
      this.l = paramArrayOfString;
      return this;
    }
    
    public b v(boolean paramBoolean)
    {
      this.j = paramBoolean;
      return this;
    }
    
    public b w(MetaLoginData paramMetaLoginData)
    {
      this.i = paramMetaLoginData;
      return this;
    }
    
    public b x(boolean paramBoolean)
    {
      this.k = paramBoolean;
      return this;
    }
    
    public b y(String paramString)
    {
      this.b = paramString;
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
 * Qualified Name:     com.xiaomi.accountsdk.account.data.PasswordLoginParams
 * JD-Core Version:    0.7.0.1
 */