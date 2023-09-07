package com.xiaomi.onetrack.util.oaid.helpers;

import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;

public class d
{
  private static final String c = "HWDeviceIDHelper";
  public final LinkedBlockingQueue<IBinder> a = new LinkedBlockingQueue(1);
  ServiceConnection b = new HWDeviceIDHelper.1(this);
  
  /* Error */
  public String a(android.content.Context paramContext)
  {
    // Byte code:
    //   0: new 37	android/content/Intent
    //   3: dup
    //   4: ldc 39
    //   6: invokespecial 42	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   9: astore_2
    //   10: aload_2
    //   11: ldc 44
    //   13: invokevirtual 48	android/content/Intent:setPackage	(Ljava/lang/String;)Landroid/content/Intent;
    //   16: pop
    //   17: aload_1
    //   18: aload_2
    //   19: aload_0
    //   20: getfield 31	com/xiaomi/onetrack/util/oaid/helpers/d:b	Landroid/content/ServiceConnection;
    //   23: iconst_1
    //   24: invokevirtual 54	android/content/Context:bindService	(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    //   27: istore_3
    //   28: ldc 56
    //   30: astore 4
    //   32: aload 4
    //   34: astore_2
    //   35: iload_3
    //   36: ifeq +148 -> 184
    //   39: aload_0
    //   40: getfield 24	com/xiaomi/onetrack/util/oaid/helpers/d:a	Ljava/util/concurrent/LinkedBlockingQueue;
    //   43: lconst_1
    //   44: getstatic 62	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   47: invokevirtual 66	java/util/concurrent/LinkedBlockingQueue:poll	(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    //   50: checkcast 68	android/os/IBinder
    //   53: astore_2
    //   54: aload_2
    //   55: ifnonnull +27 -> 82
    //   58: aload_1
    //   59: aload_0
    //   60: getfield 31	com/xiaomi/onetrack/util/oaid/helpers/d:b	Landroid/content/ServiceConnection;
    //   63: invokevirtual 72	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   66: goto +13 -> 79
    //   69: astore_1
    //   70: ldc 8
    //   72: aload_1
    //   73: invokevirtual 78	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   76: invokestatic 83	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   79: ldc 56
    //   81: areturn
    //   82: new 85	com/xiaomi/onetrack/util/oaid/a/b$a
    //   85: astore 5
    //   87: aload 5
    //   89: aload_2
    //   90: invokespecial 88	com/xiaomi/onetrack/util/oaid/a/b$a:<init>	(Landroid/os/IBinder;)V
    //   93: aload 5
    //   95: invokevirtual 90	com/xiaomi/onetrack/util/oaid/a/b$a:a	()Ljava/lang/String;
    //   98: astore 5
    //   100: aload 5
    //   102: astore_2
    //   103: aload_1
    //   104: aload_0
    //   105: getfield 31	com/xiaomi/onetrack/util/oaid/helpers/d:b	Landroid/content/ServiceConnection;
    //   108: invokevirtual 72	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   111: aload 5
    //   113: astore_2
    //   114: goto +70 -> 184
    //   117: astore_1
    //   118: ldc 8
    //   120: aload_1
    //   121: invokevirtual 78	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   124: invokestatic 83	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   127: goto +57 -> 184
    //   130: astore_2
    //   131: goto +30 -> 161
    //   134: astore_2
    //   135: ldc 8
    //   137: aload_2
    //   138: invokevirtual 78	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   141: invokestatic 83	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   144: aload 4
    //   146: astore_2
    //   147: aload_1
    //   148: aload_0
    //   149: getfield 31	com/xiaomi/onetrack/util/oaid/helpers/d:b	Landroid/content/ServiceConnection;
    //   152: invokevirtual 72	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   155: aload 4
    //   157: astore_2
    //   158: goto +26 -> 184
    //   161: aload_1
    //   162: aload_0
    //   163: getfield 31	com/xiaomi/onetrack/util/oaid/helpers/d:b	Landroid/content/ServiceConnection;
    //   166: invokevirtual 72	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   169: goto +13 -> 182
    //   172: astore_1
    //   173: ldc 8
    //   175: aload_1
    //   176: invokevirtual 78	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   179: invokestatic 83	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   182: aload_2
    //   183: athrow
    //   184: aload_2
    //   185: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	186	0	this	d
    //   0	186	1	paramContext	android.content.Context
    //   9	105	2	localObject1	Object
    //   130	1	2	localObject2	Object
    //   134	4	2	localException	java.lang.Exception
    //   146	39	2	localObject3	Object
    //   27	9	3	bool	boolean
    //   30	126	4	str	String
    //   85	27	5	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   58	66	69	java/lang/Exception
    //   103	111	117	java/lang/Exception
    //   147	155	117	java/lang/Exception
    //   39	54	130	finally
    //   82	100	130	finally
    //   135	144	130	finally
    //   39	54	134	java/lang/Exception
    //   82	100	134	java/lang/Exception
    //   161	169	172	java/lang/Exception
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.oaid.helpers.d
 * JD-Core Version:    0.7.0.1
 */