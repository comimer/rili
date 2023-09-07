package com.xiaomi.onetrack.util.oaid.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface c
  extends IInterface
{
  public abstract String a();
  
  public abstract String a(String paramString);
  
  public abstract String b();
  
  public abstract String b(String paramString);
  
  public abstract boolean c();
  
  public static abstract class a
    extends Binder
    implements c
  {
    public static c a(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.zui.deviceidservice.IDeviceidInterface");
      if ((localIInterface != null) && ((localIInterface instanceof c))) {
        return (c)localIInterface;
      }
      return new a(paramIBinder);
    }
    
    protected boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      if (paramInt1 != 1)
      {
        if (paramInt1 != 2)
        {
          if (paramInt1 != 3)
          {
            if (paramInt1 != 4)
            {
              if (paramInt1 != 5)
              {
                if (paramInt1 != 1598968902) {
                  return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
                }
                paramParcel2.writeString("com.zui.deviceidservice.IDeviceidInterface");
                return true;
              }
              paramParcel1.enforceInterface("com.zui.deviceidservice.IDeviceidInterface");
              paramParcel1 = b(paramParcel1.readString());
              paramParcel2.writeNoException();
              paramParcel2.writeString(paramParcel1);
              return true;
            }
            paramParcel1.enforceInterface("com.zui.deviceidservice.IDeviceidInterface");
            paramParcel1 = a(paramParcel1.readString());
            paramParcel2.writeNoException();
            paramParcel2.writeString(paramParcel1);
            return true;
          }
          paramParcel1.enforceInterface("com.zui.deviceidservice.IDeviceidInterface");
          paramInt1 = c();
          paramParcel2.writeNoException();
          paramParcel2.writeInt(paramInt1);
          return true;
        }
        paramParcel1.enforceInterface("com.zui.deviceidservice.IDeviceidInterface");
        paramParcel1 = b();
        paramParcel2.writeNoException();
        paramParcel2.writeString(paramParcel1);
        return true;
      }
      paramParcel1.enforceInterface("com.zui.deviceidservice.IDeviceidInterface");
      paramParcel1 = a();
      paramParcel2.writeNoException();
      paramParcel2.writeString(paramParcel1);
      return true;
    }
    
    public static class a
      implements c
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
        //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_1
        //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_2
        //   8: aload_1
        //   9: ldc 29
        //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 17	com/xiaomi/onetrack/util/oaid/a/c$a$a:a	Landroid/os/IBinder;
        //   18: iconst_1
        //   19: aload_1
        //   20: aload_2
        //   21: iconst_0
        //   22: invokeinterface 39 5 0
        //   27: pop
        //   28: aload_2
        //   29: invokevirtual 42	android/os/Parcel:readException	()V
        //   32: aload_2
        //   33: invokevirtual 45	android/os/Parcel:readString	()Ljava/lang/String;
        //   36: astore_3
        //   37: aload_2
        //   38: invokevirtual 48	android/os/Parcel:recycle	()V
        //   41: aload_1
        //   42: invokevirtual 48	android/os/Parcel:recycle	()V
        //   45: aload_3
        //   46: areturn
        //   47: astore_3
        //   48: goto +18 -> 66
        //   51: astore_3
        //   52: aload_3
        //   53: invokevirtual 53	java/lang/Throwable:printStackTrace	()V
        //   56: aload_2
        //   57: invokevirtual 48	android/os/Parcel:recycle	()V
        //   60: aload_1
        //   61: invokevirtual 48	android/os/Parcel:recycle	()V
        //   64: aconst_null
        //   65: areturn
        //   66: aload_2
        //   67: invokevirtual 48	android/os/Parcel:recycle	()V
        //   70: aload_1
        //   71: invokevirtual 48	android/os/Parcel:recycle	()V
        //   74: aload_3
        //   75: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	76	0	this	a
        //   3	68	1	localParcel1	Parcel
        //   7	60	2	localParcel2	Parcel
        //   36	10	3	str	String
        //   47	1	3	localObject	Object
        //   51	24	3	localException	java.lang.Exception
        // Exception table:
        //   from	to	target	type
        //   8	37	47	finally
        //   52	56	47	finally
        //   8	37	51	java/lang/Exception
      }
      
      /* Error */
      public String a(String paramString)
      {
        // Byte code:
        //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_1
        //   8: aload_2
        //   9: ldc 29
        //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 17	com/xiaomi/onetrack/util/oaid/a/c$a$a:a	Landroid/os/IBinder;
        //   18: iconst_4
        //   19: aload_2
        //   20: aload_1
        //   21: iconst_0
        //   22: invokeinterface 39 5 0
        //   27: pop
        //   28: aload_1
        //   29: invokevirtual 42	android/os/Parcel:readException	()V
        //   32: aload_1
        //   33: invokevirtual 45	android/os/Parcel:readString	()Ljava/lang/String;
        //   36: astore_3
        //   37: aload_1
        //   38: invokevirtual 48	android/os/Parcel:recycle	()V
        //   41: aload_2
        //   42: invokevirtual 48	android/os/Parcel:recycle	()V
        //   45: aload_3
        //   46: areturn
        //   47: astore_3
        //   48: goto +18 -> 66
        //   51: astore_3
        //   52: aload_3
        //   53: invokevirtual 53	java/lang/Throwable:printStackTrace	()V
        //   56: aload_1
        //   57: invokevirtual 48	android/os/Parcel:recycle	()V
        //   60: aload_2
        //   61: invokevirtual 48	android/os/Parcel:recycle	()V
        //   64: aconst_null
        //   65: areturn
        //   66: aload_1
        //   67: invokevirtual 48	android/os/Parcel:recycle	()V
        //   70: aload_2
        //   71: invokevirtual 48	android/os/Parcel:recycle	()V
        //   74: aload_3
        //   75: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	76	0	this	a
        //   0	76	1	paramString	String
        //   3	68	2	localParcel	Parcel
        //   36	10	3	str	String
        //   47	1	3	localObject	Object
        //   51	24	3	localException	java.lang.Exception
        // Exception table:
        //   from	to	target	type
        //   8	37	47	finally
        //   52	56	47	finally
        //   8	37	51	java/lang/Exception
      }
      
      public IBinder asBinder()
      {
        return null;
      }
      
      /* Error */
      public String b()
      {
        // Byte code:
        //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_1
        //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_2
        //   8: aload_1
        //   9: ldc 29
        //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 17	com/xiaomi/onetrack/util/oaid/a/c$a$a:a	Landroid/os/IBinder;
        //   18: iconst_2
        //   19: aload_1
        //   20: aload_2
        //   21: iconst_0
        //   22: invokeinterface 39 5 0
        //   27: pop
        //   28: aload_2
        //   29: invokevirtual 42	android/os/Parcel:readException	()V
        //   32: aload_2
        //   33: invokevirtual 45	android/os/Parcel:readString	()Ljava/lang/String;
        //   36: astore_3
        //   37: aload_2
        //   38: invokevirtual 48	android/os/Parcel:recycle	()V
        //   41: aload_1
        //   42: invokevirtual 48	android/os/Parcel:recycle	()V
        //   45: aload_3
        //   46: areturn
        //   47: astore_3
        //   48: goto +18 -> 66
        //   51: astore_3
        //   52: aload_3
        //   53: invokevirtual 53	java/lang/Throwable:printStackTrace	()V
        //   56: aload_2
        //   57: invokevirtual 48	android/os/Parcel:recycle	()V
        //   60: aload_1
        //   61: invokevirtual 48	android/os/Parcel:recycle	()V
        //   64: aconst_null
        //   65: areturn
        //   66: aload_2
        //   67: invokevirtual 48	android/os/Parcel:recycle	()V
        //   70: aload_1
        //   71: invokevirtual 48	android/os/Parcel:recycle	()V
        //   74: aload_3
        //   75: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	76	0	this	a
        //   3	68	1	localParcel1	Parcel
        //   7	60	2	localParcel2	Parcel
        //   36	10	3	str	String
        //   47	1	3	localObject	Object
        //   51	24	3	localException	java.lang.Exception
        // Exception table:
        //   from	to	target	type
        //   8	37	47	finally
        //   52	56	47	finally
        //   8	37	51	java/lang/Exception
      }
      
      /* Error */
      public String b(String paramString)
      {
        // Byte code:
        //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_1
        //   4: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_2
        //   8: aload_1
        //   9: ldc 29
        //   11: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 17	com/xiaomi/onetrack/util/oaid/a/c$a$a:a	Landroid/os/IBinder;
        //   18: iconst_5
        //   19: aload_1
        //   20: aload_2
        //   21: iconst_0
        //   22: invokeinterface 39 5 0
        //   27: pop
        //   28: aload_2
        //   29: invokevirtual 42	android/os/Parcel:readException	()V
        //   32: aload_2
        //   33: invokevirtual 45	android/os/Parcel:readString	()Ljava/lang/String;
        //   36: astore_3
        //   37: aload_2
        //   38: invokevirtual 48	android/os/Parcel:recycle	()V
        //   41: aload_1
        //   42: invokevirtual 48	android/os/Parcel:recycle	()V
        //   45: aload_3
        //   46: areturn
        //   47: astore_3
        //   48: goto +18 -> 66
        //   51: astore_3
        //   52: aload_3
        //   53: invokevirtual 53	java/lang/Throwable:printStackTrace	()V
        //   56: aload_2
        //   57: invokevirtual 48	android/os/Parcel:recycle	()V
        //   60: aload_1
        //   61: invokevirtual 48	android/os/Parcel:recycle	()V
        //   64: aconst_null
        //   65: areturn
        //   66: aload_2
        //   67: invokevirtual 48	android/os/Parcel:recycle	()V
        //   70: aload_1
        //   71: invokevirtual 48	android/os/Parcel:recycle	()V
        //   74: aload_3
        //   75: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	76	0	this	a
        //   0	76	1	paramString	String
        //   7	60	2	localParcel	Parcel
        //   36	10	3	str	String
        //   47	1	3	localObject	Object
        //   51	24	3	localException	java.lang.Exception
        // Exception table:
        //   from	to	target	type
        //   8	37	47	finally
        //   52	56	47	finally
        //   8	37	51	java/lang/Exception
      }
      
      public boolean c()
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        boolean bool1 = false;
        boolean bool2 = false;
        boolean bool3 = bool1;
        try
        {
          localParcel1.writeInterfaceToken("com.zui.deviceidservice.IDeviceidInterface");
          bool3 = bool1;
          this.a.transact(3, localParcel1, localParcel2, 0);
          bool3 = bool1;
          localParcel2.readException();
          bool3 = bool1;
          if (localParcel2.readInt() != 0) {
            bool2 = true;
          }
          bool3 = bool2;
          localParcel2.recycle();
          bool3 = bool2;
          localParcel1.recycle();
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
          bool2 = bool3;
        }
        return bool2;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.oaid.a.c
 * JD-Core Version:    0.7.0.1
 */