package k7;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.xiaomi.phonenum.data.AccountCertification;

public abstract interface a
  extends IInterface
{
  public abstract void b0(String paramString1, String paramString2, String[] paramArrayOfString, b paramb, String paramString3)
    throws RemoteException;
  
  public abstract void t(String paramString1, String paramString2, int paramInt, b paramb, String paramString3)
    throws RemoteException;
  
  public abstract int v(String paramString1, String paramString2, AccountCertification paramAccountCertification)
    throws RemoteException;
  
  public static abstract class a
    extends Binder
    implements a
  {
    public static a n0(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.xiaomi.phonenum.service.IAccountPhoneNumberManagerService");
      if ((localIInterface != null) && ((localIInterface instanceof a))) {
        return (a)localIInterface;
      }
      return new a(paramIBinder);
    }
    
    private static class a
      implements a
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
      
      public void b0(String paramString1, String paramString2, String[] paramArrayOfString, b paramb, String paramString3)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.phonenum.service.IAccountPhoneNumberManagerService");
          localParcel1.writeString(paramString1);
          localParcel1.writeString(paramString2);
          localParcel1.writeStringArray(paramArrayOfString);
          localParcel1.writeStrongInterface(paramb);
          localParcel1.writeString(paramString3);
          this.a.transact(5, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public void t(String paramString1, String paramString2, int paramInt, b paramb, String paramString3)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.phonenum.service.IAccountPhoneNumberManagerService");
          localParcel1.writeString(paramString1);
          localParcel1.writeString(paramString2);
          localParcel1.writeInt(paramInt);
          localParcel1.writeStrongInterface(paramb);
          localParcel1.writeString(paramString3);
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
      
      public int v(String paramString1, String paramString2, AccountCertification paramAccountCertification)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.phonenum.service.IAccountPhoneNumberManagerService");
          localParcel1.writeString(paramString1);
          localParcel1.writeString(paramString2);
          a.b.a(localParcel1, paramAccountCertification, 0);
          this.a.transact(3, localParcel1, localParcel2, 0);
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
    }
  }
  
  public static class b
  {
    private static <T extends Parcelable> void b(Parcel paramParcel, T paramT, int paramInt)
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
 * Qualified Name:     k7.a
 * JD-Core Version:    0.7.0.1
 */