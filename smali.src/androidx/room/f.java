package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface f
  extends IInterface
{
  public abstract int A(e parame, String paramString)
    throws RemoteException;
  
  public abstract void c0(int paramInt, String[] paramArrayOfString)
    throws RemoteException;
  
  public abstract void h0(e parame, int paramInt)
    throws RemoteException;
  
  public static abstract class a
    extends Binder
    implements f
  {
    public a()
    {
      attachInterface(this, "androidx.room.IMultiInstanceInvalidationService");
    }
    
    public static f n0(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationService");
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
      if (paramInt1 != 1)
      {
        if (paramInt1 != 2)
        {
          if (paramInt1 != 3)
          {
            if (paramInt1 != 1598968902) {
              return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
            }
            paramParcel2.writeString("androidx.room.IMultiInstanceInvalidationService");
            return true;
          }
          paramParcel1.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
          c0(paramParcel1.readInt(), paramParcel1.createStringArray());
          return true;
        }
        paramParcel1.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
        h0(e.a.n0(paramParcel1.readStrongBinder()), paramParcel1.readInt());
        paramParcel2.writeNoException();
        return true;
      }
      paramParcel1.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
      paramInt1 = A(e.a.n0(paramParcel1.readStrongBinder()), paramParcel1.readString());
      paramParcel2.writeNoException();
      paramParcel2.writeInt(paramInt1);
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
      
      public int A(e parame, String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
          if (parame != null) {
            parame = parame.asBinder();
          } else {
            parame = null;
          }
          localParcel1.writeStrongBinder(parame);
          localParcel1.writeString(paramString);
          this.a.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          return i;
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
      
      public void c0(int paramInt, String[] paramArrayOfString)
        throws RemoteException
      {
        Parcel localParcel = Parcel.obtain();
        try
        {
          localParcel.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
          localParcel.writeInt(paramInt);
          localParcel.writeStringArray(paramArrayOfString);
          this.a.transact(3, localParcel, null, 1);
          return;
        }
        finally
        {
          localParcel.recycle();
        }
      }
      
      public void h0(e parame, int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
          if (parame != null) {
            parame = parame.asBinder();
          } else {
            parame = null;
          }
          localParcel1.writeStrongBinder(parame);
          localParcel1.writeInt(paramInt);
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
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.room.f
 * JD-Core Version:    0.7.0.1
 */