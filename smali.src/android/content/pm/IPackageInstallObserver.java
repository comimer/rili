package android.content.pm;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface IPackageInstallObserver
  extends IInterface
{
  public static final String DESCRIPTOR = "android.content.pm.IPackageInstallObserver";
  
  public abstract void packageInstalled(String paramString, int paramInt)
    throws RemoteException;
  
  public static abstract class a
    extends Binder
    implements IPackageInstallObserver
  {
    public a()
    {
      attachInterface(this, "android.content.pm.IPackageInstallObserver");
    }
    
    public IBinder asBinder()
    {
      return this;
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      if ((paramInt1 >= 1) && (paramInt1 <= 16777215)) {
        paramParcel1.enforceInterface("android.content.pm.IPackageInstallObserver");
      }
      if (paramInt1 != 1598968902)
      {
        if (paramInt1 != 1) {
          return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
        }
        packageInstalled(paramParcel1.readString(), paramParcel1.readInt());
        return true;
      }
      paramParcel2.writeString("android.content.pm.IPackageInstallObserver");
      return true;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     android.content.pm.IPackageInstallObserver
 * JD-Core Version:    0.7.0.1
 */