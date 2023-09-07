package com.market.sdk;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;

public class AdsBannerInfo
  implements Parcelable
{
  public static final Parcelable.Creator<AdsBannerInfo> CREATOR = new a();
  @SerializedName("iconUri")
  public Uri iconUri;
  @SerializedName("iconUrl")
  public String iconUrl;
  @SerializedName("uri")
  public Uri uri;
  
  public AdsBannerInfo() {}
  
  public AdsBannerInfo(Parcel paramParcel)
  {
    this.iconUrl = paramParcel.readString();
    this.uri = ((Uri)Uri.CREATOR.createFromParcel(paramParcel));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.iconUrl);
    Uri.writeToParcel(paramParcel, this.uri);
  }
  
  class a
    implements Parcelable.Creator<AdsBannerInfo>
  {
    public AdsBannerInfo a(Parcel paramParcel)
    {
      return new AdsBannerInfo(paramParcel);
    }
    
    public AdsBannerInfo[] b(int paramInt)
    {
      return new AdsBannerInfo[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.AdsBannerInfo
 * JD-Core Version:    0.7.0.1
 */