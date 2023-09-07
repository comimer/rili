package a6;

public class m
{
  /* Error */
  public static String a(String paramString1, java.io.InputStream paramInputStream, String paramString2, String paramString3)
    throws com.xiaomi.accountsdk.request.InvalidResponseException, java.io.IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: new 12	java/net/URL
    //   6: astore 5
    //   8: aload 5
    //   10: aload_0
    //   11: invokespecial 16	java/net/URL:<init>	(Ljava/lang/String;)V
    //   14: aload 5
    //   16: invokevirtual 20	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   19: checkcast 22	java/net/HttpURLConnection
    //   22: astore 5
    //   24: new 24	java/util/Random
    //   27: astore_0
    //   28: aload_0
    //   29: invokespecial 27	java/util/Random:<init>	()V
    //   32: bipush 16
    //   34: newarray byte
    //   36: astore 6
    //   38: aload_0
    //   39: aload 6
    //   41: invokevirtual 31	java/util/Random:nextBytes	([B)V
    //   44: aload 6
    //   46: iconst_2
    //   47: invokestatic 37	android/util/Base64:encodeToString	([BI)Ljava/lang/String;
    //   50: astore_0
    //   51: aload 5
    //   53: iconst_1
    //   54: invokevirtual 43	java/net/URLConnection:setDoOutput	(Z)V
    //   57: aload 5
    //   59: iconst_1
    //   60: invokevirtual 46	java/net/URLConnection:setDoInput	(Z)V
    //   63: aload 5
    //   65: iconst_0
    //   66: invokevirtual 49	java/net/URLConnection:setUseCaches	(Z)V
    //   69: aload 5
    //   71: ldc 51
    //   73: invokevirtual 54	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   76: aload 5
    //   78: ldc 56
    //   80: ldc 58
    //   82: invokevirtual 62	java/net/URLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   85: new 64	java/lang/StringBuilder
    //   88: astore 6
    //   90: aload 6
    //   92: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   95: aload 6
    //   97: ldc 67
    //   99: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   102: pop
    //   103: aload 6
    //   105: aload_0
    //   106: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   109: pop
    //   110: aload 5
    //   112: ldc 73
    //   114: aload 6
    //   116: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   119: invokevirtual 62	java/net/URLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   122: aload 5
    //   124: ldc 79
    //   126: ldc 81
    //   128: invokevirtual 62	java/net/URLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   131: new 83	java/io/DataOutputStream
    //   134: astore 6
    //   136: aload 6
    //   138: aload 5
    //   140: invokevirtual 87	java/net/URLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   143: invokespecial 90	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   146: new 64	java/lang/StringBuilder
    //   149: astore 4
    //   151: aload 4
    //   153: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   156: aload 4
    //   158: ldc 92
    //   160: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   163: pop
    //   164: aload 4
    //   166: aload_0
    //   167: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: pop
    //   171: aload 4
    //   173: ldc 94
    //   175: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   178: pop
    //   179: aload 6
    //   181: aload 4
    //   183: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   186: invokevirtual 97	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   189: new 64	java/lang/StringBuilder
    //   192: astore 4
    //   194: aload 4
    //   196: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   199: aload 4
    //   201: ldc 99
    //   203: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   206: pop
    //   207: aload 4
    //   209: aload_2
    //   210: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   213: pop
    //   214: aload 4
    //   216: ldc 101
    //   218: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   221: pop
    //   222: aload 4
    //   224: aload_3
    //   225: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: pop
    //   229: aload 4
    //   231: ldc 103
    //   233: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   236: pop
    //   237: aload 4
    //   239: ldc 94
    //   241: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   244: pop
    //   245: aload 6
    //   247: aload 4
    //   249: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   252: invokevirtual 97	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   255: new 64	java/lang/StringBuilder
    //   258: astore_2
    //   259: aload_2
    //   260: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   263: aload_2
    //   264: ldc 105
    //   266: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   269: pop
    //   270: aload_2
    //   271: aload_3
    //   272: invokestatic 109	a6/m:b	(Ljava/lang/String;)Ljava/lang/String;
    //   275: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   278: pop
    //   279: aload_2
    //   280: ldc 94
    //   282: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   285: pop
    //   286: aload 6
    //   288: aload_2
    //   289: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   292: invokevirtual 97	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   295: aload 6
    //   297: ldc 94
    //   299: invokevirtual 97	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   302: sipush 8192
    //   305: newarray byte
    //   307: astore_2
    //   308: aload_1
    //   309: aload_2
    //   310: invokevirtual 115	java/io/InputStream:read	([B)I
    //   313: istore 7
    //   315: iload 7
    //   317: iconst_m1
    //   318: if_icmpeq +15 -> 333
    //   321: aload 6
    //   323: aload_2
    //   324: iconst_0
    //   325: iload 7
    //   327: invokevirtual 119	java/io/DataOutputStream:write	([BII)V
    //   330: goto -22 -> 308
    //   333: aload 6
    //   335: invokevirtual 122	java/io/DataOutputStream:flush	()V
    //   338: aload 6
    //   340: ldc 94
    //   342: invokevirtual 97	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   345: aload 6
    //   347: invokevirtual 122	java/io/DataOutputStream:flush	()V
    //   350: new 64	java/lang/StringBuilder
    //   353: astore_2
    //   354: aload_2
    //   355: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   358: aload_2
    //   359: ldc 92
    //   361: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   364: pop
    //   365: aload_2
    //   366: aload_0
    //   367: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   370: pop
    //   371: aload_2
    //   372: ldc 92
    //   374: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   377: pop
    //   378: aload_2
    //   379: ldc 94
    //   381: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   384: pop
    //   385: aload 6
    //   387: aload_2
    //   388: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   391: invokevirtual 97	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   394: aload 6
    //   396: invokevirtual 122	java/io/DataOutputStream:flush	()V
    //   399: aload_1
    //   400: invokevirtual 125	java/io/InputStream:close	()V
    //   403: aload 5
    //   405: invokevirtual 129	java/net/HttpURLConnection:getResponseCode	()I
    //   408: istore 7
    //   410: iload 7
    //   412: sipush 200
    //   415: if_icmpne +102 -> 517
    //   418: new 64	java/lang/StringBuilder
    //   421: astore_2
    //   422: aload_2
    //   423: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   426: new 131	java/io/BufferedReader
    //   429: astore_0
    //   430: new 133	java/io/InputStreamReader
    //   433: astore_3
    //   434: aload_3
    //   435: aload 5
    //   437: invokevirtual 137	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   440: invokespecial 140	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   443: aload_0
    //   444: aload_3
    //   445: sipush 1024
    //   448: invokespecial 143	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   451: aload_0
    //   452: invokevirtual 146	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   455: astore_3
    //   456: aload_3
    //   457: ifnull +12 -> 469
    //   460: aload_2
    //   461: aload_3
    //   462: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   465: pop
    //   466: goto -15 -> 451
    //   469: aload_0
    //   470: invokestatic 152	com/xiaomi/accountsdk/utils/g:c	(Ljava/io/Reader;)V
    //   473: aload_2
    //   474: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   477: astore_0
    //   478: aload 6
    //   480: invokevirtual 155	java/io/OutputStream:close	()V
    //   483: goto +8 -> 491
    //   486: astore_2
    //   487: aload_2
    //   488: invokevirtual 160	java/lang/Throwable:printStackTrace	()V
    //   491: aload_1
    //   492: invokevirtual 125	java/io/InputStream:close	()V
    //   495: goto +8 -> 503
    //   498: astore_1
    //   499: aload_1
    //   500: invokevirtual 160	java/lang/Throwable:printStackTrace	()V
    //   503: aload 5
    //   505: invokevirtual 163	java/net/HttpURLConnection:disconnect	()V
    //   508: aload_0
    //   509: areturn
    //   510: astore_2
    //   511: aload_0
    //   512: invokestatic 152	com/xiaomi/accountsdk/utils/g:c	(Ljava/io/Reader;)V
    //   515: aload_2
    //   516: athrow
    //   517: new 8	com/xiaomi/accountsdk/request/InvalidResponseException
    //   520: astore_0
    //   521: aload_0
    //   522: iload 7
    //   524: ldc 165
    //   526: invokespecial 168	com/xiaomi/accountsdk/request/InvalidResponseException:<init>	(ILjava/lang/String;)V
    //   529: aload_0
    //   530: athrow
    //   531: astore_0
    //   532: aload 6
    //   534: astore_3
    //   535: aload 5
    //   537: astore_2
    //   538: goto +19 -> 557
    //   541: astore_0
    //   542: aload 4
    //   544: astore_3
    //   545: aload 5
    //   547: astore_2
    //   548: goto +9 -> 557
    //   551: astore_0
    //   552: aconst_null
    //   553: astore_2
    //   554: aload 4
    //   556: astore_3
    //   557: aload_3
    //   558: ifnull +15 -> 573
    //   561: aload_3
    //   562: invokevirtual 155	java/io/OutputStream:close	()V
    //   565: goto +8 -> 573
    //   568: astore_3
    //   569: aload_3
    //   570: invokevirtual 160	java/lang/Throwable:printStackTrace	()V
    //   573: aload_1
    //   574: ifnull +15 -> 589
    //   577: aload_1
    //   578: invokevirtual 125	java/io/InputStream:close	()V
    //   581: goto +8 -> 589
    //   584: astore_1
    //   585: aload_1
    //   586: invokevirtual 160	java/lang/Throwable:printStackTrace	()V
    //   589: aload_2
    //   590: ifnull +7 -> 597
    //   593: aload_2
    //   594: invokevirtual 163	java/net/HttpURLConnection:disconnect	()V
    //   597: aload_0
    //   598: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	599	0	paramString1	String
    //   0	599	1	paramInputStream	java.io.InputStream
    //   0	599	2	paramString2	String
    //   0	599	3	paramString3	String
    //   1	554	4	localStringBuilder	java.lang.StringBuilder
    //   6	540	5	localObject1	Object
    //   36	497	6	localObject2	Object
    //   313	210	7	i	int
    // Exception table:
    //   from	to	target	type
    //   478	483	486	java/io/IOException
    //   491	495	498	java/io/IOException
    //   451	456	510	finally
    //   460	466	510	finally
    //   146	308	531	finally
    //   308	315	531	finally
    //   321	330	531	finally
    //   333	410	531	finally
    //   418	451	531	finally
    //   469	478	531	finally
    //   511	517	531	finally
    //   517	531	531	finally
    //   24	146	541	finally
    //   3	24	551	finally
    //   561	565	568	java/io/IOException
    //   577	581	584	java/io/IOException
  }
  
  private static String b(String paramString)
  {
    if ((!paramString.endsWith("png")) && (!paramString.endsWith("PNG"))) {
      return "image/jpg";
    }
    return "image/png";
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     a6.m
 * JD-Core Version:    0.7.0.1
 */