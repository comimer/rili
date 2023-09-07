package com.xiaomi.onetrack.util.oaid.helpers;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.xiaomi.onetrack.util.p;
import java.util.concurrent.LinkedBlockingQueue;

public class m
{
  private static final String d = "ZTEDeviceIDHelper";
  String a = "com.mdid.msa";
  public final LinkedBlockingQueue<IBinder> b = new LinkedBlockingQueue(1);
  ServiceConnection c = new ZTEDeviceIDHelper.1(this);
  
  private void a(String paramString, Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setClassName(this.a, "com.mdid.msa.service.MsaKlService");
    localIntent.setAction("com.bun.msa.action.start.service");
    localIntent.putExtra("com.bun.msa.param.pkgname", paramString);
    try
    {
      localIntent.putExtra("com.bun.msa.param.runinset", true);
      paramContext.startService(localIntent);
      return;
    }
    catch (Exception paramString)
    {
      p.a("ZTEDeviceIDHelper", paramString.getMessage());
    }
  }
  
  /* Error */
  public String a(Context paramContext)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 87	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   4: aload_0
    //   5: getfield 22	com/xiaomi/onetrack/util/oaid/helpers/m:a	Ljava/lang/String;
    //   8: iconst_0
    //   9: invokevirtual 93	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   12: pop
    //   13: goto +13 -> 26
    //   16: astore_2
    //   17: ldc 8
    //   19: aload_2
    //   20: invokevirtual 77	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   23: invokestatic 82	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   26: aload_1
    //   27: invokevirtual 96	android/content/Context:getPackageName	()Ljava/lang/String;
    //   30: astore_2
    //   31: aload_0
    //   32: aload_2
    //   33: aload_1
    //   34: invokespecial 98	com/xiaomi/onetrack/util/oaid/helpers/m:a	(Ljava/lang/String;Landroid/content/Context;)V
    //   37: new 42	android/content/Intent
    //   40: dup
    //   41: invokespecial 43	android/content/Intent:<init>	()V
    //   44: astore_3
    //   45: aload_3
    //   46: ldc 20
    //   48: ldc 100
    //   50: invokevirtual 49	android/content/Intent:setClassName	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   53: pop
    //   54: aload_3
    //   55: ldc 102
    //   57: invokevirtual 55	android/content/Intent:setAction	(Ljava/lang/String;)Landroid/content/Intent;
    //   60: pop
    //   61: aload_3
    //   62: ldc 57
    //   64: aload_2
    //   65: invokevirtual 60	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   68: pop
    //   69: ldc 104
    //   71: astore 4
    //   73: aload 4
    //   75: astore_2
    //   76: aload_1
    //   77: aload_3
    //   78: aload_0
    //   79: getfield 36	com/xiaomi/onetrack/util/oaid/helpers/m:c	Landroid/content/ServiceConnection;
    //   82: iconst_1
    //   83: invokevirtual 108	android/content/Context:bindService	(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    //   86: ifeq +144 -> 230
    //   89: aload_0
    //   90: getfield 29	com/xiaomi/onetrack/util/oaid/helpers/m:b	Ljava/util/concurrent/LinkedBlockingQueue;
    //   93: lconst_1
    //   94: getstatic 114	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   97: invokevirtual 118	java/util/concurrent/LinkedBlockingQueue:poll	(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    //   100: checkcast 120	android/os/IBinder
    //   103: astore_2
    //   104: aload_2
    //   105: ifnonnull +27 -> 132
    //   108: aload_1
    //   109: aload_0
    //   110: getfield 36	com/xiaomi/onetrack/util/oaid/helpers/m:c	Landroid/content/ServiceConnection;
    //   113: invokevirtual 124	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   116: goto +13 -> 129
    //   119: astore_1
    //   120: ldc 8
    //   122: aload_1
    //   123: invokevirtual 77	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   126: invokestatic 82	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   129: ldc 104
    //   131: areturn
    //   132: new 126	com/xiaomi/onetrack/util/oaid/a/g$a$a
    //   135: astore_3
    //   136: aload_3
    //   137: aload_2
    //   138: invokespecial 129	com/xiaomi/onetrack/util/oaid/a/g$a$a:<init>	(Landroid/os/IBinder;)V
    //   141: aload_3
    //   142: invokeinterface 133 1 0
    //   147: astore_3
    //   148: aload_3
    //   149: astore_2
    //   150: aload_1
    //   151: aload_0
    //   152: getfield 36	com/xiaomi/onetrack/util/oaid/helpers/m:c	Landroid/content/ServiceConnection;
    //   155: invokevirtual 124	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   158: aload_3
    //   159: astore_2
    //   160: goto +70 -> 230
    //   163: astore_1
    //   164: ldc 8
    //   166: aload_1
    //   167: invokevirtual 77	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   170: invokestatic 82	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   173: goto +57 -> 230
    //   176: astore_2
    //   177: goto +30 -> 207
    //   180: astore_2
    //   181: ldc 8
    //   183: aload_2
    //   184: invokevirtual 77	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   187: invokestatic 82	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   190: aload 4
    //   192: astore_2
    //   193: aload_1
    //   194: aload_0
    //   195: getfield 36	com/xiaomi/onetrack/util/oaid/helpers/m:c	Landroid/content/ServiceConnection;
    //   198: invokevirtual 124	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   201: aload 4
    //   203: astore_2
    //   204: goto +26 -> 230
    //   207: aload_1
    //   208: aload_0
    //   209: getfield 36	com/xiaomi/onetrack/util/oaid/helpers/m:c	Landroid/content/ServiceConnection;
    //   212: invokevirtual 124	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   215: goto +13 -> 228
    //   218: astore_1
    //   219: ldc 8
    //   221: aload_1
    //   222: invokevirtual 77	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   225: invokestatic 82	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   228: aload_2
    //   229: athrow
    //   230: aload_2
    //   231: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	232	0	this	m
    //   0	232	1	paramContext	Context
    //   16	4	2	localException1	Exception
    //   30	130	2	localObject1	Object
    //   176	1	2	localObject2	Object
    //   180	4	2	localException2	Exception
    //   192	39	2	localObject3	Object
    //   44	115	3	localObject4	Object
    //   71	131	4	str	String
    // Exception table:
    //   from	to	target	type
    //   0	13	16	java/lang/Exception
    //   108	116	119	java/lang/Exception
    //   150	158	163	java/lang/Exception
    //   193	201	163	java/lang/Exception
    //   89	104	176	finally
    //   132	148	176	finally
    //   181	190	176	finally
    //   89	104	180	java/lang/Exception
    //   132	148	180	java/lang/Exception
    //   207	215	218	java/lang/Exception
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.oaid.helpers.m
 * JD-Core Version:    0.7.0.1
 */