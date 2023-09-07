package com.xiaomi.accounts;

import android.accounts.Account;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.RemoteException;

public abstract interface f
  extends IInterface
{
  public abstract void D(g paramg, Account paramAccount, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void N(g paramg, String paramString)
    throws RemoteException;
  
  public abstract void P(g paramg, Account paramAccount, String[] paramArrayOfString)
    throws RemoteException;
  
  public abstract void S(g paramg, Account paramAccount, String paramString, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void U(g paramg, Account paramAccount)
    throws RemoteException;
  
  public abstract void q(g paramg, String paramString)
    throws RemoteException;
  
  public abstract void w(g paramg, Account paramAccount, String paramString, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void z(g paramg, String paramString1, String paramString2, String[] paramArrayOfString, Bundle paramBundle)
    throws RemoteException;
  
  public static abstract class a
    extends Binder
    implements f
  {
    public a()
    {
      attachInterface(this, "com.xiaomi.accounts.IAccountAuthenticator");
    }
    
    public static f n0(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.xiaomi.accounts.IAccountAuthenticator");
      if ((localIInterface != null) && ((localIInterface instanceof f))) {
        return (f)localIInterface;
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
        paramParcel1.enforceInterface("com.xiaomi.accounts.IAccountAuthenticator");
      }
      if (paramInt1 != 1598968902)
      {
        switch (paramInt1)
        {
        default: 
          return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
        case 8: 
          U(g.a.n0(paramParcel1.readStrongBinder()), (Account)f.b.a(paramParcel1, Account.CREATOR));
          break;
        case 7: 
          P(g.a.n0(paramParcel1.readStrongBinder()), (Account)f.b.a(paramParcel1, Account.CREATOR), paramParcel1.createStringArray());
          break;
        case 6: 
          N(g.a.n0(paramParcel1.readStrongBinder()), paramParcel1.readString());
          break;
        case 5: 
          S(g.a.n0(paramParcel1.readStrongBinder()), (Account)f.b.a(paramParcel1, Account.CREATOR), paramParcel1.readString(), (Bundle)f.b.a(paramParcel1, Bundle.CREATOR));
          break;
        case 4: 
          q(g.a.n0(paramParcel1.readStrongBinder()), paramParcel1.readString());
          break;
        case 3: 
          w(g.a.n0(paramParcel1.readStrongBinder()), (Account)f.b.a(paramParcel1, Account.CREATOR), paramParcel1.readString(), (Bundle)f.b.a(paramParcel1, Bundle.CREATOR));
          break;
        case 2: 
          D(g.a.n0(paramParcel1.readStrongBinder()), (Account)f.b.a(paramParcel1, Account.CREATOR), (Bundle)f.b.a(paramParcel1, Bundle.CREATOR));
          break;
        case 1: 
          z(g.a.n0(paramParcel1.readStrongBinder()), paramParcel1.readString(), paramParcel1.readString(), paramParcel1.createStringArray(), (Bundle)f.b.a(paramParcel1, Bundle.CREATOR));
        }
        return true;
      }
      paramParcel2.writeString("com.xiaomi.accounts.IAccountAuthenticator");
      return true;
    }
    
    private static class a
      implements f
    {
      private IBinder a;
      
      a(IBinder paramIBinder)
      {
        this.a = paramIBinder;
      }
      
      public void D(g paramg, Account paramAccount, Bundle paramBundle)
        throws RemoteException
      {
        Parcel localParcel = Parcel.obtain();
        try
        {
          localParcel.writeInterfaceToken("com.xiaomi.accounts.IAccountAuthenticator");
          localParcel.writeStrongInterface(paramg);
          f.b.b(localParcel, paramAccount, 0);
          f.b.b(localParcel, paramBundle, 0);
          this.a.transact(2, localParcel, null, 1);
          return;
        }
        finally
        {
          localParcel.recycle();
        }
      }
      
      public void U(g paramg, Account paramAccount)
        throws RemoteException
      {
        Parcel localParcel = Parcel.obtain();
        try
        {
          localParcel.writeInterfaceToken("com.xiaomi.accounts.IAccountAuthenticator");
          localParcel.writeStrongInterface(paramg);
          f.b.b(localParcel, paramAccount, 0);
          this.a.transact(8, localParcel, null, 1);
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
      
      public void w(g paramg, Account paramAccount, String paramString, Bundle paramBundle)
        throws RemoteException
      {
        Parcel localParcel = Parcel.obtain();
        try
        {
          localParcel.writeInterfaceToken("com.xiaomi.accounts.IAccountAuthenticator");
          localParcel.writeStrongInterface(paramg);
          f.b.b(localParcel, paramAccount, 0);
          localParcel.writeString(paramString);
          f.b.b(localParcel, paramBundle, 0);
          this.a.transact(3, localParcel, null, 1);
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
 * Qualified Name:     com.xiaomi.accounts.f
 * JD-Core Version:    0.7.0.1
 */