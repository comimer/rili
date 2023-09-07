package com.xiaomi.accountsdk.account.data;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class MetaLoginData
  implements Parcelable
{
  public static final Parcelable.Creator<MetaLoginData> CREATOR = new a();
  public final String callback;
  public final String qs;
  public final String sign;
  
  public MetaLoginData(Parcel paramParcel)
  {
    this.sign = paramParcel.readString();
    this.qs = paramParcel.readString();
    this.callback = paramParcel.readString();
  }
  
  public MetaLoginData(String paramString1, String paramString2, String paramString3)
  {
    this.sign = paramString1;
    this.qs = paramString2;
    this.callback = paramString3;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.sign);
    paramParcel.writeString(this.qs);
    paramParcel.writeString(this.callback);
  }
  
  class a
    implements Parcelable.Creator<MetaLoginData>
  {
    public MetaLoginData a(Parcel paramParcel)
    {
      return new MetaLoginData(paramParcel);
    }
    
    public MetaLoginData[] b(int paramInt)
    {
      return new MetaLoginData[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.data.MetaLoginData
 * JD-Core Version:    0.7.0.1
 */