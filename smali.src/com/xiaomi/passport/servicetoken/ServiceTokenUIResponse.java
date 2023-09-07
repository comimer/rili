package com.xiaomi.passport.servicetoken;

import android.os.BaseBundle;
import android.os.Bundle;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import android.util.Log;
import com.xiaomi.accountsdk.utils.b;

public class ServiceTokenUIResponse
  implements Parcelable
{
  public static final Parcelable.Creator<ServiceTokenUIResponse> CREATOR = new a();
  private static final String TAG = "ServiceTokenUIResponse";
  private a mResponse;
  
  public ServiceTokenUIResponse(Parcel paramParcel)
  {
    this.mResponse = a.a.n0(paramParcel.readStrongBinder());
  }
  
  public ServiceTokenUIResponse(a parama)
  {
    this.mResponse = parama;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void onError(int paramInt, String paramString)
  {
    if (Log.isLoggable("ServiceTokenUIResponse", 2))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("AccountAuthenticatorResponse.onError: ");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(", ");
      localStringBuilder.append(paramString);
      b.g("ServiceTokenUIResponse", localStringBuilder.toString());
    }
    try
    {
      this.mResponse.b(paramInt, paramString);
      label63:
      return;
    }
    catch (RemoteException paramString)
    {
      break label63;
    }
  }
  
  public void onRequestContinued()
  {
    if (Log.isLoggable("ServiceTokenUIResponse", 2)) {
      Log.v("ServiceTokenUIResponse", "AccountAuthenticatorResponse.onRequestContinued");
    }
    try
    {
      this.mResponse.e();
      label26:
      return;
    }
    catch (RemoteException localRemoteException)
    {
      break label26;
    }
  }
  
  public void onResult(Bundle paramBundle)
  {
    if (Log.isLoggable("ServiceTokenUIResponse", 2))
    {
      paramBundle.keySet();
      b.g("ServiceTokenUIResponse", "AccountAuthenticatorResponse.onResult");
    }
    try
    {
      this.mResponse.a(paramBundle);
      label31:
      return;
    }
    catch (RemoteException paramBundle)
    {
      break label31;
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeStrongBinder(this.mResponse.asBinder());
  }
  
  class a
    implements Parcelable.Creator<ServiceTokenUIResponse>
  {
    public ServiceTokenUIResponse a(Parcel paramParcel)
    {
      return new ServiceTokenUIResponse(paramParcel);
    }
    
    public ServiceTokenUIResponse[] b(int paramInt)
    {
      return new ServiceTokenUIResponse[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.servicetoken.ServiceTokenUIResponse
 * JD-Core Version:    0.7.0.1
 */