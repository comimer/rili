package com.xiaomi.accounts;

import android.os.BaseBundle;
import android.os.Bundle;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import android.util.Log;
import com.xiaomi.accountsdk.utils.b;

public class AccountAuthenticatorResponse
  implements Parcelable
{
  public static final Parcelable.Creator<AccountAuthenticatorResponse> CREATOR = new a();
  private static final String TAG = "AccountAuthenticator";
  private g mAccountAuthenticatorResponse;
  
  public AccountAuthenticatorResponse(Parcel paramParcel)
  {
    this.mAccountAuthenticatorResponse = g.a.n0(paramParcel.readStrongBinder());
  }
  
  public AccountAuthenticatorResponse(g paramg)
  {
    this.mAccountAuthenticatorResponse = paramg;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void onError(int paramInt, String paramString)
  {
    if (Log.isLoggable("AccountAuthenticator", 2))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("AccountAuthenticatorResponse.onError: ");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(", ");
      localStringBuilder.append(paramString);
      b.g("AccountAuthenticator", localStringBuilder.toString());
    }
    try
    {
      this.mAccountAuthenticatorResponse.b(paramInt, paramString);
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
    if (Log.isLoggable("AccountAuthenticator", 2)) {
      b.g("AccountAuthenticator", "AccountAuthenticatorResponse.onRequestContinued");
    }
    try
    {
      this.mAccountAuthenticatorResponse.e();
      label25:
      return;
    }
    catch (RemoteException localRemoteException)
    {
      break label25;
    }
  }
  
  public void onResult(Bundle paramBundle)
  {
    if (Log.isLoggable("AccountAuthenticator", 2))
    {
      paramBundle.keySet();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("AccountAuthenticatorResponse.onResult: ");
      localStringBuilder.append(c.x(paramBundle));
      b.g("AccountAuthenticator", localStringBuilder.toString());
    }
    try
    {
      this.mAccountAuthenticatorResponse.a(paramBundle);
      label57:
      return;
    }
    catch (RemoteException paramBundle)
    {
      break label57;
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeStrongBinder(this.mAccountAuthenticatorResponse.asBinder());
  }
  
  class a
    implements Parcelable.Creator<AccountAuthenticatorResponse>
  {
    public AccountAuthenticatorResponse a(Parcel paramParcel)
    {
      return new AccountAuthenticatorResponse(paramParcel);
    }
    
    public AccountAuthenticatorResponse[] b(int paramInt)
    {
      return new AccountAuthenticatorResponse[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accounts.AccountAuthenticatorResponse
 * JD-Core Version:    0.7.0.1
 */