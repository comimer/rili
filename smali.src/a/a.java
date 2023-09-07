

android.app.Notification
android.os.Binder
android.os.IBinder
android.os.IInterface
android.os.Parcel
android.os.RemoteException

a
  

  f0, , , 
    
  
  a
    
    
  
    n0
    
       (== {
        
      
       = queryLocalInterface"android.support.v4.app.INotificationSideChannel"
       (!= {
        
      
      
    
    
    o0
    
      b
    
    
    a
      
    
      b
      a
      
      a
      
        a = paramIBinder;
      }
      
      public IBinder asBinder()
      {
        return this.a;
      }
      
      public void f0(String paramString1, int paramInt, String paramString2, Notification paramNotification)
        throws RemoteException
      {
        Parcel localParcel = Parcel.obtain();
        try
        {
          localParcel.writeInterfaceToken("android.support.v4.app.INotificationSideChannel");
          localParcel.writeString(paramString1);
          localParcel.writeInt(paramInt);
          localParcel.writeString(paramString2);
          if (paramNotification != null)
          {
            localParcel.writeInt(1);
            paramNotification.writeToParcel(localParcel, 0);
          }
          else
          {
            localParcel.writeInt(0);
          }
          if ((!this.a.transact(1, localParcel, null, 1)) && (a.a.o0() != null))
          {
            a.a.o0().f0(paramString1, paramInt, paramString2, paramNotification);
            return;
          }
          return;
        }
        finally
        {
          localParcel.recycle();
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     a.a
 * JD-Core Version:    0.7.0.1
 */