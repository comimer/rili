package com.xiaomi.passport.servicetoken;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.RemoteException;

public abstract interface a
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
    implements a
  {
    public a()
    {
      attachInterface(this, "com.xiaomi.passport.servicetoken.IServiceTokenUIResponse");
    }
    
    public static a n0(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.xiaomi.passport.servicetoken.IServiceTokenUIResponse");
      if ((localIInterface != null) && ((localIInterface instanceof a))) {
        return (a)localIInterface;
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
        paramParcel1.enforceInterface("com.xiaomi.passport.servicetoken.IServiceTokenUIResponse");
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
            paramParcel2.writeNoException();
          }
          else
          {
            e();
            paramParcel2.writeNoException();
          }
        }
        else
        {
          a((Bundle)a.b.a(paramParcel1, Bundle.CREATOR));
          paramParcel2.writeNoException();
        }
        return true;
      }
      paramParcel2.writeString("com.xiaomi.passport.servicetoken.IServiceTokenUIResponse");
      return true;
    }
    
    private static class a
      implements a
    {
      private IBinder a;
      
      a(IBinder paramIBinder)
      {
        this.a = paramIBinder;
      }
      
      public void a(Bundle paramBundle)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.passport.servicetoken.IServiceTokenUIResponse");
          a.b.b(localParcel1, paramBundle, 0);
          this.a.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
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
      
      public void b(int paramInt, String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.passport.servicetoken.IServiceTokenUIResponse");
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
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
      
      public void e()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.passport.servicetoken.IServiceTokenUIResponse");
          this.a.transact(2, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
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
 * Qualified Name:     com.xiaomi.passport.servicetoken.a
 * JD-Core Version:    0.7.0.1
 */