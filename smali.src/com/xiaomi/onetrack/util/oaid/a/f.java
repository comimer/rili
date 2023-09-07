package com.xiaomi.onetrack.util.oaid.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;

public abstract interface f
  extends IInterface
{
  public abstract String a();
  
  public static class a
    implements f
  {
    private IBinder a;
    
    public a(IBinder paramIBinder)
    {
      this.a = paramIBinder;
    }
    
    /* Error */
    public String a()
    {
      // Byte code:
      //   0: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_1
      //   4: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_2
      //   8: aload_1
      //   9: ldc 25
      //   11: invokevirtual 29	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   14: aload_0
      //   15: getfield 15	com/xiaomi/onetrack/util/oaid/a/f$a:a	Landroid/os/IBinder;
      //   18: iconst_1
      //   19: aload_1
      //   20: aload_2
      //   21: iconst_0
      //   22: invokeinterface 35 5 0
      //   27: pop
      //   28: aload_2
      //   29: invokevirtual 38	android/os/Parcel:readException	()V
      //   32: aload_2
      //   33: invokevirtual 41	android/os/Parcel:readString	()Ljava/lang/String;
      //   36: astore_3
      //   37: goto +18 -> 55
      //   40: astore_3
      //   41: aload_2
      //   42: invokevirtual 44	android/os/Parcel:recycle	()V
      //   45: aload_1
      //   46: invokevirtual 44	android/os/Parcel:recycle	()V
      //   49: aload_3
      //   50: invokevirtual 49	java/lang/Throwable:printStackTrace	()V
      //   53: aconst_null
      //   54: astore_3
      //   55: aload_2
      //   56: invokevirtual 44	android/os/Parcel:recycle	()V
      //   59: aload_1
      //   60: invokevirtual 44	android/os/Parcel:recycle	()V
      //   63: aload_3
      //   64: areturn
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	65	0	this	a
      //   3	57	1	localParcel1	android.os.Parcel
      //   7	49	2	localParcel2	android.os.Parcel
      //   36	1	3	str1	String
      //   40	10	3	localObject	Object
      //   54	10	3	str2	String
      // Exception table:
      //   from	to	target	type
      //   8	37	40	finally
    }
    
    public IBinder asBinder()
    {
      return this.a;
    }
  }
  
  public static abstract class b
    extends Binder
    implements f
  {
    public b()
    {
      attachInterface(this, "com.samsung.android.deviceidservice.IDeviceIdService");
    }
    
    public f a(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      if (paramIBinder.queryLocalInterface("com.samsung.android.deviceidservice.IDeviceIdService") == null) {
        return null;
      }
      return new f.a(paramIBinder);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.oaid.a.f
 * JD-Core Version:    0.7.0.1
 */