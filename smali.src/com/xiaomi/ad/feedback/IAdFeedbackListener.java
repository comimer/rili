package com.xiaomi.ad.feedback;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract interface IAdFeedbackListener
  extends IInterface
{
  public abstract void onFinished(int paramInt);
  
  public static abstract class Stub
    extends Binder
    implements IAdFeedbackListener
  {
    private static final String DESCRIPTOR = "com.xiaomi.ad.feedback.IAdFeedbackListener";
    static final int TRANSACTION_onFinished = 1;
    
    public Stub()
    {
      attachInterface(this, "com.xiaomi.ad.feedback.IAdFeedbackListener");
    }
    
    public static IAdFeedbackListener asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.xiaomi.ad.feedback.IAdFeedbackListener");
      if ((localIInterface != null) && ((localIInterface instanceof IAdFeedbackListener))) {
        return (IAdFeedbackListener)localIInterface;
      }
      return new Proxy(paramIBinder);
    }
    
    public IBinder asBinder()
    {
      return this;
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    {
      if (paramInt1 != 1)
      {
        if (paramInt1 != 1598968902) {
          return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
        }
        paramParcel2.writeString("com.xiaomi.ad.feedback.IAdFeedbackListener");
        return true;
      }
      paramParcel1.enforceInterface("com.xiaomi.ad.feedback.IAdFeedbackListener");
      onFinished(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    }
    
    private static class Proxy
      implements IAdFeedbackListener
    {
      private IBinder mRemote;
      
      Proxy(IBinder paramIBinder)
      {
        this.mRemote = paramIBinder;
      }
      
      public IBinder asBinder()
      {
        return this.mRemote;
      }
      
      public String getInterfaceDescriptor()
      {
        return "com.xiaomi.ad.feedback.IAdFeedbackListener";
      }
      
      public void onFinished(int paramInt)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.ad.feedback.IAdFeedbackListener");
          localParcel1.writeInt(paramInt);
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
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.ad.feedback.IAdFeedbackListener
 * JD-Core Version:    0.7.0.1
 */