package com.xiaomi.onetrack.b;

import java.util.concurrent.Callable;

class k
  implements Callable<l>
{
  k(h paramh, String paramString) {}
  
  /* Error */
  public l a()
    throws java.lang.Exception
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 15	com/xiaomi/onetrack/b/k:b	Lcom/xiaomi/onetrack/b/h;
    //   4: invokestatic 29	com/xiaomi/onetrack/b/h:a	(Lcom/xiaomi/onetrack/b/h;)Lcom/xiaomi/onetrack/b/g;
    //   7: invokevirtual 35	android/database/sqlite/SQLiteOpenHelper:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   10: ldc 37
    //   12: aconst_null
    //   13: ldc 39
    //   15: iconst_1
    //   16: anewarray 41	java/lang/String
    //   19: dup
    //   20: iconst_0
    //   21: aload_0
    //   22: getfield 17	com/xiaomi/onetrack/b/k:a	Ljava/lang/String;
    //   25: aastore
    //   26: aconst_null
    //   27: aconst_null
    //   28: aconst_null
    //   29: invokevirtual 47	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   32: astore_1
    //   33: aload_1
    //   34: astore_2
    //   35: aload_1
    //   36: ldc 49
    //   38: invokeinterface 55 2 0
    //   43: istore_3
    //   44: aload_1
    //   45: astore_2
    //   46: aload_1
    //   47: ldc 57
    //   49: invokeinterface 55 2 0
    //   54: istore 4
    //   56: aload_1
    //   57: astore_2
    //   58: aload_1
    //   59: ldc 59
    //   61: invokeinterface 55 2 0
    //   66: istore 5
    //   68: aload_1
    //   69: astore_2
    //   70: aload_1
    //   71: ldc 61
    //   73: invokeinterface 55 2 0
    //   78: istore 6
    //   80: aload_1
    //   81: astore 7
    //   83: aload_1
    //   84: astore_2
    //   85: aload_1
    //   86: invokeinterface 65 1 0
    //   91: ifeq +178 -> 269
    //   94: aload_1
    //   95: astore_2
    //   96: new 67	com/xiaomi/onetrack/b/l
    //   99: astore 7
    //   101: aload_1
    //   102: astore_2
    //   103: aload 7
    //   105: invokespecial 68	com/xiaomi/onetrack/b/l:<init>	()V
    //   108: aload_1
    //   109: astore_2
    //   110: aload 7
    //   112: aload_1
    //   113: iload_3
    //   114: invokeinterface 72 2 0
    //   119: putfield 73	com/xiaomi/onetrack/b/l:a	Ljava/lang/String;
    //   122: aload_1
    //   123: astore_2
    //   124: aload_1
    //   125: iload 4
    //   127: invokeinterface 72 2 0
    //   132: astore 8
    //   134: aload_1
    //   135: astore_2
    //   136: aload 8
    //   138: invokestatic 79	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   141: ifne +28 -> 169
    //   144: aload_1
    //   145: astore_2
    //   146: new 81	org/json/JSONObject
    //   149: astore 9
    //   151: aload_1
    //   152: astore_2
    //   153: aload 9
    //   155: aload 8
    //   157: invokespecial 84	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   160: aload_1
    //   161: astore_2
    //   162: aload 7
    //   164: aload 9
    //   166: putfield 88	com/xiaomi/onetrack/b/l:e	Lorg/json/JSONObject;
    //   169: aload_1
    //   170: astore_2
    //   171: aload 7
    //   173: aload 7
    //   175: getfield 88	com/xiaomi/onetrack/b/l:e	Lorg/json/JSONObject;
    //   178: invokestatic 91	com/xiaomi/onetrack/b/h:a	(Lorg/json/JSONObject;)I
    //   181: i2l
    //   182: putfield 94	com/xiaomi/onetrack/b/l:b	J
    //   185: aload_1
    //   186: astore_2
    //   187: aload 7
    //   189: aload_1
    //   190: iload 5
    //   192: invokeinterface 72 2 0
    //   197: putfield 97	com/xiaomi/onetrack/b/l:d	Ljava/lang/String;
    //   200: aload_1
    //   201: astore_2
    //   202: aload 7
    //   204: aload_1
    //   205: iload 6
    //   207: invokeinterface 101 2 0
    //   212: putfield 104	com/xiaomi/onetrack/b/l:c	J
    //   215: aload_1
    //   216: invokeinterface 107 1 0
    //   221: goto +11 -> 232
    //   224: astore_1
    //   225: ldc 109
    //   227: ldc 111
    //   229: invokestatic 116	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   232: aload 7
    //   234: areturn
    //   235: astore 7
    //   237: goto +13 -> 250
    //   240: astore_1
    //   241: aconst_null
    //   242: astore_2
    //   243: goto +47 -> 290
    //   246: astore 7
    //   248: aconst_null
    //   249: astore_1
    //   250: aload_1
    //   251: astore_2
    //   252: ldc 109
    //   254: aload 7
    //   256: invokevirtual 122	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   259: invokestatic 116	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   262: aload_1
    //   263: ifnull +24 -> 287
    //   266: aload_1
    //   267: astore 7
    //   269: aload 7
    //   271: invokeinterface 107 1 0
    //   276: goto +11 -> 287
    //   279: astore_1
    //   280: ldc 109
    //   282: ldc 111
    //   284: invokestatic 116	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   287: aconst_null
    //   288: areturn
    //   289: astore_1
    //   290: aload_2
    //   291: ifnull +20 -> 311
    //   294: aload_2
    //   295: invokeinterface 107 1 0
    //   300: goto +11 -> 311
    //   303: astore_2
    //   304: ldc 109
    //   306: ldc 111
    //   308: invokestatic 116	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   311: aload_1
    //   312: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	313	0	this	k
    //   32	184	1	localCursor	android.database.Cursor
    //   224	1	1	localException1	java.lang.Exception
    //   240	1	1	localObject1	Object
    //   249	18	1	localObject2	Object
    //   279	1	1	localException2	java.lang.Exception
    //   289	23	1	localObject3	Object
    //   34	261	2	localObject4	Object
    //   303	1	2	localException3	java.lang.Exception
    //   43	71	3	i	int
    //   54	72	4	j	int
    //   66	125	5	k	int
    //   78	128	6	m	int
    //   81	152	7	localObject5	Object
    //   235	1	7	localException4	java.lang.Exception
    //   246	9	7	localException5	java.lang.Exception
    //   267	3	7	localObject6	Object
    //   132	24	8	str	String
    //   149	16	9	localJSONObject	org.json.JSONObject
    // Exception table:
    //   from	to	target	type
    //   215	221	224	java/lang/Exception
    //   35	44	235	java/lang/Exception
    //   46	56	235	java/lang/Exception
    //   58	68	235	java/lang/Exception
    //   70	80	235	java/lang/Exception
    //   85	94	235	java/lang/Exception
    //   96	101	235	java/lang/Exception
    //   103	108	235	java/lang/Exception
    //   110	122	235	java/lang/Exception
    //   124	134	235	java/lang/Exception
    //   136	144	235	java/lang/Exception
    //   146	151	235	java/lang/Exception
    //   153	160	235	java/lang/Exception
    //   162	169	235	java/lang/Exception
    //   171	185	235	java/lang/Exception
    //   187	200	235	java/lang/Exception
    //   202	215	235	java/lang/Exception
    //   0	33	240	finally
    //   0	33	246	java/lang/Exception
    //   269	276	279	java/lang/Exception
    //   35	44	289	finally
    //   46	56	289	finally
    //   58	68	289	finally
    //   70	80	289	finally
    //   85	94	289	finally
    //   96	101	289	finally
    //   103	108	289	finally
    //   110	122	289	finally
    //   124	134	289	finally
    //   136	144	289	finally
    //   146	151	289	finally
    //   153	160	289	finally
    //   162	169	289	finally
    //   171	185	289	finally
    //   187	200	289	finally
    //   202	215	289	finally
    //   252	262	289	finally
    //   294	300	303	java/lang/Exception
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.b.k
 * JD-Core Version:    0.7.0.1
 */