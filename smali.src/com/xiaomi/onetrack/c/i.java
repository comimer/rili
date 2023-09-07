package com.xiaomi.onetrack.c;

import android.content.Context;
import com.xiaomi.onetrack.api.e;
import com.xiaomi.onetrack.f.a;
import com.xiaomi.onetrack.util.p;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;

public class i
{
  public static final long a = 0L;
  public static final long b = 1L;
  public static final long c = 2L;
  public static final String d = "eventName";
  public static final String e = "data";
  private static final String f = "NetworkAccessManager";
  private static final String g = "networkAccess";
  private static String h = "onetrack_netaccess_%s";
  private static SimpleDateFormat i = new SimpleDateFormat("yyyyMMdd");
  private static boolean j = false;
  private static volatile boolean k = true;
  private static volatile boolean l = false;
  
  public static void a(e parame)
  {
    try
    {
      boolean bool = d();
      if (!bool) {
        return;
      }
      if ((parame != null) && (b()))
      {
        l = true;
        k localk = new com/xiaomi/onetrack/c/k;
        localk.<init>(parame);
        com.xiaomi.onetrack.util.i.a(localk);
        return;
      }
      return;
    }
    finally {}
  }
  
  public static void a(String paramString1, String paramString2)
  {
    com.xiaomi.onetrack.util.i.a(new j(paramString1, paramString2));
  }
  
  public static void a(boolean paramBoolean)
  {
    j = paramBoolean;
  }
  
  public static boolean a()
  {
    return j;
  }
  
