package com.xiaomi.accounts;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.RemoteException;

public abstract interface g
  extends IInterface
{
  public abstract void a(Bundle paramBundle)
    throws RemoteException;
  
  public abstract void b(int paramInt, String paramString)
    throws RemoteException;
  
  public abstract void e()
    throws RemoteException;
  
  public static abstract class a
    extends Binder
    implements g
  {
    public a()
    {
      attachInterface(this, "com.xiaomi.accounts.IAccountAuthenticatorResponse");
    }
    
    public static g n0(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.xiaomi.accounts.IAccountAuthenticatorResponse");
      if ((localIInterface != null) && ((localIInterface instanceof g))) {
        return (g)localIInterface;
      }
      return new a(paramIBinder);
    }
    
    public IBinder asBinder()
    {
      return this;
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      if ((paramInt1 >= 1) && (paramInt1 <= 16777215)) {
        paramParcel1.enforceInterface("com.xiaomi.accounts.IAccountAuthenticatorResponse");
      }
      if (paramInt1 != 1598968902)
      {
        if (paramInt1 != 1)
        {
          if (paramInt1 != 2)
          {
            if (paramInt1 != 3) {
              return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
            }
            b(paramParcel1.readInt(), paramParcel1.readString());
          }
          else
          {
            e();
          }
        }
        else {
          a((Bundle)g.b.a(paramParcel1, Bundle.CREATOR));
        }
        return true;
      }
      paramParcel2.writeString("com.xiaomi.accounts.IAccountAuthenticatorResponse");
      return true;
    }
    
    private static class a
      implements g
    {
      private IBinder a;
      
      a(IBinder paramIBinder)
      {
        this.a = paramIBinder;
      }
      
      public void a(Bundle paramBundle)
        throws RemoteException
      {
        Parcel localParcel = Parcel.obtain();
        try
        {
          localParcel.writeInterfaceToken("com.xiaomi.accounts.IAccountAuthenticatorResponse");
          g.b.b(localParcel, paramBundle, 0);
          this.a.transact(1, localParcel, null, 1);
          return;
        }
        finally
        {
          localParcel.recycle();
        }
      }
      
      public IBinder asBinder()
      {
        return this.a;
      }
      
      public void b(int paramInt, String paramString)
        throws RemoteException
      {
        Parcel localParcel = Parcel.obtain();
        try
        {
          localParcel.writeInterfaceToken("com.xiaomi.accounts.IAccountAuthenticatorResponse");
          localParcel.writeInt(paramInt);
          localParcel.writeString(paramString);
          this.a.transact(3, localParcel, null, 1);
          return;
        }
        finally
        {
          localParcel.recycle();
        }
      }
      
      public void e()
        throws RemoteException
      {
        Parcel localParcel = Parcel.obtain();
        try
        {
          localParcel.writeInterfaceToken("com.xiaomi.accounts.IAccountAuthenticatorResponse");
          this.a.transact(2, localParcel, null, 1);
          return;
        }
        finally
        {
          localParcel.recycle();
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
 * Qualified Name:     com.xiaomi.accounts.g
 * JD-Core Version:    0.7.0.1
 */