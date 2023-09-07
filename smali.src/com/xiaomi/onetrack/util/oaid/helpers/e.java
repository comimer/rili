package com.xiaomi.onetrack.util.oaid.helpers;

import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;

public class e
{
  public final LinkedBlockingQueue<IBinder> a = new LinkedBlockingQueue(1);
  ServiceConnection b = new LenovoDeviceIDHelper.1(this);
  
  /* Error */
  public java.lang.String a(android.content.Context paramContext)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 37	android/content/Context:getPackageName	()Ljava/lang/String;
    //   4: pop
    //   5: new 39	android/content/Intent
    //   8: dup
    //   9: invokespecial 40	android/content/Intent:<init>	()V
    //   12: astore_2
    //   13: aload_2
    //   14: ldc 42
    //   16: ldc 44
    //   18: invokevirtual 48	android/content/Intent:setClassName	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   21: pop
    //   22: aload_1
    //   23: aload_2
    //   24: aload_0
    //   25: getfield 27	com/xiaomi/onetrack/util/oaid/helpers/e:b	Landroid/content/ServiceConnection;
    //   28: iconst_1
    //   29: invokevirtual 52	android/content/Context:bindService	(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    //   32: istore_3
    //   33: ldc 54
    //   35: astore_2
    //   36: aload_2
    //   37: astore 4
    //   39: iload_3
    //   40: ifeq +97 -> 137
    //   43: aload_0
    //   44: getfield 20	com/xiaomi/onetrack/util/oaid/helpers/e:a	Ljava/util/concurrent/LinkedBlockingQueue;
    //   47: lconst_1
    //   48: getstatic 60	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   51: invokevirtual 64	java/util/concurrent/LinkedBlockingQueue:poll	(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    //   54: checkcast 66	android/os/IBinder
    //   57: astore 5
    //   59: aload 5
    //   61: ifnonnull +14 -> 75
    //   64: aload_1
    //   65: aload_0
    //   66: getfield 27	com/xiaomi/onetrack/util/oaid/helpers/e:b	Landroid/content/ServiceConnection;
    //   69: invokevirtual 70	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   72: ldc 54
    //   74: areturn
    //   75: new 72	com/xiaomi/onetrack/util/oaid/a/c$a$a
    //   78: astore 4
    //   80: aload 4
    //   82: aload 5
    //   84: invokespecial 75	com/xiaomi/onetrack/util/oaid/a/c$a$a:<init>	(Landroid/os/IBinder;)V
    //   87: aload 4
    //   89: invokeinterface 79 1 0
    //   94: astore 4
    //   96: aload 4
    //   98: astore_2
    //   99: aload_1
    //   100: aload_0
    //   101: getfield 27	com/xiaomi/onetrack/util/oaid/helpers/e:b	Landroid/content/ServiceConnection;
    //   104: invokevirtual 70	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   107: aload_2
    //   108: astore 4
    //   110: goto +27 -> 137
    //   113: astore_2
    //   114: goto +13 -> 127
    //   117: astore 4
    //   119: aload 4
    //   121: invokevirtual 84	java/lang/Throwable:printStackTrace	()V
    //   124: goto -25 -> 99
    //   127: aload_1
    //   128: aload_0
    //   129: getfield 27	com/xiaomi/onetrack/util/oaid/helpers/e:b	Landroid/content/ServiceConnection;
    //   132: invokevirtual 70	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   135: aload_2
    //   136: athrow
    //   137: aload 4
    //   139: areturn
    //   140: astore_1
    //   141: goto -69 -> 72
    //   144: astore_1
    //   145: aload_2
    //   146: astore 4
    //   148: goto -11 -> 137
    //   151: astore_1
    //   152: goto -17 -> 135
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	155	0	this	e
    //   0	155	1	paramContext	android.content.Context
    //   12	96	2	localObject1	Object
    //   113	33	2	localObject2	Object
    //   32	8	3	bool	boolean
    //   37	72	4	localObject3	Object
    //   117	21	4	localException	java.lang.Exception
    //   146	1	4	localObject4	Object
    //   57	26	5	localIBinder	IBinder
    // Exception table:
    //   from	to	target	type
    //   43	59	113	finally
    //   75	96	113	finally
    //   119	124	113	finally
    //   43	59	117	java/lang/Exception
    //   75	96	117	java/lang/Exception
    //   64	72	140	java/lang/Exception
    //   99	107	144	java/lang/Exception
    //   127	135	151	java/lang/Exception
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.oaid.helpers.e
 * JD-Core Version:    0.7.0.1
 */