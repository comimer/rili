package com.xiaomi.accountsdk.account.data;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class NotificationLoginEndParams
  implements Parcelable
{
  public static final Parcelable.Creator<NotificationLoginEndParams> CREATOR = new a();
  public final String passToken;
  public final String serviceId;
  public final String userId;
  
  public NotificationLoginEndParams(Parcel paramParcel)
  {
    this.userId = paramParcel.readString();
    this.passToken = paramParcel.readString();
    this.serviceId = paramParcel.readString();
  }
  
  private NotificationLoginEndParams(String paramString1, String paramString2, String paramString3)
  {
    this.userId = paramString1;
    this.passToken = paramString2;
    this.serviceId = paramString3;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.userId);
    paramParcel.writeString(this.passToken);
    paramParcel.writeString(this.serviceId);
  }
  
  class a
    implements Parcelable.Creator<NotificationLoginEndParams>
  {
    public NotificationLoginEndParams a(Parcel paramParcel)
    {
      return new NotificationLoginEndParams(paramParcel);
    }
    
    public NotificationLoginEndParams[] b(int paramInt)
    {
      return new NotificationLoginEndParams[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.data.NotificationLoginEndParams
 * JD-Core Version:    0.7.0.1
 */