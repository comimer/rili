package com.xiaomi.accountsdk.account.data;

import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class PhoneTicketLoginParams
  implements Parcelable
{
  public static final Parcelable.Creator<PhoneTicketLoginParams> CREATOR = new a();
  private static final String KEY_ACTIVATOR_PHONE_INFO = "activator_phone_info";
  private static final String KEY_DEVICE_ID = "device_id";
  private static final String KEY_HASH_ENV = "hash_env";
  private static final String KEY_PHONE = "phone";
  private static final String KEY_RETURN_STS_URL = "return_sts_url";
  private static final String KEY_SERVICE_ID = "service_id";
  private static final String KEY_TICKET = "ticket";
  private static final String KEY_TICKET_TOKEN = "ticket_token";
  public final ActivatorPhoneInfo activatorPhoneInfo;
  public final String activatorToken;
  public final String deviceId;
  public final String[] hashedEnvFactors;
  public final String phone;
  public final String phoneHash;
  public final boolean returnStsUrl;
  public final String serviceId;
  public final String ticket;
  public final String ticketToken;
  
  private PhoneTicketLoginParams(b paramb)
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
    this.ticket = b.d(paramb);
    this.deviceId = b.e(paramb);
    this.serviceId = b.f(paramb);
    this.hashedEnvFactors = b.g(paramb);
    this.returnStsUrl = b.h(paramb);
  }
  
  public static b copyFrom(PhoneTicketLoginParams paramPhoneTicketLoginParams)
  {
    if (paramPhoneTicketLoginParams == null) {
      return null;
    }
    return new b().m(paramPhoneTicketLoginParams.phone, paramPhoneTicketLoginParams.ticketToken).p(paramPhoneTicketLoginParams.activatorPhoneInfo).i(paramPhoneTicketLoginParams.activatorPhoneInfo, paramPhoneTicketLoginParams.ticket).k(paramPhoneTicketLoginParams.deviceId).o(paramPhoneTicketLoginParams.serviceId).l(paramPhoneTicketLoginParams.hashedEnvFactors).n(paramPhoneTicketLoginParams.returnStsUrl);
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
    localBundle.putString("ticket", this.ticket);
    localBundle.putString("device_id", this.deviceId);
    localBundle.putString("service_id", this.serviceId);
    localBundle.putStringArray("hash_env", this.hashedEnvFactors);
    localBundle.putBoolean("return_sts_url", this.returnStsUrl);
    paramParcel.writeBundle(localBundle);
  }
  
  class a
    implements Parcelable.Creator<PhoneTicketLoginParams>
  {
    public PhoneTicketLoginParams a(Parcel paramParcel)
    {
      Bundle localBundle = paramParcel.readBundle();
      if (localBundle == null) {
        return null;
      }
      String str1 = localBundle.getString("phone");
      String str2 = localBundle.getString("ticket_token");
      ActivatorPhoneInfo localActivatorPhoneInfo = (ActivatorPhoneInfo)localBundle.getParcelable("activator_phone_info");
      paramParcel = localBundle.getString("ticket");
      return new PhoneTicketLoginParams.b().m(str1, str2).p(localActivatorPhoneInfo).i(localActivatorPhoneInfo, paramParcel).k(localBundle.getString("device_id")).o(localBundle.getString("service_id")).l(localBundle.getStringArray("hash_env")).n(localBundle.getBoolean("return_sts_url", false)).j();
    }
    
    public PhoneTicketLoginParams[] b(int paramInt)
    {
      return new PhoneTicketLoginParams[0];
    }
  }
  
  public static class b
  {
    private String a;
    private String b;
    private ActivatorPhoneInfo c;
    private String d;
    private String e;
    private String f;
    private String[] g;
    private boolean h = false;
    
    public b i(ActivatorPhoneInfo paramActivatorPhoneInfo, String paramString)
    {
      this.c = paramActivatorPhoneInfo;
      this.d = paramString;
      return this;
    }
    
    public PhoneTicketLoginParams j()
    {
      return new PhoneTicketLoginParams(this, null);
    }
    
    public b k(String paramString)
    {
      this.e = paramString;
      return this;
    }
    
    public b l(String[] paramArrayOfString)
    {
      this.g = paramArrayOfString;
      return this;
    }
    
    public b m(String paramString1, String paramString2)
    {
      this.a = paramString1;
      this.b = paramString2;
      return this;
    }
    
    public b n(boolean paramBoolean)
    {
      this.h = paramBoolean;
      return this;
    }
    
    public b o(String paramString)
    {
      this.f = paramString;
      return this;
    }
    
    public b p(ActivatorPhoneInfo paramActivatorPhoneInfo)
    {
      this.c = paramActivatorPhoneInfo;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.data.PhoneTicketLoginParams
 * JD-Core Version:    0.7.0.1
 */