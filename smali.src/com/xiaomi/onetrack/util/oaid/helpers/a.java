package com.xiaomi.onetrack.util.oaid.helpers;

import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;

public class a
{
  private static final String c = "ASUSDeviceIDHelper";
  public final LinkedBlockingQueue<IBinder> a = new LinkedBlockingQueue(1);
  ServiceConnection b = new ASUSDeviceIDHelper.1(this);
  
  /* Error */
  public String a(android.content.Context paramContext)
  {
    // Byte code:
    //   0: new 37	android/content/Intent
    //   3: dup
    //   4: invokespecial 38	android/content/Intent:<init>	()V
    //   7: astore_2
    //   8: aload_2
    //   9: ldc 40
    //   11: invokevirtual 44	android/content/Intent:setAction	(Ljava/lang/String;)Landroid/content/Intent;
    //   14: pop
    //   15: aload_2
    //   16: new 46	android/content/ComponentName
    //   19: dup
    //   20: ldc 48
    //   22: ldc 50
    //   24: invokespecial 53	android/content/ComponentName:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   27: invokevirtual 57	android/content/Intent:setComponent	(Landroid/content/ComponentName;)Landroid/content/Intent;
    //   30: pop
    //   31: aload_1
    //   32: aload_2
    //   33: aload_0
    //   34: getfield 31	com/xiaomi/onetrack/util/oaid/helpers/a:b	Landroid/content/ServiceConnection;
    //   37: iconst_1
    //   38: invokevirtual 63	android/content/Context:bindService	(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    //   41: istore_3
    //   42: ldc 65
    //   44: astore 4
    //   46: aload 4
    //   48: astore_2
    //   49: iload_3
    //   50: ifeq +148 -> 198
    //   53: aload_0
    //   54: getfield 24	com/xiaomi/onetrack/util/oaid/helpers/a:a	Ljava/util/concurrent/LinkedBlockingQueue;
    //   57: lconst_1
    //   58: getstatic 71	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   61: invokevirtual 75	java/util/concurrent/LinkedBlockingQueue:poll	(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    //   64: checkcast 77	android/os/IBinder
    //   67: astore_2
    //   68: aload_2
    //   69: ifnonnull +27 -> 96
    //   72: aload_1
    //   73: aload_0
    //   74: getfield 31	com/xiaomi/onetrack/util/oaid/helpers/a:b	Landroid/content/ServiceConnection;
    //   77: invokevirtual 81	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   80: goto +13 -> 93
    //   83: astore_1
    //   84: ldc 8
    //   86: aload_1
    //   87: invokevirtual 87	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   90: invokestatic 91	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   93: ldc 65
    //   95: areturn
    //   96: new 93	com/xiaomi/onetrack/util/oaid/a/a$a
    //   99: astore 5
    //   101: aload 5
    //   103: aload_2
    //   104: invokespecial 96	com/xiaomi/onetrack/util/oaid/a/a$a:<init>	(Landroid/os/IBinder;)V
    //   107: aload 5
    //   109: invokevirtual 98	com/xiaomi/onetrack/util/oaid/a/a$a:a	()Ljava/lang/String;
    //   112: astore 5
    //   114: aload 5
    //   116: astore_2
    //   117: aload_1
    //   118: aload_0
    //   119: getfield 31	com/xiaomi/onetrack/util/oaid/helpers/a:b	Landroid/content/ServiceConnection;
    //   122: invokevirtual 81	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   125: aload 5
    //   127: astore_2
    //   128: goto +70 -> 198
    //   131: astore_1
    //   132: ldc 8
    //   134: aload_1
    //   135: invokevirtual 87	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   138: invokestatic 91	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   141: goto +57 -> 198
    //   144: astore_2
    //   145: goto +30 -> 175
    //   148: astore_2
    //   149: ldc 8
    //   151: aload_2
    //   152: invokevirtual 87	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   155: invokestatic 91	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   158: aload 4
    //   160: astore_2
    //   161: aload_1
    //   162: aload_0
    //   163: getfield 31	com/xiaomi/onetrack/util/oaid/helpers/a:b	Landroid/content/ServiceConnection;
    //   166: invokevirtual 81	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   169: aload 4
    //   171: astore_2
    //   172: goto +26 -> 198
    //   175: aload_1
    //   176: aload_0
    //   177: getfield 31	com/xiaomi/onetrack/util/oaid/helpers/a:b	Landroid/content/ServiceConnection;
    //   180: invokevirtual 81	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   183: goto +13 -> 196
    //   186: astore_1
    //   187: ldc 8
    //   189: aload_1
    //   190: invokevirtual 87	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   193: invokestatic 91	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   196: aload_2
    //   197: athrow
    //   198: aload_2
    //   199: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	200	0	this	a
    //   0	200	1	paramContext	android.content.Context
    //   7	121	2	localObject1	Object
    //   144	1	2	localObject2	Object
    //   148	4	2	localException	java.lang.Exception
    //   160	39	2	localObject3	Object
    //   41	9	3	bool	boolean
    //   44	126	4	str	String
    //   99	27	5	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   72	80	83	java/lang/Exception
    //   117	125	131	java/lang/Exception
    //   161	169	131	java/lang/Exception
    //   53	68	144	finally
    //   96	114	144	finally
    //   149	158	144	finally
    //   53	68	148	java/lang/Exception
    //   96	114	148	java/lang/Exception
    //   175	183	186	java/lang/Exception
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.oaid.helpers.a
 * JD-Core Version:    0.7.0.1
 */