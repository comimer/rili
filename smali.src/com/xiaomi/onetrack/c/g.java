package com.xiaomi.onetrack.c;

class g
  implements Runnable
{
  g(c paramc) {}
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 12	com/xiaomi/onetrack/c/g:a	Lcom/xiaomi/onetrack/c/c;
    //   4: invokestatic 24	com/xiaomi/onetrack/c/c:a	(Lcom/xiaomi/onetrack/c/c;)Lcom/xiaomi/onetrack/c/c$a;
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
    //   21: getfield 12	com/xiaomi/onetrack/c/g:a	Lcom/xiaomi/onetrack/c/c;
    //   24: invokestatic 24	com/xiaomi/onetrack/c/c:a	(Lcom/xiaomi/onetrack/c/c;)Lcom/xiaomi/onetrack/c/c$a;
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
    //   80: iconst_0
    //   81: istore 8
    //   83: aload_3
    //   84: astore 4
    //   86: aload_2
    //   87: astore 5
    //   89: aload 7
    //   91: bipush 11
    //   93: iconst_0
    //   94: invokevirtual 54	java/util/Calendar:set	(II)V
    //   97: aload_3
    //   98: astore 4
    //   100: aload_2
    //   101: astore 5
    //   103: aload 7
    //   105: bipush 12
    //   107: iconst_0
    //   108: invokevirtual 54	java/util/Calendar:set	(II)V
    //   111: aload_3
    //   112: astore 4
    //   114: aload_2
    //   115: astore 5
    //   117: aload 7
    //   119: bipush 13
    //   121: iconst_0
    //   122: invokevirtual 54	java/util/Calendar:set	(II)V
    //   125: aload_3
    //   126: astore 4
    //   128: aload_2
    //   129: astore 5
    //   131: aload 7
    //   133: invokevirtual 57	java/util/Calendar:getTimeInMillis	()J
    //   136: lstore 9
    //   138: aload_3
    //   139: astore 4
    //   141: aload_2
    //   142: astore 5
    //   144: iconst_1
    //   145: anewarray 59	java/lang/String
    //   148: astore 7
    //   150: aload_3
    //   151: astore 4
    //   153: aload_2
    //   154: astore 5
    //   156: aload 7
    //   158: iconst_0
    //   159: lload 9
    //   161: invokestatic 65	java/lang/Long:toString	(J)Ljava/lang/String;
    //   164: aastore
    //   165: aload_3
    //   166: astore 4
    //   168: aload_2
    //   169: astore 5
    //   171: aload 6
    //   173: ldc 67
    //   175: iconst_1
    //   176: anewarray 59	java/lang/String
    //   179: dup
    //   180: iconst_0
    //   181: ldc 69
    //   183: aastore
    //   184: ldc 71
    //   186: aload 7
    //   188: aconst_null
    //   189: aconst_null
    //   190: ldc 73
    //   192: invokevirtual 79	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   195: astore_3
    //   196: aload_3
    //   197: astore 4
    //   199: aload_3
    //   200: astore 5
    //   202: aload_3
    //   203: invokeinterface 85 1 0
    //   208: ifeq +83 -> 291
    //   211: aload_3
    //   212: astore 4
    //   214: aload_3
    //   215: astore 5
    //   217: aload 6
    //   219: ldc 67
    //   221: ldc 71
    //   223: aload 7
    //   225: invokevirtual 89	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   228: istore 11
    //   230: aload_3
    //   231: astore 4
    //   233: aload_3
    //   234: astore 5
    //   236: new 91	java/lang/StringBuilder
    //   239: astore_2
    //   240: aload_3
    //   241: astore 4
    //   243: aload_3
    //   244: astore 5
    //   246: aload_2
    //   247: invokespecial 92	java/lang/StringBuilder:<init>	()V
    //   250: aload_3
    //   251: astore 4
    //   253: aload_3
    //   254: astore 5
    //   256: aload_2
    //   257: ldc 94
    //   259: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   262: pop
    //   263: aload_3
    //   264: astore 4
    //   266: aload_3
    //   267: astore 5
    //   269: aload_2
    //   270: iload 11
    //   272: invokevirtual 101	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   275: pop
    //   276: aload_3
    //   277: astore 4
    //   279: aload_3
    //   280: astore 5
    //   282: ldc 103
    //   284: aload_2
    //   285: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   288: invokestatic 111	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   291: aload_3
    //   292: astore 4
    //   294: aload_3
    //   295: astore 5
    //   297: invokestatic 114	com/xiaomi/onetrack/c/c:a	()Lcom/xiaomi/onetrack/c/c;
    //   300: invokevirtual 117	com/xiaomi/onetrack/c/c:c	()J
    //   303: lstore 9
    //   305: lload 9
    //   307: lconst_0
    //   308: lcmp
    //   309: ifne +6 -> 315
    //   312: iconst_1
    //   313: istore 8
    //   315: aload_3
    //   316: astore 4
    //   318: aload_3
    //   319: astore 5
    //   321: iload 8
    //   323: invokestatic 122	com/xiaomi/onetrack/b/n:a	(Z)V
    //   326: aload_3
    //   327: astore 4
    //   329: aload_3
    //   330: astore 5
    //   332: new 91	java/lang/StringBuilder
    //   335: astore_2
    //   336: aload_3
    //   337: astore 4
    //   339: aload_3
    //   340: astore 5
    //   342: aload_2
    //   343: invokespecial 92	java/lang/StringBuilder:<init>	()V
    //   346: aload_3
    //   347: astore 4
    //   349: aload_3
    //   350: astore 5
    //   352: aload_2
    //   353: ldc 124
    //   355: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   358: pop
    //   359: aload_3
    //   360: astore 4
    //   362: aload_3
    //   363: astore 5
    //   365: aload_2
    //   366: lload 9
    //   368: invokevirtual 127	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   371: pop
    //   372: aload_3
    //   373: astore 4
    //   375: aload_3
    //   376: astore 5
    //   378: ldc 103
    //   380: aload_2
    //   381: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   384: invokestatic 111	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   387: aload_3
    //   388: astore 5
    //   390: aload 5
    //   392: invokeinterface 130 1 0
    //   397: goto +67 -> 464
    //   400: astore 5
    //   402: goto +65 -> 467
    //   405: astore_2
    //   406: aload 5
    //   408: astore 4
    //   410: new 91	java/lang/StringBuilder
    //   413: astore_3
    //   414: aload 5
    //   416: astore 4
    //   418: aload_3
    //   419: invokespecial 92	java/lang/StringBuilder:<init>	()V
    //   422: aload 5
    //   424: astore 4
    //   426: aload_3
    //   427: ldc 132
    //   429: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   432: pop
    //   433: aload 5
    //   435: astore 4
    //   437: aload_3
    //   438: aload_2
    //   439: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   442: pop
    //   443: aload 5
    //   445: astore 4
    //   447: ldc 103
    //   449: aload_3
    //   450: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   453: invokestatic 138	com/xiaomi/onetrack/util/p:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   456: aload 5
    //   458: ifnull +6 -> 464
    //   461: goto -71 -> 390
    //   464: aload_1
    //   465: monitorexit
    //   466: return
    //   467: aload 4
    //   469: ifnull +10 -> 479
    //   472: aload 4
    //   474: invokeinterface 130 1 0
    //   479: aload 5
    //   481: athrow
    //   482: astore 5
    //   484: aload_1
    //   485: monitorexit
    //   486: aload 5
    //   488: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	489	0	this	g
    //   7	478	1	locala	c.a
    //   11	370	2	localStringBuilder	java.lang.StringBuilder
    //   405	34	2	localException	java.lang.Exception
    //   13	437	3	localObject1	Object
    //   15	458	4	localObject2	Object
    //   18	373	5	localObject3	Object
    //   400	80	5	localObject4	Object
    //   482	5	5	localObject5	Object
    //   30	188	6	localSQLiteDatabase	android.database.sqlite.SQLiteDatabase
    //   41	183	7	localObject6	Object
    //   81	241	8	bool	boolean
    //   136	231	9	l	long
    //   228	43	11	i	int
    // Exception table:
    //   from	to	target	type
    //   20	32	400	finally
    //   38	43	400	finally
    //   49	57	400	finally
    //   63	80	400	finally
    //   89	97	400	finally
    //   103	111	400	finally
    //   117	125	400	finally
    //   131	138	400	finally
    //   144	150	400	finally
    //   156	165	400	finally
    //   171	196	400	finally
    //   202	211	400	finally
    //   217	230	400	finally
    //   236	240	400	finally
    //   246	250	400	finally
    //   256	263	400	finally
    //   269	276	400	finally
    //   282	291	400	finally
    //   297	305	400	finally
    //   321	326	400	finally
    //   332	336	400	finally
    //   342	346	400	finally
    //   352	359	400	finally
    //   365	372	400	finally
    //   378	387	400	finally
    //   410	414	400	finally
    //   418	422	400	finally
    //   426	433	400	finally
    //   437	443	400	finally
    //   447	456	400	finally
    //   20	32	405	java/lang/Exception
    //   38	43	405	java/lang/Exception
    //   49	57	405	java/lang/Exception
    //   63	80	405	java/lang/Exception
    //   89	97	405	java/lang/Exception
    //   103	111	405	java/lang/Exception
    //   117	125	405	java/lang/Exception
    //   131	138	405	java/lang/Exception
    //   144	150	405	java/lang/Exception
    //   156	165	405	java/lang/Exception
    //   171	196	405	java/lang/Exception
    //   202	211	405	java/lang/Exception
    //   217	230	405	java/lang/Exception
    //   236	240	405	java/lang/Exception
    //   246	250	405	java/lang/Exception
    //   256	263	405	java/lang/Exception
    //   269	276	405	java/lang/Exception
    //   282	291	405	java/lang/Exception
    //   297	305	405	java/lang/Exception
    //   321	326	405	java/lang/Exception
    //   332	336	405	java/lang/Exception
    //   342	346	405	java/lang/Exception
    //   352	359	405	java/lang/Exception
    //   365	372	405	java/lang/Exception
    //   378	387	405	java/lang/Exception
    //   390	397	482	finally
    //   464	466	482	finally
    //   472	479	482	finally
    //   479	482	482	finally
    //   484	486	482	finally
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.c.g
 * JD-Core Version:    0.7.0.1
 */