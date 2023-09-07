package com.xiaomi.accountsdk.account.data;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class NotificationAuthResult
  implements Parcelable
{
  public static final Parcelable.Creator<NotificationAuthResult> CREATOR = new a();
  public String pSecurity_ph;
  public String pSecurity_slh;
  public String serviceToken;
  public String userId;
  
  public NotificationAuthResult(Parcel paramParcel)
  {
    this.userId = paramParcel.readString();
    this.serviceToken = paramParcel.readString();
    this.pSecurity_ph = paramParcel.readString();
    this.pSecurity_slh = paramParcel.readString();
  }
  
  private NotificationAuthResult(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.userId = paramString1;
    this.serviceToken = paramString2;
    this.pSecurity_ph = paramString3;
    this.pSecurity_slh = paramString4;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.userId);
    paramParcel.writeString(this.serviceToken);
    paramParcel.writeString(this.pSecurity_ph);
    paramParcel.writeString(this.pSecurity_slh);
  }
  
  class a
    implements Parcelable.Creator<NotificationAuthResult>
  {
    public NotificationAuthResult a(Parcel paramParcel)
    {
      return new NotificationAuthResult(paramParcel);
    }
    
    public NotificationAuthResult[] b(int paramInt)
    {
      return new NotificationAuthResult[paramInt];
    }
  }
  
  public static class b
  {
    private String a;
    private String b;
    private String c;
    private String d;
    
    public NotificationAuthResult a()
    {
      return new NotificationAuthResult(this.a, this.b, this.c, this.d, null);
    }
    
    public b b(String paramString)
    {
      this.c = paramString;
      return this;
    }
    
    public b c(String paramString)
    {
      this.d = paramString;
      return this;
    }
    
    public b d(String paramString)
    {
      this.b = paramString;
      return this;
    }
    
    public b e(String paramString)
    {
      this.a = paramString;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.data.NotificationAuthResult
 * JD-Core Version:    0.7.0.1
 */