package o7;

import g5.a;
import java.io.File;
import java.io.IOException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class i
  extends b
{
  private static final String d;
  private g5.b[] c;
  
  static
  {
    Object localObject2;
    try
    {
      Object localObject1 = new o7/i$a;
      ((a)localObject1).<init>();
      localObject1 = (String)AccessController.doPrivileged((PrivilegedAction)localObject1);
    }
    catch (Exception localException)
    {
      localObject2 = null;
    }
    d = localObject2;
  }
  
  public i()
  {
    ArrayList localArrayList = new ArrayList(5);
    localArrayList.add(null);
    a.b("MailcapCommandMap: load HOME");
    try
    {
      localObject = System.getProperty("user.home");
      if (localObject != null)
      {
        localStringBuilder = new java/lang/StringBuilder;
        localStringBuilder.<init>();
        localStringBuilder.append((String)localObject);
        localStringBuilder.append(File.separator);
        localStringBuilder.append(".mailcap");
        localObject = f(localStringBuilder.toString());
        if (localObject != null) {
          localArrayList.add(localObject);
        }
      }
    }
    catch (SecurityException localSecurityException1)
    {
      Object localObject;
      StringBuilder localStringBuilder;
      label86:
      break label86;
    }
    a.b("MailcapCommandMap: load SYS");
    try
    {
      localObject = d;
      if (localObject != null)
      {
        localStringBuilder = new java/lang/StringBuilder;
        localStringBuilder.<init>();
        localStringBuilder.append((String)localObject);
        localStringBuilder.append("mailcap");
        localObject = f(localStringBuilder.toString());
        if (localObject != null) {
          localArrayList.add(localObject);
        }
      }
    }
    catch (SecurityException localSecurityException2)
    {
      label141:
      break label141;
    }
    a.b("MailcapCommandMap: load JAR");
    e(localArrayList, "META-INF/mailcap");
    a.b("MailcapCommandMap: load DEF");
    localObject = g("/META-INF/mailcap.default");
    if (localObject != null) {
      localArrayList.add(localObject);
    }
    localObject = new g5.b[localArrayList.size()];
    this.c = ((g5.b[])localObject);
    this.c = ((g5.b[])localArrayList.toArray((Object[])localObject));
  }
  
  private c d(String paramString)
  {
    if (a.a()) {
      a.b("    got content-handler");
    }
    Object localObject1;
    if (a.a())
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("      class ");
      ((StringBuilder)localObject1).append(paramString);
      a.b(((StringBuilder)localObject1).toString());
    }
    try
    {
      ClassLoader localClassLoader = l.a();
      localObject1 = localClassLoader;
      if (localClassLoader == null) {
        localObject1 = getClass().getClassLoader();
      }
      try
      {
        localObject1 = ((ClassLoader)localObject1).loadClass(paramString);
      }
      catch (Exception localException)
      {
        localObject2 = Class.forName(paramString);
      }
      if (localObject2 != null)
      {
        localObject2 = (c)((Class)localObject2).newInstance();
        return localObject2;
      }
    }
    catch (InstantiationException localInstantiationException)
    {
      Object localObject2;
      if (a.a())
      {
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("Can't load DCH ");
        ((StringBuilder)localObject2).append(paramString);
        a.c(((StringBuilder)localObject2).toString(), localInstantiationException);
      }
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      if (a.a())
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("Can't load DCH ");
        localStringBuilder.append(paramString);
        a.c(localStringBuilder.toString(), localClassNotFoundException);
      }
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      StringBuilder localStringBuilder;
      if (a.a())
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("Can't load DCH ");
        localStringBuilder.append(paramString);
        a.c(localStringBuilder.toString(), localIllegalAccessException);
      }
    }
    return null;
  }
  
  /* Error */
  private void e(List paramList, String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: iconst_0
    //   3: istore 4
    //   5: iconst_0
    //   6: istore 5
    //   8: invokestatic 132	o7/l:a	()Ljava/lang/ClassLoader;
    //   11: astore 6
    //   13: aload 6
    //   15: astore 7
    //   17: aload 6
    //   19: ifnonnull +12 -> 31
    //   22: aload_0
    //   23: invokevirtual 138	java/lang/Object:getClass	()Ljava/lang/Class;
    //   26: invokevirtual 143	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   29: astore 7
    //   31: aload 7
    //   33: ifnull +14 -> 47
    //   36: aload 7
    //   38: aload_2
    //   39: invokestatic 168	o7/l:c	(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;
    //   42: astore 8
    //   44: goto +9 -> 53
    //   47: aload_2
    //   48: invokestatic 171	o7/l:d	(Ljava/lang/String;)[Ljava/net/URL;
    //   51: astore 8
    //   53: aload 8
    //   55: ifnull +722 -> 777
    //   58: invokestatic 123	g5/a:a	()Z
    //   61: ifeq +8 -> 69
    //   64: ldc 173
    //   66: invokestatic 50	g5/a:b	(Ljava/lang/String;)V
    //   69: iconst_0
    //   70: istore 4
    //   72: iload 4
    //   74: istore_3
    //   75: iload 5
    //   77: aload 8
    //   79: arraylength
    //   80: if_icmpge +641 -> 721
    //   83: aload 8
    //   85: iload 5
    //   87: aaload
    //   88: astore 9
    //   90: aconst_null
    //   91: astore 10
    //   93: aconst_null
    //   94: astore 11
    //   96: aconst_null
    //   97: astore 6
    //   99: iload 4
    //   101: istore_3
    //   102: invokestatic 123	g5/a:a	()Z
    //   105: ifeq +52 -> 157
    //   108: iload 4
    //   110: istore_3
    //   111: new 60	java/lang/StringBuilder
    //   114: astore 7
    //   116: iload 4
    //   118: istore_3
    //   119: aload 7
    //   121: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   124: iload 4
    //   126: istore_3
    //   127: aload 7
    //   129: ldc 175
    //   131: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: pop
    //   135: iload 4
    //   137: istore_3
    //   138: aload 7
    //   140: aload 9
    //   142: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   145: pop
    //   146: iload 4
    //   148: istore_3
    //   149: aload 7
    //   151: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   154: invokestatic 50	g5/a:b	(Ljava/lang/String;)V
    //   157: iload 4
    //   159: istore 12
    //   161: aload 9
    //   163: invokestatic 181	o7/l:e	(Ljava/net/URL;)Ljava/io/InputStream;
    //   166: astore 7
    //   168: aload 7
    //   170: ifnull +139 -> 309
    //   173: iload 4
    //   175: istore 12
    //   177: aload 7
    //   179: astore 6
    //   181: aload 7
    //   183: astore 10
    //   185: aload 7
    //   187: astore 11
    //   189: new 105	g5/b
    //   192: astore 13
    //   194: iload 4
    //   196: istore 12
    //   198: aload 7
    //   200: astore 6
    //   202: aload 7
    //   204: astore 10
    //   206: aload 7
    //   208: astore 11
    //   210: aload 13
    //   212: aload 7
    //   214: invokespecial 184	g5/b:<init>	(Ljava/io/InputStream;)V
    //   217: iload 4
    //   219: istore 12
    //   221: aload 7
    //   223: astore 6
    //   225: aload 7
    //   227: astore 10
    //   229: aload 7
    //   231: astore 11
    //   233: aload_1
    //   234: aload 13
    //   236: invokeinterface 42 2 0
    //   241: pop
    //   242: invokestatic 123	g5/a:a	()Z
    //   245: ifeq +37 -> 282
    //   248: new 60	java/lang/StringBuilder
    //   251: astore 6
    //   253: aload 6
    //   255: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   258: aload 6
    //   260: ldc 186
    //   262: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   265: pop
    //   266: aload 6
    //   268: aload 9
    //   270: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   273: pop
    //   274: aload 6
    //   276: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   279: invokestatic 50	g5/a:b	(Ljava/lang/String;)V
    //   282: iconst_1
    //   283: istore_3
    //   284: goto +167 -> 451
    //   287: astore 10
    //   289: iconst_1
    //   290: istore 12
    //   292: goto +410 -> 702
    //   295: astore 11
    //   297: iconst_1
    //   298: istore_3
    //   299: goto +192 -> 491
    //   302: astore 10
    //   304: iconst_1
    //   305: istore_3
    //   306: goto +292 -> 598
    //   309: iload 4
    //   311: istore_3
    //   312: iload 4
    //   314: istore 12
    //   316: aload 7
    //   318: astore 6
    //   320: aload 7
    //   322: astore 10
    //   324: aload 7
    //   326: astore 11
    //   328: invokestatic 123	g5/a:a	()Z
    //   331: ifeq +120 -> 451
    //   334: iload 4
    //   336: istore 12
    //   338: aload 7
    //   340: astore 6
    //   342: aload 7
    //   344: astore 10
    //   346: aload 7
    //   348: astore 11
    //   350: new 60	java/lang/StringBuilder
    //   353: astore 13
    //   355: iload 4
    //   357: istore 12
    //   359: aload 7
    //   361: astore 6
    //   363: aload 7
    //   365: astore 10
    //   367: aload 7
    //   369: astore 11
    //   371: aload 13
    //   373: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   376: iload 4
    //   378: istore 12
    //   380: aload 7
    //   382: astore 6
    //   384: aload 7
    //   386: astore 10
    //   388: aload 7
    //   390: astore 11
    //   392: aload 13
    //   394: ldc 188
    //   396: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   399: pop
    //   400: iload 4
    //   402: istore 12
    //   404: aload 7
    //   406: astore 6
    //   408: aload 7
    //   410: astore 10
    //   412: aload 7
    //   414: astore 11
    //   416: aload 13
    //   418: aload 9
    //   420: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   423: pop
    //   424: iload 4
    //   426: istore 12
    //   428: aload 7
    //   430: astore 6
    //   432: aload 7
    //   434: astore 10
    //   436: aload 7
    //   438: astore 11
    //   440: aload 13
    //   442: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   445: invokestatic 50	g5/a:b	(Ljava/lang/String;)V
    //   448: iload 4
    //   450: istore_3
    //   451: iload_3
    //   452: istore 4
    //   454: aload 7
    //   456: ifnull +240 -> 696
    //   459: iload_3
    //   460: istore 4
    //   462: iload 4
    //   464: istore_3
    //   465: aload 7
    //   467: invokevirtual 193	java/io/InputStream:close	()V
    //   470: goto +226 -> 696
    //   473: astore 10
    //   475: aload 6
    //   477: astore 7
    //   479: goto +223 -> 702
    //   482: astore 11
    //   484: aload 10
    //   486: astore 7
    //   488: iload 4
    //   490: istore_3
    //   491: iload_3
    //   492: istore 12
    //   494: aload 7
    //   496: astore 6
    //   498: invokestatic 123	g5/a:a	()Z
    //   501: ifeq +74 -> 575
    //   504: iload_3
    //   505: istore 12
    //   507: aload 7
    //   509: astore 6
    //   511: new 60	java/lang/StringBuilder
    //   514: astore 10
    //   516: iload_3
    //   517: istore 12
    //   519: aload 7
    //   521: astore 6
    //   523: aload 10
    //   525: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   528: iload_3
    //   529: istore 12
    //   531: aload 7
    //   533: astore 6
    //   535: aload 10
    //   537: ldc 195
    //   539: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   542: pop
    //   543: iload_3
    //   544: istore 12
    //   546: aload 7
    //   548: astore 6
    //   550: aload 10
    //   552: aload 9
    //   554: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   557: pop
    //   558: iload_3
    //   559: istore 12
    //   561: aload 7
    //   563: astore 6
    //   565: aload 10
    //   567: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   570: aload 11
    //   572: invokestatic 163	g5/a:c	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   575: iload_3
    //   576: istore 4
    //   578: aload 7
    //   580: ifnull +116 -> 696
    //   583: iload_3
    //   584: istore 4
    //   586: goto -124 -> 462
    //   589: astore 10
    //   591: aload 11
    //   593: astore 7
    //   595: iload 4
    //   597: istore_3
    //   598: iload_3
    //   599: istore 12
    //   601: aload 7
    //   603: astore 6
    //   605: invokestatic 123	g5/a:a	()Z
    //   608: ifeq +74 -> 682
    //   611: iload_3
    //   612: istore 12
    //   614: aload 7
    //   616: astore 6
    //   618: new 60	java/lang/StringBuilder
    //   621: astore 11
    //   623: iload_3
    //   624: istore 12
    //   626: aload 7
    //   628: astore 6
    //   630: aload 11
    //   632: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   635: iload_3
    //   636: istore 12
    //   638: aload 7
    //   640: astore 6
    //   642: aload 11
    //   644: ldc 195
    //   646: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   649: pop
    //   650: iload_3
    //   651: istore 12
    //   653: aload 7
    //   655: astore 6
    //   657: aload 11
    //   659: aload 9
    //   661: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   664: pop
    //   665: iload_3
    //   666: istore 12
    //   668: aload 7
    //   670: astore 6
    //   672: aload 11
    //   674: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   677: aload 10
    //   679: invokestatic 163	g5/a:c	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   682: iload_3
    //   683: istore 4
    //   685: aload 7
    //   687: ifnull +9 -> 696
    //   690: iload_3
    //   691: istore 4
    //   693: goto -231 -> 462
    //   696: iinc 5 1
    //   699: goto -627 -> 72
    //   702: aload 7
    //   704: ifnull +11 -> 715
    //   707: iload 12
    //   709: istore_3
    //   710: aload 7
    //   712: invokevirtual 193	java/io/InputStream:close	()V
    //   715: iload 12
    //   717: istore_3
    //   718: aload 10
    //   720: athrow
    //   721: goto +56 -> 777
    //   724: astore 7
    //   726: goto +5 -> 731
    //   729: astore 7
    //   731: iload_3
    //   732: istore 4
    //   734: invokestatic 123	g5/a:a	()Z
    //   737: ifeq +40 -> 777
    //   740: new 60	java/lang/StringBuilder
    //   743: dup
    //   744: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   747: astore 6
    //   749: aload 6
    //   751: ldc 195
    //   753: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   756: pop
    //   757: aload 6
    //   759: aload_2
    //   760: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   763: pop
    //   764: aload 6
    //   766: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   769: aload 7
    //   771: invokestatic 163	g5/a:c	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   774: iload_3
    //   775: istore 4
    //   777: iload 4
    //   779: ifne +60 -> 839
    //   782: invokestatic 123	g5/a:a	()Z
    //   785: ifeq +8 -> 793
    //   788: ldc 197
    //   790: invokestatic 50	g5/a:b	(Ljava/lang/String;)V
    //   793: new 60	java/lang/StringBuilder
    //   796: dup
    //   797: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   800: astore 7
    //   802: aload 7
    //   804: ldc 199
    //   806: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   809: pop
    //   810: aload 7
    //   812: aload_2
    //   813: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   816: pop
    //   817: aload_0
    //   818: aload 7
    //   820: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   823: invokespecial 99	o7/i:g	(Ljava/lang/String;)Lg5/b;
    //   826: astore_2
    //   827: aload_2
    //   828: ifnull +11 -> 839
    //   831: aload_1
    //   832: aload_2
    //   833: invokeinterface 42 2 0
    //   838: pop
    //   839: return
    //   840: astore 7
    //   842: goto -146 -> 696
    //   845: astore 7
    //   847: goto -132 -> 715
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	850	0	this	i
    //   0	850	1	paramList	List
    //   0	850	2	paramString	String
    //   1	774	3	i	int
    //   3	775	4	j	int
    //   6	691	5	k	int
    //   11	754	6	localObject1	Object
    //   15	696	7	localObject2	Object
    //   724	1	7	localException1	Exception
    //   729	41	7	localException2	Exception
    //   800	19	7	localStringBuilder1	StringBuilder
    //   840	1	7	localIOException1	IOException
    //   845	1	7	localIOException2	IOException
    //   42	42	8	arrayOfURL	java.net.URL[]
    //   88	572	9	localURL	java.net.URL
    //   91	137	10	localObject3	Object
    //   287	1	10	localObject4	Object
    //   302	1	10	localIOException3	IOException
    //   322	113	10	localObject5	Object
    //   473	12	10	localObject6	Object
    //   514	52	10	localStringBuilder2	StringBuilder
    //   589	130	10	localIOException4	IOException
    //   94	138	11	localObject7	Object
    //   295	1	11	localSecurityException1	SecurityException
    //   326	113	11	localObject8	Object
    //   482	110	11	localSecurityException2	SecurityException
    //   621	52	11	localStringBuilder3	StringBuilder
    //   159	557	12	m	int
    //   192	249	13	localObject9	Object
    // Exception table:
    //   from	to	target	type
    //   242	282	287	finally
    //   242	282	295	java/lang/SecurityException
    //   242	282	302	java/io/IOException
    //   161	168	473	finally
    //   189	194	473	finally
    //   210	217	473	finally
    //   233	242	473	finally
    //   328	334	473	finally
    //   350	355	473	finally
    //   371	376	473	finally
    //   392	400	473	finally
    //   416	424	473	finally
    //   440	448	473	finally
    //   498	504	473	finally
    //   511	516	473	finally
    //   523	528	473	finally
    //   535	543	473	finally
    //   550	558	473	finally
    //   565	575	473	finally
    //   605	611	473	finally
    //   618	623	473	finally
    //   630	635	473	finally
    //   642	650	473	finally
    //   657	665	473	finally
    //   672	682	473	finally
    //   161	168	482	java/lang/SecurityException
    //   189	194	482	java/lang/SecurityException
    //   210	217	482	java/lang/SecurityException
    //   233	242	482	java/lang/SecurityException
    //   328	334	482	java/lang/SecurityException
    //   350	355	482	java/lang/SecurityException
    //   371	376	482	java/lang/SecurityException
    //   392	400	482	java/lang/SecurityException
    //   416	424	482	java/lang/SecurityException
    //   440	448	482	java/lang/SecurityException
    //   161	168	589	java/io/IOException
    //   189	194	589	java/io/IOException
    //   210	217	589	java/io/IOException
    //   233	242	589	java/io/IOException
    //   328	334	589	java/io/IOException
    //   350	355	589	java/io/IOException
    //   371	376	589	java/io/IOException
    //   392	400	589	java/io/IOException
    //   416	424	589	java/io/IOException
    //   440	448	589	java/io/IOException
    //   75	83	724	java/lang/Exception
    //   102	108	724	java/lang/Exception
    //   111	116	724	java/lang/Exception
    //   119	124	724	java/lang/Exception
    //   127	135	724	java/lang/Exception
    //   138	146	724	java/lang/Exception
    //   149	157	724	java/lang/Exception
    //   465	470	724	java/lang/Exception
    //   710	715	724	java/lang/Exception
    //   718	721	724	java/lang/Exception
    //   8	13	729	java/lang/Exception
    //   22	31	729	java/lang/Exception
    //   36	44	729	java/lang/Exception
    //   47	53	729	java/lang/Exception
    //   58	69	729	java/lang/Exception
    //   465	470	840	java/io/IOException
    //   710	715	845	java/io/IOException
  }
  
  private g5.b f(String paramString)
  {
    try
    {
      g5.b localb = new g5/b;
      localb.<init>(paramString);
      paramString = localb;
    }
    catch (IOException paramString)
    {
      paramString = null;
    }
    return paramString;
  }
  
  /* Error */
  private g5.b g(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: invokevirtual 138	java/lang/Object:getClass	()Ljava/lang/Class;
    //   6: aload_1
    //   7: invokestatic 204	o7/l:b	(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    //   10: astore_3
    //   11: aload_3
    //   12: ifnull +76 -> 88
    //   15: aload_3
    //   16: astore_2
    //   17: new 105	g5/b
    //   20: astore 4
    //   22: aload_3
    //   23: astore_2
    //   24: aload 4
    //   26: aload_3
    //   27: invokespecial 184	g5/b:<init>	(Ljava/io/InputStream;)V
    //   30: aload_3
    //   31: astore_2
    //   32: invokestatic 123	g5/a:a	()Z
    //   35: ifeq +46 -> 81
    //   38: aload_3
    //   39: astore_2
    //   40: new 60	java/lang/StringBuilder
    //   43: astore 5
    //   45: aload_3
    //   46: astore_2
    //   47: aload 5
    //   49: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   52: aload_3
    //   53: astore_2
    //   54: aload 5
    //   56: ldc 206
    //   58: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: pop
    //   62: aload_3
    //   63: astore_2
    //   64: aload 5
    //   66: aload_1
    //   67: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: pop
    //   71: aload_3
    //   72: astore_2
    //   73: aload 5
    //   75: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: invokestatic 50	g5/a:b	(Ljava/lang/String;)V
    //   81: aload_3
    //   82: invokevirtual 193	java/io/InputStream:close	()V
    //   85: aload 4
    //   87: areturn
    //   88: aload_3
    //   89: astore_2
    //   90: invokestatic 123	g5/a:a	()Z
    //   93: ifeq +46 -> 139
    //   96: aload_3
    //   97: astore_2
    //   98: new 60	java/lang/StringBuilder
    //   101: astore 4
    //   103: aload_3
    //   104: astore_2
    //   105: aload 4
    //   107: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   110: aload_3
    //   111: astore_2
    //   112: aload 4
    //   114: ldc 208
    //   116: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: pop
    //   120: aload_3
    //   121: astore_2
    //   122: aload 4
    //   124: aload_1
    //   125: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: pop
    //   129: aload_3
    //   130: astore_2
    //   131: aload 4
    //   133: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   136: invokestatic 50	g5/a:b	(Ljava/lang/String;)V
    //   139: aload_3
    //   140: ifnull +152 -> 292
    //   143: aload_3
    //   144: invokevirtual 193	java/io/InputStream:close	()V
    //   147: goto +145 -> 292
    //   150: astore 4
    //   152: goto +16 -> 168
    //   155: astore 4
    //   157: goto +75 -> 232
    //   160: astore_1
    //   161: goto +134 -> 295
    //   164: astore 4
    //   166: aconst_null
    //   167: astore_3
    //   168: aload_3
    //   169: astore_2
    //   170: invokestatic 123	g5/a:a	()Z
    //   173: ifeq +48 -> 221
    //   176: aload_3
    //   177: astore_2
    //   178: new 60	java/lang/StringBuilder
    //   181: astore 5
    //   183: aload_3
    //   184: astore_2
    //   185: aload 5
    //   187: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   190: aload_3
    //   191: astore_2
    //   192: aload 5
    //   194: ldc 195
    //   196: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   199: pop
    //   200: aload_3
    //   201: astore_2
    //   202: aload 5
    //   204: aload_1
    //   205: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   208: pop
    //   209: aload_3
    //   210: astore_2
    //   211: aload 5
    //   213: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   216: aload 4
    //   218: invokestatic 163	g5/a:c	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   221: aload_3
    //   222: ifnull +70 -> 292
    //   225: goto -82 -> 143
    //   228: astore 4
    //   230: aconst_null
    //   231: astore_3
    //   232: aload_3
    //   233: astore_2
    //   234: invokestatic 123	g5/a:a	()Z
    //   237: ifeq +48 -> 285
    //   240: aload_3
    //   241: astore_2
    //   242: new 60	java/lang/StringBuilder
    //   245: astore 5
    //   247: aload_3
    //   248: astore_2
    //   249: aload 5
    //   251: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   254: aload_3
    //   255: astore_2
    //   256: aload 5
    //   258: ldc 195
    //   260: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   263: pop
    //   264: aload_3
    //   265: astore_2
    //   266: aload 5
    //   268: aload_1
    //   269: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   272: pop
    //   273: aload_3
    //   274: astore_2
    //   275: aload 5
    //   277: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   280: aload 4
    //   282: invokestatic 163	g5/a:c	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   285: aload_3
    //   286: ifnull +6 -> 292
    //   289: goto -146 -> 143
    //   292: aconst_null
    //   293: areturn
    //   294: astore_1
    //   295: aload_2
    //   296: ifnull +7 -> 303
    //   299: aload_2
    //   300: invokevirtual 193	java/io/InputStream:close	()V
    //   303: aload_1
    //   304: athrow
    //   305: astore_1
    //   306: goto -221 -> 85
    //   309: astore_1
    //   310: goto -18 -> 292
    //   313: astore_2
    //   314: goto -11 -> 303
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	317	0	this	i
    //   0	317	1	paramString	String
    //   1	299	2	localObject1	Object
    //   313	1	2	localIOException1	IOException
    //   10	276	3	localInputStream	java.io.InputStream
    //   20	112	4	localObject2	Object
    //   150	1	4	localSecurityException1	SecurityException
    //   155	1	4	localIOException2	IOException
    //   164	53	4	localSecurityException2	SecurityException
    //   228	53	4	localIOException3	IOException
    //   43	233	5	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   17	22	150	java/lang/SecurityException
    //   24	30	150	java/lang/SecurityException
    //   32	38	150	java/lang/SecurityException
    //   40	45	150	java/lang/SecurityException
    //   47	52	150	java/lang/SecurityException
    //   54	62	150	java/lang/SecurityException
    //   64	71	150	java/lang/SecurityException
    //   73	81	150	java/lang/SecurityException
    //   90	96	150	java/lang/SecurityException
    //   98	103	150	java/lang/SecurityException
    //   105	110	150	java/lang/SecurityException
    //   112	120	150	java/lang/SecurityException
    //   122	129	150	java/lang/SecurityException
    //   131	139	150	java/lang/SecurityException
    //   17	22	155	java/io/IOException
    //   24	30	155	java/io/IOException
    //   32	38	155	java/io/IOException
    //   40	45	155	java/io/IOException
    //   47	52	155	java/io/IOException
    //   54	62	155	java/io/IOException
    //   64	71	155	java/io/IOException
    //   73	81	155	java/io/IOException
    //   90	96	155	java/io/IOException
    //   98	103	155	java/io/IOException
    //   105	110	155	java/io/IOException
    //   112	120	155	java/io/IOException
    //   122	129	155	java/io/IOException
    //   131	139	155	java/io/IOException
    //   2	11	160	finally
    //   2	11	164	java/lang/SecurityException
    //   2	11	228	java/io/IOException
    //   17	22	294	finally
    //   24	30	294	finally
    //   32	38	294	finally
    //   40	45	294	finally
    //   47	52	294	finally
    //   54	62	294	finally
    //   64	71	294	finally
    //   73	81	294	finally
    //   90	96	294	finally
    //   98	103	294	finally
    //   105	110	294	finally
    //   112	120	294	finally
    //   122	129	294	finally
    //   131	139	294	finally
    //   170	176	294	finally
    //   178	183	294	finally
    //   185	190	294	finally
    //   192	200	294	finally
    //   202	209	294	finally
    //   211	221	294	finally
    //   234	240	294	finally
    //   242	247	294	finally
    //   249	254	294	finally
    //   256	264	294	finally
    //   266	273	294	finally
    //   275	285	294	finally
    //   81	85	305	java/io/IOException
    //   143	147	309	java/io/IOException
    //   299	303	313	java/io/IOException
  }
  
  public c a(String paramString)
  {
    try
    {
      if (a.a())
      {
        localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        ((StringBuilder)localObject).append("MailcapCommandMap: createDataContentHandler for ");
        ((StringBuilder)localObject).append(paramString);
        a.b(((StringBuilder)localObject).toString());
      }
      Object localObject = paramString;
      if (paramString != null) {
        localObject = paramString.toLowerCase(Locale.ENGLISH);
      }
      for (int i = 0;; i++)
      {
        paramString = this.c;
        if (i >= paramString.length) {
          break;
        }
        if (paramString[i] != null)
        {
          if (a.a())
          {
            paramString = new java/lang/StringBuilder;
            paramString.<init>();
            paramString.append("  search DB #");
            paramString.append(i);
            a.b(paramString.toString());
          }
          paramString = this.c[i].b((String)localObject);
          if (paramString != null)
          {
            paramString = (List)paramString.get("content-handler");
            if (paramString != null)
            {
              paramString = d((String)paramString.get(0));
              if (paramString != null) {
                return paramString;
              }
            }
          }
        }
      }
      for (i = 0;; i++)
      {
        paramString = this.c;
        if (i >= paramString.length) {
          break;
        }
        if (paramString[i] != null)
        {
          if (a.a())
          {
            paramString = new java/lang/StringBuilder;
            paramString.<init>();
            paramString.append("  search fallback DB #");
            paramString.append(i);
            a.b(paramString.toString());
          }
          paramString = this.c[i].a((String)localObject);
          if (paramString != null)
          {
            paramString = (List)paramString.get("content-handler");
            if (paramString != null)
            {
              paramString = d((String)paramString.get(0));
              if (paramString != null) {
                return paramString;
              }
            }
          }
        }
      }
      return null;
    }
    finally {}
  }
  
  static final class a
    implements PrivilegedAction
  {
    public Object run()
    {
      Object localObject1 = System.getProperty("java.home");
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append((String)localObject1);
      String str = File.separator;
      ((StringBuilder)localObject2).append(str);
      ((StringBuilder)localObject2).append("conf");
      localObject2 = ((StringBuilder)localObject2).toString();
      if (new File((String)localObject2).exists())
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append((String)localObject2);
        ((StringBuilder)localObject1).append(str);
        return ((StringBuilder)localObject1).toString();
      }
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append((String)localObject1);
      ((StringBuilder)localObject2).append(str);
      ((StringBuilder)localObject2).append("lib");
      ((StringBuilder)localObject2).append(str);
      return ((StringBuilder)localObject2).toString();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     o7.i
 * JD-Core Version:    0.7.0.1
 */