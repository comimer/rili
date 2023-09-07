package at.bitfire.cert4android;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface ICustomCertService
  extends IInterface
{
  public static final String DESCRIPTOR = "at.bitfire.cert4android.ICustomCertService";
  
  public abstract void abortCheck(IOnCertificateDecision paramIOnCertificateDecision)
    throws RemoteException;
  
  public abstract void checkTrusted(byte[] paramArrayOfByte, boolean paramBoolean1, boolean paramBoolean2, IOnCertificateDecision paramIOnCertificateDecision)
    throws RemoteException;
  
  public static class Default
    implements ICustomCertService
  {
    public void abortCheck(IOnCertificateDecision paramIOnCertificateDecision)
      throws RemoteException
    {}
    
    public IBinder asBinder()
    {
      return null;
    }
    
    public void checkTrusted(byte[] paramArrayOfByte, boolean paramBoolean1, boolean paramBoolean2, IOnCertificateDecision paramIOnCertificateDecision)
      throws RemoteException
    {}
  }
  
  public static abstract class Stub
    extends Binder
    implements ICustomCertService
  {
    static final int TRANSACTION_abortCheck = 2;
    static final int TRANSACTION_checkTrusted = 1;
    
    public Stub()
    {
      attachInterface(this, "at.bitfire.cert4android.ICustomCertService");
    }
    
    public static ICustomCertService asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("at.bitfire.cert4android.ICustomCertService");
      if ((localIInterface != null) && ((localIInterface instanceof ICustomCertService))) {
        return (ICustomCertService)localIInterface;
      }
      return new Proxy(paramIBinder);
    }
    
    public IBinder asBinder()
    {
      return this;
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      if ((paramInt1 >= 1) && (paramInt1 <= 16777215)) {
        paramParcel1.enforceInterface("at.bitfire.cert4android.ICustomCertService");
      }
      if (paramInt1 != 1598968902)
      {
        if (paramInt1 != 1)
        {
          if (paramInt1 != 2) {
            return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
          }
          abortCheck(IOnCertificateDecision.Stub.asInterface(paramParcel1.readStrongBinder()));
          paramParcel2.writeNoException();
        }
        else
        {
          byte[] arrayOfByte = paramParcel1.createByteArray();
          paramInt1 = paramParcel1.readInt();
          boolean bool1 = false;
          boolean bool2;
          if (paramInt1 != 0) {
            bool2 = true;
          } else {
            bool2 = false;
          }
          if (paramParcel1.readInt() != 0) {
            bool1 = true;
          }
          checkTrusted(arrayOfByte, bool2, bool1, IOnCertificateDecision.Stub.asInterface(paramParcel1.readStrongBinder()));
          paramParcel2.writeNoException();
        }
        return true;
      }
      paramParcel2.writeString("at.bitfire.cert4android.ICustomCertService");
      return true;
    }
    
    private static class Proxy
      implements ICustomCertService
    {
      private IBinder mRemote;
      
      Proxy(IBinder paramIBinder)
      {
        this.mRemote = paramIBinder;
      }
      
      public void abortCheck(IOnCertificateDecision paramIOnCertificateDecision)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("at.bitfire.cert4android.ICustomCertService");
          localParcel1.writeStrongInterface(paramIOnCertificateDecision);
          this.mRemote.transact(2, localParcel1, localParcel2, 0);
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
        return this.mRemote;
      }
      
      public void checkTrusted(byte[] paramArrayOfByte, boolean paramBoolean1, boolean paramBoolean2, IOnCertificateDecision paramIOnCertificateDecision)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("at.bitfire.cert4android.ICustomCertService");
          localParcel1.writeByteArray(paramArrayOfByte);
          int i;
          if (paramBoolean1) {
            i = 1;
          } else {
            i = 0;
          }
          localParcel1.writeInt(i);
          if (paramBoolean2) {
            i = 1;
          } else {
            i = 0;
          }
          localParcel1.writeInt(i);
          localParcel1.writeStrongInterface(paramIOnCertificateDecision);
          this.mRemote.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public String getInterfaceDescriptor()
      {
        return "at.bitfire.cert4android.ICustomCertService";
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.cert4android.ICustomCertService
 * JD-Core Version:    0.7.0.1
 */