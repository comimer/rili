package k7;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;

public abstract interface b
  extends IInterface
{
  public abstract void a(Bundle paramBundle)
    throws RemoteException;
  
  public abstract void b(int paramInt, String paramString)
    throws RemoteException;
  
  public static abstract class a
    extends Binder
    implements b
  {
    public a()
    {
      attachInterface(this, "com.xiaomi.phonenum.service.IAccountPhoneNumberResponse");
    }
    
    public IBinder asBinder()
    {
      return this;
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      if ((paramInt1 >= 1) && (paramInt1 <= 16777215)) {
        paramParcel1.enforceInterface("com.xiaomi.phonenum.service.IAccountPhoneNumberResponse");
      }
      if (paramInt1 != 1598968902)
      {
        if (paramInt1 != 1)
        {
          if (paramInt1 != 2) {
            return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
          }
          b(paramParcel1.readInt(), paramParcel1.readString());
        }
        else
        {
          a((Bundle)b.b.a(paramParcel1, Bundle.CREATOR));
        }
        return true;
      }
      paramParcel2.writeString("com.xiaomi.phonenum.service.IAccountPhoneNumberResponse");
      return true;
    }
  }
  
  public static class b
  {
    private static <T> T b(Parcel paramParcel, Parcelable.Creator<T> paramCreator)
    {
      if (paramParcel.readInt() != 0) {
        return paramCreator.createFromParcel(paramParcel);
      }
      return null;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     k7.b
 * JD-Core Version:    0.7.0.1
 */