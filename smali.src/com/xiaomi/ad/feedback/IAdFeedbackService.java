package com.xiaomi.ad.feedback;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

public abstract interface IAdFeedbackService
  extends IInterface
{
  public abstract void showFeedbackWindow(IAdFeedbackListener paramIAdFeedbackListener);
  
  public abstract void showFeedbackWindowAndTrackResult(IAdFeedbackListener paramIAdFeedbackListener, String paramString1, String paramString2, String paramString3);
  
  public abstract void showFeedbackWindowAndTrackResultForMultiAds(IAdFeedbackListener paramIAdFeedbackListener, String paramString1, String paramString2, List<String> paramList);
  
  public static abstract class Stub
    extends Binder
    implements IAdFeedbackService
  {
    private static final String DESCRIPTOR = "com.xiaomi.ad.feedback.IAdFeedbackService";
    static final int TRANSACTION_showFeedbackWindow = 1;
    static final int TRANSACTION_showFeedbackWindowAndTrackResult = 2;
    static final int TRANSACTION_showFeedbackWindowAndTrackResultForMultiAds = 3;
    
    public Stub()
    {
      attachInterface(this, "com.xiaomi.ad.feedback.IAdFeedbackService");
    }
    
    public static IAdFeedbackService asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.xiaomi.ad.feedback.IAdFeedbackService");
      if ((localIInterface != null) && ((localIInterface instanceof IAdFeedbackService))) {
        return (IAdFeedbackService)localIInterface;
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
        if (paramInt1 != 2)
        {
          if (paramInt1 != 3)
          {
            if (paramInt1 != 1598968902) {
              return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
            }
            paramParcel2.writeString("com.xiaomi.ad.feedback.IAdFeedbackService");
            return true;
          }
          paramParcel1.enforceInterface("com.xiaomi.ad.feedback.IAdFeedbackService");
          showFeedbackWindowAndTrackResultForMultiAds(IAdFeedbackListener.Stub.asInterface(paramParcel1.readStrongBinder()), paramParcel1.readString(), paramParcel1.readString(), paramParcel1.createStringArrayList());
          paramParcel2.writeNoException();
          return true;
        }
        paramParcel1.enforceInterface("com.xiaomi.ad.feedback.IAdFeedbackService");
        showFeedbackWindowAndTrackResult(IAdFeedbackListener.Stub.asInterface(paramParcel1.readStrongBinder()), paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      }
      paramParcel1.enforceInterface("com.xiaomi.ad.feedback.IAdFeedbackService");
      showFeedbackWindow(IAdFeedbackListener.Stub.asInterface(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    }
    
    private static class Proxy
      implements IAdFeedbackService
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
        return "com.xiaomi.ad.feedback.IAdFeedbackService";
      }
      
      public void showFeedbackWindow(IAdFeedbackListener paramIAdFeedbackListener)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.ad.feedback.IAdFeedbackService");
          if (paramIAdFeedbackListener != null) {
            paramIAdFeedbackListener = paramIAdFeedbackListener.asBinder();
          } else {
            paramIAdFeedbackListener = null;
          }
          localParcel1.writeStrongBinder(paramIAdFeedbackListener);
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
      
      public void showFeedbackWindowAndTrackResult(IAdFeedbackListener paramIAdFeedbackListener, String paramString1, String paramString2, String paramString3)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.ad.feedback.IAdFeedbackService");
          if (paramIAdFeedbackListener != null) {
            paramIAdFeedbackListener = paramIAdFeedbackListener.asBinder();
          } else {
            paramIAdFeedbackListener = null;
          }
          localParcel1.writeStrongBinder(paramIAdFeedbackListener);
          localParcel1.writeString(paramString1);
          localParcel1.writeString(paramString2);
          localParcel1.writeString(paramString3);
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
      
      public void showFeedbackWindowAndTrackResultForMultiAds(IAdFeedbackListener paramIAdFeedbackListener, String paramString1, String paramString2, List<String> paramList)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.xiaomi.ad.feedback.IAdFeedbackService");
          if (paramIAdFeedbackListener != null) {
            paramIAdFeedbackListener = paramIAdFeedbackListener.asBinder();
          } else {
            paramIAdFeedbackListener = null;
          }
          localParcel1.writeStrongBinder(paramIAdFeedbackListener);
          localParcel1.writeString(paramString1);
          localParcel1.writeString(paramString2);
          localParcel1.writeStringList(paramList);
          this.mRemote.transact(3, localParcel1, localParcel2, 0);
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
 * Qualified Name:     com.xiaomi.ad.feedback.IAdFeedbackService
 * JD-Core Version:    0.7.0.1
 */