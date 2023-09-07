package com.miui.calendar.util;

import android.content.Context;
import android.content.pm.IPackageInstallObserver;
import android.content.pm.IPackageInstallObserver.a;
import android.content.pm.IPackageInstallObserver2;
import android.content.pm.IPackageInstallObserver2.a;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.RemoteException;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Method;

public class r
{
  public static boolean a;
  private static final Uri b = Uri.parse("content://com.android.email.provider/message");
  private static final String[] c = { "_id" };
  
  public static void a(Context paramContext)
  {
    try
    {
      a = true;
      int i = Build.VERSION.SDK_INT;
      Context localContext;
      Object localObject;
      if (i < 28)
      {
        localContext = paramContext.getApplicationContext();
        localObject = new com/miui/calendar/util/r$a;
        ((a)localObject).<init>();
        b(localContext, (IPackageInstallObserver)localObject, "com.android.email", 0);
      }
      else
      {
        localContext = paramContext.getApplicationContext();
        localObject = new com/miui/calendar/util/r$b;
        ((b)localObject).<init>();
        c(localContext, (IPackageInstallObserver2)localObject, "com.android.email", 0);
      }
    }
    catch (Exception localException)
    {
      a = false;
      z.d("Cal:D:EmailUtils", "install error", localException);
      t0.f(paramContext, 2131886753);
    }
  }
  
  private static void b(Context paramContext, IPackageInstallObserver paramIPackageInstallObserver, String paramString, int paramInt)
    throws Exception
  {
    Object localObject = Integer.TYPE;
    Class localClass = Class.forName("miui.content.pm.PreloadedAppPolicy");
    localObject = localClass.getMethod("installPreloadedDataApp", new Class[] { Context.class, String.class, IPackageInstallObserver.class, localObject });
    ((AccessibleObject)localObject).setAccessible(true);
    ((Method)localObject).invoke(localClass, new Object[] { paramContext, paramString, paramIPackageInstallObserver, Integer.valueOf(paramInt) });
  }
  
  private static void c(Context paramContext, IPackageInstallObserver2 paramIPackageInstallObserver2, String paramString, int paramInt)
    throws Exception
  {
    Object localObject = Integer.TYPE;
    Class localClass = Class.forName("miui.content.pm.PreloadedAppPolicy");
    localObject = localClass.getMethod("installPreloadedDataApp", new Class[] { Context.class, String.class, IPackageInstallObserver2.class, localObject });
    ((AccessibleObject)localObject).setAccessible(true);
    ((Method)localObject).invoke(localClass, new Object[] { paramContext, paramString, paramIPackageInstallObserver2, Integer.valueOf(paramInt) });
  }
  
  /* Error */
  public static boolean d(Context paramContext, long paramLong1, long paramLong2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 6
    //   6: aload_0
    //   7: invokevirtual 125	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   10: getstatic 26	com/miui/calendar/util/r:b	Landroid/net/Uri;
    //   13: getstatic 32	com/miui/calendar/util/r:c	[Ljava/lang/String;
    //   16: ldc 127
    //   18: iconst_2
    //   19: anewarray 28	java/lang/String
    //   22: dup
    //   23: iconst_0
    //   24: lload_1
    //   25: invokestatic 130	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   28: aastore
    //   29: dup
    //   30: iconst_1
    //   31: lload_3
    //   32: invokestatic 130	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   35: aastore
    //   36: aconst_null
    //   37: invokevirtual 136	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   40: astore_0
    //   41: aload_0
    //   42: ifnull +30 -> 72
    //   45: aload_0
    //   46: astore 6
    //   48: aload_0
    //   49: astore 5
    //   51: aload_0
    //   52: invokeinterface 142 1 0
    //   57: istore 7
    //   59: iload 7
    //   61: ifle +11 -> 72
    //   64: aload_0
    //   65: invokeinterface 145 1 0
    //   70: iconst_1
    //   71: ireturn
    //   72: aload_0
    //   73: ifnull +77 -> 150
    //   76: goto +68 -> 144
    //   79: astore_0
    //   80: goto +72 -> 152
    //   83: astore 8
    //   85: aload 5
    //   87: astore 6
    //   89: new 147	java/lang/StringBuilder
    //   92: astore_0
    //   93: aload 5
    //   95: astore 6
    //   97: aload_0
    //   98: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   101: aload 5
    //   103: astore 6
    //   105: aload_0
    //   106: ldc 150
    //   108: invokevirtual 154	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: pop
    //   112: aload 5
    //   114: astore 6
    //   116: aload_0
    //   117: aload 8
    //   119: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   122: pop
    //   123: aload 5
    //   125: astore 6
    //   127: ldc 64
    //   129: aload_0
    //   130: invokevirtual 161	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   133: invokestatic 165	com/miui/calendar/util/z:m	(Ljava/lang/String;Ljava/lang/String;)V
    //   136: aload 5
    //   138: ifnull +12 -> 150
    //   141: aload 5
    //   143: astore_0
    //   144: aload_0
    //   145: invokeinterface 145 1 0
    //   150: iconst_0
    //   151: ireturn
    //   152: aload 6
    //   154: ifnull +10 -> 164
    //   157: aload 6
    //   159: invokeinterface 145 1 0
    //   164: aload_0
    //   165: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	166	0	paramContext	Context
    //   0	166	1	paramLong1	long
    //   0	166	3	paramLong2	long
    //   1	141	5	localContext1	Context
    //   4	154	6	localContext2	Context
    //   57	3	7	i	int
    //   83	35	8	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   6	41	79	finally
    //   51	59	79	finally
    //   89	93	79	finally
    //   97	101	79	finally
    //   105	112	79	finally
    //   116	123	79	finally
    //   127	136	79	finally
    //   6	41	83	java/lang/Exception
    //   51	59	83	java/lang/Exception
  }
  
  class a
    extends IPackageInstallObserver.a
  {
    public void packageInstalled(String paramString, int paramInt)
      throws RemoteException
    {
      r.a = false;
      z.a("Cal:D:EmailUtils", "email app installed.");
      g.c(new g.t());
    }
  }
  
  class b
    extends IPackageInstallObserver2.a
  {
    public void onPackageInstalled(String paramString1, int paramInt, String paramString2, Bundle paramBundle)
      throws RemoteException
    {
      r.a = false;
      z.a("Cal:D:EmailUtils", "email app installed.");
      g.c(new g.t());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.r
 * JD-Core Version:    0.7.0.1
 */