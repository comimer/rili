package com.xiaomi.onetrack.util.oaid.helpers;

import android.content.Context;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.IBinder;
import com.xiaomi.onetrack.util.oaid.a.e;
import com.xiaomi.onetrack.util.oaid.a.e.a.a;
import com.xiaomi.onetrack.util.p;
import java.security.MessageDigest;
import java.util.concurrent.LinkedBlockingQueue;

public class j
{
  private static final String d = "OppoDeviceIDHelper";
  e a;
  public final LinkedBlockingQueue<IBinder> b = new LinkedBlockingQueue(1);
  ServiceConnection c = new OppoDeviceIDHelper.1(this);
  private String e;
  
  private String a(String paramString, Context paramContext)
  {
    String str = paramContext.getPackageName();
    if (this.e == null)
    {
      Object localObject1 = null;
      Object localObject2;
      try
      {
        localObject2 = paramContext.getPackageManager().getPackageInfo(str, 64).signatures;
      }
      catch (Exception paramContext)
      {
        paramContext.printStackTrace();
        localObject2 = null;
      }
      paramContext = localObject1;
      if (localObject2 != null)
      {
        paramContext = localObject1;
        if (localObject2.length > 0)
        {
          int i = 0;
          localObject2 = localObject2[0].toByteArray();
          try
          {
            MessageDigest localMessageDigest = MessageDigest.getInstance("SHA1");
            paramContext = localObject1;
            if (localMessageDigest != null)
            {
              localObject2 = localMessageDigest.digest((byte[])localObject2);
              paramContext = new java/lang/StringBuilder;
              paramContext.<init>();
              int j = localObject2.length;
              while (i < j)
              {
                paramContext.append(Integer.toHexString(localObject2[i] & 0xFF | 0x100).substring(1, 3));
                i++;
              }
              paramContext = paramContext.toString();
            }
          }
          catch (Exception paramContext)
          {
            paramContext.printStackTrace();
            paramContext = localObject1;
          }
        }
      }
      this.e = paramContext;
    }
    return ((e.a.a)this.a).a(str, this.e, paramString);
  }
  
