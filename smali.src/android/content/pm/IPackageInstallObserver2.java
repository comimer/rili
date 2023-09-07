package android.content.pm;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.RemoteException;

public abstract interface IPackageInstallObserver2
  extends IInterface
{
  public abstract void onPackageInstalled(String paramString1, int paramInt, String paramString2, Bundle paramBundle)
    throws RemoteException;
  
  public static abstract class a
    extends Binder
    implements IPackageInstallObserver2
  {
    public static final String DESCRIPTOR = "android.content.pm.IPackageInstallObserver2";
    static final int TRANSACTION_onPackageInstalled = 1;
    
    public a()
    {
      attachInterface(this, "android.content.pm.IPackageInstallObserver2");
    }
    
    public static IPackageInstallObserver2 asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("android.content.pm.IPackageInstallObserver2");
      if ((localIInterface != null) && ((localIInterface instanceof IPackageInstallObserver2))) {
        return (IPackageInstallObserver2)localIInterface;
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
        paramParcel1.enforceInterface("android.content.pm.IPackageInstallObserver2");
      }
      if (paramInt1 != 1598968902)
      {
        if (paramInt1 != 1) {
          return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
        }
        onPackageInstalled(paramParcel1.readString(), paramParcel1.readInt(), paramParcel1.readString(), (Bundle)IPackageInstallObserver2.b.a(paramParcel1, Bundle.CREATOR));
        paramParcel2.writeNoException();
        return true;
      }
      paramParcel2.writeString("android.content.pm.IPackageInstallObserver2");
      return true;
    }
    
    private static class a
      implements IPackageInstallObserver2
    {
      private IBinder a;
      
      a(IBinder paramIBinder)
      {
        this.a = paramIBinder;
      }
      
      public IBinder asBinder()
      {
        return this.a;
      }
      
      public void onPackageInstalled(String paramString1, int paramInt, String paramString2, Bundle paramBundle)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.content.pm.IPackageInstallObserver2");
          localParcel1.writeString(paramString1);
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString2);
          IPackageInstallObserver2.b.b(localParcel1, paramBundle, 0);
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
 * Qualified Name:     android.content.pm.IPackageInstallObserver2
 * JD-Core Version:    0.7.0.1
 */