package com.xiaomi.passport.LocalFeatures;

import android.os.Bundle;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import r5.a;
import r5.a.a;

public class LocalFeaturesManagerResponse
  implements Parcelable
{
  public static final Parcelable.Creator<LocalFeaturesManagerResponse> CREATOR = new a();
  private static final String TAG = "LocalFeaturesManagerRes";
  private a mLocalFeatureManagerResponse;
  
  public LocalFeaturesManagerResponse(Parcel paramParcel)
  {
    this.mLocalFeatureManagerResponse = a.a.n0(paramParcel.readStrongBinder());
  }
  
  public LocalFeaturesManagerResponse(a parama)
  {
    this.mLocalFeatureManagerResponse = parama;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void onError(int paramInt, String paramString)
  {
    try
    {
      this.mLocalFeatureManagerResponse.b(paramInt, paramString);
      label11:
      return;
    }
    catch (RemoteException paramString)
    {
      break label11;
    }
  }
  
  public void onRequestContinued()
  {
    try
    {
      this.mLocalFeatureManagerResponse.e();
      label9:
      return;
    }
    catch (RemoteException localRemoteException)
    {
      break label9;
    }
  }
  
  public void onResult(Bundle paramBundle)
  {
    try
    {
      this.mLocalFeatureManagerResponse.a(paramBundle);
      label10:
      return;
    }
    catch (RemoteException paramBundle)
    {
      break label10;
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeStrongBinder(this.mLocalFeatureManagerResponse.asBinder());
  }
  
  class a
    implements Parcelable.Creator<LocalFeaturesManagerResponse>
  {
    public LocalFeaturesManagerResponse a(Parcel paramParcel)
    {
      return new LocalFeaturesManagerResponse(paramParcel);
    }
    
    public LocalFeaturesManagerResponse[] b(int paramInt)
    {
      return new LocalFeaturesManagerResponse[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.LocalFeatures.LocalFeaturesManagerResponse
 * JD-Core Version:    0.7.0.1
 */