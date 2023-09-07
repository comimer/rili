package com.xiaomi.passport;

import android.accounts.Account;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import com.xiaomi.accountsdk.service.DeviceInfoResult;

public abstract interface b
  extends IInterface
{
  public abstract void B(Account paramAccount, String paramString, String[] paramArrayOfString1, String[] paramArrayOfString2)
    throws RemoteException;
  
  public abstract String[] G(Account paramAccount, String paramString, String[] paramArrayOfString)
    throws RemoteException;
  
  public abstract DeviceInfoResult g0(String paramString, int paramInt)
    throws RemoteException;
  
  public static abstract class a
    extends Binder
    implements b
  {
    public static b n0(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.xiaomi.passport.IPassportCommonService");
      if ((localIInterface != null) && ((localIInterface instanceof b))) {
        return (b)localIInterface;
      }
      return new a(paramIBinder);
    }
    
    private static class a
      implements b
    {
      private IBinder a;
      
      a(IBinder paramIBinder)
      {
        this.a = paramIBinder;
      }
      
      public void B(Account paramAccount, String paramString, String[] paramArrayOfString1, String[] paramArrayOfString2)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.passport.IPassportCommonService");
          b.b.a(localParcel1, paramAccount, 0);
          localParcel1.writeString(paramString);
          localParcel1.writeStringArray(paramArrayOfString1);
          localParcel1.writeStringArray(paramArrayOfString2);
          this.a.transact(3, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public String[] G(Account paramAccount, String paramString, String[] paramArrayOfString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.passport.IPassportCommonService");
          b.b.a(localParcel1, paramAccount, 0);
          localParcel1.writeString(paramString);
          localParcel1.writeStringArray(paramArrayOfString);
          this.a.transact(2, localParcel1, localParcel2, 0);
          localParcel2.readException();
          paramAccount = localParcel2.createStringArray();
          return paramAccount;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public IBinder asBinder()
      {
        return this.a;
      }
      
      public DeviceInfoResult g0(String paramString, int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.passport.IPassportCommonService");
          localParcel1.writeString(paramString);
          localParcel1.writeInt(paramInt);
          this.a.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          paramString = (DeviceInfoResult)b.b.b(localParcel2, DeviceInfoResult.CREATOR);
          return paramString;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
    }
  }
  
  public static class b
  {
    private static <T> T c(Parcel paramParcel, Parcelable.Creator<T> paramCreator)
    {
      if (paramParcel.readInt() != 0) {
        return paramCreator.createFromParcel(paramParcel);
      }
      return null;
    }
    
    private static <T extends Parcelable> void d(Parcel paramParcel, T paramT, int paramInt)
    {
      if (paramT != null)
      {
        paramParcel.writeInt(1);
        paramT.writeToParcel(paramParcel, paramInt);
      }
      else
      {
        paramParcel.writeInt(0);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.b
 * JD-Core Version:    0.7.0.1
 */