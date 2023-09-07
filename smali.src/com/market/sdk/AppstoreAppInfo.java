package com.market.sdk;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;
import com.google.gson.annotations.SerializedName;
import com.market.sdk.utils.e;
import java.util.ArrayList;
import java.util.List;
import miui.os.Build;

public class AppstoreAppInfo
  implements Parcelable
{
  public static final Parcelable.Creator<AppstoreAppInfo> CREATOR = new a();
  private static final long FLAG_MASK_SHOW_AD_FLAG = 1L;
  private static final int SHOW_AD_FLAG = 0;
  private static boolean sNeedInmobiParamter;
  @SerializedName("adInfoPassback")
  public String adInfoPassback;
  @SerializedName("ads")
  public int ads;
  @SerializedName("appId")
  public String appId;
  @SerializedName("appUri")
  public Uri appUri;
  @SerializedName("clickMonitorUrls")
  public List<String> clickMonitorUrls = new ArrayList();
  @SerializedName("digest")
  public String digest;
  @SerializedName("experimentalId")
  public String experimentalId;
  @SerializedName("iconMask")
  public String iconMask;
  @SerializedName("iconUri")
  public Uri iconUri;
  @SerializedName("impressionMonitorUrls")
  public List<String> impressionMonitorUrls = new ArrayList();
  @SerializedName("mApkBriefDescription")
  private String mApkBriefDescription;
  @SerializedName("mApkSize")
  private long mApkSize = -1L;
  @SerializedName("mFlag")
  private volatile long mFlag = -1L;
  @SerializedName("mParameters")
  private String mParameters;
  @SerializedName("pkgName")
  public String pkgName;
  @SerializedName("title")
  public String title;
  @SerializedName("viewMonitorUrls")
  public List<String> viewMonitorUrls = new ArrayList();
  
  static
  {
    try
    {
      if (Build.IS_DEVELOPMENT_VERSION) {
        sNeedInmobiParamter = e.a("6.3.21");
      } else if (Build.IS_STABLE_VERSION) {
        sNeedInmobiParamter = e.b("V7.3.0.0");
      }
    }
    finally
    {
      Log.e("MarketManager", localObject.toString());
    }
  }
  
  public AppstoreAppInfo() {}
  
  public AppstoreAppInfo(Parcel paramParcel)
  {
    this.appId = paramParcel.readString();
    this.pkgName = paramParcel.readString();
    this.title = paramParcel.readString();
    this.ads = paramParcel.readInt();
    this.digest = paramParcel.readString();
    this.experimentalId = paramParcel.readString();
    this.iconMask = paramParcel.readString();
    this.iconUri = ((Uri)Uri.CREATOR.createFromParcel(paramParcel));
    this.appUri = ((Uri)Uri.CREATOR.createFromParcel(paramParcel));
    if (sNeedInmobiParamter)
    {
      paramParcel.readStringList(this.viewMonitorUrls);
      paramParcel.readStringList(this.clickMonitorUrls);
      paramParcel.readStringList(this.impressionMonitorUrls);
      this.adInfoPassback = paramParcel.readString();
    }
  }
  
  private long getFlag()
  {
    if (this.mFlag != -1L) {
      return this.mFlag;
    }
    Uri localUri = this.appUri;
    long l1 = 0L;
    if (localUri != null) {}
    try
    {
      long l2 = Long.parseLong(localUri.getQueryParameter("config"));
      l1 = l2;
    }
    catch (Exception localException)
    {
      label44:
      break label44;
    }
    this.mFlag = l1;
    return this.mFlag;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public long getApkSize()
  {
    return this.mApkSize;
  }
  
  public String getBriefDescription()
  {
    return this.mApkBriefDescription;
  }
  
  public String getParameters()
  {
    return this.mParameters;
  }
  
  public void setApkSize(long paramLong)
  {
    this.mApkSize = paramLong;
  }
  
  public void setBriefDescription(String paramString)
  {
    this.mApkBriefDescription = paramString;
  }
  
  public void setParameters(String paramString)
  {
    this.mParameters = paramString;
  }
  
  public boolean shouldShowAdFlag()
  {
    int i = this.ads;
    boolean bool = true;
    if ((i != 1) || ((getFlag() & 1L) != 0L)) {
      bool = false;
    }
    return bool;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.appId);
    paramParcel.writeString(this.pkgName);
    paramParcel.writeString(this.title);
    paramParcel.writeInt(this.ads);
    paramParcel.writeString(this.digest);
    paramParcel.writeString(this.experimentalId);
    paramParcel.writeString(this.iconMask);
    Uri.writeToParcel(paramParcel, this.iconUri);
    Uri.writeToParcel(paramParcel, this.appUri);
    if (sNeedInmobiParamter)
    {
      paramParcel.writeStringList(this.viewMonitorUrls);
      paramParcel.writeStringList(this.clickMonitorUrls);
      paramParcel.writeStringList(this.impressionMonitorUrls);
      paramParcel.writeString(this.adInfoPassback);
    }
  }
  
  class a
    implements Parcelable.Creator<AppstoreAppInfo>
  {
    public AppstoreAppInfo a(Parcel paramParcel)
    {
      return new AppstoreAppInfo(paramParcel);
    }
    
    public AppstoreAppInfo[] b(int paramInt)
    {
      return new AppstoreAppInfo[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.AppstoreAppInfo
 * JD-Core Version:    0.7.0.1
 */