package com.market.sdk;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ApkVerifyInfo
  implements Parcelable
{
  public static final Parcelable.Creator<ApkVerifyInfo> CREATOR = new a();
  public static final int STATUS_CONNECTION_FAILED = 3;
  public static final int STATUS_INCONSISTENT_CERTIFICATES = 2;
  public static final int STATUS_NOT_INCLUDED = 4;
  public static final int STATUS_OK = 0;
  public static final int STATUS_OLDER = 1;
  public static final int STATUS_PROCESSING = 6;
  public static final int STATUS_RESULT_INVALID = 5;
  public String mAppId;
  public String mAppName;
  public String mInstallerName;
  public Intent mIntent;
  public boolean mNeedFullScan;
  public long mNonce;
  public String mPackageName;
  public int mStatus;
  public long mTimeStamp;
  public String mToken;
  public String mUpdateLog;
  public long mUpdateTime;
  public int mVersionCode;
  public String mVersionName;
  
  public ApkVerifyInfo()
  {
    this.mStatus = 4;
    this.mVersionName = "";
    this.mVersionCode = 0;
    this.mUpdateTime = 0L;
    this.mUpdateLog = "";
    this.mNonce = 0L;
    this.mTimeStamp = 0L;
    this.mAppName = "";
    this.mInstallerName = "";
    this.mAppId = "";
    this.mPackageName = "";
    this.mToken = "";
  }
  
  public ApkVerifyInfo(int paramInt)
  {
    this.mVersionName = "";
    this.mVersionCode = 0;
    this.mUpdateTime = 0L;
    this.mUpdateLog = "";
    this.mNonce = 0L;
    this.mTimeStamp = 0L;
    this.mAppName = "";
    this.mInstallerName = "";
    this.mAppId = "";
    this.mPackageName = "";
    this.mToken = "";
    this.mStatus = paramInt;
  }
  
  public ApkVerifyInfo(Parcel paramParcel)
  {
    this.mStatus = 4;
    this.mVersionName = "";
    this.mVersionCode = 0;
    this.mUpdateTime = 0L;
    this.mUpdateLog = "";
    this.mNonce = 0L;
    this.mTimeStamp = 0L;
    this.mAppName = "";
    this.mInstallerName = "";
    this.mAppId = "";
    this.mPackageName = "";
    this.mToken = "";
    this.mStatus = paramParcel.readInt();
    this.mVersionName = paramParcel.readString();
    this.mVersionCode = paramParcel.readInt();
    this.mUpdateTime = paramParcel.readLong();
    this.mUpdateLog = paramParcel.readString();
    this.mNonce = paramParcel.readLong();
    this.mTimeStamp = paramParcel.readLong();
    this.mAppName = paramParcel.readString();
    this.mInstallerName = paramParcel.readString();
    this.mAppId = paramParcel.readString();
    this.mPackageName = paramParcel.readString();
    this.mIntent = ((Intent)paramParcel.readParcelable(null));
  }
  
  public boolean canReplaceByAppStore()
  {
    int i = this.mStatus;
    return (i == 0) || (i == 1) || (i == 2);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.mStatus);
    paramParcel.writeString(this.mVersionName);
    paramParcel.writeInt(this.mVersionCode);
    paramParcel.writeLong(this.mUpdateTime);
    paramParcel.writeString(this.mUpdateLog);
    paramParcel.writeLong(this.mNonce);
    paramParcel.writeLong(this.mTimeStamp);
    paramParcel.writeString(this.mAppName);
    paramParcel.writeString(this.mInstallerName);
    paramParcel.writeString(this.mAppId);
    paramParcel.writeString(this.mPackageName);
    paramParcel.writeParcelable(this.mIntent, 0);
  }
  
  class a
    implements Parcelable.Creator<ApkVerifyInfo>
  {
    public ApkVerifyInfo a(Parcel paramParcel)
    {
      return new ApkVerifyInfo(paramParcel);
    }
    
    public ApkVerifyInfo[] b(int paramInt)
    {
      return new ApkVerifyInfo[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.ApkVerifyInfo
 * JD-Core Version:    0.7.0.1
 */