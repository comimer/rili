package com.xiaomi.onetrack.a;

class c
  implements Runnable
{
  c(a parama) {}
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 12	com/xiaomi/onetrack/a/c:a	Lcom/xiaomi/onetrack/a/a;
    //   4: invokestatic 24	com/xiaomi/onetrack/a/a:a	(Lcom/xiaomi/onetrack/a/a;)Lcom/xiaomi/onetrack/a/a$a;
    //   7: astore_1
    //   8: aload_1
    //   9: monitorenter
    //   10: aconst_null
    //   11: astore_2
    //   12: aconst_null
    //   13: astore_3
    //   14: aload_3
    //   15: astore 4
    //   17: aload_2
    //   18: astore 5
    //   20: aload_0
    //   21: getfield 12	com/xiaomi/onetrack/a/c:a	Lcom/xiaomi/onetrack/a/a;
    //   24: invokestatic 24	com/xiaomi/onetrack/a/a:a	(Lcom/xiaomi/onetrack/a/a;)Lcom/xiaomi/onetrack/a/a$a;
    //   27: invokevirtual 30	android/database/sqlite/SQLiteOpenHelper:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   30: astore 6
    //   32: aload_3
    //   33: astore 4
    //   35: aload_2
    //   36: astore 5
    //   38: invokestatic 36	java/util/Calendar:getInstance	()Ljava/util/Calendar;
    //   41: astore 7
    //   43: aload_3
    //   44: astore 4
    //   46: aload_2
    //   47: astore 5
    //   49: aload 7
    //   51: invokestatic 42	java/lang/System:currentTimeMillis	()J
    //   54: invokevirtual 46	java/util/Calendar:setTimeInMillis	(J)V
    //   57: aload_3
    //   58: astore 4
    //   60: aload_2
    //   61: astore 5
    //   63: aload 7
    //   65: bipush 6
    //   67: aload 7
    //   69: bipush 6
    //   71: invokevirtual 50	java/util/Calendar:get	(I)I
    //   74: bipush 7
    //   76: isub
    //   77: invokevirtual 54	java/util/Calendar:set	(II)V
    //   80: aload_3
    //   81: astore 4
    //   83: aload_2
    //   84: astore 5
    //   86: aload 7
    //   88: bipush 11
    //   90: iconst_0
    //   91: invokevirtual 54	java/util/Calendar:set	(II)V
    //   94: aload_3
    //   95: astore 4
    //   97: aload_2
    //   98: astore 5
    //   100: aload 7
    //   102: bipush 12
    //   104: iconst_0
    //   105: invokevirtual 54	java/util/Calendar:set	(II)V
    //   108: aload_3
    //   109: astore 4
    //   111: aload_2
    //   112: astore 5
    //   114: aload 7
    //   116: bipush 13
    //   118: iconst_0
    //   119: invokevirtual 54	java/util/Calendar:set	(II)V
    //   122: aload_3
    //   123: astore 4
    //   125: aload_2
    //   126: astore 5
    //   128: aload 7
    //   130: invokevirtual 57	java/util/Calendar:getTimeInMillis	()J
    //   133: lstore 8
    //   135: aload_3
    //   136: astore 4
    //   138: aload_2
    //   139: astore 5
    //   141: iconst_1
    //   142: anewarray 59	java/lang/String
    //   145: astore 7
    //   147: aload_3
    //   148: astore 4
    //   150: aload_2
    //   151: astore 5
    //   153: aload 7
    //   155: iconst_0
    //   156: lload 8
    //   158: invokestatic 65	java/lang/Long:toString	(J)Ljava/lang/String;
    //   161: aastore
    //   162: aload_3
    //   163: astore 4
    //   165: aload_2
    //   166: astore 5
    //   168: aload 6
    //   170: ldc 67
    //   172: iconst_1
    //   173: anewarray 59	java/lang/String
    //   176: dup
    //   177: iconst_0
    //   178: ldc 69
    //   180: aastore
    //   181: ldc 71
    //   183: aload 7
    //   185: aconst_null
    //   186: aconst_null
    //   187: ldc 73
    //   189: invokevirtual 79	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   192: astore_3
    //   193: aload_3
    //   194: astore 4
    //   196: aload_3
    //   197: astore 5
    //   199: aload_3
    //   200: invokeinterface 85 1 0
    //   205: ifeq +83 -> 288
    //   208: aload_3
    //   209: astore 4
    //   211: aload_3
    //   212: astore 5
    //   214: aload 6
    //   216: ldc 67
    //   218: ldc 71
    //   220: aload 7
    //   222: invokevirtual 89	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   225: istore 10
    //   227: aload_3
    //   228: astore 4
    //   230: aload_3
    //   231: astore 5
    //   233: new 91	java/lang/StringBuilder
    //   236: astore_2
    //   237: aload_3
    //   238: astore 4
    //   240: aload_3
    //   241: astore 5
    //   243: aload_2
    //   244: invokespecial 92	java/lang/StringBuilder:<init>	()V
    //   247: aload_3
    //   248: astore 4
    //   250: aload_3
    //   251: astore 5
    //   253: aload_2
    //   254: ldc 94
    //   256: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   259: pop
    //   260: aload_3
    //   261: astore 4
    //   263: aload_3
    //   264: astore 5
    //   266: aload_2
    //   267: iload 10
    //   269: invokevirtual 101	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   272: pop
    //   273: aload_3
    //   274: astore 4
    //   276: aload_3
    //   277: astore 5
    //   279: ldc 103
    //   281: aload_2
    //   282: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   285: invokestatic 111	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   288: aload_3
    //   289: astore_2
    //   290: aload_3
    //   291: astore 4
    //   293: aload_3
    //   294: astore 5
    //   296: getstatic 114	com/xiaomi/onetrack/util/p:a	Z
    //   299: ifeq +71 -> 370
    //   302: aload_3
    //   303: astore 4
    //   305: aload_3
    //   306: astore 5
    //   308: new 91	java/lang/StringBuilder
    //   311: astore_2
    //   312: aload_3
    //   313: astore 4
    //   315: aload_3
    //   316: astore 5
    //   318: aload_2
    //   319: invokespecial 92	java/lang/StringBuilder:<init>	()V
    //   322: aload_3
    //   323: astore 4
    //   325: aload_3
    //   326: astore 5
    //   328: aload_2
    //   329: ldc 116
    //   331: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   334: pop
    //   335: aload_3
    //   336: astore 4
    //   338: aload_3
    //   339: astore 5
    //   341: aload_2
    //   342: aload_0
    //   343: getfield 12	com/xiaomi/onetrack/a/c:a	Lcom/xiaomi/onetrack/a/a;
    //   346: invokevirtual 119	com/xiaomi/onetrack/a/a:e	()J
    //   349: invokevirtual 122	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   352: pop
    //   353: aload_3
    //   354: astore 4
    //   356: aload_3
    //   357: astore 5
    //   359: ldc 103
    //   361: aload_2
    //   362: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   365: invokestatic 111	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   368: aload_3
    //   369: astore_2
    //   370: aload_2
    //   371: invokeinterface 125 1 0
    //   376: goto +70 -> 446
    //   379: astore 5
    //   381: goto +68 -> 449
    //   384: astore_2
    //   385: aload 5
    //   387: astore 4
    //   389: new 91	java/lang/StringBuilder
    //   392: astore_3
    //   393: aload 5
    //   395: astore 4
    //   397: aload_3
    //   398: invokespecial 92	java/lang/StringBuilder:<init>	()V
    //   401: aload 5
    //   403: astore 4
    //   405: aload_3
    //   406: ldc 127
    //   408: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   411: pop
    //   412: aload 5
    //   414: astore 4
    //   416: aload_3
    //   417: aload_2
    //   418: invokevirtual 130	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   421: pop
    //   422: aload 5
    //   424: astore 4
    //   426: ldc 103
    //   428: aload_3
    //   429: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   432: invokestatic 133	com/xiaomi/onetrack/util/p:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   435: aload 5
    //   437: ifnull +9 -> 446
    //   440: aload 5
    //   442: astore_2
    //   443: goto -73 -> 370
    //   446: aload_1
    //   447: monitorexit
    //   448: return
    //   449: aload 4
    //   451: ifnull +10 -> 461
    //   454: aload 4
    //   456: invokeinterface 125 1 0
    //   461: aload 5
    //   463: athrow
    //   464: astore 5
    //   466: aload_1
    //   467: monitorexit
    //   468: aload 5
    //   470: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	471	0	this	c
    //   7	460	1	locala	a.a
    //   11	360	2	localObject1	Object
    //   384	34	2	localException	java.lang.Exception
    //   442	1	2	localObject2	Object
    //   13	416	3	localObject3	Object
    //   15	440	4	localObject4	Object
    //   18	340	5	localObject5	Object
    //   379	83	5	localObject6	Object
    //   464	5	5	localObject7	Object
    //   30	185	6	localSQLiteDatabase	android.database.sqlite.SQLiteDatabase
    //   41	180	7	localObject8	Object
    //   133	24	8	l	long
    //   225	43	10	i	int
    // Exception table:
    //   from	to	target	type
    //   20	32	379	finally
    //   38	43	379	finally
    //   49	57	379	finally
    //   63	80	379	finally
    //   86	94	379	finally
    //   100	108	379	finally
    //   114	122	379	finally
    //   128	135	379	finally
    //   141	147	379	finally
    //   153	162	379	finally
    //   168	193	379	finally
    //   199	208	379	finally
    //   214	227	379	finally
    //   233	237	379	finally
    //   243	247	379	finally
    //   253	260	379	finally
    //   266	273	379	finally
    //   279	288	379	finally
    //   296	302	379	finally
    //   308	312	379	finally
    //   318	322	379	finally
    //   328	335	379	finally
    //   341	353	379	finally
    //   359	368	379	finally
    //   389	393	379	finally
    //   397	401	379	finally
    //   405	412	379	finally
    //   416	422	379	finally
    //   426	435	379	finally
    //   20	32	384	java/lang/Exception
    //   38	43	384	java/lang/Exception
    //   49	57	384	java/lang/Exception
    //   63	80	384	java/lang/Exception
    //   86	94	384	java/lang/Exception
    //   100	108	384	java/lang/Exception
    //   114	122	384	java/lang/Exception
    //   128	135	384	java/lang/Exception
    //   141	147	384	java/lang/Exception
    //   153	162	384	java/lang/Exception
    //   168	193	384	java/lang/Exception
    //   199	208	384	java/lang/Exception
    //   214	227	384	java/lang/Exception
    //   233	237	384	java/lang/Exception
    //   243	247	384	java/lang/Exception
    //   253	260	384	java/lang/Exception
    //   266	273	384	java/lang/Exception
    //   279	288	384	java/lang/Exception
    //   296	302	384	java/lang/Exception
    //   308	312	384	java/lang/Exception
    //   318	322	384	java/lang/Exception
    //   328	335	384	java/lang/Exception
    //   341	353	384	java/lang/Exception
    //   359	368	384	java/lang/Exception
    //   370	376	464	finally
    //   446	448	464	finally
    //   454	461	464	finally
    //   461	464	464	finally
    //   466	468	464	finally
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.a.c
 * JD-Core Version:    0.7.0.1
 */