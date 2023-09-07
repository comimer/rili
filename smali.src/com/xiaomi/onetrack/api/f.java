package com.xiaomi.onetrack.api;

import android.os.Process;
import android.util.Log;
import com.xiaomi.onetrack.f.a;
import com.xiaomi.onetrack.util.p;
import java.util.Date;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;

public class f
  implements Thread.UncaughtExceptionHandler
{
  private static final String a = "OneTrackExceptionHandler";
  private static final String c = "tombstone";
  private static final String d = ".java.xcrash";
  private static final String e = "backtrace feature id:\n\t";
  private static final String f = "error reason:\n\t";
  private static final long h = 2L;
  private Thread.UncaughtExceptionHandler b;
  private final Date g = new Date();
  private int i = 50;
  private int j = 50;
  private int k = 200;
  private boolean l = true;
  private boolean m = true;
  
  private String a(Date paramDate, Thread paramThread, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(com.xiaomi.onetrack.util.b.a(this.g, paramDate, "java", a.e(), com.xiaomi.onetrack.util.b.a(a.b())));
    localStringBuilder.append("pid: ");
    localStringBuilder.append(Process.myPid());
    localStringBuilder.append(", tid: ");
    localStringBuilder.append(Process.myTid());
    localStringBuilder.append(", name: ");
    localStringBuilder.append(paramThread.getName());
    localStringBuilder.append("  >>> ");
    localStringBuilder.append(a.e());
    localStringBuilder.append(" <<<\n\njava stacktrace:\n");
    localStringBuilder.append(paramString);
    localStringBuilder.append("\n");
    return localStringBuilder.toString();
  }
  
  /* Error */
  private void a(Thread paramThread, Throwable paramThrowable)
  {
    // Byte code:
    //   0: new 43	java/util/Date
    //   3: dup
    //   4: invokespecial 44	java/util/Date:<init>	()V
    //   7: astore_3
    //   8: aconst_null
    //   9: astore 4
    //   11: aconst_null
    //   12: astore 5
    //   14: getstatic 127	java/util/Locale:US	Ljava/util/Locale;
    //   17: ldc 129
    //   19: bipush 6
    //   21: anewarray 4	java/lang/Object
    //   24: dup
    //   25: iconst_0
    //   26: invokestatic 133	com/xiaomi/onetrack/util/k:a	()Ljava/lang/String;
    //   29: aastore
    //   30: dup
    //   31: iconst_1
    //   32: ldc 13
    //   34: aastore
    //   35: dup
    //   36: iconst_2
    //   37: aload_0
    //   38: getfield 46	com/xiaomi/onetrack/api/f:g	Ljava/util/Date;
    //   41: invokevirtual 137	java/util/Date:getTime	()J
    //   44: ldc2_w 138
    //   47: lmul
    //   48: invokestatic 145	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   51: aastore
    //   52: dup
    //   53: iconst_3
    //   54: invokestatic 71	com/xiaomi/onetrack/f/a:b	()Landroid/content/Context;
    //   57: invokestatic 76	com/xiaomi/onetrack/util/b:a	(Landroid/content/Context;)Ljava/lang/String;
    //   60: aastore
    //   61: dup
    //   62: iconst_4
    //   63: invokestatic 68	com/xiaomi/onetrack/f/a:e	()Ljava/lang/String;
    //   66: aastore
    //   67: dup
    //   68: iconst_5
    //   69: ldc 16
    //   71: aastore
    //   72: invokestatic 151	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   75: astore 6
    //   77: new 153	java/io/File
    //   80: astore 7
    //   82: aload 7
    //   84: aload 6
    //   86: invokespecial 156	java/io/File:<init>	(Ljava/lang/String;)V
    //   89: aload 7
    //   91: astore 6
    //   93: aload 7
    //   95: invokevirtual 160	java/io/File:exists	()Z
    //   98: ifne +39 -> 137
    //   101: aload 7
    //   103: invokevirtual 163	java/io/File:createNewFile	()Z
    //   106: pop
    //   107: aload 7
    //   109: astore 6
    //   111: goto +26 -> 137
    //   114: astore 6
    //   116: goto +8 -> 124
    //   119: astore 6
    //   121: aconst_null
    //   122: astore 7
    //   124: ldc 10
    //   126: ldc 165
    //   128: aload 6
    //   130: invokestatic 170	com/xiaomi/onetrack/util/p:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   133: aload 7
    //   135: astore 6
    //   137: new 172	java/io/StringWriter
    //   140: astore 7
    //   142: aload 7
    //   144: invokespecial 173	java/io/StringWriter:<init>	()V
    //   147: new 175	java/io/PrintWriter
    //   150: astore 8
    //   152: aload 8
    //   154: aload 7
    //   156: invokespecial 178	java/io/PrintWriter:<init>	(Ljava/io/Writer;)V
    //   159: aload_2
    //   160: aload 8
    //   162: invokevirtual 184	java/lang/Throwable:printStackTrace	(Ljava/io/PrintWriter;)V
    //   165: aload 7
    //   167: invokevirtual 185	java/io/StringWriter:toString	()Ljava/lang/String;
    //   170: astore 7
    //   172: aload_0
    //   173: aload_3
    //   174: aload_1
    //   175: aload 7
    //   177: invokespecial 187	com/xiaomi/onetrack/api/f:a	(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/String;)Ljava/lang/String;
    //   180: astore_3
    //   181: aload 7
    //   183: astore 8
    //   185: goto +35 -> 220
    //   188: astore_3
    //   189: aload 7
    //   191: astore_1
    //   192: goto +15 -> 207
    //   195: astore 7
    //   197: goto +5 -> 202
    //   200: astore 7
    //   202: aconst_null
    //   203: astore_1
    //   204: aload 7
    //   206: astore_3
    //   207: ldc 10
    //   209: ldc 189
    //   211: aload_3
    //   212: invokestatic 170	com/xiaomi/onetrack/util/p:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   215: aconst_null
    //   216: astore_3
    //   217: aload_1
    //   218: astore 8
    //   220: aload 6
    //   222: ifnull +340 -> 562
    //   225: aload 5
    //   227: astore_1
    //   228: new 191	java/io/RandomAccessFile
    //   231: astore 7
    //   233: aload 5
    //   235: astore_1
    //   236: aload 7
    //   238: aload 6
    //   240: ldc 193
    //   242: invokespecial 196	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   245: aload 8
    //   247: invokestatic 202	com/xiaomi/onetrack/CrashAnalysis:calculateJavaDigest	(Ljava/lang/String;)Ljava/lang/String;
    //   250: astore_1
    //   251: new 60	java/lang/StringBuilder
    //   254: astore 6
    //   256: aload 6
    //   258: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   261: aload 6
    //   263: ldc 19
    //   265: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   268: pop
    //   269: aload 6
    //   271: aload_1
    //   272: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   275: pop
    //   276: aload 6
    //   278: ldc 204
    //   280: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   283: pop
    //   284: aload 7
    //   286: aload 6
    //   288: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   291: ldc 206
    //   293: invokevirtual 210	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   296: invokevirtual 214	java/io/RandomAccessFile:write	([B)V
    //   299: new 60	java/lang/StringBuilder
    //   302: astore_1
    //   303: aload_1
    //   304: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   307: aload_1
    //   308: ldc 22
    //   310: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   313: pop
    //   314: aload_1
    //   315: aload_2
    //   316: invokevirtual 215	java/lang/Throwable:toString	()Ljava/lang/String;
    //   319: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   322: pop
    //   323: aload_1
    //   324: ldc 204
    //   326: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   329: pop
    //   330: aload 7
    //   332: aload_1
    //   333: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   336: ldc 206
    //   338: invokevirtual 210	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   341: invokevirtual 214	java/io/RandomAccessFile:write	([B)V
    //   344: aload_3
    //   345: ifnull +14 -> 359
    //   348: aload 7
    //   350: aload_3
    //   351: ldc 206
    //   353: invokevirtual 210	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   356: invokevirtual 214	java/io/RandomAccessFile:write	([B)V
    //   359: aload_0
    //   360: getfield 52	com/xiaomi/onetrack/api/f:k	I
    //   363: istore 9
    //   365: iload 9
    //   367: ifgt +17 -> 384
    //   370: aload_0
    //   371: getfield 48	com/xiaomi/onetrack/api/f:i	I
    //   374: ifgt +10 -> 384
    //   377: aload_0
    //   378: getfield 50	com/xiaomi/onetrack/api/f:j	I
    //   381: ifle +26 -> 407
    //   384: aload 7
    //   386: iload 9
    //   388: aload_0
    //   389: getfield 48	com/xiaomi/onetrack/api/f:i	I
    //   392: aload_0
    //   393: getfield 50	com/xiaomi/onetrack/api/f:j	I
    //   396: invokestatic 218	com/xiaomi/onetrack/util/b:a	(III)Ljava/lang/String;
    //   399: ldc 206
    //   401: invokevirtual 210	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   404: invokevirtual 214	java/io/RandomAccessFile:write	([B)V
    //   407: aload_0
    //   408: getfield 54	com/xiaomi/onetrack/api/f:l	Z
    //   411: ifeq +16 -> 427
    //   414: aload 7
    //   416: invokestatic 220	com/xiaomi/onetrack/util/b:f	()Ljava/lang/String;
    //   419: ldc 206
    //   421: invokevirtual 210	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   424: invokevirtual 214	java/io/RandomAccessFile:write	([B)V
    //   427: aload_0
    //   428: getfield 56	com/xiaomi/onetrack/api/f:m	Z
    //   431: ifeq +16 -> 447
    //   434: aload 7
    //   436: invokestatic 221	com/xiaomi/onetrack/util/b:e	()Ljava/lang/String;
    //   439: ldc 206
    //   441: invokevirtual 210	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   444: invokevirtual 214	java/io/RandomAccessFile:write	([B)V
    //   447: aload 7
    //   449: invokestatic 223	com/xiaomi/onetrack/util/b:d	()Ljava/lang/String;
    //   452: ldc 206
    //   454: invokevirtual 210	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   457: invokevirtual 214	java/io/RandomAccessFile:write	([B)V
    //   460: aload 7
    //   462: ldc 225
    //   464: ldc 206
    //   466: invokevirtual 210	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   469: invokevirtual 214	java/io/RandomAccessFile:write	([B)V
    //   472: aload 7
    //   474: invokevirtual 228	java/io/RandomAccessFile:close	()V
    //   477: goto +85 -> 562
    //   480: astore_2
    //   481: aload 7
    //   483: astore_1
    //   484: goto +56 -> 540
    //   487: astore_1
    //   488: aload 7
    //   490: astore_2
    //   491: aload_1
    //   492: astore 7
    //   494: goto +12 -> 506
    //   497: astore_2
    //   498: goto +42 -> 540
    //   501: astore 7
    //   503: aload 4
    //   505: astore_2
    //   506: aload_2
    //   507: astore_1
    //   508: ldc 10
    //   510: ldc 230
    //   512: aload 7
    //   514: invokestatic 170	com/xiaomi/onetrack/util/p:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   517: aload_2
    //   518: ifnull +44 -> 562
    //   521: aload_2
    //   522: invokevirtual 228	java/io/RandomAccessFile:close	()V
    //   525: goto +37 -> 562
    //   528: astore_1
    //   529: ldc 10
    //   531: ldc 232
    //   533: aload_1
    //   534: invokestatic 170	com/xiaomi/onetrack/util/p:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   537: goto +25 -> 562
    //   540: aload_1
    //   541: ifnull +19 -> 560
    //   544: aload_1
    //   545: invokevirtual 228	java/io/RandomAccessFile:close	()V
    //   548: goto +12 -> 560
    //   551: astore_1
    //   552: ldc 10
    //   554: ldc 232
    //   556: aload_1
    //   557: invokestatic 170	com/xiaomi/onetrack/util/p:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   560: aload_2
    //   561: athrow
    //   562: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	563	0	this	f
    //   0	563	1	paramThread	Thread
    //   0	563	2	paramThrowable	Throwable
    //   7	174	3	localObject1	Object
    //   188	1	3	localException1	Exception
    //   206	145	3	localObject2	Object
    //   9	495	4	localObject3	Object
    //   12	222	5	localObject4	Object
    //   75	35	6	localObject5	Object
    //   114	1	6	localException2	Exception
    //   119	10	6	localException3	Exception
    //   135	152	6	localObject6	Object
    //   80	110	7	localObject7	Object
    //   195	1	7	localException4	Exception
    //   200	5	7	localException5	Exception
    //   231	262	7	localObject8	Object
    //   501	12	7	localException6	Exception
    //   150	96	8	localObject9	Object
    //   363	24	9	n	int
    // Exception table:
    //   from	to	target	type
    //   93	107	114	java/lang/Exception
    //   14	89	119	java/lang/Exception
    //   172	181	188	java/lang/Exception
    //   159	172	195	java/lang/Exception
    //   137	159	200	java/lang/Exception
    //   245	344	480	finally
    //   348	359	480	finally
    //   359	365	480	finally
    //   370	384	480	finally
    //   384	407	480	finally
    //   407	427	480	finally
    //   427	447	480	finally
    //   447	472	480	finally
    //   245	344	487	java/lang/Exception
    //   348	359	487	java/lang/Exception
    //   359	365	487	java/lang/Exception
    //   370	384	487	java/lang/Exception
    //   384	407	487	java/lang/Exception
    //   407	427	487	java/lang/Exception
    //   427	447	487	java/lang/Exception
    //   447	472	487	java/lang/Exception
    //   228	233	497	finally
    //   236	245	497	finally
    //   508	517	497	finally
    //   228	233	501	java/lang/Exception
    //   236	245	501	java/lang/Exception
    //   472	477	528	java/lang/Exception
    //   521	525	528	java/lang/Exception
    //   544	548	551	java/lang/Exception
  }
  
  public void a()
  {
    Thread.UncaughtExceptionHandler localUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
    if ((localUncaughtExceptionHandler instanceof f)) {
      return;
    }
    this.b = localUncaughtExceptionHandler;
    Thread.setDefaultUncaughtExceptionHandler(this);
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    String str1 = p.a("OneTrackExceptionHandler");
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("crash happened->stacktrace: ");
    ((StringBuilder)localObject).append(paramThrowable.getStackTrace());
    Log.d(str1, ((StringBuilder)localObject).toString());
    localObject = new FutureTask(new g(this, paramThread, paramThrowable), null);
    com.xiaomi.onetrack.c.b.a((Runnable)localObject);
    try
    {
      ((FutureTask)localObject).get(2L, TimeUnit.SECONDS);
    }
    catch (Exception localException)
    {
      String str2 = p.a("OneTrackExceptionHandler");
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("handleException error :");
      ((StringBuilder)localObject).append(localException.getMessage());
      Log.e(str2, ((StringBuilder)localObject).toString());
    }
    localObject = this.b;
    if (localObject != null) {
      ((Thread.UncaughtExceptionHandler)localObject).uncaughtException(paramThread, paramThrowable);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.f
 * JD-Core Version:    0.7.0.1
 */