  private boolean b(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo("com.heytap.openid", 0);
      if (paramContext == null) {
        return false;
      }
      int i = paramContext.versionCode;
      if (i < 1L) {
        return false;
      }
    }
    catch (Exception paramContext)
    {
      p.a("OppoDeviceIDHelper", paramContext.getMessage());
    }
    return true;
  }
  
  /* Error */
  public String a(Context paramContext)
  {
    // Byte code:
    //   0: new 132	android/content/Intent
    //   3: dup
    //   4: invokespecial 133	android/content/Intent:<init>	()V
    //   7: astore_2
    //   8: aload_2
    //   9: new 135	android/content/ComponentName
    //   12: dup
    //   13: ldc 117
    //   15: ldc 137
    //   17: invokespecial 139	android/content/ComponentName:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   20: invokevirtual 143	android/content/Intent:setComponent	(Landroid/content/ComponentName;)Landroid/content/Intent;
    //   23: pop
    //   24: aload_2
    //   25: ldc 145
    //   27: invokevirtual 149	android/content/Intent:setAction	(Ljava/lang/String;)Landroid/content/Intent;
    //   30: pop
    //   31: aload_1
    //   32: aload_2
    //   33: aload_0
    //   34: getfield 34	com/xiaomi/onetrack/util/oaid/helpers/j:c	Landroid/content/ServiceConnection;
    //   37: iconst_1
    //   38: invokevirtual 153	android/content/Context:bindService	(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    //   41: istore_3
    //   42: ldc 155
    //   44: astore 4
    //   46: aload 4
    //   48: astore_2
    //   49: iload_3
    //   50: ifeq +159 -> 209
    //   53: aload_0
    //   54: getfield 27	com/xiaomi/onetrack/util/oaid/helpers/j:b	Ljava/util/concurrent/LinkedBlockingQueue;
    //   57: lconst_1
    //   58: getstatic 161	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   61: invokevirtual 165	java/util/concurrent/LinkedBlockingQueue:poll	(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    //   64: checkcast 167	android/os/IBinder
    //   67: astore_2
    //   68: aload_2
    //   69: ifnonnull +27 -> 96
    //   72: aload_1
    //   73: aload_0
    //   74: getfield 34	com/xiaomi/onetrack/util/oaid/helpers/j:c	Landroid/content/ServiceConnection;
    //   77: invokevirtual 171	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   80: goto +13 -> 93
    //   83: astore_1
    //   84: ldc 8
    //   86: aload_1
    //   87: invokevirtual 124	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   90: invokestatic 129	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   93: ldc 155
    //   95: areturn
    //   96: aload_2
    //   97: invokestatic 176	com/xiaomi/onetrack/util/oaid/a/e$a:a	(Landroid/os/IBinder;)Lcom/xiaomi/onetrack/util/oaid/a/e;
    //   100: astore 5
    //   102: aload_0
    //   103: aload 5
    //   105: putfield 109	com/xiaomi/onetrack/util/oaid/helpers/j:a	Lcom/xiaomi/onetrack/util/oaid/a/e;
    //   108: aload 4
    //   110: astore_2
    //   111: aload 5
    //   113: ifnull +11 -> 124
    //   116: aload_0
    //   117: ldc 178
    //   119: aload_1
    //   120: invokespecial 180	com/xiaomi/onetrack/util/oaid/helpers/j:a	(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    //   123: astore_2
    //   124: aload_2
    //   125: astore 5
    //   127: aload_1
    //   128: aload_0
    //   129: getfield 34	com/xiaomi/onetrack/util/oaid/helpers/j:c	Landroid/content/ServiceConnection;
    //   132: invokevirtual 171	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   135: goto +74 -> 209
    //   138: astore_1
    //   139: ldc 8
    //   141: aload_1
    //   142: invokevirtual 124	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   145: invokestatic 129	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   148: aload 5
    //   150: astore_2
    //   151: goto +58 -> 209
    //   154: astore_2
    //   155: goto +31 -> 186
    //   158: astore_2
    //   159: ldc 8
    //   161: aload_2
    //   162: invokevirtual 124	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   165: invokestatic 129	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   168: aload 4
    //   170: astore 5
    //   172: aload_1
    //   173: aload_0
    //   174: getfield 34	com/xiaomi/onetrack/util/oaid/helpers/j:c	Landroid/content/ServiceConnection;
    //   177: invokevirtual 171	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   180: aload 4
    //   182: astore_2
    //   183: goto +26 -> 209
    //   186: aload_1
    //   187: aload_0
    //   188: getfield 34	com/xiaomi/onetrack/util/oaid/helpers/j:c	Landroid/content/ServiceConnection;
    //   191: invokevirtual 171	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   194: goto +13 -> 207
    //   197: astore_1
    //   198: ldc 8
    //   200: aload_1
    //   201: invokevirtual 124	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   204: invokestatic 129	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   207: aload_2
    //   208: athrow
    //   209: aload_2
    //   210: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	211	0	this	j
    //   0	211	1	paramContext	Context
    //   7	144	2	localObject1	Object
    //   154	1	2	localObject2	Object
    //   158	4	2	localException	Exception
    //   182	28	2	localObject3	Object
    //   41	9	3	bool	boolean
    //   44	137	4	str	String
    //   100	71	5	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   72	80	83	java/lang/Exception
    //   127	135	138	java/lang/Exception
    //   172	180	138	java/lang/Exception
    //   53	68	154	finally
    //   96	108	154	finally
    //   116	124	154	finally
    //   159	168	154	finally
    //   53	68	158	java/lang/Exception
    //   96	108	158	java/lang/Exception
    //   116	124	158	java/lang/Exception
    //   186	194	197	java/lang/Exception
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.oaid.helpers.j
 * JD-Core Version:    0.7.0.1
 */