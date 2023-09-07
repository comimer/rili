package com.xiaomi.onetrack.util.oaid.a;

import android.os.IBinder;
import android.os.IInterface;

public abstract interface b
  extends IInterface
{
  public abstract String a();
  
  public abstract boolean b();
  
  public static final class a
    implements b
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
      //   15: getfield 15	com/xiaomi/onetrack/util/oaid/a/b$a:a	Landroid/os/IBinder;
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
      //   41: aload_1
      //   42: invokevirtual 44	android/os/Parcel:recycle	()V
      //   45: aload_2
      //   46: invokevirtual 44	android/os/Parcel:recycle	()V
      //   49: aload_3
      //   50: invokevirtual 49	java/lang/Throwable:printStackTrace	()V
      //   53: aconst_null
      //   54: astore_3
      //   55: aload_1
      //   56: invokevirtual 44	android/os/Parcel:recycle	()V
      //   59: aload_2
      //   60: invokevirtual 44	android/os/Parcel:recycle	()V
      //   63: aload_3
      //   64: areturn
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	65	0	this	a
      //   3	53	1	localParcel1	android.os.Parcel
      //   7	53	2	localParcel2	android.os.Parcel
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
    
    /* Error */
    public boolean b()
    {
      // Byte code:
      //   0: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   3: astore_1
      //   4: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
      //   7: astore_2
      //   8: iconst_0
      //   9: istore_3
      //   10: aload_1
      //   11: ldc 25
      //   13: invokevirtual 29	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
      //   16: aload_0
      //   17: getfield 15	com/xiaomi/onetrack/util/oaid/a/b$a:a	Landroid/os/IBinder;
      //   20: iconst_1
      //   21: aload_1
      //   22: aload_2
      //   23: iconst_0
      //   24: invokeinterface 35 5 0
      //   29: pop
      //   30: aload_2
      //   31: invokevirtual 38	android/os/Parcel:readException	()V
      //   34: aload_2
      //   35: invokevirtual 57	android/os/Parcel:readInt	()I
      //   38: istore 4
      //   40: iload 4
      //   42: ifne +18 -> 60
      //   45: iconst_1
      //   46: istore_3
      //   47: goto +13 -> 60
      //   50: astore 5
      //   52: aload_1
      //   53: invokevirtual 44	android/os/Parcel:recycle	()V
      //   56: aload_2
      //   57: invokevirtual 44	android/os/Parcel:recycle	()V
      //   60: aload_1
      //   61: invokevirtual 44	android/os/Parcel:recycle	()V
      //   64: aload_2
      //   65: invokevirtual 44	android/os/Parcel:recycle	()V
      //   68: iload_3
      //   69: ireturn
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	70	0	this	a
      //   3	58	1	localParcel1	android.os.Parcel
      //   7	58	2	localParcel2	android.os.Parcel
      //   9	60	3	bool	boolean
      //   38	3	4	i	int
      //   50	1	5	localObject	Object
      // Exception table:
      //   from	to	target	type
      //   10	40	50	finally
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.oaid.a.b
 * JD-Core Version:    0.7.0.1
 */