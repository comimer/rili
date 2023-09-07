package android.support.v4.os;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.RemoteException;

@SuppressLint({"BanParcelableUsage"})
public class ResultReceiver
  implements Parcelable
{
  public static final Parcelable.Creator<ResultReceiver> CREATOR = new a();
  final Handler mHandler;
  final boolean mLocal;
  a mReceiver;
  
  public ResultReceiver(Handler paramHandler)
  {
    this.mLocal = true;
    this.mHandler = paramHandler;
  }
  
  ResultReceiver(Parcel paramParcel)
  {
    this.mLocal = false;
    this.mHandler = null;
    this.mReceiver = a.a.n0(paramParcel.readStrongBinder());
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  protected void onReceiveResult(int paramInt, Bundle paramBundle) {}
  
  public void send(int paramInt, Bundle paramBundle)
  {
    if (this.mLocal)
    {
      localObject = this.mHandler;
      if (localObject != null) {
        ((Handler)localObject).post(new c(paramInt, paramBundle));
      } else {
        onReceiveResult(paramInt, paramBundle);
      }
      return;
    }
    Object localObject = this.mReceiver;
    if (localObject != null) {}
    try
    {
      ((a)localObject).k0(paramInt, paramBundle);
      label58:
      return;
    }
    catch (RemoteException paramBundle)
    {
      break label58;
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    try
    {
      if (this.mReceiver == null)
      {
        b localb = new android/support/v4/os/ResultReceiver$b;
        localb.<init>(this);
        this.mReceiver = localb;
      }
      paramParcel.writeStrongBinder(this.mReceiver.asBinder());
      return;
    }
    finally {}
  }
  
  class a
    implements Parcelable.Creator<ResultReceiver>
  {
    public ResultReceiver a(Parcel paramParcel)
    {
      return new ResultReceiver(paramParcel);
    }
    
    public ResultReceiver[] b(int paramInt)
    {
      return new ResultReceiver[paramInt];
    }
  }
  
  class b
    extends a.a
  {
    b() {}
    
    public void k0(int paramInt, Bundle paramBundle)
    {
      ResultReceiver localResultReceiver = ResultReceiver.this;
      Handler localHandler = localResultReceiver.mHandler;
      if (localHandler != null) {
        localHandler.post(new ResultReceiver.c(localResultReceiver, paramInt, paramBundle));
      } else {
        localResultReceiver.onReceiveResult(paramInt, paramBundle);
      }
    }
  }
  
  class c
    implements Runnable
  {
    final int a;
    final Bundle b;
    
    c(int paramInt, Bundle paramBundle)
    {
      this.a = paramInt;
      this.b = paramBundle;
    }
    
    public void run()
    {
      ResultReceiver.this.onReceiveResult(this.a, this.b);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     android.support.v4.os.ResultReceiver
 * JD-Core Version:    0.7.0.1
 */