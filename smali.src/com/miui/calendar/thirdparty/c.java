package com.miui.calendar.thirdparty;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;

public abstract interface c
  extends IInterface
{
  public abstract int C()
    throws RemoteException;
  
  public abstract boolean H(EventInfo paramEventInfo)
    throws RemoteException;
  
  public abstract boolean d0()
    throws RemoteException;
  
  public abstract int m()
    throws RemoteException;
  
  public abstract void m0(EventInfo paramEventInfo, b paramb)
    throws RemoteException;
  
  public abstract String o(EventInfo paramEventInfo)
    throws RemoteException;
  
  public abstract boolean y()
    throws RemoteException;
  
  public static abstract class a
    extends Binder
    implements c
  {
    public a()
    {
      attachInterface(this, "com.miui.calendar.thirdparty.IThirdPartyEventService");
    }
    
    public IBinder asBinder()
    {
      return this;
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      if ((paramInt1 >= 1) && (paramInt1 <= 16777215)) {
        paramParcel1.enforceInterface("com.miui.calendar.thirdparty.IThirdPartyEventService");
      }
      if (paramInt1 != 1598968902)
      {
        switch (paramInt1)
        {
        default: 
          return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
        case 7: 
          paramInt1 = m();
          paramParcel2.writeNoException();
          paramParcel2.writeInt(paramInt1);
          break;
        case 6: 
          paramInt1 = C();
          paramParcel2.writeNoException();
          paramParcel2.writeInt(paramInt1);
          break;
        case 5: 
          paramInt1 = d0();
          paramParcel2.writeNoException();
          paramParcel2.writeInt(paramInt1);
          break;
        case 4: 
          paramInt1 = y();
          paramParcel2.writeNoException();
          paramParcel2.writeInt(paramInt1);
          break;
        case 3: 
          paramInt1 = H((EventInfo)c.b.a(paramParcel1, EventInfo.CREATOR));
          paramParcel2.writeNoException();
          paramParcel2.writeInt(paramInt1);
          break;
        case 2: 
          paramParcel1 = o((EventInfo)c.b.a(paramParcel1, EventInfo.CREATOR));
          paramParcel2.writeNoException();
          paramParcel2.writeString(paramParcel1);
          break;
        case 1: 
          m0((EventInfo)c.b.a(paramParcel1, EventInfo.CREATOR), b.a.n0(paramParcel1.readStrongBinder()));
          paramParcel2.writeNoException();
        }
        return true;
      }
      paramParcel2.writeString("com.miui.calendar.thirdparty.IThirdPartyEventService");
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
 * Qualified Name:     com.miui.calendar.thirdparty.c
 * JD-Core Version:    0.7.0.1
 */