package f6;

import android.content.Context;
import android.text.TextUtils;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

public class c
{
  /* Error */
  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 4
    //   5: aconst_null
    //   6: astore 5
    //   8: aload_1
    //   9: astore 6
    //   11: aload_1
    //   12: ifnull +94 -> 106
    //   15: aload 5
    //   17: astore 7
    //   19: getstatic 14	java/io/File:separator	Ljava/lang/String;
    //   22: astore 8
    //   24: aload 5
    //   26: astore 7
    //   28: aload_1
    //   29: astore 6
    //   31: aload_1
    //   32: aload 8
    //   34: invokevirtual 20	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   37: ifne +69 -> 106
    //   40: aload 5
    //   42: astore 7
    //   44: new 22	java/lang/StringBuilder
    //   47: astore 6
    //   49: aload 5
    //   51: astore 7
    //   53: aload 6
    //   55: invokespecial 26	java/lang/StringBuilder:<init>	()V
    //   58: aload 5
    //   60: astore 7
    //   62: aload 6
    //   64: aload_1
    //   65: invokevirtual 30	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: pop
    //   69: aload 5
    //   71: astore 7
    //   73: aload 6
    //   75: aload 8
    //   77: invokevirtual 30	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: pop
    //   81: aload 5
    //   83: astore 7
    //   85: aload 6
    //   87: invokevirtual 34	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   90: astore 6
    //   92: goto +14 -> 106
    //   95: astore_0
    //   96: goto +592 -> 688
    //   99: astore_1
    //   100: aload 4
    //   102: astore_0
    //   103: goto +545 -> 648
    //   106: aload_2
    //   107: astore 9
    //   109: aload_2
    //   110: ifnull +77 -> 187
    //   113: aload 5
    //   115: astore 7
    //   117: getstatic 14	java/io/File:separator	Ljava/lang/String;
    //   120: astore_1
    //   121: aload 5
    //   123: astore 7
    //   125: aload_2
    //   126: astore 9
    //   128: aload_2
    //   129: aload_1
    //   130: invokevirtual 20	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   133: ifne +54 -> 187
    //   136: aload 5
    //   138: astore 7
    //   140: new 22	java/lang/StringBuilder
    //   143: astore 8
    //   145: aload 5
    //   147: astore 7
    //   149: aload 8
    //   151: invokespecial 26	java/lang/StringBuilder:<init>	()V
    //   154: aload 5
    //   156: astore 7
    //   158: aload 8
    //   160: aload_2
    //   161: invokevirtual 30	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: pop
    //   165: aload 5
    //   167: astore 7
    //   169: aload 8
    //   171: aload_1
    //   172: invokevirtual 30	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   175: pop
    //   176: aload 5
    //   178: astore 7
    //   180: aload 8
    //   182: invokevirtual 34	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   185: astore 9
    //   187: aload 5
    //   189: astore 7
    //   191: new 36	java/util/HashMap
    //   194: astore 10
    //   196: aload 5
    //   198: astore 7
    //   200: aload 10
    //   202: invokespecial 37	java/util/HashMap:<init>	()V
    //   205: aload 5
    //   207: astore 7
    //   209: aload_0
    //   210: invokestatic 41	f6/c:b	(Landroid/content/Context;)Ljava/util/List;
    //   213: astore 11
    //   215: aload 5
    //   217: astore 7
    //   219: new 43	java/util/zip/ZipFile
    //   222: astore 8
    //   224: aload 5
    //   226: astore 7
    //   228: aload 8
    //   230: aload 6
    //   232: invokespecial 46	java/util/zip/ZipFile:<init>	(Ljava/lang/String;)V
    //   235: aload 8
    //   237: invokevirtual 50	java/util/zip/ZipFile:entries	()Ljava/util/Enumeration;
    //   240: astore 5
    //   242: sipush 1024
    //   245: newarray byte
    //   247: astore 4
    //   249: aload 5
    //   251: invokeinterface 56 1 0
    //   256: ifeq +372 -> 628
    //   259: aload 5
    //   261: invokeinterface 60 1 0
    //   266: checkcast 62	java/util/zip/ZipEntry
    //   269: astore_2
    //   270: new 22	java/lang/StringBuilder
    //   273: astore_0
    //   274: aload_0
    //   275: invokespecial 26	java/lang/StringBuilder:<init>	()V
    //   278: aload_0
    //   279: ldc 64
    //   281: invokevirtual 30	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   284: pop
    //   285: aload_0
    //   286: aload_2
    //   287: invokevirtual 67	java/util/zip/ZipEntry:getName	()Ljava/lang/String;
    //   290: invokevirtual 30	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   293: pop
    //   294: ldc 69
    //   296: aload_0
    //   297: invokevirtual 34	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   300: invokestatic 74	f6/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   303: aload_2
    //   304: invokevirtual 67	java/util/zip/ZipEntry:getName	()Ljava/lang/String;
    //   307: ldc 76
    //   309: invokevirtual 79	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   312: ifne +6 -> 318
    //   315: goto -66 -> 249
    //   318: aload_2
    //   319: invokevirtual 82	java/util/zip/ZipEntry:isDirectory	()Z
    //   322: ifne -73 -> 249
    //   325: aload_2
    //   326: invokevirtual 67	java/util/zip/ZipEntry:getName	()Ljava/lang/String;
    //   329: invokestatic 86	f6/c:e	(Ljava/lang/String;)Ljava/lang/String;
    //   332: astore_0
    //   333: aload_2
    //   334: invokevirtual 67	java/util/zip/ZipEntry:getName	()Ljava/lang/String;
    //   337: invokestatic 89	f6/c:d	(Ljava/lang/String;)Ljava/lang/String;
    //   340: astore_1
    //   341: aload 10
    //   343: aload_0
    //   344: invokevirtual 93	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   347: checkcast 16	java/lang/String
    //   350: astore 7
    //   352: aload 7
    //   354: invokestatic 99	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   357: ifne +31 -> 388
    //   360: aload 11
    //   362: aload_1
    //   363: invokestatic 103	f6/c:f	(Ljava/util/List;Ljava/lang/String;)I
    //   366: istore 12
    //   368: iload 12
    //   370: iflt -121 -> 249
    //   373: iload 12
    //   375: aload 11
    //   377: aload 7
    //   379: invokestatic 103	f6/c:f	(Ljava/util/List;Ljava/lang/String;)I
    //   382: if_icmplt +6 -> 388
    //   385: goto -136 -> 249
    //   388: new 22	java/lang/StringBuilder
    //   391: astore 7
    //   393: aload 7
    //   395: invokespecial 26	java/lang/StringBuilder:<init>	()V
    //   398: aload 7
    //   400: ldc 105
    //   402: invokevirtual 30	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   405: pop
    //   406: aload 7
    //   408: aload_1
    //   409: invokevirtual 30	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   412: pop
    //   413: ldc 69
    //   415: aload 7
    //   417: invokevirtual 34	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   420: invokestatic 74	f6/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   423: aload 10
    //   425: aload_0
    //   426: aload_1
    //   427: invokevirtual 109	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   430: pop
    //   431: new 10	java/io/File
    //   434: astore_1
    //   435: new 22	java/lang/StringBuilder
    //   438: astore 7
    //   440: aload 7
    //   442: invokespecial 26	java/lang/StringBuilder:<init>	()V
    //   445: aload 7
    //   447: aload 9
    //   449: invokevirtual 30	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   452: pop
    //   453: aload 7
    //   455: aload_0
    //   456: invokevirtual 30	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   459: pop
    //   460: aload_1
    //   461: aload 7
    //   463: invokevirtual 34	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   466: invokespecial 110	java/io/File:<init>	(Ljava/lang/String;)V
    //   469: aload_1
    //   470: invokevirtual 113	java/io/File:exists	()Z
    //   473: ifeq +8 -> 481
    //   476: aload_1
    //   477: invokevirtual 116	java/io/File:delete	()Z
    //   480: pop
    //   481: new 118	java/io/FileOutputStream
    //   484: astore_0
    //   485: aload_0
    //   486: aload_1
    //   487: invokespecial 121	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   490: new 123	java/io/BufferedInputStream
    //   493: astore_1
    //   494: aload_1
    //   495: aload 8
    //   497: aload_2
    //   498: invokevirtual 127	java/util/zip/ZipFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   501: invokespecial 130	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   504: aload_0
    //   505: astore_2
    //   506: aload_1
    //   507: astore 7
    //   509: aload_1
    //   510: aload 4
    //   512: iconst_0
    //   513: sipush 1024
    //   516: invokevirtual 136	java/io/InputStream:read	([BII)I
    //   519: istore 12
    //   521: iload 12
    //   523: iconst_m1
    //   524: if_icmpeq +20 -> 544
    //   527: aload_0
    //   528: astore_2
    //   529: aload_1
    //   530: astore 7
    //   532: aload_0
    //   533: aload 4
    //   535: iconst_0
    //   536: iload 12
    //   538: invokevirtual 140	java/io/FileOutputStream:write	([BII)V
    //   541: goto -37 -> 504
    //   544: aload_1
    //   545: invokestatic 145	f6/g:a	(Ljava/io/Closeable;)V
    //   548: aload_0
    //   549: invokestatic 145	f6/g:a	(Ljava/io/Closeable;)V
    //   552: goto -303 -> 249
    //   555: astore 6
    //   557: goto +30 -> 587
    //   560: astore_1
    //   561: aload_3
    //   562: astore_2
    //   563: goto +55 -> 618
    //   566: astore 6
    //   568: aconst_null
    //   569: astore_1
    //   570: goto +17 -> 587
    //   573: astore_1
    //   574: aconst_null
    //   575: astore_0
    //   576: aload_3
    //   577: astore_2
    //   578: goto +40 -> 618
    //   581: astore 6
    //   583: aconst_null
    //   584: astore_0
    //   585: aload_0
    //   586: astore_1
    //   587: aload_0
    //   588: astore_2
    //   589: aload_1
    //   590: astore 7
    //   592: ldc 69
    //   594: invokestatic 147	f6/a:a	(Ljava/lang/String;)Ljava/lang/String;
    //   597: ldc 149
    //   599: aload 6
    //   601: invokestatic 154	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   604: pop
    //   605: aload_1
    //   606: invokestatic 145	f6/g:a	(Ljava/io/Closeable;)V
    //   609: goto -61 -> 548
    //   612: astore_1
    //   613: aload_2
    //   614: astore_0
    //   615: aload 7
    //   617: astore_2
    //   618: aload_2
    //   619: invokestatic 145	f6/g:a	(Ljava/io/Closeable;)V
    //   622: aload_0
    //   623: invokestatic 145	f6/g:a	(Ljava/io/Closeable;)V
    //   626: aload_1
    //   627: athrow
    //   628: aload 8
    //   630: invokevirtual 157	java/util/zip/ZipFile:close	()V
    //   633: goto +54 -> 687
    //   636: astore_0
    //   637: aload 8
    //   639: astore 7
    //   641: goto +47 -> 688
    //   644: astore_1
    //   645: aload 8
    //   647: astore_0
    //   648: aload_0
    //   649: astore 7
    //   651: ldc 69
    //   653: invokestatic 147	f6/a:a	(Ljava/lang/String;)Ljava/lang/String;
    //   656: ldc 159
    //   658: aload_1
    //   659: invokestatic 154	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   662: pop
    //   663: aload_0
    //   664: ifnull +23 -> 687
    //   667: aload_0
    //   668: invokevirtual 157	java/util/zip/ZipFile:close	()V
    //   671: goto +16 -> 687
    //   674: astore_0
    //   675: ldc 69
    //   677: invokestatic 147	f6/a:a	(Ljava/lang/String;)Ljava/lang/String;
    //   680: ldc 161
    //   682: aload_0
    //   683: invokestatic 154	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   686: pop
    //   687: return
    //   688: aload 7
    //   690: ifnull +24 -> 714
    //   693: aload 7
    //   695: invokevirtual 157	java/util/zip/ZipFile:close	()V
    //   698: goto +16 -> 714
    //   701: astore_1
    //   702: ldc 69
    //   704: invokestatic 147	f6/a:a	(Ljava/lang/String;)Ljava/lang/String;
    //   707: ldc 161
    //   709: aload_1
    //   710: invokestatic 154	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   713: pop
    //   714: aload_0
    //   715: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	716	0	paramContext	Context
    //   0	716	1	paramString1	String
    //   0	716	2	paramString2	String
    //   1	576	3	localObject1	Object
    //   3	531	4	arrayOfByte	byte[]
    //   6	254	5	localEnumeration	java.util.Enumeration
    //   9	222	6	localObject2	Object
    //   555	1	6	localException1	java.lang.Exception
    //   566	1	6	localException2	java.lang.Exception
    //   581	19	6	localException3	java.lang.Exception
    //   17	677	7	localObject3	Object
    //   22	624	8	localObject4	Object
    //   107	341	9	str	String
    //   194	230	10	localHashMap	java.util.HashMap
    //   213	163	11	localList	List
    //   366	171	12	i	int
    // Exception table:
    //   from	to	target	type
    //   19	24	95	finally
    //   31	40	95	finally
    //   44	49	95	finally
    //   53	58	95	finally
    //   62	69	95	finally
    //   73	81	95	finally
    //   85	92	95	finally
    //   117	121	95	finally
    //   128	136	95	finally
    //   140	145	95	finally
    //   149	154	95	finally
    //   158	165	95	finally
    //   169	176	95	finally
    //   180	187	95	finally
    //   191	196	95	finally
    //   200	205	95	finally
    //   209	215	95	finally
    //   219	224	95	finally
    //   228	235	95	finally
    //   651	663	95	finally
    //   19	24	99	java/lang/Exception
    //   31	40	99	java/lang/Exception
    //   44	49	99	java/lang/Exception
    //   53	58	99	java/lang/Exception
    //   62	69	99	java/lang/Exception
    //   73	81	99	java/lang/Exception
    //   85	92	99	java/lang/Exception
    //   117	121	99	java/lang/Exception
    //   128	136	99	java/lang/Exception
    //   140	145	99	java/lang/Exception
    //   149	154	99	java/lang/Exception
    //   158	165	99	java/lang/Exception
    //   169	176	99	java/lang/Exception
    //   180	187	99	java/lang/Exception
    //   191	196	99	java/lang/Exception
    //   200	205	99	java/lang/Exception
    //   209	215	99	java/lang/Exception
    //   219	224	99	java/lang/Exception
    //   228	235	99	java/lang/Exception
    //   509	521	555	java/lang/Exception
    //   532	541	555	java/lang/Exception
    //   490	504	560	finally
    //   490	504	566	java/lang/Exception
    //   481	490	573	finally
    //   481	490	581	java/lang/Exception
    //   509	521	612	finally
    //   532	541	612	finally
    //   592	605	612	finally
    //   235	249	636	finally
    //   249	315	636	finally
    //   318	368	636	finally
    //   373	385	636	finally
    //   388	481	636	finally
    //   544	548	636	finally
    //   548	552	636	finally
    //   605	609	636	finally
    //   618	628	636	finally
    //   235	249	644	java/lang/Exception
    //   249	315	644	java/lang/Exception
    //   318	368	644	java/lang/Exception
    //   373	385	644	java/lang/Exception
    //   388	481	644	java/lang/Exception
    //   544	548	644	java/lang/Exception
    //   548	552	644	java/lang/Exception
    //   605	609	644	java/lang/Exception
    //   618	628	644	java/lang/Exception
    //   628	633	674	java/lang/Exception
    //   667	671	674	java/lang/Exception
    //   693	698	701	java/lang/Exception
  }
  
  private static List<String> b(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    paramContext = c(paramContext);
    if (!TextUtils.isEmpty(paramContext)) {
      localArrayList.add(paramContext);
    }
    paramContext = k.a("ro.product.cpu.abi", "");
    if (!TextUtils.isEmpty(paramContext)) {
      localArrayList.add(paramContext);
    }
    paramContext = k.a("ro.product.cpu.abi2", "");
    if (!TextUtils.isEmpty(paramContext)) {
      localArrayList.add(paramContext);
    }
    paramContext = k.a("ro.product.cpu.abilist", "");
    if (!TextUtils.isEmpty(paramContext))
    {
      paramContext = paramContext.split(",");
      for (int i = 0; (paramContext != null) && (i < paramContext.length); i++) {
        if (!TextUtils.isEmpty(paramContext[i])) {
          localArrayList.add(paramContext[i]);
        }
      }
    }
    localArrayList.add("armeabi");
    return localArrayList;
  }
  
  private static String c(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getApplicationInfo();
      Field localField = Class.forName("android.content.pm.ApplicationInfo").getDeclaredField("primaryCpuAbi");
      localField.setAccessible(true);
      paramContext = (String)localField.get(paramContext);
      return paramContext;
    }
    finally {}
    return null;
  }
  
  private static String d(String paramString)
  {
    if (paramString != null)
    {
      paramString = paramString.split("/");
      if ((paramString != null) && (paramString.length > 1)) {
        return paramString[(paramString.length - 2)];
      }
    }
    return "armeabi";
  }
  
  private static String e(String paramString)
  {
    String str = paramString;
    if (paramString != null)
    {
      String[] arrayOfString = paramString.split("/");
      str = paramString;
      if (arrayOfString != null)
      {
        str = paramString;
        if (arrayOfString.length > 0) {
          str = arrayOfString[(arrayOfString.length - 1)];
        }
      }
    }
    return str;
  }
  
  private static int f(List<String> paramList, String paramString)
  {
    for (int i = 0; (paramList != null) && (i < paramList.size()); i++) {
      if ((!TextUtils.isEmpty(paramString)) && (paramString.equalsIgnoreCase((String)paramList.get(i)))) {
        return i;
      }
    }
    return -1;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f6.c
 * JD-Core Version:    0.7.0.1
 */