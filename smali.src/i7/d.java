package i7;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.RemoteException;
import com.xiaomi.accountsdk.utils.b;
import com.xiaomi.passport.sim.SIMInfo;
import com.xiaomi.phonenum.data.AccountCertification;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import k7.b.a;

public class d
  implements c
{
  private static Intent d()
  {
    Intent localIntent = new Intent("com.xiaomi.phonenum.ACCOUNT_PHONE_NUMBER_MANAGER_BIND_SERVICE");
    localIntent.setPackage("com.xiaomi.account");
    return localIntent;
  }
  
  public static boolean e(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    paramContext = d();
    boolean bool1 = false;
    paramContext = localPackageManager.queryIntentServices(paramContext, 0);
    boolean bool2 = bool1;
    if (paramContext != null)
    {
      bool2 = bool1;
      if (!paramContext.isEmpty()) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  /* Error */
  public SIMInfo[] a(Context paramContext, String paramString, String[] paramArrayOfString)
  {
    // Byte code:
    //   0: new 64	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   7: astore 4
    //   9: aload 4
    //   11: ldc 67
    //   13: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   16: pop
    //   17: aload 4
    //   19: aload_2
    //   20: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: pop
    //   24: aload 4
    //   26: ldc 73
    //   28: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: pop
    //   32: aload 4
    //   34: ldc 75
    //   36: aload_3
    //   37: invokestatic 81	java/lang/String:join	(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    //   40: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: pop
    //   44: ldc 83
    //   46: aload 4
    //   48: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   51: invokestatic 93	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   54: aload_1
    //   55: invokestatic 99	h7/a:i	(Landroid/content/Context;)Lh7/a;
    //   58: invokevirtual 103	h7/a:f	()I
    //   61: anewarray 105	com/xiaomi/passport/sim/SIMInfo
    //   64: astore 5
    //   66: aconst_null
    //   67: astore 6
    //   69: aconst_null
    //   70: astore 7
    //   72: aload_1
    //   73: invokestatic 40	i7/d:d	()Landroid/content/Intent;
    //   76: invokestatic 110	com/xiaomi/phonenum/utils/ServiceBindWaiter:a	(Landroid/content/Context;Landroid/content/Intent;)Lcom/xiaomi/phonenum/utils/ServiceBindWaiter$b;
    //   79: astore 4
    //   81: new 112	java/util/concurrent/CountDownLatch
    //   84: astore 7
    //   86: aload 7
    //   88: iconst_1
    //   89: invokespecial 115	java/util/concurrent/CountDownLatch:<init>	(I)V
    //   92: iconst_1
    //   93: anewarray 117	[Lcom/xiaomi/passport/sim/SIMInfo;
    //   96: astore 8
    //   98: aload 4
    //   100: getfield 123	com/xiaomi/phonenum/utils/ServiceBindWaiter$b:b	Landroid/os/IBinder;
    //   103: invokestatic 129	k7/a$a:n0	(Landroid/os/IBinder;)Lk7/a;
    //   106: astore 6
    //   108: aload_1
    //   109: invokevirtual 132	android/content/Context:getPackageName	()Ljava/lang/String;
    //   112: astore 9
    //   114: new 10	i7/d$b
    //   117: astore 10
    //   119: aload 10
    //   121: aload_0
    //   122: aload 8
    //   124: aload 7
    //   126: aload 5
    //   128: invokespecial 135	i7/d$b:<init>	(Li7/d;[[Lcom/xiaomi/passport/sim/SIMInfo;Ljava/util/concurrent/CountDownLatch;[Lcom/xiaomi/passport/sim/SIMInfo;)V
    //   131: aload 6
    //   133: aload_2
    //   134: aload 9
    //   136: aload_3
    //   137: aload 10
    //   139: ldc 137
    //   141: invokeinterface 143 6 0
    //   146: aload 7
    //   148: lconst_1
    //   149: getstatic 149	java/util/concurrent/TimeUnit:MINUTES	Ljava/util/concurrent/TimeUnit;
    //   152: invokevirtual 153	java/util/concurrent/CountDownLatch:await	(JLjava/util/concurrent/TimeUnit;)Z
    //   155: ifne +19 -> 174
    //   158: ldc 83
    //   160: ldc 155
    //   162: invokestatic 93	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   165: aload 4
    //   167: aload_1
    //   168: invokevirtual 158	com/xiaomi/phonenum/utils/ServiceBindWaiter$b:a	(Landroid/content/Context;)V
    //   171: aload 5
    //   173: areturn
    //   174: ldc 83
    //   176: ldc 160
    //   178: invokestatic 93	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   181: aload 8
    //   183: iconst_0
    //   184: aaload
    //   185: astore_2
    //   186: aload 4
    //   188: aload_1
    //   189: invokevirtual 158	com/xiaomi/phonenum/utils/ServiceBindWaiter$b:a	(Landroid/content/Context;)V
    //   192: aload_2
    //   193: areturn
    //   194: astore_2
    //   195: goto +20 -> 215
    //   198: astore_2
    //   199: goto +35 -> 234
    //   202: astore_2
    //   203: goto +31 -> 234
    //   206: astore_2
    //   207: goto +27 -> 234
    //   210: astore_2
    //   211: goto +23 -> 234
    //   214: astore_2
    //   215: aload 4
    //   217: astore_3
    //   218: goto +68 -> 286
    //   221: astore_2
    //   222: goto +12 -> 234
    //   225: astore_2
    //   226: goto +8 -> 234
    //   229: astore_2
    //   230: goto +4 -> 234
    //   233: astore_2
    //   234: aload 4
    //   236: astore_3
    //   237: goto +26 -> 263
    //   240: astore_2
    //   241: aload 6
    //   243: astore_3
    //   244: goto +42 -> 286
    //   247: astore_2
    //   248: goto +12 -> 260
    //   251: astore_2
    //   252: goto +8 -> 260
    //   255: astore_2
    //   256: goto +4 -> 260
    //   259: astore_2
    //   260: aload 7
    //   262: astore_3
    //   263: ldc 83
    //   265: ldc 162
    //   267: aload_2
    //   268: invokestatic 166	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   271: aload_3
    //   272: ifnull +8 -> 280
    //   275: aload_3
    //   276: aload_1
    //   277: invokevirtual 158	com/xiaomi/phonenum/utils/ServiceBindWaiter$b:a	(Landroid/content/Context;)V
    //   280: iconst_0
    //   281: anewarray 105	com/xiaomi/passport/sim/SIMInfo
    //   284: areturn
    //   285: astore_2
    //   286: aload_3
    //   287: ifnull +8 -> 295
    //   290: aload_3
    //   291: aload_1
    //   292: invokevirtual 158	com/xiaomi/phonenum/utils/ServiceBindWaiter$b:a	(Landroid/content/Context;)V
    //   295: aload_2
    //   296: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	297	0	this	d
    //   0	297	1	paramContext	Context
    //   0	297	2	paramString	String
    //   0	297	3	paramArrayOfString	String[]
    //   7	228	4	localObject	Object
    //   64	108	5	arrayOfSIMInfo	SIMInfo[]
    //   67	175	6	locala	k7.a
    //   70	191	7	localCountDownLatch	CountDownLatch
    //   96	86	8	arrayOfSIMInfo;	SIMInfo[][]
    //   112	23	9	str	String
    //   117	21	10	localb	b
    // Exception table:
    //   from	to	target	type
    //   119	165	194	finally
    //   174	181	194	finally
    //   119	165	198	android/os/RemoteException
    //   174	181	198	android/os/RemoteException
    //   119	165	202	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException
    //   174	181	202	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException
    //   119	165	206	java/lang/InterruptedException
    //   174	181	206	java/lang/InterruptedException
    //   119	165	210	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException
    //   174	181	210	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException
    //   81	119	214	finally
    //   81	119	221	android/os/RemoteException
    //   81	119	225	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException
    //   81	119	229	java/lang/InterruptedException
    //   81	119	233	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException
    //   72	81	240	finally
    //   72	81	247	android/os/RemoteException
    //   72	81	251	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException
    //   72	81	255	java/lang/InterruptedException
    //   72	81	259	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException
    //   263	271	285	finally
  }
  
  /* Error */
  public AccountCertification[] b(Context paramContext, String paramString, b paramb)
  {
    // Byte code:
    //   0: new 64	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   7: astore 4
    //   9: aload 4
    //   11: ldc 169
    //   13: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   16: pop
    //   17: aload 4
    //   19: aload_2
    //   20: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: pop
    //   24: ldc 83
    //   26: aload 4
    //   28: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   31: invokestatic 93	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   34: aload_1
    //   35: invokestatic 99	h7/a:i	(Landroid/content/Context;)Lh7/a;
    //   38: invokevirtual 103	h7/a:f	()I
    //   41: anewarray 171	com/xiaomi/phonenum/data/AccountCertification
    //   44: astore 5
    //   46: aconst_null
    //   47: astore 6
    //   49: aconst_null
    //   50: astore 7
    //   52: aconst_null
    //   53: astore 8
    //   55: aconst_null
    //   56: astore 9
    //   58: aconst_null
    //   59: astore 10
    //   61: aload_1
    //   62: invokestatic 40	i7/d:d	()Landroid/content/Intent;
    //   65: invokestatic 110	com/xiaomi/phonenum/utils/ServiceBindWaiter:a	(Landroid/content/Context;Landroid/content/Intent;)Lcom/xiaomi/phonenum/utils/ServiceBindWaiter$b;
    //   68: astore 4
    //   70: aload 4
    //   72: astore 10
    //   74: aload 4
    //   76: astore 6
    //   78: aload 4
    //   80: astore 7
    //   82: aload 4
    //   84: astore 8
    //   86: aload 4
    //   88: astore 9
    //   90: new 112	java/util/concurrent/CountDownLatch
    //   93: astore 11
    //   95: aload 4
    //   97: astore 10
    //   99: aload 4
    //   101: astore 6
    //   103: aload 4
    //   105: astore 7
    //   107: aload 4
    //   109: astore 8
    //   111: aload 4
    //   113: astore 9
    //   115: aload 11
    //   117: iconst_1
    //   118: invokespecial 115	java/util/concurrent/CountDownLatch:<init>	(I)V
    //   121: aload 4
    //   123: astore 10
    //   125: aload 4
    //   127: astore 6
    //   129: aload 4
    //   131: astore 7
    //   133: aload 4
    //   135: astore 8
    //   137: aload 4
    //   139: astore 9
    //   141: iconst_1
    //   142: anewarray 173	[Lcom/xiaomi/phonenum/data/AccountCertification;
    //   145: astore 12
    //   147: aload 4
    //   149: astore 10
    //   151: aload 4
    //   153: astore 6
    //   155: aload 4
    //   157: astore 7
    //   159: aload 4
    //   161: astore 8
    //   163: aload 4
    //   165: astore 9
    //   167: aload 4
    //   169: getfield 123	com/xiaomi/phonenum/utils/ServiceBindWaiter$b:b	Landroid/os/IBinder;
    //   172: invokestatic 129	k7/a$a:n0	(Landroid/os/IBinder;)Lk7/a;
    //   175: astore 13
    //   177: aload 4
    //   179: astore 10
    //   181: aload 4
    //   183: astore 6
    //   185: aload 4
    //   187: astore 7
    //   189: aload 4
    //   191: astore 8
    //   193: aload 4
    //   195: astore 9
    //   197: aload_1
    //   198: invokevirtual 132	android/content/Context:getPackageName	()Ljava/lang/String;
    //   201: astore 14
    //   203: aload 4
    //   205: astore 10
    //   207: aload 4
    //   209: astore 6
    //   211: aload 4
    //   213: astore 7
    //   215: aload 4
    //   217: astore 8
    //   219: aload 4
    //   221: astore 9
    //   223: aload_3
    //   224: getfield 178	i7/b:a	I
    //   227: istore 15
    //   229: aload 4
    //   231: astore 10
    //   233: aload 4
    //   235: astore 6
    //   237: aload 4
    //   239: astore 7
    //   241: aload 4
    //   243: astore 8
    //   245: aload 4
    //   247: astore 9
    //   249: new 8	i7/d$a
    //   252: astore_3
    //   253: aload 4
    //   255: astore 10
    //   257: aload 4
    //   259: astore 6
    //   261: aload 4
    //   263: astore 7
    //   265: aload 4
    //   267: astore 8
    //   269: aload 4
    //   271: astore 9
    //   273: aload_3
    //   274: aload_0
    //   275: aload 12
    //   277: aload 11
    //   279: aload 5
    //   281: invokespecial 181	i7/d$a:<init>	(Li7/d;[[Lcom/xiaomi/phonenum/data/AccountCertification;Ljava/util/concurrent/CountDownLatch;[Lcom/xiaomi/phonenum/data/AccountCertification;)V
    //   284: aload 4
    //   286: astore 10
    //   288: aload 4
    //   290: astore 6
    //   292: aload 4
    //   294: astore 7
    //   296: aload 4
    //   298: astore 8
    //   300: aload 4
    //   302: astore 9
    //   304: aload 13
    //   306: aload_2
    //   307: aload 14
    //   309: iload 15
    //   311: aload_3
    //   312: ldc 183
    //   314: invokeinterface 187 6 0
    //   319: aload 4
    //   321: astore 10
    //   323: aload 4
    //   325: astore 6
    //   327: aload 4
    //   329: astore 7
    //   331: aload 4
    //   333: astore 8
    //   335: aload 4
    //   337: astore 9
    //   339: aload 11
    //   341: lconst_1
    //   342: getstatic 149	java/util/concurrent/TimeUnit:MINUTES	Ljava/util/concurrent/TimeUnit;
    //   345: invokevirtual 153	java/util/concurrent/CountDownLatch:await	(JLjava/util/concurrent/TimeUnit;)Z
    //   348: ifne +39 -> 387
    //   351: aload 4
    //   353: astore 10
    //   355: aload 4
    //   357: astore 6
    //   359: aload 4
    //   361: astore 7
    //   363: aload 4
    //   365: astore 8
    //   367: aload 4
    //   369: astore 9
    //   371: ldc 83
    //   373: ldc 189
    //   375: invokestatic 93	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   378: aload 4
    //   380: aload_1
    //   381: invokevirtual 158	com/xiaomi/phonenum/utils/ServiceBindWaiter$b:a	(Landroid/content/Context;)V
    //   384: aload 5
    //   386: areturn
    //   387: aload 4
    //   389: astore 10
    //   391: aload 4
    //   393: astore 6
    //   395: aload 4
    //   397: astore 7
    //   399: aload 4
    //   401: astore 8
    //   403: aload 4
    //   405: astore 9
    //   407: ldc 83
    //   409: ldc 191
    //   411: invokestatic 93	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   414: aload 12
    //   416: iconst_0
    //   417: aaload
    //   418: astore_2
    //   419: aload 4
    //   421: aload_1
    //   422: invokevirtual 158	com/xiaomi/phonenum/utils/ServiceBindWaiter$b:a	(Landroid/content/Context;)V
    //   425: aload_2
    //   426: areturn
    //   427: astore_2
    //   428: goto +51 -> 479
    //   431: astore_3
    //   432: aload 6
    //   434: astore_2
    //   435: goto +21 -> 456
    //   438: astore_3
    //   439: aload 7
    //   441: astore_2
    //   442: goto +14 -> 456
    //   445: astore_3
    //   446: aload 8
    //   448: astore_2
    //   449: goto +7 -> 456
    //   452: astore_3
    //   453: aload 9
    //   455: astore_2
    //   456: aload_2
    //   457: astore 10
    //   459: ldc 83
    //   461: ldc 193
    //   463: aload_3
    //   464: invokestatic 166	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   467: aload_2
    //   468: ifnull +8 -> 476
    //   471: aload_2
    //   472: aload_1
    //   473: invokevirtual 158	com/xiaomi/phonenum/utils/ServiceBindWaiter$b:a	(Landroid/content/Context;)V
    //   476: aload 5
    //   478: areturn
    //   479: aload 10
    //   481: ifnull +9 -> 490
    //   484: aload 10
    //   486: aload_1
    //   487: invokevirtual 158	com/xiaomi/phonenum/utils/ServiceBindWaiter$b:a	(Landroid/content/Context;)V
    //   490: aload_2
    //   491: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	492	0	this	d
    //   0	492	1	paramContext	Context
    //   0	492	2	paramString	String
    //   0	492	3	paramb	b
    //   7	413	4	localObject1	Object
    //   44	433	5	arrayOfAccountCertification	AccountCertification[]
    //   47	386	6	localObject2	Object
    //   50	390	7	localObject3	Object
    //   53	394	8	localObject4	Object
    //   56	398	9	localObject5	Object
    //   59	426	10	localObject6	Object
    //   93	247	11	localCountDownLatch	CountDownLatch
    //   145	270	12	arrayOfAccountCertification;	AccountCertification[][]
    //   175	130	13	locala	k7.a
    //   201	107	14	str	String
    //   227	83	15	i	int
    // Exception table:
    //   from	to	target	type
    //   61	70	427	finally
    //   90	95	427	finally
    //   115	121	427	finally
    //   141	147	427	finally
    //   167	177	427	finally
    //   197	203	427	finally
    //   223	229	427	finally
    //   249	253	427	finally
    //   273	284	427	finally
    //   304	319	427	finally
    //   339	351	427	finally
    //   371	378	427	finally
    //   407	414	427	finally
    //   459	467	427	finally
    //   61	70	431	android/os/RemoteException
    //   90	95	431	android/os/RemoteException
    //   115	121	431	android/os/RemoteException
    //   141	147	431	android/os/RemoteException
    //   167	177	431	android/os/RemoteException
    //   197	203	431	android/os/RemoteException
    //   223	229	431	android/os/RemoteException
    //   249	253	431	android/os/RemoteException
    //   273	284	431	android/os/RemoteException
    //   304	319	431	android/os/RemoteException
    //   339	351	431	android/os/RemoteException
    //   371	378	431	android/os/RemoteException
    //   407	414	431	android/os/RemoteException
    //   61	70	438	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException
    //   90	95	438	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException
    //   115	121	438	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException
    //   141	147	438	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException
    //   167	177	438	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException
    //   197	203	438	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException
    //   223	229	438	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException
    //   249	253	438	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException
    //   273	284	438	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException
    //   304	319	438	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException
    //   339	351	438	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException
    //   371	378	438	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException
    //   407	414	438	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException
    //   61	70	445	java/lang/InterruptedException
    //   90	95	445	java/lang/InterruptedException
    //   115	121	445	java/lang/InterruptedException
    //   141	147	445	java/lang/InterruptedException
    //   167	177	445	java/lang/InterruptedException
    //   197	203	445	java/lang/InterruptedException
    //   223	229	445	java/lang/InterruptedException
    //   249	253	445	java/lang/InterruptedException
    //   273	284	445	java/lang/InterruptedException
    //   304	319	445	java/lang/InterruptedException
    //   339	351	445	java/lang/InterruptedException
    //   371	378	445	java/lang/InterruptedException
    //   407	414	445	java/lang/InterruptedException
    //   61	70	452	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException
    //   90	95	452	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException
    //   115	121	452	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException
    //   141	147	452	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException
    //   167	177	452	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException
    //   197	203	452	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException
    //   223	229	452	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException
    //   249	253	452	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException
    //   273	284	452	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException
    //   304	319	452	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException
    //   339	351	452	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException
    //   371	378	452	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException
    //   407	414	452	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException
  }
  
  /* Error */
  public void c(Context paramContext, String paramString, AccountCertification paramAccountCertification)
  {
    // Byte code:
    //   0: new 64	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   7: astore 4
    //   9: aload 4
    //   11: ldc 197
    //   13: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   16: pop
    //   17: aload 4
    //   19: aload_2
    //   20: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: pop
    //   24: aload 4
    //   26: ldc 199
    //   28: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: pop
    //   32: aload 4
    //   34: aload_3
    //   35: invokevirtual 202	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   38: pop
    //   39: ldc 83
    //   41: aload 4
    //   43: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   46: invokestatic 93	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   49: aconst_null
    //   50: astore 5
    //   52: aconst_null
    //   53: astore 6
    //   55: aconst_null
    //   56: astore 7
    //   58: aconst_null
    //   59: astore 8
    //   61: aconst_null
    //   62: astore 9
    //   64: aload_1
    //   65: invokestatic 40	i7/d:d	()Landroid/content/Intent;
    //   68: invokestatic 110	com/xiaomi/phonenum/utils/ServiceBindWaiter:a	(Landroid/content/Context;Landroid/content/Intent;)Lcom/xiaomi/phonenum/utils/ServiceBindWaiter$b;
    //   71: astore 4
    //   73: aload 4
    //   75: astore 9
    //   77: aload 4
    //   79: astore 5
    //   81: aload 4
    //   83: astore 6
    //   85: aload 4
    //   87: astore 7
    //   89: aload 4
    //   91: astore 8
    //   93: aload 4
    //   95: getfield 123	com/xiaomi/phonenum/utils/ServiceBindWaiter$b:b	Landroid/os/IBinder;
    //   98: invokestatic 129	k7/a$a:n0	(Landroid/os/IBinder;)Lk7/a;
    //   101: aload_2
    //   102: aload_1
    //   103: invokevirtual 132	android/content/Context:getPackageName	()Ljava/lang/String;
    //   106: aload_3
    //   107: invokeinterface 206 4 0
    //   112: istore 10
    //   114: aload 4
    //   116: astore 9
    //   118: aload 4
    //   120: astore 5
    //   122: aload 4
    //   124: astore 6
    //   126: aload 4
    //   128: astore 7
    //   130: aload 4
    //   132: astore 8
    //   134: new 64	java/lang/StringBuilder
    //   137: astore_2
    //   138: aload 4
    //   140: astore 9
    //   142: aload 4
    //   144: astore 5
    //   146: aload 4
    //   148: astore 6
    //   150: aload 4
    //   152: astore 7
    //   154: aload 4
    //   156: astore 8
    //   158: aload_2
    //   159: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   162: aload 4
    //   164: astore 9
    //   166: aload 4
    //   168: astore 5
    //   170: aload 4
    //   172: astore 6
    //   174: aload 4
    //   176: astore 7
    //   178: aload 4
    //   180: astore 8
    //   182: aload_2
    //   183: ldc 208
    //   185: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   188: pop
    //   189: aload 4
    //   191: astore 9
    //   193: aload 4
    //   195: astore 5
    //   197: aload 4
    //   199: astore 6
    //   201: aload 4
    //   203: astore 7
    //   205: aload 4
    //   207: astore 8
    //   209: aload_2
    //   210: iload 10
    //   212: invokevirtual 211	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   215: pop
    //   216: aload 4
    //   218: astore 9
    //   220: aload 4
    //   222: astore 5
    //   224: aload 4
    //   226: astore 6
    //   228: aload 4
    //   230: astore 7
    //   232: aload 4
    //   234: astore 8
    //   236: ldc 83
    //   238: aload_2
    //   239: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   242: invokestatic 93	com/xiaomi/accountsdk/utils/b:g	(Ljava/lang/String;Ljava/lang/String;)V
    //   245: aload 4
    //   247: astore_2
    //   248: goto +47 -> 295
    //   251: astore_2
    //   252: goto +49 -> 301
    //   255: astore_3
    //   256: aload 5
    //   258: astore_2
    //   259: goto +21 -> 280
    //   262: astore_3
    //   263: aload 6
    //   265: astore_2
    //   266: goto +14 -> 280
    //   269: astore_3
    //   270: aload 7
    //   272: astore_2
    //   273: goto +7 -> 280
    //   276: astore_3
    //   277: aload 8
    //   279: astore_2
    //   280: aload_2
    //   281: astore 9
    //   283: ldc 83
    //   285: ldc 213
    //   287: aload_3
    //   288: invokestatic 166	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   291: aload_2
    //   292: ifnull +8 -> 300
    //   295: aload_2
    //   296: aload_1
    //   297: invokevirtual 158	com/xiaomi/phonenum/utils/ServiceBindWaiter$b:a	(Landroid/content/Context;)V
    //   300: return
    //   301: aload 9
    //   303: ifnull +9 -> 312
    //   306: aload 9
    //   308: aload_1
    //   309: invokevirtual 158	com/xiaomi/phonenum/utils/ServiceBindWaiter$b:a	(Landroid/content/Context;)V
    //   312: aload_2
    //   313: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	314	0	this	d
    //   0	314	1	paramContext	Context
    //   0	314	2	paramString	String
    //   0	314	3	paramAccountCertification	AccountCertification
    //   7	239	4	localObject1	Object
    //   50	207	5	localObject2	Object
    //   53	211	6	localObject3	Object
    //   56	215	7	localObject4	Object
    //   59	219	8	localObject5	Object
    //   62	245	9	localObject6	Object
    //   112	99	10	i	int
    // Exception table:
    //   from	to	target	type
    //   64	73	251	finally
    //   93	114	251	finally
    //   134	138	251	finally
    //   158	162	251	finally
    //   182	189	251	finally
    //   209	216	251	finally
    //   236	245	251	finally
    //   283	291	251	finally
    //   64	73	255	android/os/RemoteException
    //   93	114	255	android/os/RemoteException
    //   134	138	255	android/os/RemoteException
    //   158	162	255	android/os/RemoteException
    //   182	189	255	android/os/RemoteException
    //   209	216	255	android/os/RemoteException
    //   236	245	255	android/os/RemoteException
    //   64	73	262	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException
    //   93	114	262	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException
    //   134	138	262	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException
    //   158	162	262	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException
    //   182	189	262	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException
    //   209	216	262	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException
    //   236	245	262	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindTimeoutException
    //   64	73	269	java/lang/InterruptedException
    //   93	114	269	java/lang/InterruptedException
    //   134	138	269	java/lang/InterruptedException
    //   158	162	269	java/lang/InterruptedException
    //   182	189	269	java/lang/InterruptedException
    //   209	216	269	java/lang/InterruptedException
    //   236	245	269	java/lang/InterruptedException
    //   64	73	276	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException
    //   93	114	276	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException
    //   134	138	276	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException
    //   158	162	276	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException
    //   182	189	276	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException
    //   209	216	276	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException
    //   236	245	276	com/xiaomi/phonenum/utils/ServiceBindWaiter$ServiceBindFailedException
  }
  
  class a
    extends b.a
  {
    a(AccountCertification[][] paramArrayOfAccountCertification, CountDownLatch paramCountDownLatch, AccountCertification[] paramArrayOfAccountCertification1) {}
    
    public void a(Bundle paramBundle)
      throws RemoteException
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onResult");
      localStringBuilder.append(paramBundle.toString());
      b.g("MiuiAccountPhoneNumberManager", localStringBuilder.toString());
      paramBundle.setClassLoader(AccountCertification.class.getClassLoader());
      paramBundle = paramBundle.getParcelableArray("account_certification_array");
      this.a[0] = new AccountCertification[paramBundle.length];
      for (int i = 0; i < paramBundle.length; i++) {
        this.a[0][i] = ((AccountCertification)paramBundle[i]);
      }
      this.b.countDown();
    }
    
    public void b(int paramInt, String paramString)
      throws RemoteException
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onError code=");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(", desc=");
      localStringBuilder.append(paramString);
      b.g("MiuiAccountPhoneNumberManager", localStringBuilder.toString());
      this.a[0] = this.c;
      this.b.countDown();
    }
  }
  
  class b
    extends b.a
  {
    b(SIMInfo[][] paramArrayOfSIMInfo, CountDownLatch paramCountDownLatch, SIMInfo[] paramArrayOfSIMInfo1) {}
    
    public void a(Bundle paramBundle)
      throws RemoteException
    {
      b.g("MiuiAccountPhoneNumberManager", "onResult");
      paramBundle.setClassLoader(SIMInfo.class.getClassLoader());
      paramBundle = paramBundle.getParcelableArray("sim_info_array");
      this.a[0] = new SIMInfo[paramBundle.length];
      for (int i = 0; i < paramBundle.length; i++) {
        this.a[0][i] = ((SIMInfo)paramBundle[i]);
      }
      this.b.countDown();
    }
    
    public void b(int paramInt, String paramString)
      throws RemoteException
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onError code=");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(", desc=");
      localStringBuilder.append(paramString);
      b.g("MiuiAccountPhoneNumberManager", localStringBuilder.toString());
      this.a[0] = this.c;
      this.b.countDown();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     i7.d
 * JD-Core Version:    0.7.0.1
 */