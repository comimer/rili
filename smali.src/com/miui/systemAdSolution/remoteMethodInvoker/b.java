package com.miui.systemAdSolution.remoteMethodInvoker;

import android.os.IBinder;

class b
  extends Thread
{
  b(d paramd, IBinder paramIBinder) {}
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: ldc 23
    //   2: aload_0
    //   3: getfield 12	com/miui/systemAdSolution/remoteMethodInvoker/b:b	Lcom/miui/systemAdSolution/remoteMethodInvoker/d;
    //   6: invokestatic 29	com/miui/systemAdSolution/remoteMethodInvoker/d:access$000	(Lcom/miui/systemAdSolution/remoteMethodInvoker/d;)Ljava/lang/Class;
    //   9: invokevirtual 35	java/lang/Class:getCanonicalName	()Ljava/lang/String;
    //   12: invokestatic 41	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   15: pop
    //   16: new 43	java/lang/StringBuilder
    //   19: astore_1
    //   20: aload_1
    //   21: invokespecial 44	java/lang/StringBuilder:<init>	()V
    //   24: aload_1
    //   25: aload_0
    //   26: getfield 12	com/miui/systemAdSolution/remoteMethodInvoker/b:b	Lcom/miui/systemAdSolution/remoteMethodInvoker/d;
    //   29: invokestatic 29	com/miui/systemAdSolution/remoteMethodInvoker/d:access$000	(Lcom/miui/systemAdSolution/remoteMethodInvoker/d;)Ljava/lang/Class;
    //   32: invokevirtual 35	java/lang/Class:getCanonicalName	()Ljava/lang/String;
    //   35: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: pop
    //   39: aload_1
    //   40: ldc 50
    //   42: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: pop
    //   46: aload_1
    //   47: invokevirtual 53	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   50: astore_1
    //   51: aload_0
    //   52: getfield 12	com/miui/systemAdSolution/remoteMethodInvoker/b:b	Lcom/miui/systemAdSolution/remoteMethodInvoker/d;
    //   55: aload_1
    //   56: invokestatic 57	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   59: ldc 59
    //   61: iconst_1
    //   62: anewarray 31	java/lang/Class
    //   65: dup
    //   66: iconst_0
    //   67: ldc 61
    //   69: aastore
    //   70: invokevirtual 65	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   73: aconst_null
    //   74: iconst_1
    //   75: anewarray 67	java/lang/Object
    //   78: dup
    //   79: iconst_0
    //   80: aload_0
    //   81: getfield 14	com/miui/systemAdSolution/remoteMethodInvoker/b:a	Landroid/os/IBinder;
    //   84: aastore
    //   85: invokevirtual 73	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   88: checkcast 75	android/os/IInterface
    //   91: invokestatic 79	com/miui/systemAdSolution/remoteMethodInvoker/d:access$102	(Lcom/miui/systemAdSolution/remoteMethodInvoker/d;Landroid/os/IInterface;)Landroid/os/IInterface;
    //   94: pop
    //   95: new 43	java/lang/StringBuilder
    //   98: astore_1
    //   99: aload_1
    //   100: invokespecial 44	java/lang/StringBuilder:<init>	()V
    //   103: aload_1
    //   104: ldc 81
    //   106: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   109: pop
    //   110: aload_1
    //   111: aload_0
    //   112: getfield 12	com/miui/systemAdSolution/remoteMethodInvoker/b:b	Lcom/miui/systemAdSolution/remoteMethodInvoker/d;
    //   115: invokestatic 85	com/miui/systemAdSolution/remoteMethodInvoker/d:access$100	(Lcom/miui/systemAdSolution/remoteMethodInvoker/d;)Landroid/os/IInterface;
    //   118: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   121: pop
    //   122: aload_1
    //   123: ldc 90
    //   125: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: pop
    //   129: aload_1
    //   130: aload_0
    //   131: getfield 14	com/miui/systemAdSolution/remoteMethodInvoker/b:a	Landroid/os/IBinder;
    //   134: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   137: pop
    //   138: ldc 23
    //   140: aload_1
    //   141: invokevirtual 53	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   144: invokestatic 41	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   147: pop
    //   148: goto +13 -> 161
    //   151: astore_1
    //   152: ldc 23
    //   154: ldc 92
    //   156: aload_1
    //   157: invokestatic 96	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   160: pop
    //   161: aload_0
    //   162: getfield 12	com/miui/systemAdSolution/remoteMethodInvoker/b:b	Lcom/miui/systemAdSolution/remoteMethodInvoker/d;
    //   165: aconst_null
    //   166: invokestatic 100	com/miui/systemAdSolution/remoteMethodInvoker/d:access$202	(Lcom/miui/systemAdSolution/remoteMethodInvoker/d;Ljava/lang/Object;)Ljava/lang/Object;
    //   169: pop
    //   170: aload_0
    //   171: getfield 12	com/miui/systemAdSolution/remoteMethodInvoker/b:b	Lcom/miui/systemAdSolution/remoteMethodInvoker/d;
    //   174: astore_1
    //   175: aload_1
    //   176: aload_1
    //   177: aload_1
    //   178: invokestatic 85	com/miui/systemAdSolution/remoteMethodInvoker/d:access$100	(Lcom/miui/systemAdSolution/remoteMethodInvoker/d;)Landroid/os/IInterface;
    //   181: invokevirtual 104	com/miui/systemAdSolution/remoteMethodInvoker/d:innerInvoke	(Landroid/os/IInterface;)Ljava/lang/Object;
    //   184: invokestatic 100	com/miui/systemAdSolution/remoteMethodInvoker/d:access$202	(Lcom/miui/systemAdSolution/remoteMethodInvoker/d;Ljava/lang/Object;)Ljava/lang/Object;
    //   187: pop
    //   188: goto +17 -> 205
    //   191: astore_1
    //   192: goto +41 -> 233
    //   195: astore_1
    //   196: ldc 23
    //   198: ldc 106
    //   200: aload_1
    //   201: invokestatic 96	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   204: pop
    //   205: aload_0
    //   206: getfield 12	com/miui/systemAdSolution/remoteMethodInvoker/b:b	Lcom/miui/systemAdSolution/remoteMethodInvoker/d;
    //   209: invokestatic 110	com/miui/systemAdSolution/remoteMethodInvoker/d:access$300	(Lcom/miui/systemAdSolution/remoteMethodInvoker/d;)Landroid/content/Context;
    //   212: aload_0
    //   213: getfield 12	com/miui/systemAdSolution/remoteMethodInvoker/b:b	Lcom/miui/systemAdSolution/remoteMethodInvoker/d;
    //   216: invokevirtual 116	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   219: aload_0
    //   220: getfield 12	com/miui/systemAdSolution/remoteMethodInvoker/b:b	Lcom/miui/systemAdSolution/remoteMethodInvoker/d;
    //   223: astore_1
    //   224: aload_1
    //   225: aload_1
    //   226: invokestatic 120	com/miui/systemAdSolution/remoteMethodInvoker/d:access$200	(Lcom/miui/systemAdSolution/remoteMethodInvoker/d;)Ljava/lang/Object;
    //   229: invokestatic 124	com/miui/systemAdSolution/remoteMethodInvoker/d:access$400	(Lcom/miui/systemAdSolution/remoteMethodInvoker/d;Ljava/lang/Object;)V
    //   232: return
    //   233: aload_0
    //   234: getfield 12	com/miui/systemAdSolution/remoteMethodInvoker/b:b	Lcom/miui/systemAdSolution/remoteMethodInvoker/d;
    //   237: invokestatic 110	com/miui/systemAdSolution/remoteMethodInvoker/d:access$300	(Lcom/miui/systemAdSolution/remoteMethodInvoker/d;)Landroid/content/Context;
    //   240: aload_0
    //   241: getfield 12	com/miui/systemAdSolution/remoteMethodInvoker/b:b	Lcom/miui/systemAdSolution/remoteMethodInvoker/d;
    //   244: invokevirtual 116	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   247: aload_1
    //   248: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	249	0	this	b
    //   19	122	1	localObject1	java.lang.Object
    //   151	6	1	localException1	java.lang.Exception
    //   174	4	1	locald1	d
    //   191	1	1	localObject2	java.lang.Object
    //   195	6	1	localException2	java.lang.Exception
    //   223	25	1	locald2	d
    // Exception table:
    //   from	to	target	type
    //   0	148	151	java/lang/Exception
    //   170	188	191	finally
    //   196	205	191	finally
    //   170	188	195	java/lang/Exception
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.systemAdSolution.remoteMethodInvoker.b
 * JD-Core Version:    0.7.0.1
 */