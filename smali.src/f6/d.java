package f6;

public class d
{
  /* Error */
  public static void a(android.content.Context paramContext, java.lang.String paramString1, java.lang.String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 4
    //   5: aload_0
    //   6: invokevirtual 14	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   9: aload_1
    //   10: invokevirtual 20	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   13: astore 5
    //   15: aload 5
    //   17: invokestatic 26	f6/g:b	(Ljava/io/InputStream;)[B
    //   20: astore_3
    //   21: new 28	java/io/File
    //   24: astore 6
    //   26: aload 6
    //   28: aload_2
    //   29: invokespecial 32	java/io/File:<init>	(Ljava/lang/String;)V
    //   32: aload 6
    //   34: invokevirtual 36	java/io/File:exists	()Z
    //   37: ifeq +90 -> 127
    //   40: new 38	java/io/FileInputStream
    //   43: astore_1
    //   44: aload_1
    //   45: aload 6
    //   47: invokespecial 41	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   50: aload_1
    //   51: astore 4
    //   53: aload_1
    //   54: astore 7
    //   56: aload_1
    //   57: invokestatic 26	f6/g:b	(Ljava/io/InputStream;)[B
    //   60: invokestatic 46	f6/n:b	([B)Ljava/lang/String;
    //   63: astore 8
    //   65: aload_1
    //   66: astore 4
    //   68: aload_1
    //   69: astore 7
    //   71: aload_3
    //   72: invokestatic 46	f6/n:b	([B)Ljava/lang/String;
    //   75: astore_2
    //   76: aload_1
    //   77: astore_0
    //   78: aload_1
    //   79: astore 4
    //   81: aload_1
    //   82: astore 7
    //   84: aload 8
    //   86: invokestatic 52	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   89: ifne +40 -> 129
    //   92: aload_1
    //   93: astore 4
    //   95: aload_1
    //   96: astore 7
    //   98: aload 8
    //   100: aload_2
    //   101: invokevirtual 58	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   104: istore 9
    //   106: aload_1
    //   107: astore_0
    //   108: iload 9
    //   110: ifeq +19 -> 129
    //   113: aload 5
    //   115: invokestatic 61	f6/g:a	(Ljava/io/Closeable;)V
    //   118: aload_1
    //   119: invokestatic 61	f6/g:a	(Ljava/io/Closeable;)V
    //   122: aconst_null
    //   123: invokestatic 61	f6/g:a	(Ljava/io/Closeable;)V
    //   126: return
    //   127: aconst_null
    //   128: astore_0
    //   129: aload_0
    //   130: astore 4
    //   132: aload_0
    //   133: astore 7
    //   135: new 63	java/io/FileOutputStream
    //   138: astore_1
    //   139: aload_0
    //   140: astore 4
    //   142: aload_0
    //   143: astore 7
    //   145: aload_1
    //   146: aload 6
    //   148: invokespecial 64	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   151: aload_1
    //   152: aload_3
    //   153: invokevirtual 68	java/io/FileOutputStream:write	([B)V
    //   156: aload_1
    //   157: invokevirtual 74	java/io/OutputStream:flush	()V
    //   160: aload 5
    //   162: invokestatic 61	f6/g:a	(Ljava/io/Closeable;)V
    //   165: aload_0
    //   166: astore 7
    //   168: goto +99 -> 267
    //   171: astore_2
    //   172: goto +30 -> 202
    //   175: astore_2
    //   176: aload_0
    //   177: astore 7
    //   179: goto +40 -> 219
    //   182: astore_2
    //   183: aconst_null
    //   184: astore_1
    //   185: aload 4
    //   187: astore_0
    //   188: goto +14 -> 202
    //   191: astore_2
    //   192: aconst_null
    //   193: astore_1
    //   194: goto +25 -> 219
    //   197: astore_2
    //   198: aconst_null
    //   199: astore_0
    //   200: aload_0
    //   201: astore_1
    //   202: aload 5
    //   204: astore 4
    //   206: aload_0
    //   207: astore 7
    //   209: goto +71 -> 280
    //   212: astore_2
    //   213: aconst_null
    //   214: astore 7
    //   216: aload 7
    //   218: astore_1
    //   219: aload 5
    //   221: astore 4
    //   223: aload_1
    //   224: astore_0
    //   225: goto +23 -> 248
    //   228: astore_2
    //   229: aconst_null
    //   230: astore 7
    //   232: aload 7
    //   234: astore_1
    //   235: aload_3
    //   236: astore 4
    //   238: goto +42 -> 280
    //   241: astore_2
    //   242: aconst_null
    //   243: astore 7
    //   245: aload 7
    //   247: astore_0
    //   248: ldc 76
    //   250: invokestatic 81	f6/a:a	(Ljava/lang/String;)Ljava/lang/String;
    //   253: ldc 83
    //   255: aload_2
    //   256: invokestatic 89	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   259: pop
    //   260: aload 4
    //   262: invokestatic 61	f6/g:a	(Ljava/io/Closeable;)V
    //   265: aload_0
    //   266: astore_1
    //   267: aload 7
    //   269: invokestatic 61	f6/g:a	(Ljava/io/Closeable;)V
    //   272: aload_1
    //   273: invokestatic 61	f6/g:a	(Ljava/io/Closeable;)V
    //   276: return
    //   277: astore_2
    //   278: aload_0
    //   279: astore_1
    //   280: aload 4
    //   282: invokestatic 61	f6/g:a	(Ljava/io/Closeable;)V
    //   285: aload 7
    //   287: invokestatic 61	f6/g:a	(Ljava/io/Closeable;)V
    //   290: aload_1
    //   291: invokestatic 61	f6/g:a	(Ljava/io/Closeable;)V
    //   294: aload_2
    //   295: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	296	0	paramContext	android.content.Context
    //   0	296	1	paramString1	java.lang.String
    //   0	296	2	paramString2	java.lang.String
    //   1	235	3	arrayOfByte	byte[]
    //   3	278	4	localObject1	Object
    //   13	207	5	localInputStream	java.io.InputStream
    //   24	123	6	localFile	java.io.File
    //   54	232	7	localObject2	Object
    //   63	36	8	str	java.lang.String
    //   104	5	9	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   151	160	171	finally
    //   151	160	175	java/lang/Exception
    //   56	65	182	finally
    //   71	76	182	finally
    //   84	92	182	finally
    //   98	106	182	finally
    //   135	139	182	finally
    //   145	151	182	finally
    //   56	65	191	java/lang/Exception
    //   71	76	191	java/lang/Exception
    //   84	92	191	java/lang/Exception
    //   98	106	191	java/lang/Exception
    //   135	139	191	java/lang/Exception
    //   145	151	191	java/lang/Exception
    //   15	50	197	finally
    //   15	50	212	java/lang/Exception
    //   5	15	228	finally
    //   5	15	241	java/lang/Exception
    //   248	260	277	finally
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f6.d
 * JD-Core Version:    0.7.0.1
 */