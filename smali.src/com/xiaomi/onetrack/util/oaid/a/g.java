package com.xiaomi.onetrack.util.oaid.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract interface g
  extends IInterface
{
  public abstract boolean a();
  
  public abstract String b();
  
  public abstract boolean c();
  
  public abstract void d();
  
  public static abstract class a
    extends Binder
    implements g
  {
    public static class a
      implements g
    {
      private IBinder a;
      
      public a(IBinder paramIBinder)
      {
        this.a = paramIBinder;
      }
      
      public boolean a()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        boolean bool1 = false;
        boolean bool2;
        try
        {
          localParcel1.writeInterfaceToken("com.bun.lib.MsaIdInterface");
          this.a.transact(2, localParcel1, localParcel2, 0);
          localParcel2.readException();
          bool2 = bool1;
          if (localParcel2.readInt() == 0)
          {
            localParcel2.recycle();
            localParcel1.recycle();
            bool2 = true;
          }
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
          localObject.printStackTrace();
          bool2 = bool1;
        }
        return bool2;
      }
      
      public IBinder asBinder()
      {
        return this.a;
      }
      
      /* Error */
      public String b()
      {
        // Byte code:
        //   0: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_1
        //   4: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_2
        //   8: aload_1
        //   9: ldc 27
        //   11: invokevirtual 31	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 17	com/xiaomi/onetrack/util/oaid/a/g$a$a:a	Landroid/os/IBinder;
        //   18: iconst_3
        //   19: aload_1
        //   20: aload_2
        //   21: iconst_0
        //   22: invokeinterface 37 5 0
        //   27: pop
        //   28: aload_2
        //   29: invokevirtual 40	android/os/Parcel:readException	()V
        //   32: aload_2
        //   33: invokevirtual 59	android/os/Parcel:readString	()Ljava/lang/String;
        //   36: astore_3
        //   37: goto +14 -> 51
        //   40: astore_3
        //   41: aload_2
        //   42: invokevirtual 47	android/os/Parcel:recycle	()V
        //   45: aload_1
        //   46: invokevirtual 47	android/os/Parcel:recycle	()V
        //   49: aconst_null
        //   50: astore_3
        //   51: aload_2
        //   52: invokevirtual 47	android/os/Parcel:recycle	()V
        //   55: aload_1
        //   56: invokevirtual 47	android/os/Parcel:recycle	()V
        //   59: aload_3
        //   60: areturn
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	61	0	this	a
        //   3	53	1	localParcel1	Parcel
        //   7	45	2	localParcel2	Parcel
        //   36	1	3	str1	String
        //   40	1	3	localObject	Object
        //   50	10	3	str2	String
        // Exception table:
        //   from	to	target	type
        //   8	37	40	finally
      }
      
      public boolean c()
      {
        return false;
      }
      
      /* Error */
      public void d()
      {
        // Byte code:
        //   0: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_1
        //   4: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_2
        //   8: aload_1
        //   9: ldc 27
        //   11: invokevirtual 31	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 17	com/xiaomi/onetrack/util/oaid/a/g$a$a:a	Landroid/os/IBinder;
        //   18: bipush 6
        //   20: aload_1
        //   21: aload_2
        //   22: iconst_0
        //   23: invokeinterface 37 5 0
        //   28: pop
        //   29: aload_2
        //   30: invokevirtual 40	android/os/Parcel:readException	()V
        //   33: goto +12 -> 45
        //   36: astore_3
        //   37: aload_2
        //   38: invokevirtual 47	android/os/Parcel:recycle	()V
        //   41: aload_1
        //   42: invokevirtual 47	android/os/Parcel:recycle	()V
        //   45: aload_2
        //   46: invokevirtual 47	android/os/Parcel:recycle	()V
        //   49: aload_1
        //   50: invokevirtual 47	android/os/Parcel:recycle	()V
        //   53: return
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	54	0	this	a
        //   3	47	1	localParcel1	Parcel
        //   7	39	2	localParcel2	Parcel
        //   36	1	3	localObject	Object
        // Exception table:
        //   from	to	target	type
        //   8	33	36	finally
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.oaid.a.g
 * JD-Core Version:    0.7.0.1
 */