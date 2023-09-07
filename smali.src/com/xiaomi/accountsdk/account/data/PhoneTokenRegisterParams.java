package com.xiaomi.accountsdk.account.data;

import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;

public class PhoneTokenRegisterParams
  implements Parcelable
{
  public static final Parcelable.Creator<PhoneTokenRegisterParams> CREATOR = new a();
  private static final String KEY_ACTIVATOR_PHONE_INFO = "activator_phone_info";
  private static final String KEY_IS_NO_PASSWORD = "is_no_password";
  private static final String KEY_PASSWORD = "password";
  private static final String KEY_PHONE = "phone";
  private static final String KEY_REGION = "region";
  private static final String KEY_SERVICE_ID = "service_id";
  private static final String KEY_TICKET_TOKEN = "ticket_token";
  public final ActivatorPhoneInfo activatorPhoneInfo;
  public final String activatorToken;
  public final boolean noPwd;
  public final String password;
  public final String phone;
  public final String phoneHash;
  public final String region;
  public final String serviceId;
  public final String ticketToken;
  
  private PhoneTokenRegisterParams(b paramb)
  {
    this.phone = b.a(paramb);
    this.ticketToken = b.b(paramb);
    ActivatorPhoneInfo localActivatorPhoneInfo = b.c(paramb);
    this.activatorPhoneInfo = localActivatorPhoneInfo;
    Object localObject1 = null;
    if (localActivatorPhoneInfo != null) {
      localObject2 = localActivatorPhoneInfo.phoneHash;
    } else {
      localObject2 = null;
    }
    this.phoneHash = ((String)localObject2);
    Object localObject2 = localObject1;
    if (localActivatorPhoneInfo != null) {
      localObject2 = localActivatorPhoneInfo.activatorToken;
    }
    this.activatorToken = ((String)localObject2);
    this.password = b.d(paramb);
    this.noPwd = b.e(paramb);
    this.region = b.f(paramb);
    this.serviceId = b.g(paramb);
  }
  
  public static b copyFrom(PhoneTokenRegisterParams paramPhoneTokenRegisterParams)
  {
    if (paramPhoneTokenRegisterParams == null) {
      return null;
    }
    return new b().k(paramPhoneTokenRegisterParams.phone, paramPhoneTokenRegisterParams.ticketToken).j(paramPhoneTokenRegisterParams.activatorPhoneInfo).i(paramPhoneTokenRegisterParams.password).l(paramPhoneTokenRegisterParams.region).m(paramPhoneTokenRegisterParams.serviceId);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("phone", this.phone);
    localBundle.putString("ticket_token", this.ticketToken);
    localBundle.putParcelable("activator_phone_info", this.activatorPhoneInfo);
    localBundle.putString("password", this.password);
    localBundle.putString("region", this.region);
    localBundle.putBoolean("is_no_password", this.noPwd);
    localBundle.putString("password", this.password);
    localBundle.putString("region", this.region);
    localBundle.putString("service_id", this.serviceId);
    paramParcel.writeBundle(localBundle);
  }
  
  class a
    implements Parcelable.Creator<PhoneTokenRegisterParams>
  {
    public PhoneTokenRegisterParams a(Parcel paramParcel)
    {
      Object localObject = paramParcel.readBundle();
      if (localObject == null) {
        return null;
      }
      String str1 = ((BaseBundle)localObject).getString("phone");
      paramParcel = ((BaseBundle)localObject).getString("password");
      String str2 = ((BaseBundle)localObject).getString("ticket_token");
      ActivatorPhoneInfo localActivatorPhoneInfo = (ActivatorPhoneInfo)((Bundle)localObject).getParcelable("activator_phone_info");
      String str3 = ((BaseBundle)localObject).getString("region");
      localObject = ((BaseBundle)localObject).getString("service_id");
      return new PhoneTokenRegisterParams.b().k(str1, str2).j(localActivatorPhoneInfo).i(paramParcel).l(str3).m((String)localObject).h();
    }
    
    public PhoneTokenRegisterParams[] b(int paramInt)
    {
      return new PhoneTokenRegisterParams[0];
    }
  }
  
  public static class b
  {
    private String a;
    private String b;
    private ActivatorPhoneInfo c;
    private String d;
    private boolean e;
    private String f;
    private String g;
    
    public PhoneTokenRegisterParams h()
    {
      this.e = TextUtils.isEmpty(this.d);
      return new PhoneTokenRegisterParams(this, null);
    }
    
    public b i(String paramString)
    {
      this.d = paramString;
      return this;
    }
    
    public b j(ActivatorPhoneInfo paramActivatorPhoneInfo)
    {
      this.c = paramActivatorPhoneInfo;
      return this;
    }
    
    public b k(String paramString1, String paramString2)
    {
      this.a = paramString1;
      this.b = paramString2;
      return this;
    }
    
    public b l(String paramString)
    {
      this.f = paramString;
      return this;
    }
    
    public b m(String paramString)
    {
      this.g = paramString;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.data.PhoneTokenRegisterParams
 * JD-Core Version:    0.7.0.1
 */