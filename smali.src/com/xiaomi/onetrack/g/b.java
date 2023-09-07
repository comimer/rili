package com.xiaomi.onetrack.g;

import android.text.TextUtils;
import com.xiaomi.onetrack.d.d;
import com.xiaomi.onetrack.util.p;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class b
{
  public static final int a = 10000;
  public static final int b = 15000;
  public static final String c = "OT_SID";
  public static final String d = "OT_ts";
  public static final String e = "OT_net";
  public static final String f = "OT_sender";
  public static final String g = "OT_protocol";
  private static String h = "HttpUtil";
  private static final String i = "GET";
  private static final String j = "POST";
  private static final String k = "&";
  private static final String l = "=";
  private static final String m = "UTF-8";
  private static final String n = "miui_sdkconfig_jafej!@#)(*e@!#";
  private static final int o = 3;
  
  public static String a(String paramString)
    throws IOException
  {
    return a(paramString, null, false);
  }
  
  /* Error */
  private static String a(String paramString1, String paramString2, Map<String, String> paramMap, boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_2
    //   4: ifnonnull +8 -> 12
    //   7: aconst_null
    //   8: astore_2
    //   9: goto +9 -> 18
    //   12: aload_2
    //   13: iload_3
    //   14: invokestatic 67	com/xiaomi/onetrack/g/b:a	(Ljava/util/Map;Z)Ljava/lang/String;
    //   17: astore_2
    //   18: ldc 31
    //   20: aload_0
    //   21: invokevirtual 73	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   24: ifeq +49 -> 73
    //   27: aload_2
    //   28: ifnull +45 -> 73
    //   31: new 75	java/lang/StringBuilder
    //   34: astore 5
    //   36: aload 5
    //   38: invokespecial 76	java/lang/StringBuilder:<init>	()V
    //   41: aload 5
    //   43: aload_1
    //   44: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: pop
    //   48: aload 5
    //   50: ldc 82
    //   52: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: pop
    //   56: aload 5
    //   58: aload_2
    //   59: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: pop
    //   63: aload 5
    //   65: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   68: astore 5
    //   70: goto +6 -> 76
    //   73: aload_1
    //   74: astore 5
    //   76: new 88	java/net/URL
    //   79: astore 6
    //   81: aload 6
    //   83: aload 5
    //   85: invokespecial 91	java/net/URL:<init>	(Ljava/lang/String;)V
    //   88: aload 6
    //   90: invokevirtual 95	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   93: checkcast 97	java/net/HttpURLConnection
    //   96: astore 5
    //   98: aload 5
    //   100: sipush 10000
    //   103: invokevirtual 103	java/net/URLConnection:setConnectTimeout	(I)V
    //   106: aload 5
    //   108: sipush 15000
    //   111: invokevirtual 106	java/net/URLConnection:setReadTimeout	(I)V
    //   114: ldc 31
    //   116: aload_0
    //   117: invokevirtual 73	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   120: istore_3
    //   121: iload_3
    //   122: ifeq +13 -> 135
    //   125: aload 5
    //   127: ldc 31
    //   129: invokevirtual 109	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   132: goto +79 -> 211
    //   135: ldc 34
    //   137: aload_0
    //   138: invokevirtual 73	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   141: ifeq +70 -> 211
    //   144: aload_2
    //   145: ifnull +66 -> 211
    //   148: aload 5
    //   150: ldc 34
    //   152: invokevirtual 109	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   155: aload 5
    //   157: ldc 111
    //   159: ldc 113
    //   161: invokevirtual 117	java/net/URLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   164: aload 5
    //   166: iconst_1
    //   167: invokevirtual 121	java/net/URLConnection:setDoOutput	(Z)V
    //   170: aload_2
    //   171: ldc 43
    //   173: invokevirtual 125	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   176: astore 7
    //   178: aload 5
    //   180: invokevirtual 129	java/net/URLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   183: astore_0
    //   184: aload_0
    //   185: astore_2
    //   186: aload_0
    //   187: astore 6
    //   189: aload_0
    //   190: aload 7
    //   192: iconst_0
    //   193: aload 7
    //   195: arraylength
    //   196: invokevirtual 135	java/io/OutputStream:write	([BII)V
    //   199: aload_0
    //   200: astore_2
    //   201: aload_0
    //   202: astore 6
    //   204: aload_0
    //   205: invokevirtual 138	java/io/OutputStream:flush	()V
    //   208: goto +5 -> 213
    //   211: aconst_null
    //   212: astore_0
    //   213: aload_0
    //   214: astore_2
    //   215: aload_0
    //   216: astore 6
    //   218: aload 5
    //   220: invokevirtual 142	java/net/HttpURLConnection:getResponseCode	()I
    //   223: istore 8
    //   225: aload_0
    //   226: astore_2
    //   227: aload_0
    //   228: astore 6
    //   230: aload 5
    //   232: invokevirtual 146	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   235: astore 9
    //   237: aload 9
    //   239: astore 7
    //   241: aload_0
    //   242: astore 6
    //   244: aload 5
    //   246: astore 4
    //   248: aload 9
    //   250: invokestatic 151	com/xiaomi/onetrack/util/m:b	(Ljava/io/InputStream;)[B
    //   253: astore_2
    //   254: aload 9
    //   256: astore 7
    //   258: aload_0
    //   259: astore 6
    //   261: aload 5
    //   263: astore 4
    //   265: getstatic 153	com/xiaomi/onetrack/g/b:h	Ljava/lang/String;
    //   268: ldc 155
    //   270: iconst_2
    //   271: anewarray 4	java/lang/Object
    //   274: dup
    //   275: iconst_0
    //   276: aload_1
    //   277: aastore
    //   278: dup
    //   279: iconst_1
    //   280: iload 8
    //   282: invokestatic 161	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   285: aastore
    //   286: invokestatic 165	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   289: invokestatic 169	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   292: aload 9
    //   294: astore 7
    //   296: aload_0
    //   297: astore 6
    //   299: aload 5
    //   301: astore 4
    //   303: new 69	java/lang/String
    //   306: dup
    //   307: aload_2
    //   308: ldc 43
    //   310: invokespecial 172	java/lang/String:<init>	([BLjava/lang/String;)V
    //   313: astore_1
    //   314: aload 9
    //   316: invokestatic 175	com/xiaomi/onetrack/util/m:a	(Ljava/io/InputStream;)V
    //   319: aload_0
    //   320: invokestatic 178	com/xiaomi/onetrack/util/m:a	(Ljava/io/OutputStream;)V
    //   323: aload 5
    //   325: invokestatic 181	com/xiaomi/onetrack/util/m:a	(Ljava/net/HttpURLConnection;)V
    //   328: aload_1
    //   329: areturn
    //   330: astore_2
    //   331: aload 9
    //   333: astore_1
    //   334: goto +62 -> 396
    //   337: astore_0
    //   338: aload 4
    //   340: astore 6
    //   342: aload_2
    //   343: astore_1
    //   344: goto +98 -> 442
    //   347: astore_2
    //   348: aconst_null
    //   349: astore_1
    //   350: aload 6
    //   352: astore_0
    //   353: goto +43 -> 396
    //   356: astore_0
    //   357: aconst_null
    //   358: astore_1
    //   359: aload 4
    //   361: astore 6
    //   363: goto +79 -> 442
    //   366: astore_2
    //   367: aconst_null
    //   368: astore_0
    //   369: aload_0
    //   370: astore_1
    //   371: goto +25 -> 396
    //   374: astore_0
    //   375: aconst_null
    //   376: astore_1
    //   377: aload_1
    //   378: astore 5
    //   380: aload 4
    //   382: astore 6
    //   384: goto +58 -> 442
    //   387: astore_2
    //   388: aconst_null
    //   389: astore_0
    //   390: aload_0
    //   391: astore 5
    //   393: aload 5
    //   395: astore_1
    //   396: aload_1
    //   397: astore 7
    //   399: aload_0
    //   400: astore 6
    //   402: aload 5
    //   404: astore 4
    //   406: getstatic 153	com/xiaomi/onetrack/g/b:h	Ljava/lang/String;
    //   409: ldc 183
    //   411: aload_2
    //   412: invokestatic 186	com/xiaomi/onetrack/util/p:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   415: aload_1
    //   416: invokestatic 175	com/xiaomi/onetrack/util/m:a	(Ljava/io/InputStream;)V
    //   419: aload_0
    //   420: invokestatic 178	com/xiaomi/onetrack/util/m:a	(Ljava/io/OutputStream;)V
    //   423: aload 5
    //   425: invokestatic 181	com/xiaomi/onetrack/util/m:a	(Ljava/net/HttpURLConnection;)V
    //   428: aconst_null
    //   429: areturn
    //   430: astore_0
    //   431: aload 4
    //   433: astore 5
    //   435: aload 6
    //   437: astore_1
    //   438: aload 7
    //   440: astore 6
    //   442: aload 6
    //   444: invokestatic 175	com/xiaomi/onetrack/util/m:a	(Ljava/io/InputStream;)V
    //   447: aload_1
    //   448: invokestatic 178	com/xiaomi/onetrack/util/m:a	(Ljava/io/OutputStream;)V
    //   451: aload 5
    //   453: invokestatic 181	com/xiaomi/onetrack/util/m:a	(Ljava/net/HttpURLConnection;)V
    //   456: aload_0
    //   457: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	458	0	paramString1	String
    //   0	458	1	paramString2	String
    //   0	458	2	paramMap	Map<String, String>
    //   0	458	3	paramBoolean	boolean
    //   1	431	4	localObject1	Object
    //   34	418	5	localObject2	Object
    //   79	364	6	localObject3	Object
    //   176	263	7	localObject4	Object
    //   223	58	8	i1	int
    //   235	97	9	localInputStream	java.io.InputStream
    // Exception table:
    //   from	to	target	type
    //   248	254	330	java/lang/Exception
    //   265	292	330	java/lang/Exception
    //   303	314	330	java/lang/Exception
    //   189	199	337	finally
    //   204	208	337	finally
    //   218	225	337	finally
    //   230	237	337	finally
    //   189	199	347	java/lang/Exception
    //   204	208	347	java/lang/Exception
    //   218	225	347	java/lang/Exception
    //   230	237	347	java/lang/Exception
    //   98	121	356	finally
    //   125	132	356	finally
    //   135	144	356	finally
    //   148	184	356	finally
    //   98	121	366	java/lang/Exception
    //   125	132	366	java/lang/Exception
    //   135	144	366	java/lang/Exception
    //   148	184	366	java/lang/Exception
    //   12	18	374	finally
    //   18	27	374	finally
    //   31	70	374	finally
    //   76	98	374	finally
    //   12	18	387	java/lang/Exception
    //   18	27	387	java/lang/Exception
    //   31	70	387	java/lang/Exception
    //   76	98	387	java/lang/Exception
    //   248	254	430	finally
    //   265	292	430	finally
    //   303	314	430	finally
    //   406	415	430	finally
  }
  
  public static String a(String paramString, Map<String, String> paramMap)
    throws IOException
  {
    return a(paramString, paramMap, true);
  }
  
  public static String a(String paramString, Map<String, String> paramMap, boolean paramBoolean)
    throws IOException
  {
    return a("GET", paramString, paramMap, paramBoolean);
  }
  
  /* Error */
  public static String a(String paramString, byte[] paramArrayOfByte)
    throws IOException
  {
    // Byte code:
    //   0: getstatic 153	com/xiaomi/onetrack/g/b:h	Ljava/lang/String;
    //   3: astore_2
    //   4: new 75	java/lang/StringBuilder
    //   7: dup
    //   8: invokespecial 76	java/lang/StringBuilder:<init>	()V
    //   11: astore_3
    //   12: aload_3
    //   13: ldc 196
    //   15: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   18: pop
    //   19: aload_3
    //   20: aload_0
    //   21: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: pop
    //   25: aload_3
    //   26: ldc 198
    //   28: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: pop
    //   32: aload_3
    //   33: aload_1
    //   34: arraylength
    //   35: invokevirtual 201	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   38: pop
    //   39: aload_2
    //   40: aload_3
    //   41: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   44: invokestatic 169	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   47: aconst_null
    //   48: astore 4
    //   50: new 88	java/net/URL
    //   53: astore_2
    //   54: aload_2
    //   55: aload_0
    //   56: invokespecial 91	java/net/URL:<init>	(Ljava/lang/String;)V
    //   59: aload_2
    //   60: invokevirtual 95	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   63: checkcast 97	java/net/HttpURLConnection
    //   66: astore_2
    //   67: aload_2
    //   68: sipush 10000
    //   71: invokevirtual 103	java/net/URLConnection:setConnectTimeout	(I)V
    //   74: aload_2
    //   75: sipush 15000
    //   78: invokevirtual 106	java/net/URLConnection:setReadTimeout	(I)V
    //   81: aload_2
    //   82: iconst_1
    //   83: invokevirtual 121	java/net/URLConnection:setDoOutput	(Z)V
    //   86: aload_2
    //   87: ldc 34
    //   89: invokevirtual 109	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   92: aload_2
    //   93: ldc 111
    //   95: ldc 203
    //   97: invokevirtual 117	java/net/URLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   100: invokestatic 208	com/xiaomi/onetrack/d/f:a	()Lcom/xiaomi/onetrack/d/f;
    //   103: invokevirtual 211	com/xiaomi/onetrack/d/f:b	()[Ljava/lang/String;
    //   106: iconst_1
    //   107: aaload
    //   108: astore_3
    //   109: aload_2
    //   110: ldc 13
    //   112: aload_3
    //   113: invokevirtual 117	java/net/URLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   116: aload_2
    //   117: ldc 16
    //   119: invokestatic 217	java/lang/System:currentTimeMillis	()J
    //   122: invokestatic 222	java/lang/Long:toString	(J)Ljava/lang/String;
    //   125: invokevirtual 117	java/net/URLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   128: aload_2
    //   129: ldc 19
    //   131: invokestatic 227	com/xiaomi/onetrack/f/a:b	()Landroid/content/Context;
    //   134: invokestatic 232	com/xiaomi/onetrack/g/c:a	(Landroid/content/Context;)Lcom/xiaomi/onetrack/OneTrack$NetType;
    //   137: invokevirtual 235	com/xiaomi/onetrack/OneTrack$NetType:toString	()Ljava/lang/String;
    //   140: invokevirtual 117	java/net/URLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   143: aload_2
    //   144: ldc 22
    //   146: invokestatic 237	com/xiaomi/onetrack/f/a:e	()Ljava/lang/String;
    //   149: invokevirtual 117	java/net/URLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   152: aload_2
    //   153: ldc 25
    //   155: ldc 239
    //   157: invokevirtual 117	java/net/URLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   160: getstatic 153	com/xiaomi/onetrack/g/b:h	Ljava/lang/String;
    //   163: astore 5
    //   165: new 75	java/lang/StringBuilder
    //   168: astore 6
    //   170: aload 6
    //   172: invokespecial 76	java/lang/StringBuilder:<init>	()V
    //   175: aload 6
    //   177: ldc 241
    //   179: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: pop
    //   183: aload 6
    //   185: aload_3
    //   186: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: pop
    //   190: aload 5
    //   192: aload 6
    //   194: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   197: invokestatic 169	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   200: aload_2
    //   201: invokevirtual 129	java/net/URLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   204: astore_3
    //   205: aload_3
    //   206: aload_1
    //   207: iconst_0
    //   208: aload_1
    //   209: arraylength
    //   210: invokevirtual 135	java/io/OutputStream:write	([BII)V
    //   213: aload_3
    //   214: invokevirtual 138	java/io/OutputStream:flush	()V
    //   217: aload_2
    //   218: invokevirtual 142	java/net/HttpURLConnection:getResponseCode	()I
    //   221: istore 7
    //   223: aload_2
    //   224: invokevirtual 146	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   227: astore_1
    //   228: aload_2
    //   229: astore 4
    //   231: aload_3
    //   232: astore 5
    //   234: aload_1
    //   235: astore 6
    //   237: aload_1
    //   238: invokestatic 151	com/xiaomi/onetrack/util/m:b	(Ljava/io/InputStream;)[B
    //   241: astore 8
    //   243: aload_2
    //   244: astore 4
    //   246: aload_3
    //   247: astore 5
    //   249: aload_1
    //   250: astore 6
    //   252: getstatic 153	com/xiaomi/onetrack/g/b:h	Ljava/lang/String;
    //   255: ldc 155
    //   257: iconst_2
    //   258: anewarray 4	java/lang/Object
    //   261: dup
    //   262: iconst_0
    //   263: aload_0
    //   264: aastore
    //   265: dup
    //   266: iconst_1
    //   267: iload 7
    //   269: invokestatic 161	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   272: aastore
    //   273: invokestatic 165	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   276: invokestatic 169	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   279: aload_2
    //   280: astore 4
    //   282: aload_3
    //   283: astore 5
    //   285: aload_1
    //   286: astore 6
    //   288: new 69	java/lang/String
    //   291: dup
    //   292: aload 8
    //   294: ldc 43
    //   296: invokespecial 172	java/lang/String:<init>	([BLjava/lang/String;)V
    //   299: astore 8
    //   301: aload_1
    //   302: invokestatic 175	com/xiaomi/onetrack/util/m:a	(Ljava/io/InputStream;)V
    //   305: aload_3
    //   306: invokestatic 178	com/xiaomi/onetrack/util/m:a	(Ljava/io/OutputStream;)V
    //   309: aload_2
    //   310: invokestatic 181	com/xiaomi/onetrack/util/m:a	(Ljava/net/HttpURLConnection;)V
    //   313: aload 8
    //   315: areturn
    //   316: astore 8
    //   318: goto +43 -> 361
    //   321: astore_1
    //   322: aload_3
    //   323: astore_0
    //   324: goto +98 -> 422
    //   327: astore 8
    //   329: aconst_null
    //   330: astore_1
    //   331: goto +30 -> 361
    //   334: astore_1
    //   335: aconst_null
    //   336: astore_0
    //   337: goto +85 -> 422
    //   340: astore 8
    //   342: goto +15 -> 357
    //   345: astore_1
    //   346: aconst_null
    //   347: astore_2
    //   348: aload_2
    //   349: astore_0
    //   350: goto +72 -> 422
    //   353: astore 8
    //   355: aconst_null
    //   356: astore_2
    //   357: aconst_null
    //   358: astore_3
    //   359: aconst_null
    //   360: astore_1
    //   361: aload_2
    //   362: astore 4
    //   364: aload_3
    //   365: astore 5
    //   367: aload_1
    //   368: astore 6
    //   370: getstatic 153	com/xiaomi/onetrack/g/b:h	Ljava/lang/String;
    //   373: ldc 243
    //   375: iconst_2
    //   376: anewarray 4	java/lang/Object
    //   379: dup
    //   380: iconst_0
    //   381: aload_0
    //   382: aastore
    //   383: dup
    //   384: iconst_1
    //   385: aload 8
    //   387: invokevirtual 248	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   390: aastore
    //   391: invokestatic 165	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   394: invokestatic 250	com/xiaomi/onetrack/util/p:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   397: aload_1
    //   398: invokestatic 175	com/xiaomi/onetrack/util/m:a	(Ljava/io/InputStream;)V
    //   401: aload_3
    //   402: invokestatic 178	com/xiaomi/onetrack/util/m:a	(Ljava/io/OutputStream;)V
    //   405: aload_2
    //   406: invokestatic 181	com/xiaomi/onetrack/util/m:a	(Ljava/net/HttpURLConnection;)V
    //   409: aconst_null
    //   410: areturn
    //   411: astore_1
    //   412: aload 5
    //   414: astore_0
    //   415: aload 4
    //   417: astore_2
    //   418: aload 6
    //   420: astore 4
    //   422: aload 4
    //   424: invokestatic 175	com/xiaomi/onetrack/util/m:a	(Ljava/io/InputStream;)V
    //   427: aload_0
    //   428: invokestatic 178	com/xiaomi/onetrack/util/m:a	(Ljava/io/OutputStream;)V
    //   431: aload_2
    //   432: invokestatic 181	com/xiaomi/onetrack/util/m:a	(Ljava/net/HttpURLConnection;)V
    //   435: aload_1
    //   436: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	437	0	paramString	String
    //   0	437	1	paramArrayOfByte	byte[]
    //   3	429	2	localObject1	Object
    //   11	391	3	localObject2	Object
    //   48	375	4	localObject3	Object
    //   163	250	5	localObject4	Object
    //   168	251	6	localObject5	Object
    //   221	47	7	i1	int
    //   241	73	8	localObject6	Object
    //   316	1	8	localIOException1	IOException
    //   327	1	8	localIOException2	IOException
    //   340	1	8	localIOException3	IOException
    //   353	33	8	localIOException4	IOException
    // Exception table:
    //   from	to	target	type
    //   237	243	316	java/io/IOException
    //   252	279	316	java/io/IOException
    //   288	301	316	java/io/IOException
    //   205	228	321	finally
    //   205	228	327	java/io/IOException
    //   67	205	334	finally
    //   67	205	340	java/io/IOException
    //   50	67	345	finally
    //   50	67	353	java/io/IOException
    //   237	243	411	finally
    //   252	279	411	finally
    //   288	301	411	finally
    //   370	397	411	finally
  }
  
  public static String a(Map<String, String> paramMap)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramMap != null)
    {
      Object localObject = new ArrayList(paramMap.keySet());
      Collections.sort((List)localObject);
      Iterator localIterator = ((List)localObject).iterator();
      while (localIterator.hasNext())
      {
        localObject = (String)localIterator.next();
        if (!TextUtils.isEmpty((CharSequence)localObject))
        {
          localStringBuilder.append((String)localObject);
          localStringBuilder.append((String)paramMap.get(localObject));
        }
      }
    }
    localStringBuilder.append("miui_sdkconfig_jafej!@#)(*e@!#");
    return d.c(localStringBuilder.toString());
  }
  
  private static String a(Map<String, String> paramMap, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramMap.entrySet().iterator();
    try
    {
      for (;;)
      {
        boolean bool = localIterator.hasNext();
        if (!bool) {
          break;
        }
        Object localObject = (Map.Entry)localIterator.next();
        if (!TextUtils.isEmpty((CharSequence)((Map.Entry)localObject).getKey()))
        {
          if (localStringBuilder.length() > 0) {
            localStringBuilder.append("&");
          }
          localStringBuilder.append(URLEncoder.encode((String)((Map.Entry)localObject).getKey(), "UTF-8"));
          localStringBuilder.append("=");
          if (((Map.Entry)localObject).getValue() == null) {
            localObject = "null";
          } else {
            localObject = (String)((Map.Entry)localObject).getValue();
          }
          localStringBuilder.append(URLEncoder.encode((String)localObject, "UTF-8"));
        }
      }
      if (paramBoolean)
      {
        paramMap = a(paramMap);
        if (localStringBuilder.length() > 0) {
          localStringBuilder.append("&");
        }
        localStringBuilder.append(URLEncoder.encode("sign", "UTF-8"));
        localStringBuilder.append("=");
        localStringBuilder.append(URLEncoder.encode(paramMap, "UTF-8"));
      }
    }
    catch (UnsupportedEncodingException paramMap)
    {
      p.b(h, "format params failed");
    }
    return localStringBuilder.toString();
  }
  
  public static String b(String paramString, Map<String, String> paramMap)
    throws IOException
  {
    return b(paramString, paramMap, true);
  }
  
  public static String b(String paramString, Map<String, String> paramMap, boolean paramBoolean)
    throws IOException
  {
    return a("POST", paramString, paramMap, paramBoolean);
  }
  
  /* Error */
  public static boolean b(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 290	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifeq +14 -> 18
    //   7: getstatic 153	com/xiaomi/onetrack/g/b:h	Ljava/lang/String;
    //   10: ldc_w 342
    //   13: invokestatic 169	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   16: iconst_1
    //   17: ireturn
    //   18: aconst_null
    //   19: astore_1
    //   20: iconst_0
    //   21: istore_2
    //   22: iload_2
    //   23: istore_3
    //   24: aload_0
    //   25: astore 4
    //   27: aload_1
    //   28: astore_0
    //   29: iload_2
    //   30: iconst_3
    //   31: if_icmplt +20 -> 51
    //   34: aload_0
    //   35: astore_1
    //   36: getstatic 153	com/xiaomi/onetrack/g/b:h	Ljava/lang/String;
    //   39: ldc_w 344
    //   42: invokestatic 169	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   45: aload_0
    //   46: invokestatic 181	com/xiaomi/onetrack/util/m:a	(Ljava/net/HttpURLConnection;)V
    //   49: iconst_1
    //   50: ireturn
    //   51: iload_2
    //   52: istore 5
    //   54: aload_0
    //   55: astore_1
    //   56: iload_3
    //   57: bipush 100
    //   59: idiv
    //   60: iconst_3
    //   61: if_icmpne +73 -> 134
    //   64: iload_2
    //   65: iconst_1
    //   66: iadd
    //   67: istore 5
    //   69: aload_0
    //   70: astore_1
    //   71: aload_0
    //   72: ldc_w 346
    //   75: invokevirtual 349	java/net/URLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   78: astore 4
    //   80: aload_0
    //   81: astore_1
    //   82: getstatic 153	com/xiaomi/onetrack/g/b:h	Ljava/lang/String;
    //   85: astore 6
    //   87: aload_0
    //   88: astore_1
    //   89: new 75	java/lang/StringBuilder
    //   92: astore 7
    //   94: aload_0
    //   95: astore_1
    //   96: aload 7
    //   98: invokespecial 76	java/lang/StringBuilder:<init>	()V
    //   101: aload_0
    //   102: astore_1
    //   103: aload 7
    //   105: ldc_w 351
    //   108: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: pop
    //   112: aload_0
    //   113: astore_1
    //   114: aload 7
    //   116: aload 4
    //   118: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: pop
    //   122: aload_0
    //   123: astore_1
    //   124: aload 6
    //   126: aload 7
    //   128: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   131: invokestatic 169	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   134: aload_0
    //   135: astore_1
    //   136: new 88	java/net/URL
    //   139: astore 7
    //   141: aload_0
    //   142: astore_1
    //   143: aload 7
    //   145: aload 4
    //   147: invokespecial 91	java/net/URL:<init>	(Ljava/lang/String;)V
    //   150: aload_0
    //   151: astore_1
    //   152: aload 7
    //   154: invokevirtual 95	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   157: checkcast 97	java/net/HttpURLConnection
    //   160: astore 7
    //   162: aload 7
    //   164: iconst_0
    //   165: invokevirtual 354	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   168: aload 7
    //   170: ldc 31
    //   172: invokevirtual 109	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   175: aload 7
    //   177: sipush 10000
    //   180: invokevirtual 103	java/net/URLConnection:setConnectTimeout	(I)V
    //   183: aload 7
    //   185: sipush 15000
    //   188: invokevirtual 106	java/net/URLConnection:setReadTimeout	(I)V
    //   191: aload 7
    //   193: invokevirtual 142	java/net/HttpURLConnection:getResponseCode	()I
    //   196: istore_3
    //   197: getstatic 153	com/xiaomi/onetrack/g/b:h	Ljava/lang/String;
    //   200: astore_1
    //   201: new 75	java/lang/StringBuilder
    //   204: astore_0
    //   205: aload_0
    //   206: invokespecial 76	java/lang/StringBuilder:<init>	()V
    //   209: aload_0
    //   210: ldc_w 356
    //   213: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   216: pop
    //   217: aload_0
    //   218: iload_3
    //   219: invokevirtual 201	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   222: pop
    //   223: aload_1
    //   224: aload_0
    //   225: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   228: invokestatic 169	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   231: iload_3
    //   232: bipush 100
    //   234: idiv
    //   235: iconst_5
    //   236: if_icmpeq +20 -> 256
    //   239: iload_3
    //   240: bipush 100
    //   242: idiv
    //   243: istore_2
    //   244: iload_2
    //   245: iconst_3
    //   246: if_icmpeq +10 -> 256
    //   249: aload 7
    //   251: invokestatic 181	com/xiaomi/onetrack/util/m:a	(Ljava/net/HttpURLConnection;)V
    //   254: iconst_1
    //   255: ireturn
    //   256: iload_3
    //   257: bipush 100
    //   259: idiv
    //   260: istore_2
    //   261: iload_2
    //   262: iconst_3
    //   263: if_icmpeq +11 -> 274
    //   266: aload 7
    //   268: invokestatic 181	com/xiaomi/onetrack/util/m:a	(Ljava/net/HttpURLConnection;)V
    //   271: goto +167 -> 438
    //   274: aload 7
    //   276: astore_0
    //   277: iload 5
    //   279: istore_2
    //   280: goto -251 -> 29
    //   283: astore_0
    //   284: aload 7
    //   286: astore_1
    //   287: goto +153 -> 440
    //   290: astore_1
    //   291: aload 7
    //   293: astore_0
    //   294: aload_1
    //   295: astore 7
    //   297: goto +19 -> 316
    //   300: astore_1
    //   301: aload 7
    //   303: astore_0
    //   304: aload_1
    //   305: astore 7
    //   307: goto +79 -> 386
    //   310: astore_0
    //   311: goto +129 -> 440
    //   314: astore 7
    //   316: aload_0
    //   317: astore_1
    //   318: getstatic 153	com/xiaomi/onetrack/g/b:h	Ljava/lang/String;
    //   321: astore 6
    //   323: aload_0
    //   324: astore_1
    //   325: new 75	java/lang/StringBuilder
    //   328: astore 4
    //   330: aload_0
    //   331: astore_1
    //   332: aload 4
    //   334: invokespecial 76	java/lang/StringBuilder:<init>	()V
    //   337: aload_0
    //   338: astore_1
    //   339: aload 4
    //   341: ldc_w 358
    //   344: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   347: pop
    //   348: aload_0
    //   349: astore_1
    //   350: aload 4
    //   352: aload 7
    //   354: invokevirtual 248	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   357: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   360: pop
    //   361: aload_0
    //   362: astore_1
    //   363: aload 6
    //   365: aload 4
    //   367: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   370: invokestatic 250	com/xiaomi/onetrack/util/p:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   373: aload_0
    //   374: astore 4
    //   376: aload 4
    //   378: invokestatic 181	com/xiaomi/onetrack/util/m:a	(Ljava/net/HttpURLConnection;)V
    //   381: goto +57 -> 438
    //   384: astore 7
    //   386: aload_0
    //   387: astore_1
    //   388: aload_0
    //   389: astore 4
    //   391: aload 7
    //   393: invokevirtual 248	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   396: invokestatic 290	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   399: ifeq -23 -> 376
    //   402: aload_0
    //   403: astore_1
    //   404: aload_0
    //   405: astore 4
    //   407: aload 7
    //   409: invokevirtual 248	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   412: ldc_w 360
    //   415: invokevirtual 363	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   418: ifeq -42 -> 376
    //   421: aload_0
    //   422: astore_1
    //   423: getstatic 153	com/xiaomi/onetrack/g/b:h	Ljava/lang/String;
    //   426: ldc_w 365
    //   429: invokestatic 169	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   432: aload_0
    //   433: invokestatic 181	com/xiaomi/onetrack/util/m:a	(Ljava/net/HttpURLConnection;)V
    //   436: iconst_1
    //   437: ireturn
    //   438: iconst_0
    //   439: ireturn
    //   440: aload_1
    //   441: invokestatic 181	com/xiaomi/onetrack/util/m:a	(Ljava/net/HttpURLConnection;)V
    //   444: aload_0
    //   445: athrow
    //   446: astore_0
    //   447: goto -398 -> 49
    //   450: astore_0
    //   451: goto -197 -> 254
    //   454: astore_0
    //   455: goto -17 -> 438
    //   458: astore_0
    //   459: goto -23 -> 436
    //   462: astore_1
    //   463: goto -19 -> 444
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	466	0	paramString	String
    //   19	268	1	localObject1	Object
    //   290	5	1	localException1	java.lang.Exception
    //   300	5	1	localProtocolException1	java.net.ProtocolException
    //   317	124	1	str1	String
    //   462	1	1	localException2	java.lang.Exception
    //   21	259	2	i1	int
    //   23	237	3	i2	int
    //   25	381	4	localObject2	Object
    //   52	226	5	i3	int
    //   85	279	6	str2	String
    //   92	214	7	localObject3	Object
    //   314	39	7	localException3	java.lang.Exception
    //   384	24	7	localProtocolException2	java.net.ProtocolException
    // Exception table:
    //   from	to	target	type
    //   162	244	283	finally
    //   256	261	283	finally
    //   162	244	290	java/lang/Exception
    //   256	261	290	java/lang/Exception
    //   162	244	300	java/net/ProtocolException
    //   256	261	300	java/net/ProtocolException
    //   36	45	310	finally
    //   56	64	310	finally
    //   71	80	310	finally
    //   82	87	310	finally
    //   89	94	310	finally
    //   96	101	310	finally
    //   103	112	310	finally
    //   114	122	310	finally
    //   124	134	310	finally
    //   136	141	310	finally
    //   143	150	310	finally
    //   152	162	310	finally
    //   318	323	310	finally
    //   325	330	310	finally
    //   332	337	310	finally
    //   339	348	310	finally
    //   350	361	310	finally
    //   363	373	310	finally
    //   391	402	310	finally
    //   407	421	310	finally
    //   423	432	310	finally
    //   36	45	314	java/lang/Exception
    //   56	64	314	java/lang/Exception
    //   71	80	314	java/lang/Exception
    //   82	87	314	java/lang/Exception
    //   89	94	314	java/lang/Exception
    //   96	101	314	java/lang/Exception
    //   103	112	314	java/lang/Exception
    //   114	122	314	java/lang/Exception
    //   124	134	314	java/lang/Exception
    //   136	141	314	java/lang/Exception
    //   143	150	314	java/lang/Exception
    //   152	162	314	java/lang/Exception
    //   36	45	384	java/net/ProtocolException
    //   56	64	384	java/net/ProtocolException
    //   71	80	384	java/net/ProtocolException
    //   82	87	384	java/net/ProtocolException
    //   89	94	384	java/net/ProtocolException
    //   96	101	384	java/net/ProtocolException
    //   103	112	384	java/net/ProtocolException
    //   114	122	384	java/net/ProtocolException
    //   124	134	384	java/net/ProtocolException
    //   136	141	384	java/net/ProtocolException
    //   143	150	384	java/net/ProtocolException
    //   152	162	384	java/net/ProtocolException
    //   45	49	446	java/lang/Exception
    //   249	254	450	java/lang/Exception
    //   266	271	454	java/lang/Exception
    //   376	381	454	java/lang/Exception
    //   432	436	458	java/lang/Exception
    //   440	444	462	java/lang/Exception
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.g.b
 * JD-Core Version:    0.7.0.1
 */