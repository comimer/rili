package m5;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import com.xiaomi.accountsdk.account.data.AccountInfo;

public abstract interface a
  extends IInterface
{
  public abstract void M(AccountInfo paramAccountInfo, String paramString)
    throws RemoteException;
  
  public abstract AccountInfo R(String paramString)
    throws RemoteException;
  
  public static abstract class a
    extends Binder
    implements a
  {
    public a()
    {
      attachInterface(this, "com.xiaomi.account.passportsdk.account_lib.IAccountExchangeService");
    }
    
    public static a n0(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.xiaomi.account.passportsdk.account_lib.IAccountExchangeService");
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
        paramParcel1.enforceInterface("com.xiaomi.account.passportsdk.account_lib.IAccountExchangeService");
      }
      if (paramInt1 != 1598968902)
      {
        if (paramInt1 != 1)
        {
          if (paramInt1 != 2) {
            return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
          }
          paramParcel1 = R(paramParcel1.readString());
          paramParcel2.writeNoException();
          a.b.b(paramParcel2, paramParcel1, 1);
        }
        else
        {
          M((AccountInfo)a.b.a(paramParcel1, AccountInfo.CREATOR), paramParcel1.readString());
        }
        return true;
      }
      paramParcel2.writeString("com.xiaomi.account.passportsdk.account_lib.IAccountExchangeService");
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
      
      public void M(AccountInfo paramAccountInfo, String paramString)
        throws RemoteException
      {
        Parcel localParcel = Parcel.obtain();
        try
        {
          localParcel.writeInterfaceToken("com.xiaomi.account.passportsdk.account_lib.IAccountExchangeService");
          a.b.b(localParcel, paramAccountInfo, 0);
          localParcel.writeString(paramString);
          this.a.transact(1, localParcel, null, 1);
          return;
        }
        finally
        {
          localParcel.recycle();
        }
      }
      
      public IBinder asBinder()
      {
        return this.a;
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
 * Qualified Name:     m5.a
 * JD-Core Version:    0.7.0.1
 */