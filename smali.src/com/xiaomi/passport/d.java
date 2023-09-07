package com.xiaomi.passport;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;

public abstract interface d
  extends IInterface
{
  public abstract void a(Bundle paramBundle)
    throws RemoteException;
  
  public static abstract class a
    extends Binder
    implements d
  {
    public a()
    {
      attachInterface(this, "com.xiaomi.passport.ISecurityDeviceSignResponse");
    }
    
    public IBinder asBinder()
    {
      return this;
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      if ((paramInt1 >= 1) && (paramInt1 <= 16777215)) {
        paramParcel1.enforceInterface("com.xiaomi.passport.ISecurityDeviceSignResponse");
      }
      if (paramInt1 != 1598968902)
      {
        if (paramInt1 != 1) {
          return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
        }
        a((Bundle)d.b.a(paramParcel1, Bundle.CREATOR));
        return true;
      }
      paramParcel2.writeString("com.xiaomi.passport.ISecurityDeviceSignResponse");
      return true;
    }
  }
  
  public static class b
  {
    private static <T> T b(Parcel paramParcel, Parcelable.Creator<T> paramCreator)
    {
      if (paramParcel.readInt() != 0) {
        return paramCreator.createFromParcel(paramParcel);
      }
      return null;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.d
 * JD-Core Version:    0.7.0.1
 */