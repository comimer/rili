package com.market.sdk.homeguide;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.market.sdk.AbsParcelable;

public class HomeUserGuideData
  extends AbsParcelable
{
  public static final Parcelable.Creator<HomeUserGuideData> CREATOR = new a();
  private Uri homeScreen;
  private String localFilePath;
  private ViewConfig viewConfig;
  
  public HomeUserGuideData() {}
  
  protected HomeUserGuideData(Parcel paramParcel)
  {
    super(paramParcel);
    this.viewConfig = ((ViewConfig)paramParcel.readSerializable());
    this.homeScreen = ((Uri)paramParcel.readParcelable(Uri.class.getClassLoader()));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Uri getHomeScreenUri()
  {
    return this.homeScreen;
  }
  
  public String getLocalFilePath()
  {
    return this.localFilePath;
  }
  
  public ViewConfig getViewConfig()
  {
    return this.viewConfig;
  }
  
  public boolean isValid()
  {
    ViewConfig localViewConfig = this.viewConfig;
    if ((localViewConfig != null) && (localViewConfig.isValid())) {
      return this.homeScreen != null;
    }
    return false;
  }
  
  public void setHomeScreenUri(Uri paramUri)
  {
    this.homeScreen = paramUri;
  }
  
  public void setLocalFilePath(String paramString)
  {
    this.localFilePath = paramString;
  }
  
  public void setViewConfig(ViewConfig paramViewConfig)
  {
    this.viewConfig = paramViewConfig;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeSerializable(this.viewConfig);
    paramParcel.writeParcelable(this.homeScreen, 0);
  }
  
  class a
    implements Parcelable.Creator<HomeUserGuideData>
  {
    public HomeUserGuideData a(Parcel paramParcel)
    {
      return new HomeUserGuideData(paramParcel);
    }
    
    public HomeUserGuideData[] b(int paramInt)
    {
      return new HomeUserGuideData[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.homeguide.HomeUserGuideData
 * JD-Core Version:    0.7.0.1
 */