  public static void b(boolean paramBoolean)
  {
    File localFile = new File(a.a().getFilesDir(), ".ot_net_allowed");
    Object localObject = new File(a.a().getFilesDir(), ".ot_net_disallowed");
    if (paramBoolean) {}
    try
    {
      localFile.createNewFile();
      if (!((File)localObject).exists()) {
        return;
      }
      ((File)localObject).delete();
    }
    catch (IOException localIOException)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("setNetworkAccessStateEnabled: ");
      ((StringBuilder)localObject).append(paramBoolean);
      ((StringBuilder)localObject).append("failed ");
      p.b("NetworkAccessManager", ((StringBuilder)localObject).toString(), localIOException);
    }
    ((File)localObject).createNewFile();
    if (localFile.exists()) {
      localFile.delete();
    }
  }
  
  public static boolean b()
  {
    return new File(a.a().getFilesDir(), ".ot_net_disallowed").exists() ^ true;
  }
  
  /* Error */
  public static java.util.List<org.json.JSONObject> c()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 48	com/xiaomi/onetrack/c/i:i	Ljava/text/SimpleDateFormat;
    //   6: astore_0
    //   7: new 139	java/util/Date
    //   10: astore_1
    //   11: aload_1
    //   12: invokespecial 140	java/util/Date:<init>	()V
    //   15: aload_0
    //   16: aload_1
    //   17: invokevirtual 146	java/text/DateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   20: astore_1
    //   21: getstatic 148	com/xiaomi/onetrack/c/i:h	Ljava/lang/String;
    //   24: iconst_1
    //   25: anewarray 4	java/lang/Object
    //   28: dup
    //   29: iconst_0
    //   30: aload_1
    //   31: aastore
    //   32: invokestatic 153	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   35: astore_1
    //   36: new 84	java/io/File
    //   39: astore_0
    //   40: aload_0
    //   41: invokestatic 155	com/xiaomi/onetrack/c/i:e	()Ljava/lang/String;
    //   44: aload_1
    //   45: invokespecial 156	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   48: aload_0
    //   49: invokevirtual 108	java/io/File:exists	()Z
    //   52: istore_2
    //   53: aconst_null
    //   54: astore_3
    //   55: iload_2
    //   56: ifne +8 -> 64
    //   59: ldc 2
    //   61: monitorexit
    //   62: aconst_null
    //   63: areturn
    //   64: new 158	java/util/ArrayList
    //   67: astore 4
    //   69: aload 4
    //   71: invokespecial 159	java/util/ArrayList:<init>	()V
    //   74: new 161	java/io/FileReader
    //   77: astore_1
    //   78: aload_1
    //   79: aload_0
    //   80: invokespecial 164	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   83: new 166	java/io/BufferedReader
    //   86: astore_0
    //   87: aload_0
    //   88: aload_1
    //   89: invokespecial 169	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   92: aload_0
    //   93: astore 5
    //   95: aload_1
    //   96: astore_3
    //   97: aload_0
    //   98: invokevirtual 172	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   101: astore 6
    //   103: aload 6
    //   105: ifnull +58 -> 163
    //   108: aload_0
    //   109: astore 5
    //   111: aload_1
    //   112: astore_3
    //   113: aload 6
    //   115: invokestatic 177	com/xiaomi/onetrack/d/c:a	(Ljava/lang/String;)[B
    //   118: invokestatic 182	com/xiaomi/onetrack/c/c:a	([B)Ljava/lang/String;
    //   121: astore 7
    //   123: aload_0
    //   124: astore 5
    //   126: aload_1
    //   127: astore_3
    //   128: new 184	org/json/JSONObject
    //   131: astore 6
    //   133: aload_0
    //   134: astore 5
    //   136: aload_1
    //   137: astore_3
    //   138: aload 6
    //   140: aload 7
    //   142: invokespecial 185	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   145: aload_0
    //   146: astore 5
    //   148: aload_1
    //   149: astore_3
    //   150: aload 4
    //   152: aload 6
    //   154: invokeinterface 191 2 0
    //   159: pop
    //   160: goto -68 -> 92
    //   163: aload_0
    //   164: invokestatic 196	com/xiaomi/onetrack/util/m:a	(Ljava/io/Closeable;)V
    //   167: aload_1
    //   168: invokestatic 196	com/xiaomi/onetrack/util/m:a	(Ljava/io/Closeable;)V
    //   171: goto +112 -> 283
    //   174: astore 6
    //   176: goto +26 -> 202
    //   179: astore_0
    //   180: goto +167 -> 347
    //   183: astore 6
    //   185: aconst_null
    //   186: astore_0
    //   187: goto +15 -> 202
    //   190: astore_0
    //   191: aconst_null
    //   192: astore_1
    //   193: goto +154 -> 347
    //   196: astore 6
    //   198: aconst_null
    //   199: astore_1
    //   200: aload_1
    //   201: astore_0
    //   202: aload_0
    //   203: astore 5
    //   205: aload_1
    //   206: astore_3
    //   207: new 113	java/lang/StringBuilder
    //   210: astore 7
    //   212: aload_0
    //   213: astore 5
    //   215: aload_1
    //   216: astore_3
    //   217: aload 7
    //   219: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   222: aload_0
    //   223: astore 5
    //   225: aload_1
    //   226: astore_3
    //   227: aload 7
    //   229: ldc 198
    //   231: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: pop
    //   235: aload_0
    //   236: astore 5
    //   238: aload_1
    //   239: astore_3
    //   240: aload 7
    //   242: aload 6
    //   244: invokevirtual 199	java/lang/Object:toString	()Ljava/lang/String;
    //   247: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   250: pop
    //   251: aload_0
    //   252: astore 5
    //   254: aload_1
    //   255: astore_3
    //   256: ldc 24
    //   258: aload 7
    //   260: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   263: invokestatic 201	com/xiaomi/onetrack/util/p:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   266: aload_0
    //   267: astore 5
    //   269: aload_1
    //   270: astore_3
    //   271: aload 6
    //   273: invokevirtual 206	java/lang/Throwable:printStackTrace	()V
    //   276: aload_0
    //   277: invokestatic 196	com/xiaomi/onetrack/util/m:a	(Ljava/io/Closeable;)V
    //   280: goto -113 -> 167
    //   283: aload 4
    //   285: astore_1
    //   286: aload 4
    //   288: invokeinterface 210 1 0
    //   293: bipush 100
    //   295: if_icmple +28 -> 323
    //   298: aload 4
    //   300: aload 4
    //   302: invokeinterface 210 1 0
    //   307: bipush 100
    //   309: isub
    //   310: aload 4
    //   312: invokeinterface 210 1 0
    //   317: invokeinterface 214 3 0
    //   322: astore_1
    //   323: aload_1
    //   324: invokeinterface 210 1 0
    //   329: ifle +7 -> 336
    //   332: iconst_1
    //   333: putstatic 52	com/xiaomi/onetrack/c/i:k	Z
    //   336: ldc 2
    //   338: monitorexit
    //   339: aload_1
    //   340: areturn
    //   341: astore_0
    //   342: aload_3
    //   343: astore_1
    //   344: aload 5
    //   346: astore_3
    //   347: aload_3
    //   348: invokestatic 196	com/xiaomi/onetrack/util/m:a	(Ljava/io/Closeable;)V
    //   351: aload_1
    //   352: invokestatic 196	com/xiaomi/onetrack/util/m:a	(Ljava/io/Closeable;)V
    //   355: aload_0
    //   356: athrow
    //   357: astore_1
    //   358: ldc 2
    //   360: monitorexit
    //   361: aload_1
    //   362: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   6	158	0	localObject1	Object
    //   179	1	0	localObject2	Object
    //   186	1	0	localObject3	Object
    //   190	1	0	localObject4	Object
    //   201	76	0	localObject5	Object
    //   341	15	0	localObject6	Object
    //   10	342	1	localObject7	Object
    //   357	5	1	localObject8	Object
    //   52	4	2	bool	boolean
    //   54	294	3	localObject9	Object
    //   67	244	4	localArrayList	java.util.ArrayList
    //   93	252	5	localObject10	Object
    //   101	52	6	localObject11	Object
    //   174	1	6	localException1	java.lang.Exception
    //   183	1	6	localException2	java.lang.Exception
    //   196	76	6	localException3	java.lang.Exception
    //   121	138	7	localObject12	Object
    // Exception table:
    //   from	to	target	type
    //   97	103	174	java/lang/Exception
    //   113	123	174	java/lang/Exception
    //   128	133	174	java/lang/Exception
    //   138	145	174	java/lang/Exception
    //   150	160	174	java/lang/Exception
    //   83	92	179	finally
    //   83	92	183	java/lang/Exception
    //   74	83	190	finally
    //   74	83	196	java/lang/Exception
    //   97	103	341	finally
    //   113	123	341	finally
    //   128	133	341	finally
    //   138	145	341	finally
    //   150	160	341	finally
    //   207	212	341	finally
    //   217	222	341	finally
    //   227	235	341	finally
    //   240	251	341	finally
    //   256	266	341	finally
    //   271	276	341	finally
    //   3	53	357	finally
    //   64	74	357	finally
    //   163	167	357	finally
    //   167	171	357	finally
    //   276	280	357	finally
    //   286	323	357	finally
    //   323	336	357	finally
    //   347	357	357	finally
  }
  
  /* Error */
  private static void c(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 48	com/xiaomi/onetrack/c/i:i	Ljava/text/SimpleDateFormat;
    //   6: astore_2
    //   7: new 139	java/util/Date
    //   10: astore_3
    //   11: aload_3
    //   12: invokespecial 140	java/util/Date:<init>	()V
    //   15: aload_2
    //   16: aload_3
    //   17: invokevirtual 146	java/text/DateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   20: astore_3
    //   21: getstatic 148	com/xiaomi/onetrack/c/i:h	Ljava/lang/String;
    //   24: iconst_1
    //   25: anewarray 4	java/lang/Object
    //   28: dup
    //   29: iconst_0
    //   30: aload_3
    //   31: aastore
    //   32: invokestatic 153	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   35: astore_2
    //   36: new 84	java/io/File
    //   39: astore_3
    //   40: aload_3
    //   41: invokestatic 155	com/xiaomi/onetrack/c/i:e	()Ljava/lang/String;
    //   44: aload_2
    //   45: invokespecial 156	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   48: aconst_null
    //   49: astore 4
    //   51: aconst_null
    //   52: astore_2
    //   53: aconst_null
    //   54: astore 5
    //   56: aload_3
    //   57: invokevirtual 108	java/io/File:exists	()Z
    //   60: ifne +49 -> 109
    //   63: aload_3
    //   64: invokevirtual 219	java/io/File:getParentFile	()Ljava/io/File;
    //   67: invokevirtual 108	java/io/File:exists	()Z
    //   70: ifeq +11 -> 81
    //   73: aload_3
    //   74: invokevirtual 105	java/io/File:createNewFile	()Z
    //   77: pop
    //   78: goto +31 -> 109
    //   81: new 84	java/io/File
    //   84: astore 6
    //   86: aload 6
    //   88: aload_3
    //   89: invokevirtual 219	java/io/File:getParentFile	()Ljava/io/File;
    //   92: invokevirtual 222	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   95: invokespecial 223	java/io/File:<init>	(Ljava/lang/String;)V
    //   98: aload 6
    //   100: invokevirtual 226	java/io/File:mkdirs	()Z
    //   103: pop
    //   104: aload_3
    //   105: invokevirtual 105	java/io/File:createNewFile	()Z
    //   108: pop
    //   109: new 184	org/json/JSONObject
    //   112: astore 6
    //   114: aload 6
    //   116: invokespecial 227	org/json/JSONObject:<init>	()V
    //   119: aload 6
    //   121: ldc 18
    //   123: aload_0
    //   124: invokevirtual 231	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   127: pop
    //   128: aload 6
    //   130: ldc 21
    //   132: aload_1
    //   133: invokevirtual 231	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   136: pop
    //   137: aload 6
    //   139: invokevirtual 232	org/json/JSONObject:toString	()Ljava/lang/String;
    //   142: invokestatic 233	com/xiaomi/onetrack/c/c:a	(Ljava/lang/String;)[B
    //   145: astore 6
    //   147: new 235	java/io/FileWriter
    //   150: astore_0
    //   151: aload_0
    //   152: aload_3
    //   153: iconst_1
    //   154: invokespecial 238	java/io/FileWriter:<init>	(Ljava/io/File;Z)V
    //   157: aload 4
    //   159: astore_1
    //   160: aload_0
    //   161: astore_3
    //   162: new 240	java/io/BufferedWriter
    //   165: astore_2
    //   166: aload 4
    //   168: astore_1
    //   169: aload_0
    //   170: astore_3
    //   171: aload_2
    //   172: aload_0
    //   173: invokespecial 243	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   176: aload_2
    //   177: aload 6
    //   179: invokestatic 244	com/xiaomi/onetrack/d/c:a	([B)Ljava/lang/String;
    //   182: invokevirtual 249	java/io/Writer:write	(Ljava/lang/String;)V
    //   185: aload_2
    //   186: invokevirtual 252	java/io/BufferedWriter:newLine	()V
    //   189: iconst_1
    //   190: putstatic 52	com/xiaomi/onetrack/c/i:k	Z
    //   193: aload_2
    //   194: invokestatic 196	com/xiaomi/onetrack/util/m:a	(Ljava/io/Closeable;)V
    //   197: aload_0
    //   198: invokestatic 196	com/xiaomi/onetrack/util/m:a	(Ljava/io/Closeable;)V
    //   201: goto +112 -> 313
    //   204: astore_3
    //   205: aload_2
    //   206: astore_1
    //   207: goto +115 -> 322
    //   210: astore 4
    //   212: goto +26 -> 238
    //   215: astore 4
    //   217: aload 5
    //   219: astore_2
    //   220: goto +18 -> 238
    //   223: astore_3
    //   224: aconst_null
    //   225: astore_0
    //   226: aload_2
    //   227: astore_1
    //   228: goto +94 -> 322
    //   231: astore 4
    //   233: aconst_null
    //   234: astore_0
    //   235: aload 5
    //   237: astore_2
    //   238: aload_2
    //   239: astore_1
    //   240: aload_0
    //   241: astore_3
    //   242: new 113	java/lang/StringBuilder
    //   245: astore 5
    //   247: aload_2
    //   248: astore_1
    //   249: aload_0
    //   250: astore_3
    //   251: aload 5
    //   253: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   256: aload_2
    //   257: astore_1
    //   258: aload_0
    //   259: astore_3
    //   260: aload 5
    //   262: ldc 254
    //   264: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   267: pop
    //   268: aload_2
    //   269: astore_1
    //   270: aload_0
    //   271: astore_3
    //   272: aload 5
    //   274: aload 4
    //   276: invokevirtual 199	java/lang/Object:toString	()Ljava/lang/String;
    //   279: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   282: pop
    //   283: aload_2
    //   284: astore_1
    //   285: aload_0
    //   286: astore_3
    //   287: ldc 24
    //   289: aload 5
    //   291: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   294: invokestatic 201	com/xiaomi/onetrack/util/p:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   297: aload_2
    //   298: astore_1
    //   299: aload_0
    //   300: astore_3
    //   301: aload 4
    //   303: invokevirtual 206	java/lang/Throwable:printStackTrace	()V
    //   306: aload_2
    //   307: invokestatic 196	com/xiaomi/onetrack/util/m:a	(Ljava/io/Closeable;)V
    //   310: goto -113 -> 197
    //   313: ldc 2
    //   315: monitorexit
    //   316: return
    //   317: astore_2
    //   318: aload_3
    //   319: astore_0
    //   320: aload_2
    //   321: astore_3
    //   322: aload_1
    //   323: invokestatic 196	com/xiaomi/onetrack/util/m:a	(Ljava/io/Closeable;)V
    //   326: aload_0
    //   327: invokestatic 196	com/xiaomi/onetrack/util/m:a	(Ljava/io/Closeable;)V
    //   330: aload_3
    //   331: athrow
    //   332: astore_0
    //   333: ldc 2
    //   335: monitorexit
    //   336: aload_0
    //   337: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	338	0	paramString1	String
    //   0	338	1	paramString2	String
    //   6	301	2	localObject1	Object
    //   317	4	2	localObject2	Object
    //   10	161	3	localObject3	Object
    //   204	1	3	localObject4	Object
    //   223	1	3	localObject5	Object
    //   241	90	3	localObject6	Object
    //   49	118	4	localObject7	Object
    //   210	1	4	localException1	java.lang.Exception
    //   215	1	4	localException2	java.lang.Exception
    //   231	71	4	localException3	java.lang.Exception
    //   54	236	5	localStringBuilder	StringBuilder
    //   84	94	6	localObject8	Object
    // Exception table:
    //   from	to	target	type
    //   176	193	204	finally
    //   176	193	210	java/lang/Exception
    //   162	166	215	java/lang/Exception
    //   171	176	215	java/lang/Exception
    //   56	78	223	finally
    //   81	109	223	finally
    //   109	157	223	finally
    //   56	78	231	java/lang/Exception
    //   81	109	231	java/lang/Exception
    //   109	157	231	java/lang/Exception
    //   162	166	317	finally
    //   171	176	317	finally
    //   242	247	317	finally
    //   251	256	317	finally
    //   260	268	317	finally
    //   272	283	317	finally
    //   287	297	317	finally
    //   301	306	317	finally
    //   3	48	332	finally
    //   193	197	332	finally
    //   197	201	332	finally
    //   306	310	332	finally
    //   322	332	332	finally
  }
  
  /* Error */
  public static void c(boolean paramBoolean)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: new 84	java/io/File
    //   6: astore_1
    //   7: aload_1
    //   8: invokestatic 155	com/xiaomi/onetrack/c/i:e	()Ljava/lang/String;
    //   11: invokespecial 223	java/io/File:<init>	(Ljava/lang/String;)V
    //   14: aload_1
    //   15: invokevirtual 108	java/io/File:exists	()Z
    //   18: ifeq +121 -> 139
    //   21: aload_1
    //   22: invokevirtual 257	java/io/File:isDirectory	()Z
    //   25: ifne +6 -> 31
    //   28: goto +111 -> 139
    //   31: getstatic 48	com/xiaomi/onetrack/c/i:i	Ljava/text/SimpleDateFormat;
    //   34: astore_2
    //   35: new 139	java/util/Date
    //   38: astore_3
    //   39: aload_3
    //   40: invokespecial 140	java/util/Date:<init>	()V
    //   43: aload_2
    //   44: aload_3
    //   45: invokevirtual 146	java/text/DateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   48: astore_3
    //   49: getstatic 148	com/xiaomi/onetrack/c/i:h	Ljava/lang/String;
    //   52: iconst_1
    //   53: anewarray 4	java/lang/Object
    //   56: dup
    //   57: iconst_0
    //   58: aload_3
    //   59: aastore
    //   60: invokestatic 153	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   63: astore_2
    //   64: aload_1
    //   65: invokevirtual 261	java/io/File:listFiles	()[Ljava/io/File;
    //   68: astore_3
    //   69: iconst_0
    //   70: istore 4
    //   72: iload 4
    //   74: aload_3
    //   75: arraylength
    //   76: if_icmpge +48 -> 124
    //   79: aload_3
    //   80: iload 4
    //   82: aaload
    //   83: invokevirtual 264	java/io/File:isFile	()Z
    //   86: ifeq +32 -> 118
    //   89: iload_0
    //   90: ifne +20 -> 110
    //   93: aload_3
    //   94: iload 4
    //   96: aaload
    //   97: invokevirtual 267	java/io/File:getName	()Ljava/lang/String;
    //   100: aload_2
    //   101: invokevirtual 271	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   104: ifeq +6 -> 110
    //   107: goto +11 -> 118
    //   110: aload_3
    //   111: iload 4
    //   113: aaload
    //   114: invokevirtual 111	java/io/File:delete	()Z
    //   117: pop
    //   118: iinc 4 1
    //   121: goto -49 -> 72
    //   124: aload_1
    //   125: invokevirtual 261	java/io/File:listFiles	()[Ljava/io/File;
    //   128: arraylength
    //   129: ifne +61 -> 190
    //   132: iconst_0
    //   133: putstatic 52	com/xiaomi/onetrack/c/i:k	Z
    //   136: goto +54 -> 190
    //   139: iconst_0
    //   140: putstatic 52	com/xiaomi/onetrack/c/i:k	Z
    //   143: ldc 2
    //   145: monitorexit
    //   146: return
    //   147: astore_1
    //   148: goto +46 -> 194
    //   151: astore_1
    //   152: new 113	java/lang/StringBuilder
    //   155: astore_3
    //   156: aload_3
    //   157: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   160: aload_3
    //   161: ldc_w 273
    //   164: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: pop
    //   168: aload_3
    //   169: aload_1
    //   170: invokevirtual 199	java/lang/Object:toString	()Ljava/lang/String;
    //   173: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: pop
    //   177: ldc 24
    //   179: aload_3
    //   180: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   183: invokestatic 201	com/xiaomi/onetrack/util/p:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   186: aload_1
    //   187: invokevirtual 206	java/lang/Throwable:printStackTrace	()V
    //   190: ldc 2
    //   192: monitorexit
    //   193: return
    //   194: ldc 2
    //   196: monitorexit
    //   197: aload_1
    //   198: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	199	0	paramBoolean	boolean
    //   6	119	1	localFile	File
    //   147	1	1	localObject1	Object
    //   151	47	1	localException	java.lang.Exception
    //   34	67	2	localObject2	Object
    //   38	142	3	localObject3	Object
    //   70	49	4	m	int
    // Exception table:
    //   from	to	target	type
    //   3	28	147	finally
    //   31	69	147	finally
    //   72	89	147	finally
    //   93	107	147	finally
    //   110	118	147	finally
    //   124	136	147	finally
    //   139	143	147	finally
    //   152	190	147	finally
    //   3	28	151	java/lang/Exception
    //   31	69	151	java/lang/Exception
    //   72	89	151	java/lang/Exception
    //   93	107	151	java/lang/Exception
    //   110	118	151	java/lang/Exception
    //   124	136	151	java/lang/Exception
    //   139	143	151	java/lang/Exception
  }
  
  public static boolean d()
  {
    return (!l) && (k);
  }
  
  private static String e()
  {
    Context localContext = a.a();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(localContext.getFilesDir().getAbsolutePath());
    localStringBuilder.append(File.separator);
    localStringBuilder.append("networkAccess");
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.c.i
 * JD-Core Version:    0.7.0.1
 */