package com.xiaomi.onetrack.util;

import android.content.Context;
import android.text.TextUtils;
import android.util.LruCache;
import com.xiaomi.onetrack.f.a;
import java.io.File;

public class k
{
  private static final String a = "FileUtil";
  private static final String b = "onetrack";
  private static final String c = "tombstone";
  private static LruCache<String, a> d = new l(1048576);
  
  public static String a()
  {
    return c("tombstone");
  }
  
  /* Error */
  public static String a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 45	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifeq +6 -> 10
    //   7: ldc 47
    //   9: areturn
    //   10: getstatic 30	com/xiaomi/onetrack/util/k:d	Landroid/util/LruCache;
    //   13: aload_0
    //   14: invokevirtual 53	android/util/LruCache:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   17: checkcast 6	com/xiaomi/onetrack/util/k$a
    //   20: astore_1
    //   21: aload_1
    //   22: ifnull +8 -> 30
    //   25: aload_1
    //   26: getfield 55	com/xiaomi/onetrack/util/k$a:a	Ljava/lang/String;
    //   29: areturn
    //   30: aconst_null
    //   31: astore_2
    //   32: aconst_null
    //   33: astore_3
    //   34: aload_3
    //   35: astore_1
    //   36: new 57	java/io/File
    //   39: astore 4
    //   41: aload_3
    //   42: astore_1
    //   43: aload 4
    //   45: invokestatic 59	com/xiaomi/onetrack/util/k:b	()Ljava/lang/String;
    //   48: aload_0
    //   49: invokespecial 62	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   52: aload_3
    //   53: astore_1
    //   54: new 64	java/lang/StringBuilder
    //   57: astore 5
    //   59: aload_3
    //   60: astore_1
    //   61: aload 5
    //   63: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   66: aload_3
    //   67: astore_1
    //   68: aload 4
    //   70: invokevirtual 69	java/io/File:exists	()Z
    //   73: ifeq +73 -> 146
    //   76: aload_3
    //   77: astore_1
    //   78: new 71	java/io/BufferedReader
    //   81: astore 6
    //   83: aload_3
    //   84: astore_1
    //   85: new 73	java/io/FileReader
    //   88: astore 7
    //   90: aload_3
    //   91: astore_1
    //   92: aload 7
    //   94: aload 4
    //   96: invokespecial 76	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   99: aload_3
    //   100: astore_1
    //   101: aload 6
    //   103: aload 7
    //   105: invokespecial 79	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   108: aload 6
    //   110: astore_3
    //   111: aload 6
    //   113: astore_2
    //   114: aload 6
    //   116: invokevirtual 82	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   119: astore 4
    //   121: aload 6
    //   123: astore_1
    //   124: aload 4
    //   126: ifnull +22 -> 148
    //   129: aload 6
    //   131: astore_3
    //   132: aload 6
    //   134: astore_2
    //   135: aload 5
    //   137: aload 4
    //   139: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: pop
    //   143: goto -35 -> 108
    //   146: aconst_null
    //   147: astore_1
    //   148: aload_1
    //   149: astore_3
    //   150: aload_1
    //   151: astore_2
    //   152: aload 5
    //   154: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   157: astore 5
    //   159: aload_1
    //   160: astore_3
    //   161: aload_1
    //   162: astore_2
    //   163: new 6	com/xiaomi/onetrack/util/k$a
    //   166: astore 6
    //   168: aload_1
    //   169: astore_3
    //   170: aload_1
    //   171: astore_2
    //   172: aload 6
    //   174: aconst_null
    //   175: invokespecial 92	com/xiaomi/onetrack/util/k$a:<init>	(Lcom/xiaomi/onetrack/util/l;)V
    //   178: aload_1
    //   179: astore_3
    //   180: aload_1
    //   181: astore_2
    //   182: aload 6
    //   184: aload 5
    //   186: putfield 55	com/xiaomi/onetrack/util/k$a:a	Ljava/lang/String;
    //   189: aload_1
    //   190: astore_3
    //   191: aload_1
    //   192: astore_2
    //   193: getstatic 30	com/xiaomi/onetrack/util/k:d	Landroid/util/LruCache;
    //   196: aload_0
    //   197: aload 6
    //   199: invokevirtual 96	android/util/LruCache:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   202: pop
    //   203: aload_1
    //   204: invokestatic 101	com/xiaomi/onetrack/util/m:a	(Ljava/io/Closeable;)V
    //   207: aload 5
    //   209: areturn
    //   210: astore_0
    //   211: aload_3
    //   212: astore_1
    //   213: goto +69 -> 282
    //   216: astore 6
    //   218: aload_2
    //   219: astore_0
    //   220: goto +11 -> 231
    //   223: astore_0
    //   224: goto +58 -> 282
    //   227: astore 6
    //   229: aload_2
    //   230: astore_0
    //   231: aload_0
    //   232: astore_1
    //   233: new 64	java/lang/StringBuilder
    //   236: astore_2
    //   237: aload_0
    //   238: astore_1
    //   239: aload_2
    //   240: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   243: aload_0
    //   244: astore_1
    //   245: aload_2
    //   246: ldc 103
    //   248: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   251: pop
    //   252: aload_0
    //   253: astore_1
    //   254: aload_2
    //   255: aload 6
    //   257: invokevirtual 104	java/lang/Object:toString	()Ljava/lang/String;
    //   260: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   263: pop
    //   264: aload_0
    //   265: astore_1
    //   266: ldc 10
    //   268: aload_2
    //   269: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   272: invokestatic 108	com/xiaomi/onetrack/util/p:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   275: aload_0
    //   276: invokestatic 101	com/xiaomi/onetrack/util/m:a	(Ljava/io/Closeable;)V
    //   279: ldc 47
    //   281: areturn
    //   282: aload_1
    //   283: invokestatic 101	com/xiaomi/onetrack/util/m:a	(Ljava/io/Closeable;)V
    //   286: aload_0
    //   287: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	288	0	paramString	String
    //   20	263	1	localObject1	Object
    //   31	238	2	localObject2	Object
    //   33	179	3	localObject3	Object
    //   39	99	4	localObject4	Object
    //   57	151	5	localObject5	Object
    //   81	117	6	localObject6	Object
    //   216	1	6	localException1	Exception
    //   227	29	6	localException2	Exception
    //   88	16	7	localFileReader	java.io.FileReader
    // Exception table:
    //   from	to	target	type
    //   114	121	210	finally
    //   135	143	210	finally
    //   152	159	210	finally
    //   163	168	210	finally
    //   172	178	210	finally
    //   182	189	210	finally
    //   193	203	210	finally
    //   114	121	216	java/lang/Exception
    //   135	143	216	java/lang/Exception
    //   152	159	216	java/lang/Exception
    //   163	168	216	java/lang/Exception
    //   172	178	216	java/lang/Exception
    //   182	189	216	java/lang/Exception
    //   193	203	216	java/lang/Exception
    //   36	41	223	finally
    //   43	52	223	finally
    //   54	59	223	finally
    //   61	66	223	finally
    //   68	76	223	finally
    //   78	83	223	finally
    //   85	90	223	finally
    //   92	99	223	finally
    //   101	108	223	finally
    //   233	237	223	finally
    //   239	243	223	finally
    //   245	252	223	finally
    //   254	264	223	finally
    //   266	275	223	finally
    //   36	41	227	java/lang/Exception
    //   43	52	227	java/lang/Exception
    //   54	59	227	java/lang/Exception
    //   61	66	227	java/lang/Exception
    //   68	76	227	java/lang/Exception
    //   78	83	227	java/lang/Exception
    //   85	90	227	java/lang/Exception
    //   92	99	227	java/lang/Exception
    //   101	108	227	java/lang/Exception
  }
  
  /* Error */
  public static String a(String paramString, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 57	java/io/File
    //   5: astore_3
    //   6: aload_3
    //   7: aload_0
    //   8: invokespecial 112	java/io/File:<init>	(Ljava/lang/String;)V
    //   11: new 64	java/lang/StringBuilder
    //   14: astore 4
    //   16: aload 4
    //   18: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   21: aload_3
    //   22: invokevirtual 69	java/io/File:exists	()Z
    //   25: ifeq +93 -> 118
    //   28: new 71	java/io/BufferedReader
    //   31: astore 5
    //   33: new 73	java/io/FileReader
    //   36: astore_0
    //   37: aload_0
    //   38: aload_3
    //   39: invokespecial 76	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   42: aload 5
    //   44: aload_0
    //   45: invokespecial 79	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   48: aload 5
    //   50: astore_3
    //   51: aload 5
    //   53: astore_0
    //   54: aload 5
    //   56: invokevirtual 82	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   59: astore 6
    //   61: aload 5
    //   63: astore_2
    //   64: aload 6
    //   66: ifnull +54 -> 120
    //   69: aload 5
    //   71: astore_3
    //   72: aload 5
    //   74: astore_0
    //   75: aload 4
    //   77: aload 6
    //   79: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: pop
    //   83: aload 5
    //   85: astore_3
    //   86: aload 5
    //   88: astore_0
    //   89: aload 4
    //   91: ldc 114
    //   93: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: pop
    //   97: aload 5
    //   99: astore_3
    //   100: aload 5
    //   102: astore_0
    //   103: aload 4
    //   105: invokevirtual 118	java/lang/StringBuilder:length	()I
    //   108: iload_1
    //   109: if_icmple -61 -> 48
    //   112: aload 5
    //   114: astore_2
    //   115: goto +5 -> 120
    //   118: aconst_null
    //   119: astore_2
    //   120: aload_2
    //   121: astore_3
    //   122: aload_2
    //   123: astore_0
    //   124: aload 4
    //   126: invokevirtual 118	java/lang/StringBuilder:length	()I
    //   129: iload_1
    //   130: if_icmple +25 -> 155
    //   133: aload_2
    //   134: astore_3
    //   135: aload_2
    //   136: astore_0
    //   137: aload 4
    //   139: iconst_0
    //   140: iload_1
    //   141: iconst_1
    //   142: isub
    //   143: invokevirtual 122	java/lang/StringBuilder:substring	(II)Ljava/lang/String;
    //   146: astore 5
    //   148: aload_2
    //   149: invokestatic 101	com/xiaomi/onetrack/util/m:a	(Ljava/io/Closeable;)V
    //   152: aload 5
    //   154: areturn
    //   155: aload_2
    //   156: astore_3
    //   157: aload_2
    //   158: astore_0
    //   159: aload 4
    //   161: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   164: astore 5
    //   166: aload_2
    //   167: invokestatic 101	com/xiaomi/onetrack/util/m:a	(Ljava/io/Closeable;)V
    //   170: aload 5
    //   172: areturn
    //   173: astore_2
    //   174: goto +10 -> 184
    //   177: astore_0
    //   178: goto +65 -> 243
    //   181: astore_2
    //   182: aconst_null
    //   183: astore_3
    //   184: aload_3
    //   185: astore_0
    //   186: new 64	java/lang/StringBuilder
    //   189: astore 5
    //   191: aload_3
    //   192: astore_0
    //   193: aload 5
    //   195: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   198: aload_3
    //   199: astore_0
    //   200: aload 5
    //   202: ldc 103
    //   204: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   207: pop
    //   208: aload_3
    //   209: astore_0
    //   210: aload 5
    //   212: aload_2
    //   213: invokevirtual 104	java/lang/Object:toString	()Ljava/lang/String;
    //   216: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   219: pop
    //   220: aload_3
    //   221: astore_0
    //   222: ldc 10
    //   224: aload 5
    //   226: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   229: invokestatic 108	com/xiaomi/onetrack/util/p:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   232: aload_3
    //   233: invokestatic 101	com/xiaomi/onetrack/util/m:a	(Ljava/io/Closeable;)V
    //   236: aconst_null
    //   237: areturn
    //   238: astore_3
    //   239: aload_0
    //   240: astore_2
    //   241: aload_3
    //   242: astore_0
    //   243: aload_2
    //   244: invokestatic 101	com/xiaomi/onetrack/util/m:a	(Ljava/io/Closeable;)V
    //   247: aload_0
    //   248: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	249	0	paramString	String
    //   0	249	1	paramInt	int
    //   1	166	2	localObject1	Object
    //   173	1	2	localException1	Exception
    //   181	32	2	localException2	Exception
    //   240	4	2	str1	String
    //   5	228	3	localObject2	Object
    //   238	4	3	localObject3	Object
    //   14	146	4	localStringBuilder	StringBuilder
    //   31	194	5	localObject4	Object
    //   59	19	6	str2	String
    // Exception table:
    //   from	to	target	type
    //   54	61	173	java/lang/Exception
    //   75	83	173	java/lang/Exception
    //   89	97	173	java/lang/Exception
    //   103	112	173	java/lang/Exception
    //   124	133	173	java/lang/Exception
    //   137	148	173	java/lang/Exception
    //   159	166	173	java/lang/Exception
    //   2	48	177	finally
    //   2	48	181	java/lang/Exception
    //   54	61	238	finally
    //   75	83	238	finally
    //   89	97	238	finally
    //   103	112	238	finally
    //   124	133	238	finally
    //   137	148	238	finally
    //   159	166	238	finally
    //   186	191	238	finally
    //   193	198	238	finally
    //   200	208	238	finally
    //   210	220	238	finally
    //   222	232	238	finally
  }
  
  public static void a(File paramFile)
  {
    try
    {
      if ((paramFile.exists()) && (paramFile.isFile())) {
        paramFile.delete();
      }
    }
    catch (Exception localException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("failed to remove file: ");
      localStringBuilder.append(paramFile.getName());
      localStringBuilder.append(",");
      localStringBuilder.append(localException.toString());
      p.c("FileUtil", localStringBuilder.toString());
    }
  }
  
  /* Error */
  public static void a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 45	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifne +274 -> 278
    //   7: aload_1
    //   8: invokestatic 45	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   11: ifeq +6 -> 17
    //   14: goto +264 -> 278
    //   17: aconst_null
    //   18: astore_2
    //   19: aconst_null
    //   20: astore_3
    //   21: aload_3
    //   22: astore 4
    //   24: new 6	com/xiaomi/onetrack/util/k$a
    //   27: astore 5
    //   29: aload_3
    //   30: astore 4
    //   32: aload 5
    //   34: aconst_null
    //   35: invokespecial 92	com/xiaomi/onetrack/util/k$a:<init>	(Lcom/xiaomi/onetrack/util/l;)V
    //   38: aload_3
    //   39: astore 4
    //   41: aload 5
    //   43: aload_1
    //   44: putfield 55	com/xiaomi/onetrack/util/k$a:a	Ljava/lang/String;
    //   47: aload_3
    //   48: astore 4
    //   50: getstatic 30	com/xiaomi/onetrack/util/k:d	Landroid/util/LruCache;
    //   53: aload_0
    //   54: aload 5
    //   56: invokevirtual 96	android/util/LruCache:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   59: pop
    //   60: aload_3
    //   61: astore 4
    //   63: invokestatic 59	com/xiaomi/onetrack/util/k:b	()Ljava/lang/String;
    //   66: astore 6
    //   68: aload_3
    //   69: astore 4
    //   71: new 57	java/io/File
    //   74: astore 5
    //   76: aload_3
    //   77: astore 4
    //   79: aload 5
    //   81: aload 6
    //   83: invokespecial 112	java/io/File:<init>	(Ljava/lang/String;)V
    //   86: aload_3
    //   87: astore 4
    //   89: aload 5
    //   91: invokevirtual 69	java/io/File:exists	()Z
    //   94: ifne +12 -> 106
    //   97: aload_3
    //   98: astore 4
    //   100: aload 5
    //   102: invokevirtual 138	java/io/File:mkdirs	()Z
    //   105: pop
    //   106: aload_3
    //   107: astore 4
    //   109: new 57	java/io/File
    //   112: astore 5
    //   114: aload_3
    //   115: astore 4
    //   117: aload 5
    //   119: aload 6
    //   121: aload_0
    //   122: invokespecial 62	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   125: aload_3
    //   126: astore 4
    //   128: aload 5
    //   130: invokevirtual 69	java/io/File:exists	()Z
    //   133: ifne +12 -> 145
    //   136: aload_3
    //   137: astore 4
    //   139: aload 5
    //   141: invokevirtual 141	java/io/File:createNewFile	()Z
    //   144: pop
    //   145: aload_3
    //   146: astore 4
    //   148: new 143	java/io/BufferedWriter
    //   151: astore_0
    //   152: aload_3
    //   153: astore 4
    //   155: new 145	java/io/FileWriter
    //   158: astore 6
    //   160: aload_3
    //   161: astore 4
    //   163: aload 6
    //   165: aload 5
    //   167: invokespecial 146	java/io/FileWriter:<init>	(Ljava/io/File;)V
    //   170: aload_3
    //   171: astore 4
    //   173: aload_0
    //   174: aload 6
    //   176: sipush 1024
    //   179: invokespecial 149	java/io/BufferedWriter:<init>	(Ljava/io/Writer;I)V
    //   182: aload_0
    //   183: aload_1
    //   184: invokevirtual 154	java/io/Writer:write	(Ljava/lang/String;)V
    //   187: aload_0
    //   188: invokevirtual 157	java/io/BufferedWriter:flush	()V
    //   191: aload_0
    //   192: invokestatic 101	com/xiaomi/onetrack/util/m:a	(Ljava/io/Closeable;)V
    //   195: goto +75 -> 270
    //   198: astore_1
    //   199: aload_0
    //   200: astore 4
    //   202: aload_1
    //   203: astore_0
    //   204: goto +67 -> 271
    //   207: astore_1
    //   208: goto +10 -> 218
    //   211: astore_0
    //   212: goto +59 -> 271
    //   215: astore_1
    //   216: aload_2
    //   217: astore_0
    //   218: aload_0
    //   219: astore 4
    //   221: new 64	java/lang/StringBuilder
    //   224: astore_2
    //   225: aload_0
    //   226: astore 4
    //   228: aload_2
    //   229: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   232: aload_0
    //   233: astore 4
    //   235: aload_2
    //   236: ldc 159
    //   238: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   241: pop
    //   242: aload_0
    //   243: astore 4
    //   245: aload_2
    //   246: aload_1
    //   247: invokevirtual 104	java/lang/Object:toString	()Ljava/lang/String;
    //   250: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   253: pop
    //   254: aload_0
    //   255: astore 4
    //   257: ldc 10
    //   259: aload_2
    //   260: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   263: invokestatic 108	com/xiaomi/onetrack/util/p:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   266: aload_0
    //   267: invokestatic 101	com/xiaomi/onetrack/util/m:a	(Ljava/io/Closeable;)V
    //   270: return
    //   271: aload 4
    //   273: invokestatic 101	com/xiaomi/onetrack/util/m:a	(Ljava/io/Closeable;)V
    //   276: aload_0
    //   277: athrow
    //   278: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	279	0	paramString1	String
    //   0	279	1	paramString2	String
    //   18	242	2	localStringBuilder	StringBuilder
    //   20	151	3	localObject1	Object
    //   22	250	4	localObject2	Object
    //   27	139	5	localObject3	Object
    //   66	109	6	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   182	191	198	finally
    //   182	191	207	java/lang/Exception
    //   24	29	211	finally
    //   32	38	211	finally
    //   41	47	211	finally
    //   50	60	211	finally
    //   63	68	211	finally
    //   71	76	211	finally
    //   79	86	211	finally
    //   89	97	211	finally
    //   100	106	211	finally
    //   109	114	211	finally
    //   117	125	211	finally
    //   128	136	211	finally
    //   139	145	211	finally
    //   148	152	211	finally
    //   155	160	211	finally
    //   163	170	211	finally
    //   173	182	211	finally
    //   221	225	211	finally
    //   228	232	211	finally
    //   235	242	211	finally
    //   245	254	211	finally
    //   257	266	211	finally
    //   24	29	215	java/lang/Exception
    //   32	38	215	java/lang/Exception
    //   41	47	215	java/lang/Exception
    //   50	60	215	java/lang/Exception
    //   63	68	215	java/lang/Exception
    //   71	76	215	java/lang/Exception
    //   79	86	215	java/lang/Exception
    //   89	97	215	java/lang/Exception
    //   100	106	215	java/lang/Exception
    //   109	114	215	java/lang/Exception
    //   117	125	215	java/lang/Exception
    //   128	136	215	java/lang/Exception
    //   139	145	215	java/lang/Exception
    //   148	152	215	java/lang/Exception
    //   155	160	215	java/lang/Exception
    //   163	170	215	java/lang/Exception
    //   173	182	215	java/lang/Exception
  }
  
  private static String b()
  {
    return c("onetrack");
  }
  
  public static void b(String paramString)
  {
    try
    {
      if (TextUtils.isEmpty(paramString)) {
        return;
      }
      d.remove(paramString);
      File localFile = new java/io/File;
      localFile.<init>(b(), paramString);
      if ((localFile.exists()) && (localFile.isFile())) {
        localFile.delete();
      }
    }
    catch (Exception localException)
    {
      paramString = new StringBuilder();
      paramString.append("clear error:");
      paramString.append(localException.toString());
      p.c("FileUtil", paramString.toString());
    }
  }
  
  private static String c(String paramString)
  {
    Object localObject = new StringBuilder(a.a().getFilesDir().getAbsolutePath());
    ((StringBuilder)localObject).append(File.separator);
    ((StringBuilder)localObject).append(paramString);
    paramString = ((StringBuilder)localObject).toString();
    localObject = new File(paramString);
    if (!((File)localObject).exists()) {
      try
      {
        ((File)localObject).mkdirs();
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    return paramString;
  }
  
  private static class a
  {
    String a;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.k
 * JD-Core Version:    0.7.0.1
 */