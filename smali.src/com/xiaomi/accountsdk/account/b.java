package com.xiaomi.accountsdk.account;

import android.accounts.Account;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public abstract interface b
  extends IInterface
{
  public abstract String V(Account paramAccount)
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
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.xiaomi.accountsdk.account.IXiaomiAccountService");
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
      
      public String V(Account paramAccount)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.accountsdk.account.IXiaomiAccountService");
          b.b.a(localParcel1, paramAccount, 0);
          this.a.transact(4, localParcel1, localParcel2, 0);
          localParcel2.readException();
          paramAccount = localParcel2.readString();
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
    }
  }
  
  public static class b
  {
    private static <T extends Parcelable> void b(Parcel paramParcel, T paramT, int paramInt)
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
 * Qualified Name:     com.xiaomi.accountsdk.account.b
 * JD-Core Version:    0.7.0.1
 */