package at.bitfire.cert4android;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface IOnCertificateDecision
  extends IInterface
{
  public static final String DESCRIPTOR = "at.bitfire.cert4android.IOnCertificateDecision";
  
  public abstract void accept()
    throws RemoteException;
  
  public abstract void reject()
    throws RemoteException;
  
  public static class Default
    implements IOnCertificateDecision
  {
    public void accept()
      throws RemoteException
    {}
    
    public IBinder asBinder()
    {
      return null;
    }
    
    public void reject()
      throws RemoteException
    {}
  }
  
  public static abstract class Stub
    extends Binder
    implements IOnCertificateDecision
  {
    static final int TRANSACTION_accept = 1;
    static final int TRANSACTION_reject = 2;
    
    public Stub()
    {
      attachInterface(this, "at.bitfire.cert4android.IOnCertificateDecision");
    }
    
    public static IOnCertificateDecision asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("at.bitfire.cert4android.IOnCertificateDecision");
      if ((localIInterface != null) && ((localIInterface instanceof IOnCertificateDecision))) {
        return (IOnCertificateDecision)localIInterface;
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
        paramParcel1.enforceInterface("at.bitfire.cert4android.IOnCertificateDecision");
      }
      if (paramInt1 != 1598968902)
      {
        if (paramInt1 != 1)
        {
          if (paramInt1 != 2) {
            return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
          }
          reject();
          paramParcel2.writeNoException();
        }
        else
        {
          accept();
          paramParcel2.writeNoException();
        }
        return true;
      }
      paramParcel2.writeString("at.bitfire.cert4android.IOnCertificateDecision");
      return true;
    }
    
    private static class Proxy
      implements IOnCertificateDecision
    {
      private IBinder mRemote;
      
      Proxy(IBinder paramIBinder)
      {
        this.mRemote = paramIBinder;
      }
      
      public void accept()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("at.bitfire.cert4android.IOnCertificateDecision");
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
      
      public IBinder asBinder()
      {
        return this.mRemote;
      }
      
      public String getInterfaceDescriptor()
      {
        return "at.bitfire.cert4android.IOnCertificateDecision";
      }
      
      public void reject()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("at.bitfire.cert4android.IOnCertificateDecision");
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
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.cert4android.IOnCertificateDecision
 * JD-Core Version:    0.7.0.1
 */