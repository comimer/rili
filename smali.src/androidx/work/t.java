package androidx.work;

import android.content.Context;

public abstract class t
{
  private static final String a = k.f("WorkerFactory");
  
  public static t c()
  {
    return new a();
  }
  
  public abstract ListenableWorker a(Context paramContext, String paramString, WorkerParameters paramWorkerParameters);
  
  /* Error */
  public final ListenableWorker b(Context paramContext, String paramString, WorkerParameters paramWorkerParameters)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: aload_2
    //   3: aload_3
    //   4: invokevirtual 31	androidx/work/t:a	(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;
    //   7: astore 4
    //   9: aload 4
    //   11: astore 5
    //   13: aload 4
    //   15: ifnonnull +189 -> 204
    //   18: aconst_null
    //   19: astore 6
    //   21: aload_2
    //   22: invokestatic 37	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   25: ldc 39
    //   27: invokevirtual 43	java/lang/Class:asSubclass	(Ljava/lang/Class;)Ljava/lang/Class;
    //   30: astore 5
    //   32: aload 5
    //   34: astore 6
    //   36: goto +60 -> 96
    //   39: astore 7
    //   41: invokestatic 46	androidx/work/k:c	()Landroidx/work/k;
    //   44: astore 8
    //   46: getstatic 20	androidx/work/t:a	Ljava/lang/String;
    //   49: astore 9
    //   51: new 48	java/lang/StringBuilder
    //   54: dup
    //   55: invokespecial 49	java/lang/StringBuilder:<init>	()V
    //   58: astore 5
    //   60: aload 5
    //   62: ldc 51
    //   64: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: pop
    //   68: aload 5
    //   70: aload_2
    //   71: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: pop
    //   75: aload 8
    //   77: aload 9
    //   79: aload 5
    //   81: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   84: iconst_1
    //   85: anewarray 61	java/lang/Throwable
    //   88: dup
    //   89: iconst_0
    //   90: aload 7
    //   92: aastore
    //   93: invokevirtual 64	androidx/work/k:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    //   96: aload 4
    //   98: astore 5
    //   100: aload 6
    //   102: ifnull +102 -> 204
    //   105: aload 6
    //   107: iconst_2
    //   108: anewarray 33	java/lang/Class
    //   111: dup
    //   112: iconst_0
    //   113: ldc 66
    //   115: aastore
    //   116: dup
    //   117: iconst_1
    //   118: ldc 68
    //   120: aastore
    //   121: invokevirtual 72	java/lang/Class:getDeclaredConstructor	([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    //   124: iconst_2
    //   125: anewarray 4	java/lang/Object
    //   128: dup
    //   129: iconst_0
    //   130: aload_1
    //   131: aastore
    //   132: dup
    //   133: iconst_1
    //   134: aload_3
    //   135: aastore
    //   136: invokevirtual 78	java/lang/reflect/Constructor:newInstance	([Ljava/lang/Object;)Ljava/lang/Object;
    //   139: checkcast 39	androidx/work/ListenableWorker
    //   142: astore 5
    //   144: goto +60 -> 204
    //   147: astore 6
    //   149: invokestatic 46	androidx/work/k:c	()Landroidx/work/k;
    //   152: astore_1
    //   153: getstatic 20	androidx/work/t:a	Ljava/lang/String;
    //   156: astore_3
    //   157: new 48	java/lang/StringBuilder
    //   160: dup
    //   161: invokespecial 49	java/lang/StringBuilder:<init>	()V
    //   164: astore 5
    //   166: aload 5
    //   168: ldc 80
    //   170: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   173: pop
    //   174: aload 5
    //   176: aload_2
    //   177: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: pop
    //   181: aload_1
    //   182: aload_3
    //   183: aload 5
    //   185: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   188: iconst_1
    //   189: anewarray 61	java/lang/Throwable
    //   192: dup
    //   193: iconst_0
    //   194: aload 6
    //   196: aastore
    //   197: invokevirtual 64	androidx/work/k:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    //   200: aload 4
    //   202: astore 5
    //   204: aload 5
    //   206: ifnull +45 -> 251
    //   209: aload 5
    //   211: invokevirtual 84	androidx/work/ListenableWorker:l	()Z
    //   214: ifne +6 -> 220
    //   217: goto +34 -> 251
    //   220: new 86	java/lang/IllegalStateException
    //   223: dup
    //   224: ldc 88
    //   226: iconst_2
    //   227: anewarray 4	java/lang/Object
    //   230: dup
    //   231: iconst_0
    //   232: aload_0
    //   233: invokevirtual 92	java/lang/Object:getClass	()Ljava/lang/Class;
    //   236: invokevirtual 95	java/lang/Class:getName	()Ljava/lang/String;
    //   239: aastore
    //   240: dup
    //   241: iconst_1
    //   242: aload_2
    //   243: aastore
    //   244: invokestatic 101	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   247: invokespecial 104	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   250: athrow
    //   251: aload 5
    //   253: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	254	0	this	t
    //   0	254	1	paramContext	Context
    //   0	254	2	paramString	String
    //   0	254	3	paramWorkerParameters	WorkerParameters
    //   7	194	4	localListenableWorker	ListenableWorker
    //   11	241	5	localObject1	Object
    //   19	87	6	localObject2	Object
    //   147	48	6	localObject3	Object
    //   39	52	7	localObject4	Object
    //   44	32	8	localk	k
    //   49	29	9	str	String
    // Exception table:
    //   from	to	target	type
    //   21	32	39	finally
    //   105	144	147	finally
  }
  
  class a
    extends t
  {
    public ListenableWorker a(Context paramContext, String paramString, WorkerParameters paramWorkerParameters)
    {
      return null;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.t
 * JD-Core Version:    0.7.0.1
 */