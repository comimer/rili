package com.xiaomi.onetrack.util.oaid.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;

public abstract interface e
  extends IInterface
{
  public static abstract class a
    extends Binder
    implements e
  {
    public static e a(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.heytap.openid.IOpenID");
      if ((localIInterface != null) && ((localIInterface instanceof e))) {
        return (e)localIInterface;
      }
      return new a(paramIBinder);
    }
    
    public static class a
      implements e
    {
      public IBinder a;
      
      public a(IBinder paramIBinder)
      {
        this.a = paramIBinder;
      }
      
      /* Error */
      public java.lang.String a(java.lang.String paramString1, java.lang.String paramString2, java.lang.String paramString3)
      {
        // Byte code:
        //   0: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore 4
        //   5: invokestatic 27	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   8: astore 5
        //   10: aload 4
        //   12: ldc 29
        //   14: invokevirtual 33	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   17: aload 4
        //   19: aload_1
        //   20: invokevirtual 36	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   23: aload 4
        //   25: aload_2
        //   26: invokevirtual 36	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   29: aload 4
        //   31: aload_3
        //   32: invokevirtual 36	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   35: aload_0
        //   36: getfield 17	com/xiaomi/onetrack/util/oaid/a/e$a$a:a	Landroid/os/IBinder;
        //   39: iconst_1
        //   40: aload 4
        //   42: aload 5
        //   44: iconst_0
        //   45: invokeinterface 42 5 0
        //   50: pop
        //   51: aload 5
        //   53: invokevirtual 45	android/os/Parcel:readException	()V
        //   56: aload 5
        //   58: invokevirtual 49	android/os/Parcel:readString	()Ljava/lang/String;
        //   61: astore_1
        //   62: aload 4
        //   64: invokevirtual 52	android/os/Parcel:recycle	()V
        //   67: aload 5
        //   69: invokevirtual 52	android/os/Parcel:recycle	()V
        //   72: goto +24 -> 96
        //   75: astore_1
        //   76: goto +22 -> 98
        //   79: astore_1
        //   80: aload_1
        //   81: invokevirtual 57	java/lang/Throwable:printStackTrace	()V
        //   84: aload 4
        //   86: invokevirtual 52	android/os/Parcel:recycle	()V
        //   89: aload 5
        //   91: invokevirtual 52	android/os/Parcel:recycle	()V
        //   94: aconst_null
        //   95: astore_1
        //   96: aload_1
        //   97: areturn
        //   98: aload 4
        //   100: invokevirtual 52	android/os/Parcel:recycle	()V
        //   103: aload 5
        //   105: invokevirtual 52	android/os/Parcel:recycle	()V
        //   108: aload_1
        //   109: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	110	0	this	a
        //   0	110	1	paramString1	java.lang.String
        //   0	110	2	paramString2	java.lang.String
        //   0	110	3	paramString3	java.lang.String
        //   3	96	4	localParcel1	android.os.Parcel
        //   8	96	5	localParcel2	android.os.Parcel
        // Exception table:
        //   from	to	target	type
        //   10	62	75	finally
        //   80	84	75	finally
        //   10	62	79	java/lang/Exception
      }
      
      public IBinder asBinder()
      {
        return this.a;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.oaid.a.e
 * JD-Core Version:    0.7.0.1
 */