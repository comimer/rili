package k2;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;

public abstract interface a
  extends IInterface
{
  public abstract void n(Message paramMessage)
    throws RemoteException;
  
  public static abstract class a
    extends Binder
    implements a
  {
    public a()
    {
      attachInterface(this, "com.android.internal.app.IMessenger");
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
        if (paramInt1 != 1598968902) {
          return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
        }
        paramParcel2.writeString("com.android.internal.app.IMessenger");
        return true;
      }
      paramParcel1.enforceInterface("com.android.internal.app.IMessenger");
      if (paramParcel1.readInt() != 0) {
        paramParcel1 = (Message)Message.CREATOR.createFromParcel(paramParcel1);
      } else {
        paramParcel1 = null;
      }
      n(paramParcel1);
      return true;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     k2.a
 * JD-Core Version:    0.7.0.1
 */