package a6;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import b7.i;
import com.xiaomi.accountsdk.account.e;
import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.utils.EasyMap;
import com.xiaomi.accountsdk.utils.b;
import com.xiaomi.accountsdk.utils.g;
import com.xiaomi.accountsdk.utils.j;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.CookieHandler;
import java.net.CookiePolicy;
import java.net.HttpCookie;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

@SuppressLint({"NewApi"})
public final class k
{
  private static a a;
  private static b6.a b = new a();
  private static e c = new b();
  
  private static String b(String paramString, Map<String, String> paramMap)
  {
    if (paramString != null)
    {
      paramString = Uri.parse(paramString).buildUpon();
      if ((paramMap != null) && (!paramMap.isEmpty()))
      {
        paramMap = paramMap.entrySet().iterator();
        while (paramMap.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)paramMap.next();
          paramString.appendQueryParameter((String)localEntry.getKey(), (String)localEntry.getValue());
        }
      }
      return paramString.build().toString();
    }
    throw new NullPointerException("origin is not allowed null");
  }
  
  protected static void c()
    throws IOException
  {
    b6.a locala = b;
    if ((locala != null) && (!locala.a())) {
      throw new IOException("must pass XiaomiAccount CTA!!!!");
    }
  }
  
  protected static f d(h paramh)
  {
    if (paramh == null) {
      return null;
    }
    String str = paramh.h();
    try
    {
      JSONObject localJSONObject = new org/json/JSONObject;
      localJSONObject.<init>(str);
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
      localObject = null;
    }
    if (localObject == null) {
      return null;
    }
    Object localObject = new f(j.b((JSONObject)localObject));
    ((d)localObject).f(paramh.c());
    return localObject;
  }
  
  private static String e(String paramString)
  {
    try
    {
      paramString = URLDecoder.decode(paramString, "utf-8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new IllegalArgumentException(paramString);
    }
  }
  
  public static Map<String, String> f(String paramString)
  {
    HashMap localHashMap = new HashMap();
    if (TextUtils.isEmpty(paramString)) {
      return localHashMap;
    }
    paramString = paramString.split("&");
    int i = paramString.length;
    for (int j = 0; j < i; j++)
    {
      String[] arrayOfString = paramString[j].split("=");
      if (arrayOfString.length == 2) {
        localHashMap.put(e(arrayOfString[0]), e(arrayOfString[1]));
      }
    }
    return localHashMap;
  }
  
  private static String g(String paramString)
  {
    try
    {
      paramString = URLEncoder.encode(paramString, "utf-8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new IllegalArgumentException(paramString);
    }
  }
  
  public static String h(Map<String, String> paramMap)
  {
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      Iterator localIterator = paramMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        paramMap = (Map.Entry)localIterator.next();
        if (localStringBuilder.length() > 0) {
          localStringBuilder.append("&");
        }
        String str = g((String)paramMap.getKey());
        if (!TextUtils.isEmpty((CharSequence)paramMap.getValue())) {
          paramMap = g((String)paramMap.getValue());
        } else {
          paramMap = "";
        }
        localStringBuilder.append(str);
        localStringBuilder.append("=");
        localStringBuilder.append(paramMap);
      }
      return localStringBuilder.toString();
    }
    return null;
  }
  
  public static g i(String paramString, Map<String, String> paramMap1, Map<String, String> paramMap2)
    throws IOException, AccessDeniedException, AuthenticationFailureException
  {
    return j(paramString, paramMap1, paramMap2, null);
  }
  
  /* Error */
  public static g j(String paramString, Map<String, String> paramMap1, Map<String, String> paramMap2, Map<String, String> paramMap3)
    throws IOException, AccessDeniedException, AuthenticationFailureException
  {
    // Byte code:
    //   0: invokestatic 235	a6/k:c	()V
    //   3: aload_0
    //   4: aload_1
    //   5: invokestatic 237	a6/k:b	(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    //   8: astore 4
    //   10: invokestatic 241	com/xiaomi/phonenum/utils/d:a	()Ljava/lang/String;
    //   13: astore 5
    //   15: invokestatic 247	java/lang/System:currentTimeMillis	()J
    //   18: lstore 6
    //   20: invokestatic 252	b6/d:a	()Lb6/c;
    //   23: aload 5
    //   25: ldc 254
    //   27: aload_0
    //   28: invokeinterface 259 4 0
    //   33: new 261	com/xiaomi/accountsdk/utils/b$b
    //   36: dup
    //   37: aload 4
    //   39: ldc 254
    //   41: invokespecial 264	com/xiaomi/accountsdk/utils/b$b:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   44: aload_3
    //   45: aload_2
    //   46: invokevirtual 267	com/xiaomi/accountsdk/utils/b$b:e	(Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/accountsdk/utils/b$b;
    //   49: astore 8
    //   51: aload 4
    //   53: aload_2
    //   54: aload_3
    //   55: aconst_null
    //   56: invokestatic 271	a6/k:n	(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;)Ljava/net/HttpURLConnection;
    //   59: astore_2
    //   60: aload_2
    //   61: ifnull +414 -> 475
    //   64: aload_2
    //   65: iconst_1
    //   66: invokevirtual 277	java/net/URLConnection:setDoInput	(Z)V
    //   69: aload_2
    //   70: ldc 254
    //   72: invokevirtual 282	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   75: aload_2
    //   76: iconst_1
    //   77: invokevirtual 285	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   80: aload_2
    //   81: invokevirtual 288	java/net/URLConnection:connect	()V
    //   84: aload_2
    //   85: invokevirtual 291	java/net/HttpURLConnection:getResponseCode	()I
    //   88: istore 9
    //   90: iload 9
    //   92: invokestatic 297	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   95: astore_1
    //   96: iload 9
    //   98: sipush 200
    //   101: if_icmpne +144 -> 245
    //   104: aload_2
    //   105: invokevirtual 300	java/net/URLConnection:getHeaderFields	()Ljava/util/Map;
    //   108: astore_3
    //   109: new 302	java/net/CookieManager
    //   112: astore 10
    //   114: aload 10
    //   116: invokespecial 303	java/net/CookieManager:<init>	()V
    //   119: aload 4
    //   121: invokestatic 309	java/net/URI:create	(Ljava/lang/String;)Ljava/net/URI;
    //   124: astore 4
    //   126: aload 10
    //   128: aload 4
    //   130: aload_3
    //   131: invokevirtual 312	java/net/CookieManager:put	(Ljava/net/URI;Ljava/util/Map;)V
    //   134: aload 10
    //   136: invokevirtual 316	java/net/CookieManager:getCookieStore	()Ljava/net/CookieStore;
    //   139: aload 4
    //   141: invokeinterface 322 2 0
    //   146: astore 4
    //   148: aload 4
    //   150: invokestatic 326	a6/k:o	(Ljava/util/List;)Ljava/util/Map;
    //   153: astore 10
    //   155: aload 10
    //   157: aload_3
    //   158: invokestatic 329	com/xiaomi/accountsdk/utils/j:c	(Ljava/util/Map;)Ljava/util/Map;
    //   161: invokeinterface 332 2 0
    //   166: new 21	a6/k$g
    //   169: astore 11
    //   171: aload 11
    //   173: aload_2
    //   174: invokevirtual 336	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   177: invokespecial 339	a6/k$g:<init>	(Ljava/io/InputStream;)V
    //   180: aload 11
    //   182: aload 10
    //   184: invokevirtual 153	a6/k$d:f	(Ljava/util/Map;)V
    //   187: invokestatic 252	b6/d:a	()Lb6/c;
    //   190: aload 5
    //   192: ldc 254
    //   194: aload_0
    //   195: lload 6
    //   197: iload 9
    //   199: iconst_0
    //   200: invokeinterface 342 8 0
    //   205: aload 4
    //   207: invokestatic 347	b7/h:h	(Ljava/util/List;)V
    //   210: aload 8
    //   212: iload 9
    //   214: aload_3
    //   215: aload 4
    //   217: invokevirtual 350	com/xiaomi/accountsdk/utils/b$b:g	(ILjava/util/Map;Ljava/util/List;)Lcom/xiaomi/accountsdk/utils/b$b;
    //   220: pop
    //   221: aload 8
    //   223: invokestatic 355	com/xiaomi/accountsdk/utils/b:f	(Lcom/xiaomi/accountsdk/utils/b$b;)V
    //   226: aload 11
    //   228: areturn
    //   229: astore_2
    //   230: aload_1
    //   231: astore_3
    //   232: aload_2
    //   233: astore_1
    //   234: aload_3
    //   235: astore_2
    //   236: goto +259 -> 495
    //   239: astore_2
    //   240: aload_1
    //   241: astore_3
    //   242: goto +284 -> 526
    //   245: iload 9
    //   247: sipush 403
    //   250: if_icmpeq +210 -> 460
    //   253: iload 9
    //   255: sipush 401
    //   258: if_icmpeq +136 -> 394
    //   261: iload 9
    //   263: sipush 400
    //   266: if_icmpeq +128 -> 394
    //   269: iload 9
    //   271: sipush 301
    //   274: if_icmpne +83 -> 357
    //   277: new 119	java/io/IOException
    //   280: astore 4
    //   282: new 201	java/lang/StringBuilder
    //   285: astore_3
    //   286: aload_3
    //   287: invokespecial 202	java/lang/StringBuilder:<init>	()V
    //   290: aload_3
    //   291: ldc_w 357
    //   294: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   297: pop
    //   298: aload_3
    //   299: iload 9
    //   301: invokevirtual 360	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   304: pop
    //   305: aload_3
    //   306: ldc_w 362
    //   309: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   312: pop
    //   313: aload_3
    //   314: aload_2
    //   315: invokevirtual 366	java/net/URLConnection:getURL	()Ljava/net/URL;
    //   318: invokevirtual 371	java/net/URL:getHost	()Ljava/lang/String;
    //   321: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   324: pop
    //   325: aload_3
    //   326: ldc_w 373
    //   329: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   332: pop
    //   333: aload_3
    //   334: aload_2
    //   335: ldc_w 375
    //   338: invokevirtual 378	java/net/URLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   341: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   344: pop
    //   345: aload 4
    //   347: aload_3
    //   348: invokevirtual 217	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   351: invokespecial 126	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   354: aload 4
    //   356: athrow
    //   357: new 119	java/io/IOException
    //   360: astore_3
    //   361: new 201	java/lang/StringBuilder
    //   364: astore_2
    //   365: aload_2
    //   366: invokespecial 202	java/lang/StringBuilder:<init>	()V
    //   369: aload_2
    //   370: ldc_w 357
    //   373: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   376: pop
    //   377: aload_2
    //   378: iload 9
    //   380: invokevirtual 360	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   383: pop
    //   384: aload_3
    //   385: aload_2
    //   386: invokevirtual 217	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   389: invokespecial 126	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   392: aload_3
    //   393: athrow
    //   394: new 224	com/xiaomi/accountsdk/request/AuthenticationFailureException
    //   397: astore 4
    //   399: new 201	java/lang/StringBuilder
    //   402: astore_3
    //   403: aload_3
    //   404: invokespecial 202	java/lang/StringBuilder:<init>	()V
    //   407: aload_3
    //   408: ldc_w 380
    //   411: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   414: pop
    //   415: aload_3
    //   416: iload 9
    //   418: invokevirtual 360	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   421: pop
    //   422: aload 4
    //   424: iload 9
    //   426: aload_3
    //   427: invokevirtual 217	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   430: invokespecial 383	com/xiaomi/accountsdk/request/AuthenticationFailureException:<init>	(ILjava/lang/String;)V
    //   433: aload 4
    //   435: aload_2
    //   436: ldc_w 385
    //   439: invokevirtual 378	java/net/URLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   442: invokevirtual 388	com/xiaomi/accountsdk/request/AuthenticationFailureException:setWwwAuthenticateHeader	(Ljava/lang/String;)V
    //   445: aload 4
    //   447: aload_2
    //   448: ldc_w 390
    //   451: invokevirtual 378	java/net/URLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   454: invokevirtual 393	com/xiaomi/accountsdk/request/AuthenticationFailureException:setCaDisableSecondsHeader	(Ljava/lang/String;)V
    //   457: aload 4
    //   459: athrow
    //   460: new 222	com/xiaomi/accountsdk/request/AccessDeniedException
    //   463: astore_2
    //   464: aload_2
    //   465: iload 9
    //   467: ldc_w 395
    //   470: invokespecial 396	com/xiaomi/accountsdk/request/AccessDeniedException:<init>	(ILjava/lang/String;)V
    //   473: aload_2
    //   474: athrow
    //   475: new 119	java/io/IOException
    //   478: astore_1
    //   479: aload_1
    //   480: ldc_w 398
    //   483: invokespecial 126	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   486: aload_1
    //   487: athrow
    //   488: astore_0
    //   489: goto +74 -> 563
    //   492: astore_1
    //   493: aconst_null
    //   494: astore_2
    //   495: invokestatic 252	b6/d:a	()Lb6/c;
    //   498: aload 5
    //   500: ldc 254
    //   502: aload_0
    //   503: lload 6
    //   505: aload_1
    //   506: aload_2
    //   507: invokeinterface 401 8 0
    //   512: aload 8
    //   514: aload_1
    //   515: invokevirtual 404	com/xiaomi/accountsdk/utils/b$b:h	(Ljava/lang/Throwable;)Lcom/xiaomi/accountsdk/utils/b$b;
    //   518: pop
    //   519: aload_1
    //   520: athrow
    //   521: astore_1
    //   522: aconst_null
    //   523: astore_3
    //   524: aload_1
    //   525: astore_2
    //   526: invokestatic 252	b6/d:a	()Lb6/c;
    //   529: aload 5
    //   531: ldc 254
    //   533: aload_0
    //   534: lload 6
    //   536: aload_2
    //   537: aload_3
    //   538: invokeinterface 401 8 0
    //   543: aload 8
    //   545: aload_2
    //   546: invokevirtual 404	com/xiaomi/accountsdk/utils/b$b:h	(Ljava/lang/Throwable;)Lcom/xiaomi/accountsdk/utils/b$b;
    //   549: pop
    //   550: new 119	java/io/IOException
    //   553: astore_0
    //   554: aload_0
    //   555: ldc_w 406
    //   558: invokespecial 126	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   561: aload_0
    //   562: athrow
    //   563: aload 8
    //   565: invokestatic 355	com/xiaomi/accountsdk/utils/b:f	(Lcom/xiaomi/accountsdk/utils/b$b;)V
    //   568: aload_0
    //   569: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	570	0	paramString	String
    //   0	570	1	paramMap1	Map<String, String>
    //   0	570	2	paramMap2	Map<String, String>
    //   0	570	3	paramMap3	Map<String, String>
    //   8	450	4	localObject1	Object
    //   13	517	5	str	String
    //   18	517	6	l	long
    //   49	515	8	localb	com.xiaomi.accountsdk.utils.b.b
    //   88	378	9	i	int
    //   112	71	10	localObject2	Object
    //   169	58	11	localg	g
    // Exception table:
    //   from	to	target	type
    //   104	221	229	java/lang/Exception
    //   277	357	229	java/lang/Exception
    //   357	394	229	java/lang/Exception
    //   394	460	229	java/lang/Exception
    //   460	475	229	java/lang/Exception
    //   104	221	239	java/net/ProtocolException
    //   277	357	239	java/net/ProtocolException
    //   357	394	239	java/net/ProtocolException
    //   394	460	239	java/net/ProtocolException
    //   460	475	239	java/net/ProtocolException
    //   51	60	488	finally
    //   64	96	488	finally
    //   104	221	488	finally
    //   277	357	488	finally
    //   357	394	488	finally
    //   394	460	488	finally
    //   460	475	488	finally
    //   475	488	488	finally
    //   495	521	488	finally
    //   526	563	488	finally
    //   51	60	492	java/lang/Exception
    //   64	96	492	java/lang/Exception
    //   475	488	492	java/lang/Exception
    //   51	60	521	java/net/ProtocolException
    //   64	96	521	java/net/ProtocolException
    //   475	488	521	java/net/ProtocolException
  }
  
  public static h k(String paramString, Map<String, String> paramMap1, Map<String, String> paramMap2, Map<String, String> paramMap3, boolean paramBoolean, Integer paramInteger)
    throws IOException, AccessDeniedException, AuthenticationFailureException
  {
    return l(paramString, paramMap1, paramMap2, paramMap3, paramBoolean, paramInteger, null);
  }
  
  /* Error */
  public static h l(String paramString, Map<String, String> paramMap1, Map<String, String> paramMap2, Map<String, String> paramMap3, boolean paramBoolean, Integer paramInteger, h.c paramc)
    throws IOException, AccessDeniedException, AuthenticationFailureException
  {
    // Byte code:
    //   0: invokestatic 235	a6/k:c	()V
    //   3: aload_0
    //   4: aload_2
    //   5: aload 6
    //   7: invokestatic 419	a6/h:b	(Ljava/lang/String;Ljava/util/Map;La6/h$c;)Ljava/util/Map;
    //   10: astore_2
    //   11: aload_0
    //   12: aload_1
    //   13: invokestatic 237	a6/k:b	(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    //   16: astore 7
    //   18: invokestatic 241	com/xiaomi/phonenum/utils/d:a	()Ljava/lang/String;
    //   21: astore 8
    //   23: invokestatic 247	java/lang/System:currentTimeMillis	()J
    //   26: lstore 9
    //   28: invokestatic 252	b6/d:a	()Lb6/c;
    //   31: aload 8
    //   33: ldc 254
    //   35: aload_0
    //   36: invokeinterface 259 4 0
    //   41: new 261	com/xiaomi/accountsdk/utils/b$b
    //   44: dup
    //   45: aload 7
    //   47: ldc 254
    //   49: invokespecial 264	com/xiaomi/accountsdk/utils/b$b:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   52: aload_2
    //   53: aload_3
    //   54: invokevirtual 267	com/xiaomi/accountsdk/utils/b$b:e	(Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/accountsdk/utils/b$b;
    //   57: astore 11
    //   59: aconst_null
    //   60: astore_1
    //   61: aload 7
    //   63: aload_3
    //   64: aload_2
    //   65: aload 5
    //   67: invokestatic 271	a6/k:n	(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;)Ljava/net/HttpURLConnection;
    //   70: astore 5
    //   72: aload 5
    //   74: ifnull +790 -> 864
    //   77: aload 5
    //   79: astore_3
    //   80: aload 5
    //   82: iconst_1
    //   83: invokevirtual 277	java/net/URLConnection:setDoInput	(Z)V
    //   86: aload 5
    //   88: astore_3
    //   89: aload 5
    //   91: ldc 254
    //   93: invokevirtual 282	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   96: aload 5
    //   98: astore_3
    //   99: aload 5
    //   101: invokevirtual 288	java/net/URLConnection:connect	()V
    //   104: aload 5
    //   106: astore_3
    //   107: aload 5
    //   109: invokevirtual 291	java/net/HttpURLConnection:getResponseCode	()I
    //   112: istore 12
    //   114: aload 5
    //   116: astore_3
    //   117: iload 12
    //   119: invokestatic 297	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   122: astore_2
    //   123: aload 5
    //   125: astore_3
    //   126: invokestatic 424	com/xiaomi/accountsdk/utils/o:a	()Lcom/xiaomi/accountsdk/utils/o$a;
    //   129: astore_1
    //   130: aload_1
    //   131: ifnull +39 -> 170
    //   134: aload 5
    //   136: astore_3
    //   137: aload 5
    //   139: ldc_w 426
    //   142: invokevirtual 378	java/net/URLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   145: astore_1
    //   146: aload_1
    //   147: ifnull +23 -> 170
    //   150: aload 5
    //   152: astore_3
    //   153: invokestatic 424	com/xiaomi/accountsdk/utils/o:a	()Lcom/xiaomi/accountsdk/utils/o$a;
    //   156: aload_0
    //   157: aload_1
    //   158: invokeinterface 430 3 0
    //   163: goto +7 -> 170
    //   166: astore_1
    //   167: goto +729 -> 896
    //   170: iload 12
    //   172: sipush 200
    //   175: if_icmpeq +347 -> 522
    //   178: iload 12
    //   180: sipush 302
    //   183: if_icmpne +6 -> 189
    //   186: goto +336 -> 522
    //   189: iload 12
    //   191: sipush 403
    //   194: if_icmpeq +304 -> 498
    //   197: iload 12
    //   199: sipush 401
    //   202: if_icmpeq +201 -> 403
    //   205: iload 12
    //   207: sipush 400
    //   210: if_icmpeq +193 -> 403
    //   213: iload 12
    //   215: sipush 301
    //   218: if_icmpne +124 -> 342
    //   221: aload 5
    //   223: astore_3
    //   224: new 119	java/io/IOException
    //   227: astore_1
    //   228: aload 5
    //   230: astore_3
    //   231: new 201	java/lang/StringBuilder
    //   234: astore 6
    //   236: aload 5
    //   238: astore_3
    //   239: aload 6
    //   241: invokespecial 202	java/lang/StringBuilder:<init>	()V
    //   244: aload 5
    //   246: astore_3
    //   247: aload 6
    //   249: ldc_w 357
    //   252: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: pop
    //   256: aload 5
    //   258: astore_3
    //   259: aload 6
    //   261: iload 12
    //   263: invokevirtual 360	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   266: pop
    //   267: aload 5
    //   269: astore_3
    //   270: aload 6
    //   272: ldc_w 362
    //   275: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   278: pop
    //   279: aload 5
    //   281: astore_3
    //   282: aload 6
    //   284: aload 5
    //   286: invokevirtual 366	java/net/URLConnection:getURL	()Ljava/net/URL;
    //   289: invokevirtual 371	java/net/URL:getHost	()Ljava/lang/String;
    //   292: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   295: pop
    //   296: aload 5
    //   298: astore_3
    //   299: aload 6
    //   301: ldc_w 373
    //   304: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   307: pop
    //   308: aload 5
    //   310: astore_3
    //   311: aload 6
    //   313: aload 5
    //   315: ldc_w 375
    //   318: invokevirtual 378	java/net/URLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   321: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   324: pop
    //   325: aload 5
    //   327: astore_3
    //   328: aload_1
    //   329: aload 6
    //   331: invokevirtual 217	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   334: invokespecial 126	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   337: aload 5
    //   339: astore_3
    //   340: aload_1
    //   341: athrow
    //   342: aload 5
    //   344: astore_3
    //   345: new 119	java/io/IOException
    //   348: astore 6
    //   350: aload 5
    //   352: astore_3
    //   353: new 201	java/lang/StringBuilder
    //   356: astore_1
    //   357: aload 5
    //   359: astore_3
    //   360: aload_1
    //   361: invokespecial 202	java/lang/StringBuilder:<init>	()V
    //   364: aload 5
    //   366: astore_3
    //   367: aload_1
    //   368: ldc_w 357
    //   371: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   374: pop
    //   375: aload 5
    //   377: astore_3
    //   378: aload_1
    //   379: iload 12
    //   381: invokevirtual 360	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   384: pop
    //   385: aload 5
    //   387: astore_3
    //   388: aload 6
    //   390: aload_1
    //   391: invokevirtual 217	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   394: invokespecial 126	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   397: aload 5
    //   399: astore_3
    //   400: aload 6
    //   402: athrow
    //   403: aload 5
    //   405: astore_3
    //   406: new 224	com/xiaomi/accountsdk/request/AuthenticationFailureException
    //   409: astore_1
    //   410: aload 5
    //   412: astore_3
    //   413: new 201	java/lang/StringBuilder
    //   416: astore 6
    //   418: aload 5
    //   420: astore_3
    //   421: aload 6
    //   423: invokespecial 202	java/lang/StringBuilder:<init>	()V
    //   426: aload 5
    //   428: astore_3
    //   429: aload 6
    //   431: ldc_w 380
    //   434: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   437: pop
    //   438: aload 5
    //   440: astore_3
    //   441: aload 6
    //   443: iload 12
    //   445: invokevirtual 360	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   448: pop
    //   449: aload 5
    //   451: astore_3
    //   452: aload_1
    //   453: iload 12
    //   455: aload 6
    //   457: invokevirtual 217	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   460: invokespecial 383	com/xiaomi/accountsdk/request/AuthenticationFailureException:<init>	(ILjava/lang/String;)V
    //   463: aload 5
    //   465: astore_3
    //   466: aload_1
    //   467: aload 5
    //   469: ldc_w 385
    //   472: invokevirtual 378	java/net/URLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   475: invokevirtual 388	com/xiaomi/accountsdk/request/AuthenticationFailureException:setWwwAuthenticateHeader	(Ljava/lang/String;)V
    //   478: aload 5
    //   480: astore_3
    //   481: aload_1
    //   482: aload 5
    //   484: ldc_w 390
    //   487: invokevirtual 378	java/net/URLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   490: invokevirtual 393	com/xiaomi/accountsdk/request/AuthenticationFailureException:setCaDisableSecondsHeader	(Ljava/lang/String;)V
    //   493: aload 5
    //   495: astore_3
    //   496: aload_1
    //   497: athrow
    //   498: aload 5
    //   500: astore_3
    //   501: new 222	com/xiaomi/accountsdk/request/AccessDeniedException
    //   504: astore_1
    //   505: aload 5
    //   507: astore_3
    //   508: aload_1
    //   509: iload 12
    //   511: ldc_w 395
    //   514: invokespecial 396	com/xiaomi/accountsdk/request/AccessDeniedException:<init>	(ILjava/lang/String;)V
    //   517: aload 5
    //   519: astore_3
    //   520: aload_1
    //   521: athrow
    //   522: aload 5
    //   524: astore_3
    //   525: aload 5
    //   527: invokevirtual 300	java/net/URLConnection:getHeaderFields	()Ljava/util/Map;
    //   530: astore_1
    //   531: aload 5
    //   533: astore_3
    //   534: new 302	java/net/CookieManager
    //   537: astore 13
    //   539: aload 5
    //   541: astore_3
    //   542: aload 13
    //   544: invokespecial 303	java/net/CookieManager:<init>	()V
    //   547: aload 5
    //   549: astore_3
    //   550: aload 7
    //   552: invokestatic 309	java/net/URI:create	(Ljava/lang/String;)Ljava/net/URI;
    //   555: astore 7
    //   557: aload 5
    //   559: astore_3
    //   560: aload 13
    //   562: aload 7
    //   564: aload_1
    //   565: invokevirtual 312	java/net/CookieManager:put	(Ljava/net/URI;Ljava/util/Map;)V
    //   568: aload 5
    //   570: astore_3
    //   571: aload 13
    //   573: invokevirtual 316	java/net/CookieManager:getCookieStore	()Ljava/net/CookieStore;
    //   576: aload 7
    //   578: invokeinterface 322 2 0
    //   583: astore 7
    //   585: aload 5
    //   587: astore_3
    //   588: aload 7
    //   590: invokestatic 326	a6/k:o	(Ljava/util/List;)Ljava/util/Map;
    //   593: astore 13
    //   595: aload 5
    //   597: astore_3
    //   598: new 201	java/lang/StringBuilder
    //   601: astore 14
    //   603: aload 5
    //   605: astore_3
    //   606: aload 14
    //   608: invokespecial 202	java/lang/StringBuilder:<init>	()V
    //   611: iload 4
    //   613: ifeq +90 -> 703
    //   616: aload 5
    //   618: astore_3
    //   619: new 432	java/io/BufferedReader
    //   622: astore 15
    //   624: aload 5
    //   626: astore_3
    //   627: new 434	java/io/InputStreamReader
    //   630: astore 16
    //   632: aload 5
    //   634: astore_3
    //   635: aload 16
    //   637: aload 5
    //   639: invokevirtual 336	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   642: invokespecial 435	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   645: aload 5
    //   647: astore_3
    //   648: aload 15
    //   650: aload 16
    //   652: sipush 1024
    //   655: invokespecial 438	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   658: aload 15
    //   660: invokevirtual 441	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   663: astore_3
    //   664: aload_3
    //   665: ifnull +13 -> 678
    //   668: aload 14
    //   670: aload_3
    //   671: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   674: pop
    //   675: goto -17 -> 658
    //   678: aload 5
    //   680: astore_3
    //   681: aload 15
    //   683: invokestatic 446	com/xiaomi/accountsdk/utils/g:c	(Ljava/io/Reader;)V
    //   686: goto +17 -> 703
    //   689: astore_1
    //   690: aload 5
    //   692: astore_3
    //   693: aload 15
    //   695: invokestatic 446	com/xiaomi/accountsdk/utils/g:c	(Ljava/io/Reader;)V
    //   698: aload 5
    //   700: astore_3
    //   701: aload_1
    //   702: athrow
    //   703: aload 5
    //   705: astore_3
    //   706: aload 14
    //   708: invokevirtual 217	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   711: astore 15
    //   713: aload 5
    //   715: astore_3
    //   716: new 24	a6/k$h
    //   719: astore 14
    //   721: aload 5
    //   723: astore_3
    //   724: aload 14
    //   726: aload 15
    //   728: invokespecial 447	a6/k$h:<init>	(Ljava/lang/String;)V
    //   731: aload 5
    //   733: astore_3
    //   734: aload 14
    //   736: aload 13
    //   738: invokevirtual 449	a6/k$d:e	(Ljava/util/Map;)V
    //   741: aload 5
    //   743: astore_3
    //   744: aload 14
    //   746: aload_1
    //   747: invokestatic 329	com/xiaomi/accountsdk/utils/j:c	(Ljava/util/Map;)Ljava/util/Map;
    //   750: invokevirtual 153	a6/k$d:f	(Ljava/util/Map;)V
    //   753: aload 5
    //   755: astore_3
    //   756: aload 14
    //   758: iload 12
    //   760: invokevirtual 452	a6/k$d:g	(I)V
    //   763: aload 5
    //   765: astore_3
    //   766: aload_0
    //   767: aload 14
    //   769: aload 6
    //   771: invokestatic 455	a6/h:a	(Ljava/lang/String;La6/k$h;La6/h$c;)V
    //   774: aload 5
    //   776: astore_3
    //   777: invokestatic 252	b6/d:a	()Lb6/c;
    //   780: astore 6
    //   782: aload 5
    //   784: astore_3
    //   785: aload 15
    //   787: invokevirtual 456	java/lang/String:length	()I
    //   790: istore 17
    //   792: aload 5
    //   794: astore_3
    //   795: aload 6
    //   797: aload 8
    //   799: ldc 254
    //   801: aload_0
    //   802: lload 9
    //   804: iload 12
    //   806: iload 17
    //   808: invokeinterface 342 8 0
    //   813: aload 5
    //   815: astore_3
    //   816: aload 7
    //   818: invokestatic 347	b7/h:h	(Ljava/util/List;)V
    //   821: aload 5
    //   823: astore_3
    //   824: aload 11
    //   826: iload 12
    //   828: aload 15
    //   830: aload_1
    //   831: aload 7
    //   833: invokevirtual 459	com/xiaomi/accountsdk/utils/b$b:f	(ILjava/lang/String;Ljava/util/Map;Ljava/util/List;)Lcom/xiaomi/accountsdk/utils/b$b;
    //   836: pop
    //   837: aload 5
    //   839: invokevirtual 462	java/net/HttpURLConnection:disconnect	()V
    //   842: aload 11
    //   844: invokestatic 355	com/xiaomi/accountsdk/utils/b:f	(Lcom/xiaomi/accountsdk/utils/b$b;)V
    //   847: aload 14
    //   849: areturn
    //   850: astore_1
    //   851: goto +4 -> 855
    //   854: astore_1
    //   855: goto +41 -> 896
    //   858: astore_1
    //   859: aconst_null
    //   860: astore_2
    //   861: goto +35 -> 896
    //   864: aload 5
    //   866: astore_3
    //   867: new 119	java/io/IOException
    //   870: astore_1
    //   871: aload 5
    //   873: astore_3
    //   874: aload_1
    //   875: ldc_w 398
    //   878: invokespecial 126	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   881: aload 5
    //   883: astore_3
    //   884: aload_1
    //   885: athrow
    //   886: astore_0
    //   887: goto +47 -> 934
    //   890: astore_1
    //   891: aconst_null
    //   892: astore_2
    //   893: aload_2
    //   894: astore 5
    //   896: aload 5
    //   898: astore_3
    //   899: invokestatic 252	b6/d:a	()Lb6/c;
    //   902: aload 8
    //   904: ldc 254
    //   906: aload_0
    //   907: lload 9
    //   909: aload_1
    //   910: aload_2
    //   911: invokeinterface 401 8 0
    //   916: aload 5
    //   918: astore_3
    //   919: aload 11
    //   921: aload_1
    //   922: invokevirtual 404	com/xiaomi/accountsdk/utils/b$b:h	(Ljava/lang/Throwable;)Lcom/xiaomi/accountsdk/utils/b$b;
    //   925: pop
    //   926: aload 5
    //   928: astore_3
    //   929: aload_1
    //   930: athrow
    //   931: astore_0
    //   932: aload_3
    //   933: astore_1
    //   934: aload_1
    //   935: ifnull +7 -> 942
    //   938: aload_1
    //   939: invokevirtual 462	java/net/HttpURLConnection:disconnect	()V
    //   942: aload 11
    //   944: invokestatic 355	com/xiaomi/accountsdk/utils/b:f	(Lcom/xiaomi/accountsdk/utils/b$b;)V
    //   947: aload_0
    //   948: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	949	0	paramString	String
    //   0	949	1	paramMap1	Map<String, String>
    //   0	949	2	paramMap2	Map<String, String>
    //   0	949	3	paramMap3	Map<String, String>
    //   0	949	4	paramBoolean	boolean
    //   0	949	5	paramInteger	Integer
    //   0	949	6	paramc	h.c
    //   16	816	7	localObject1	Object
    //   21	882	8	str	String
    //   26	882	9	l	long
    //   57	886	11	localb	com.xiaomi.accountsdk.utils.b.b
    //   112	715	12	i	int
    //   537	200	13	localObject2	Object
    //   601	247	14	localObject3	Object
    //   622	207	15	localObject4	Object
    //   630	21	16	localInputStreamReader	java.io.InputStreamReader
    //   790	17	17	j	int
    // Exception table:
    //   from	to	target	type
    //   137	146	166	java/lang/Exception
    //   153	163	166	java/lang/Exception
    //   224	228	166	java/lang/Exception
    //   231	236	166	java/lang/Exception
    //   239	244	166	java/lang/Exception
    //   247	256	166	java/lang/Exception
    //   259	267	166	java/lang/Exception
    //   270	279	166	java/lang/Exception
    //   282	296	166	java/lang/Exception
    //   299	308	166	java/lang/Exception
    //   311	325	166	java/lang/Exception
    //   328	337	166	java/lang/Exception
    //   340	342	166	java/lang/Exception
    //   345	350	166	java/lang/Exception
    //   353	357	166	java/lang/Exception
    //   360	364	166	java/lang/Exception
    //   367	375	166	java/lang/Exception
    //   378	385	166	java/lang/Exception
    //   388	397	166	java/lang/Exception
    //   400	403	166	java/lang/Exception
    //   406	410	166	java/lang/Exception
    //   413	418	166	java/lang/Exception
    //   421	426	166	java/lang/Exception
    //   429	438	166	java/lang/Exception
    //   441	449	166	java/lang/Exception
    //   452	463	166	java/lang/Exception
    //   466	478	166	java/lang/Exception
    //   481	493	166	java/lang/Exception
    //   496	498	166	java/lang/Exception
    //   501	505	166	java/lang/Exception
    //   508	517	166	java/lang/Exception
    //   520	522	166	java/lang/Exception
    //   619	624	166	java/lang/Exception
    //   627	632	166	java/lang/Exception
    //   635	645	166	java/lang/Exception
    //   648	658	166	java/lang/Exception
    //   681	686	166	java/lang/Exception
    //   693	698	166	java/lang/Exception
    //   701	703	166	java/lang/Exception
    //   658	664	689	finally
    //   668	675	689	finally
    //   795	813	850	java/lang/Exception
    //   816	821	850	java/lang/Exception
    //   824	837	850	java/lang/Exception
    //   126	130	854	java/lang/Exception
    //   525	531	854	java/lang/Exception
    //   534	539	854	java/lang/Exception
    //   542	547	854	java/lang/Exception
    //   550	557	854	java/lang/Exception
    //   560	568	854	java/lang/Exception
    //   571	585	854	java/lang/Exception
    //   588	595	854	java/lang/Exception
    //   598	603	854	java/lang/Exception
    //   606	611	854	java/lang/Exception
    //   706	713	854	java/lang/Exception
    //   716	721	854	java/lang/Exception
    //   724	731	854	java/lang/Exception
    //   734	741	854	java/lang/Exception
    //   744	753	854	java/lang/Exception
    //   756	763	854	java/lang/Exception
    //   766	774	854	java/lang/Exception
    //   777	782	854	java/lang/Exception
    //   785	792	854	java/lang/Exception
    //   80	86	858	java/lang/Exception
    //   89	96	858	java/lang/Exception
    //   99	104	858	java/lang/Exception
    //   107	114	858	java/lang/Exception
    //   117	123	858	java/lang/Exception
    //   867	871	858	java/lang/Exception
    //   874	881	858	java/lang/Exception
    //   884	886	858	java/lang/Exception
    //   61	72	886	finally
    //   61	72	890	java/lang/Exception
    //   80	86	931	finally
    //   89	96	931	finally
    //   99	104	931	finally
    //   107	114	931	finally
    //   117	123	931	finally
    //   126	130	931	finally
    //   137	146	931	finally
    //   153	163	931	finally
    //   224	228	931	finally
    //   231	236	931	finally
    //   239	244	931	finally
    //   247	256	931	finally
    //   259	267	931	finally
    //   270	279	931	finally
    //   282	296	931	finally
    //   299	308	931	finally
    //   311	325	931	finally
    //   328	337	931	finally
    //   340	342	931	finally
    //   345	350	931	finally
    //   353	357	931	finally
    //   360	364	931	finally
    //   367	375	931	finally
    //   378	385	931	finally
    //   388	397	931	finally
    //   400	403	931	finally
    //   406	410	931	finally
    //   413	418	931	finally
    //   421	426	931	finally
    //   429	438	931	finally
    //   441	449	931	finally
    //   452	463	931	finally
    //   466	478	931	finally
    //   481	493	931	finally
    //   496	498	931	finally
    //   501	505	931	finally
    //   508	517	931	finally
    //   520	522	931	finally
    //   525	531	931	finally
    //   534	539	931	finally
    //   542	547	931	finally
    //   550	557	931	finally
    //   560	568	931	finally
    //   571	585	931	finally
    //   588	595	931	finally
    //   598	603	931	finally
    //   606	611	931	finally
    //   619	624	931	finally
    //   627	632	931	finally
    //   635	645	931	finally
    //   648	658	931	finally
    //   681	686	931	finally
    //   693	698	931	finally
    //   701	703	931	finally
    //   706	713	931	finally
    //   716	721	931	finally
    //   724	731	931	finally
    //   734	741	931	finally
    //   744	753	931	finally
    //   756	763	931	finally
    //   766	774	931	finally
    //   777	782	931	finally
    //   785	792	931	finally
    //   795	813	931	finally
    //   816	821	931	finally
    //   824	837	931	finally
    //   867	871	931	finally
    //   874	881	931	finally
    //   884	886	931	finally
    //   899	916	931	finally
    //   919	926	931	finally
    //   929	931	931	finally
  }
  
  protected static String m(Map<String, String> paramMap, String paramString)
  {
    if (paramMap == null) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Map.Entry)localIterator.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append(paramString);
      }
      paramMap = (String)((Map.Entry)localObject).getKey();
      localObject = (String)((Map.Entry)localObject).getValue();
      localStringBuilder.append(paramMap);
      localStringBuilder.append("=");
      localStringBuilder.append((String)localObject);
    }
    return localStringBuilder.toString();
  }
  
  protected static HttpURLConnection n(String paramString, Map<String, String> paramMap1, Map<String, String> paramMap2, Integer paramInteger)
  {
    try
    {
      localObject = new java/net/URL;
      ((URL)localObject).<init>(paramString);
      paramString = (String)localObject;
    }
    catch (MalformedURLException paramString)
    {
      paramString.printStackTrace();
      paramString = null;
    }
    if (paramString == null)
    {
      b.g("SimpleRequest", "failed to init url");
      return null;
    }
    Object localObject = paramInteger;
    if (paramInteger == null) {
      localObject = Integer.valueOf(30000);
    }
    try
    {
      CookieHandler.setDefault(null);
      paramInteger = c.a(paramString);
      int i = 0;
      paramInteger.setInstanceFollowRedirects(false);
      paramInteger.setConnectTimeout(((Integer)localObject).intValue());
      paramInteger.setReadTimeout(((Integer)localObject).intValue());
      paramInteger.setUseCaches(false);
      paramInteger.setRequestProperty("Content-Type", i.a(paramMap2, "application/x-www-form-urlencoded"));
      if ((paramMap2 == null) || (TextUtils.isEmpty((CharSequence)paramMap2.get("User-Agent")))) {
        i = 1;
      }
      if ((i != 0) && (!TextUtils.isEmpty(e.f()))) {
        paramInteger.setRequestProperty("User-Agent", e.f());
      }
      paramString = paramMap1;
      if (paramMap1 == null)
      {
        paramString = new com/xiaomi/accountsdk/utils/EasyMap;
        paramString.<init>();
      }
      paramInteger.setRequestProperty("Cookie", m(paramString, "; "));
      if (paramMap2 != null)
      {
        paramMap1 = paramMap2.keySet().iterator();
        while (paramMap1.hasNext())
        {
          paramString = (String)paramMap1.next();
          paramInteger.setRequestProperty(paramString, (String)paramMap2.get(paramString));
        }
      }
      return paramInteger;
    }
    catch (Exception paramString)
    {
      b.i("SimpleRequest", paramString);
    }
    return null;
  }
  
  protected static Map<String, String> o(List<HttpCookie> paramList)
  {
    HashMap localHashMap = new HashMap();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Object localObject = (HttpCookie)paramList.next();
      if (!((HttpCookie)localObject).hasExpired())
      {
        String str = ((HttpCookie)localObject).getName();
        localObject = ((HttpCookie)localObject).getValue();
        if (str != null) {
          localHashMap.put(str, localObject);
        }
      }
    }
    return localHashMap;
  }
  
  /* Error */
  public static h p(String paramString1, String paramString2, Map<String, String> paramMap1, Map<String, String> paramMap2, Map<String, String> paramMap3, boolean paramBoolean, Integer paramInteger, h.c paramc)
    throws IOException, AccessDeniedException, AuthenticationFailureException
  {
    // Byte code:
    //   0: invokestatic 235	a6/k:c	()V
    //   3: aload_0
    //   4: aload_3
    //   5: aload 7
    //   7: invokestatic 419	a6/h:b	(Ljava/lang/String;Ljava/util/Map;La6/h$c;)Ljava/util/Map;
    //   10: astore 8
    //   12: aload 4
    //   14: ifnull +14 -> 28
    //   17: aload_0
    //   18: aload 4
    //   20: invokestatic 237	a6/k:b	(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    //   23: astore 4
    //   25: goto +6 -> 31
    //   28: aload_0
    //   29: astore 4
    //   31: invokestatic 241	com/xiaomi/phonenum/utils/d:a	()Ljava/lang/String;
    //   34: astore 9
    //   36: invokestatic 247	java/lang/System:currentTimeMillis	()J
    //   39: lstore 10
    //   41: invokestatic 252	b6/d:a	()Lb6/c;
    //   44: aload 9
    //   46: ldc_w 550
    //   49: aload_0
    //   50: invokeinterface 259 4 0
    //   55: new 261	com/xiaomi/accountsdk/utils/b$b
    //   58: dup
    //   59: aload 4
    //   61: ldc_w 550
    //   64: invokespecial 264	com/xiaomi/accountsdk/utils/b$b:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   67: aload 8
    //   69: aload_2
    //   70: invokevirtual 267	com/xiaomi/accountsdk/utils/b$b:e	(Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/accountsdk/utils/b$b;
    //   73: astore 12
    //   75: aload 4
    //   77: aload_2
    //   78: aload 8
    //   80: aload 6
    //   82: invokestatic 271	a6/k:n	(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;)Ljava/net/HttpURLConnection;
    //   85: astore_3
    //   86: aload_3
    //   87: ifnull +856 -> 943
    //   90: aload_3
    //   91: iconst_1
    //   92: invokevirtual 277	java/net/URLConnection:setDoInput	(Z)V
    //   95: aload_3
    //   96: iconst_1
    //   97: invokevirtual 553	java/net/URLConnection:setDoOutput	(Z)V
    //   100: aload_3
    //   101: ldc_w 550
    //   104: invokevirtual 282	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   107: aload_3
    //   108: invokevirtual 288	java/net/URLConnection:connect	()V
    //   111: aload_1
    //   112: invokestatic 178	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   115: istore 13
    //   117: iload 13
    //   119: ifne +62 -> 181
    //   122: aload 12
    //   124: aload_1
    //   125: invokevirtual 556	com/xiaomi/accountsdk/utils/b$b:d	(Ljava/lang/String;)Lcom/xiaomi/accountsdk/utils/b$b;
    //   128: pop
    //   129: aload_3
    //   130: invokevirtual 560	java/net/URLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   133: astore 6
    //   135: new 562	java/io/BufferedOutputStream
    //   138: astore_2
    //   139: aload_2
    //   140: aload 6
    //   142: invokespecial 565	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   145: aload_2
    //   146: aload_1
    //   147: ldc 158
    //   149: invokevirtual 569	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   152: invokevirtual 575	java/io/OutputStream:write	([B)V
    //   155: aload_2
    //   156: invokestatic 577	com/xiaomi/accountsdk/utils/g:b	(Ljava/io/OutputStream;)V
    //   159: goto +22 -> 181
    //   162: astore_1
    //   163: aload_2
    //   164: invokestatic 577	com/xiaomi/accountsdk/utils/g:b	(Ljava/io/OutputStream;)V
    //   167: aload_1
    //   168: athrow
    //   169: astore_1
    //   170: aconst_null
    //   171: astore_2
    //   172: goto +812 -> 984
    //   175: astore_1
    //   176: aconst_null
    //   177: astore_2
    //   178: goto +847 -> 1025
    //   181: aload_3
    //   182: invokevirtual 291	java/net/HttpURLConnection:getResponseCode	()I
    //   185: istore 14
    //   187: iload 14
    //   189: invokestatic 297	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   192: astore_1
    //   193: iload 14
    //   195: sipush 200
    //   198: if_icmpeq +247 -> 445
    //   201: iload 14
    //   203: sipush 302
    //   206: if_icmpne +6 -> 212
    //   209: goto +236 -> 445
    //   212: iload 14
    //   214: sipush 403
    //   217: if_icmpeq +213 -> 430
    //   220: iload 14
    //   222: sipush 401
    //   225: if_icmpeq +139 -> 364
    //   228: iload 14
    //   230: sipush 400
    //   233: if_icmpeq +131 -> 364
    //   236: iload 14
    //   238: sipush 301
    //   241: if_icmpne +83 -> 324
    //   244: new 119	java/io/IOException
    //   247: astore 4
    //   249: new 201	java/lang/StringBuilder
    //   252: astore_2
    //   253: aload_2
    //   254: invokespecial 202	java/lang/StringBuilder:<init>	()V
    //   257: aload_2
    //   258: ldc_w 579
    //   261: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: pop
    //   265: aload_2
    //   266: iload 14
    //   268: invokevirtual 360	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   271: pop
    //   272: aload_2
    //   273: ldc_w 362
    //   276: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   279: pop
    //   280: aload_2
    //   281: aload_3
    //   282: invokevirtual 366	java/net/URLConnection:getURL	()Ljava/net/URL;
    //   285: invokevirtual 371	java/net/URL:getHost	()Ljava/lang/String;
    //   288: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   291: pop
    //   292: aload_2
    //   293: ldc_w 373
    //   296: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   299: pop
    //   300: aload_2
    //   301: aload_3
    //   302: ldc_w 375
    //   305: invokevirtual 378	java/net/URLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   308: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   311: pop
    //   312: aload 4
    //   314: aload_2
    //   315: invokevirtual 217	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   318: invokespecial 126	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   321: aload 4
    //   323: athrow
    //   324: new 119	java/io/IOException
    //   327: astore 4
    //   329: new 201	java/lang/StringBuilder
    //   332: astore_2
    //   333: aload_2
    //   334: invokespecial 202	java/lang/StringBuilder:<init>	()V
    //   337: aload_2
    //   338: ldc_w 579
    //   341: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   344: pop
    //   345: aload_2
    //   346: iload 14
    //   348: invokevirtual 360	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   351: pop
    //   352: aload 4
    //   354: aload_2
    //   355: invokevirtual 217	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   358: invokespecial 126	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   361: aload 4
    //   363: athrow
    //   364: new 224	com/xiaomi/accountsdk/request/AuthenticationFailureException
    //   367: astore 4
    //   369: new 201	java/lang/StringBuilder
    //   372: astore_2
    //   373: aload_2
    //   374: invokespecial 202	java/lang/StringBuilder:<init>	()V
    //   377: aload_2
    //   378: ldc_w 581
    //   381: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   384: pop
    //   385: aload_2
    //   386: iload 14
    //   388: invokevirtual 360	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   391: pop
    //   392: aload 4
    //   394: iload 14
    //   396: aload_2
    //   397: invokevirtual 217	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   400: invokespecial 383	com/xiaomi/accountsdk/request/AuthenticationFailureException:<init>	(ILjava/lang/String;)V
    //   403: aload 4
    //   405: aload_3
    //   406: ldc_w 385
    //   409: invokevirtual 378	java/net/URLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   412: invokevirtual 388	com/xiaomi/accountsdk/request/AuthenticationFailureException:setWwwAuthenticateHeader	(Ljava/lang/String;)V
    //   415: aload 4
    //   417: aload_3
    //   418: ldc_w 390
    //   421: invokevirtual 378	java/net/URLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   424: invokevirtual 393	com/xiaomi/accountsdk/request/AuthenticationFailureException:setCaDisableSecondsHeader	(Ljava/lang/String;)V
    //   427: aload 4
    //   429: athrow
    //   430: new 222	com/xiaomi/accountsdk/request/AccessDeniedException
    //   433: astore_2
    //   434: aload_2
    //   435: iload 14
    //   437: ldc_w 395
    //   440: invokespecial 396	com/xiaomi/accountsdk/request/AccessDeniedException:<init>	(ILjava/lang/String;)V
    //   443: aload_2
    //   444: athrow
    //   445: aload_3
    //   446: invokevirtual 300	java/net/URLConnection:getHeaderFields	()Ljava/util/Map;
    //   449: astore 15
    //   451: new 583	java/util/ArrayList
    //   454: astore 6
    //   456: aload 6
    //   458: invokespecial 584	java/util/ArrayList:<init>	()V
    //   461: aload 4
    //   463: invokestatic 309	java/net/URI:create	(Ljava/lang/String;)Ljava/net/URI;
    //   466: astore_2
    //   467: aload_2
    //   468: invokevirtual 585	java/net/URI:getHost	()Ljava/lang/String;
    //   471: astore 16
    //   473: new 587	java/util/HashSet
    //   476: astore 17
    //   478: aload 17
    //   480: invokespecial 588	java/util/HashSet:<init>	()V
    //   483: aload 17
    //   485: aload 16
    //   487: invokevirtual 592	java/util/HashSet:add	(Ljava/lang/Object;)Z
    //   490: pop
    //   491: aload 8
    //   493: ifnull +35 -> 528
    //   496: aload 8
    //   498: ldc_w 594
    //   501: invokeinterface 597 2 0
    //   506: ifeq +22 -> 528
    //   509: aload 17
    //   511: aload 8
    //   513: ldc_w 594
    //   516: invokeinterface 512 2 0
    //   521: checkcast 91	java/lang/String
    //   524: invokevirtual 592	java/util/HashSet:add	(Ljava/lang/Object;)Z
    //   527: pop
    //   528: new 10	a6/k$c
    //   531: astore 18
    //   533: aload 18
    //   535: aload 17
    //   537: invokespecial 600	a6/k$c:<init>	(Ljava/util/HashSet;)V
    //   540: new 302	java/net/CookieManager
    //   543: astore 8
    //   545: aload 8
    //   547: aconst_null
    //   548: aload 18
    //   550: invokespecial 603	java/net/CookieManager:<init>	(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V
    //   553: aload 8
    //   555: aload_2
    //   556: aload 15
    //   558: invokevirtual 312	java/net/CookieManager:put	(Ljava/net/URI;Ljava/util/Map;)V
    //   561: new 172	java/util/HashMap
    //   564: astore_2
    //   565: aload_2
    //   566: invokespecial 173	java/util/HashMap:<init>	()V
    //   569: aload 8
    //   571: invokevirtual 316	java/net/CookieManager:getCookieStore	()Ljava/net/CookieStore;
    //   574: astore 8
    //   576: aload 17
    //   578: invokevirtual 604	java/util/HashSet:iterator	()Ljava/util/Iterator;
    //   581: astore 17
    //   583: aload 17
    //   585: invokeinterface 80 1 0
    //   590: istore 13
    //   592: iload 13
    //   594: ifeq +63 -> 657
    //   597: aload 6
    //   599: aload 8
    //   601: aload 4
    //   603: aload 16
    //   605: aload 17
    //   607: invokeinterface 84 1 0
    //   612: checkcast 91	java/lang/String
    //   615: invokevirtual 607	java/lang/String:replaceFirst	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   618: invokestatic 309	java/net/URI:create	(Ljava/lang/String;)Ljava/net/URI;
    //   621: invokeinterface 322 2 0
    //   626: invokeinterface 611 2 0
    //   631: pop
    //   632: goto -49 -> 583
    //   635: astore_2
    //   636: aload_1
    //   637: astore 4
    //   639: aload_2
    //   640: astore_1
    //   641: aload 4
    //   643: astore_2
    //   644: goto +340 -> 984
    //   647: astore 4
    //   649: aload_1
    //   650: astore_2
    //   651: aload 4
    //   653: astore_1
    //   654: goto +371 -> 1025
    //   657: aload 6
    //   659: invokestatic 326	a6/k:o	(Ljava/util/List;)Ljava/util/Map;
    //   662: astore 8
    //   664: aload 8
    //   666: ifnull +11 -> 677
    //   669: aload_2
    //   670: aload 8
    //   672: invokeinterface 332 2 0
    //   677: new 201	java/lang/StringBuilder
    //   680: astore 16
    //   682: aload 16
    //   684: invokespecial 202	java/lang/StringBuilder:<init>	()V
    //   687: iload 5
    //   689: ifeq +71 -> 760
    //   692: new 432	java/io/BufferedReader
    //   695: astore 8
    //   697: new 434	java/io/InputStreamReader
    //   700: astore 17
    //   702: aload 17
    //   704: aload_3
    //   705: invokevirtual 336	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   708: invokespecial 435	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   711: aload 8
    //   713: aload 17
    //   715: sipush 1024
    //   718: invokespecial 438	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   721: aload 8
    //   723: invokevirtual 441	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   726: astore 17
    //   728: aload 17
    //   730: ifnull +14 -> 744
    //   733: aload 16
    //   735: aload 17
    //   737: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   740: pop
    //   741: goto -20 -> 721
    //   744: aload 8
    //   746: invokestatic 446	com/xiaomi/accountsdk/utils/g:c	(Ljava/io/Reader;)V
    //   749: goto +11 -> 760
    //   752: astore_2
    //   753: aload 8
    //   755: invokestatic 446	com/xiaomi/accountsdk/utils/g:c	(Ljava/io/Reader;)V
    //   758: aload_2
    //   759: athrow
    //   760: aload 16
    //   762: invokevirtual 217	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   765: astore 16
    //   767: new 24	a6/k$h
    //   770: astore 8
    //   772: aload 8
    //   774: aload 16
    //   776: invokespecial 447	a6/k$h:<init>	(Ljava/lang/String;)V
    //   779: aload 8
    //   781: aload_2
    //   782: invokevirtual 449	a6/k$d:e	(Ljava/util/Map;)V
    //   785: aload 8
    //   787: iload 14
    //   789: invokevirtual 452	a6/k$d:g	(I)V
    //   792: aload 8
    //   794: aload 15
    //   796: invokestatic 329	com/xiaomi/accountsdk/utils/j:c	(Ljava/util/Map;)Ljava/util/Map;
    //   799: invokevirtual 153	a6/k$d:f	(Ljava/util/Map;)V
    //   802: aload 4
    //   804: aload 8
    //   806: aload 7
    //   808: invokestatic 455	a6/h:a	(Ljava/lang/String;La6/k$h;La6/h$c;)V
    //   811: invokestatic 252	b6/d:a	()Lb6/c;
    //   814: astore_2
    //   815: aload 16
    //   817: invokevirtual 456	java/lang/String:length	()I
    //   820: istore 19
    //   822: aload_2
    //   823: aload 9
    //   825: ldc_w 550
    //   828: aload_0
    //   829: lload 10
    //   831: iload 14
    //   833: iload 19
    //   835: invokeinterface 342 8 0
    //   840: aload 6
    //   842: invokestatic 347	b7/h:h	(Ljava/util/List;)V
    //   845: aload 12
    //   847: astore_2
    //   848: aload_3
    //   849: astore 4
    //   851: aload_2
    //   852: iload 14
    //   854: aload 16
    //   856: aload 15
    //   858: aload 6
    //   860: invokevirtual 459	com/xiaomi/accountsdk/utils/b$b:f	(ILjava/lang/String;Ljava/util/Map;Ljava/util/List;)Lcom/xiaomi/accountsdk/utils/b$b;
    //   863: pop
    //   864: aload_3
    //   865: invokevirtual 462	java/net/HttpURLConnection:disconnect	()V
    //   868: aload_2
    //   869: invokestatic 355	com/xiaomi/accountsdk/utils/b:f	(Lcom/xiaomi/accountsdk/utils/b$b;)V
    //   872: aload 8
    //   874: areturn
    //   875: astore_2
    //   876: goto +28 -> 904
    //   879: astore_2
    //   880: goto +36 -> 916
    //   883: astore_2
    //   884: goto +12 -> 896
    //   887: astore_2
    //   888: goto +12 -> 900
    //   891: astore_0
    //   892: goto +190 -> 1082
    //   895: astore_2
    //   896: goto +8 -> 904
    //   899: astore_2
    //   900: goto +16 -> 916
    //   903: astore_2
    //   904: aload_1
    //   905: astore 4
    //   907: aload_2
    //   908: astore_1
    //   909: aload 4
    //   911: astore_2
    //   912: goto +72 -> 984
    //   915: astore_2
    //   916: aload_1
    //   917: astore 4
    //   919: aload_2
    //   920: astore_1
    //   921: aload 4
    //   923: astore_2
    //   924: goto +101 -> 1025
    //   927: astore_0
    //   928: goto +154 -> 1082
    //   931: astore_1
    //   932: aconst_null
    //   933: astore_2
    //   934: goto +50 -> 984
    //   937: astore_1
    //   938: aconst_null
    //   939: astore_2
    //   940: goto +85 -> 1025
    //   943: aload_3
    //   944: astore 4
    //   946: new 119	java/io/IOException
    //   949: astore_1
    //   950: aload_3
    //   951: astore 4
    //   953: aload_1
    //   954: ldc_w 613
    //   957: invokespecial 126	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   960: aload_3
    //   961: astore 4
    //   963: aload_1
    //   964: athrow
    //   965: astore_1
    //   966: goto -34 -> 932
    //   969: astore_1
    //   970: goto -32 -> 938
    //   973: astore_0
    //   974: aconst_null
    //   975: astore_1
    //   976: goto +108 -> 1084
    //   979: astore_1
    //   980: aconst_null
    //   981: astore_2
    //   982: aload_2
    //   983: astore_3
    //   984: aload_3
    //   985: astore 4
    //   987: invokestatic 252	b6/d:a	()Lb6/c;
    //   990: aload 9
    //   992: ldc_w 550
    //   995: aload_0
    //   996: lload 10
    //   998: aload_1
    //   999: aload_2
    //   1000: invokeinterface 401 8 0
    //   1005: aload_3
    //   1006: astore 4
    //   1008: aload 12
    //   1010: aload_1
    //   1011: invokevirtual 404	com/xiaomi/accountsdk/utils/b$b:h	(Ljava/lang/Throwable;)Lcom/xiaomi/accountsdk/utils/b$b;
    //   1014: pop
    //   1015: aload_3
    //   1016: astore 4
    //   1018: aload_1
    //   1019: athrow
    //   1020: astore_1
    //   1021: aconst_null
    //   1022: astore_2
    //   1023: aload_2
    //   1024: astore_3
    //   1025: aload_3
    //   1026: astore 4
    //   1028: invokestatic 252	b6/d:a	()Lb6/c;
    //   1031: aload 9
    //   1033: ldc_w 550
    //   1036: aload_0
    //   1037: lload 10
    //   1039: aload_1
    //   1040: aload_2
    //   1041: invokeinterface 401 8 0
    //   1046: aload_3
    //   1047: astore 4
    //   1049: aload 12
    //   1051: aload_1
    //   1052: invokevirtual 404	com/xiaomi/accountsdk/utils/b$b:h	(Ljava/lang/Throwable;)Lcom/xiaomi/accountsdk/utils/b$b;
    //   1055: pop
    //   1056: aload_3
    //   1057: astore 4
    //   1059: new 119	java/io/IOException
    //   1062: astore_0
    //   1063: aload_3
    //   1064: astore 4
    //   1066: aload_0
    //   1067: ldc_w 406
    //   1070: invokespecial 126	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   1073: aload_3
    //   1074: astore 4
    //   1076: aload_0
    //   1077: athrow
    //   1078: astore_0
    //   1079: aload 4
    //   1081: astore_3
    //   1082: aload_3
    //   1083: astore_1
    //   1084: aload_1
    //   1085: ifnull +7 -> 1092
    //   1088: aload_1
    //   1089: invokevirtual 462	java/net/HttpURLConnection:disconnect	()V
    //   1092: aload 12
    //   1094: invokestatic 355	com/xiaomi/accountsdk/utils/b:f	(Lcom/xiaomi/accountsdk/utils/b$b;)V
    //   1097: aload_0
    //   1098: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1099	0	paramString1	String
    //   0	1099	1	paramString2	String
    //   0	1099	2	paramMap1	Map<String, String>
    //   0	1099	3	paramMap2	Map<String, String>
    //   0	1099	4	paramMap3	Map<String, String>
    //   0	1099	5	paramBoolean	boolean
    //   0	1099	6	paramInteger	Integer
    //   0	1099	7	paramc	h.c
    //   10	863	8	localObject1	Object
    //   34	998	9	str	String
    //   39	999	10	l	long
    //   73	1020	12	localb	com.xiaomi.accountsdk.utils.b.b
    //   115	478	13	bool	boolean
    //   185	668	14	i	int
    //   449	408	15	localMap	Map
    //   471	384	16	localObject2	Object
    //   476	260	17	localObject3	Object
    //   531	18	18	localc	c
    //   820	14	19	j	int
    // Exception table:
    //   from	to	target	type
    //   145	155	162	finally
    //   122	145	169	java/lang/Exception
    //   155	159	169	java/lang/Exception
    //   163	169	169	java/lang/Exception
    //   122	145	175	java/net/ProtocolException
    //   155	159	175	java/net/ProtocolException
    //   163	169	175	java/net/ProtocolException
    //   597	632	635	java/lang/Exception
    //   669	677	635	java/lang/Exception
    //   692	721	635	java/lang/Exception
    //   744	749	635	java/lang/Exception
    //   753	760	635	java/lang/Exception
    //   597	632	647	java/net/ProtocolException
    //   669	677	647	java/net/ProtocolException
    //   692	721	647	java/net/ProtocolException
    //   744	749	647	java/net/ProtocolException
    //   753	760	647	java/net/ProtocolException
    //   721	728	752	finally
    //   733	741	752	finally
    //   851	864	875	java/lang/Exception
    //   851	864	879	java/net/ProtocolException
    //   822	845	883	java/lang/Exception
    //   822	845	887	java/net/ProtocolException
    //   545	583	891	finally
    //   583	592	891	finally
    //   597	632	891	finally
    //   657	664	891	finally
    //   669	677	891	finally
    //   677	687	891	finally
    //   692	721	891	finally
    //   744	749	891	finally
    //   753	760	891	finally
    //   760	822	891	finally
    //   822	845	891	finally
    //   545	583	895	java/lang/Exception
    //   583	592	895	java/lang/Exception
    //   657	664	895	java/lang/Exception
    //   677	687	895	java/lang/Exception
    //   760	822	895	java/lang/Exception
    //   545	583	899	java/net/ProtocolException
    //   583	592	899	java/net/ProtocolException
    //   657	664	899	java/net/ProtocolException
    //   677	687	899	java/net/ProtocolException
    //   760	822	899	java/net/ProtocolException
    //   244	324	903	java/lang/Exception
    //   324	364	903	java/lang/Exception
    //   364	430	903	java/lang/Exception
    //   430	445	903	java/lang/Exception
    //   445	491	903	java/lang/Exception
    //   496	528	903	java/lang/Exception
    //   528	545	903	java/lang/Exception
    //   244	324	915	java/net/ProtocolException
    //   324	364	915	java/net/ProtocolException
    //   364	430	915	java/net/ProtocolException
    //   430	445	915	java/net/ProtocolException
    //   445	491	915	java/net/ProtocolException
    //   496	528	915	java/net/ProtocolException
    //   528	545	915	java/net/ProtocolException
    //   90	117	927	finally
    //   122	145	927	finally
    //   155	159	927	finally
    //   163	169	927	finally
    //   181	193	927	finally
    //   244	324	927	finally
    //   324	364	927	finally
    //   364	430	927	finally
    //   430	445	927	finally
    //   445	491	927	finally
    //   496	528	927	finally
    //   528	545	927	finally
    //   90	117	931	java/lang/Exception
    //   181	193	931	java/lang/Exception
    //   90	117	937	java/net/ProtocolException
    //   181	193	937	java/net/ProtocolException
    //   946	950	965	java/lang/Exception
    //   953	960	965	java/lang/Exception
    //   963	965	965	java/lang/Exception
    //   946	950	969	java/net/ProtocolException
    //   953	960	969	java/net/ProtocolException
    //   963	965	969	java/net/ProtocolException
    //   75	86	973	finally
    //   75	86	979	java/lang/Exception
    //   75	86	1020	java/net/ProtocolException
    //   851	864	1078	finally
    //   946	950	1078	finally
    //   953	960	1078	finally
    //   963	965	1078	finally
    //   987	1005	1078	finally
    //   1008	1015	1078	finally
    //   1018	1020	1078	finally
    //   1028	1046	1078	finally
    //   1049	1056	1078	finally
    //   1059	1063	1078	finally
    //   1066	1073	1078	finally
    //   1076	1078	1078	finally
  }
  
  public static h q(String paramString, Map<String, String> paramMap1, Map<String, String> paramMap2, Map<String, String> paramMap3, Map<String, String> paramMap4, boolean paramBoolean, Integer paramInteger)
    throws IOException, AccessDeniedException, AuthenticationFailureException
  {
    return r(paramString, paramMap1, paramMap2, paramMap3, paramMap4, paramBoolean, paramInteger, null);
  }
  
  public static h r(String paramString, Map<String, String> paramMap1, Map<String, String> paramMap2, Map<String, String> paramMap3, Map<String, String> paramMap4, boolean paramBoolean, Integer paramInteger, h.c paramc)
    throws IOException, AccessDeniedException, AuthenticationFailureException
  {
    return p(paramString, h(paramMap1), paramMap2, paramMap3, paramMap4, paramBoolean, paramInteger, paramc);
  }
  
  public static h s(String paramString, Map<String, String> paramMap1, Map<String, String> paramMap2, Map<String, String> paramMap3, boolean paramBoolean, Integer paramInteger)
    throws IOException, AccessDeniedException, AuthenticationFailureException
  {
    return q(paramString, paramMap1, paramMap2, paramMap3, null, paramBoolean, paramInteger);
  }
  
  public static h t(String paramString, Map<String, String> paramMap1, Map<String, String> paramMap2, boolean paramBoolean)
    throws IOException, AccessDeniedException, AuthenticationFailureException
  {
    return q(paramString, paramMap1, paramMap2, null, null, paramBoolean, null);
  }
  
  class a
    implements b6.a
  {
    public boolean a()
    {
      return true;
    }
  }
  
  class b
    implements k.e
  {
    public HttpURLConnection a(URL paramURL)
      throws IOException
    {
      if (k.a() != null) {
        k.a().a(paramURL);
      }
      return (HttpURLConnection)paramURL.openConnection();
    }
  }
  
  class c
    implements CookiePolicy
  {
    c() {}
    
    public boolean shouldAccept(URI paramURI, HttpCookie paramHttpCookie)
    {
      paramHttpCookie = paramHttpCookie.getDomain();
      paramURI = k.this.iterator();
      while (paramURI.hasNext()) {
        if (HttpCookie.domainMatches(paramHttpCookie, (String)paramURI.next())) {
          return true;
        }
      }
      return false;
    }
  }
  
  public static class d
  {
    private int a = -1;
    private final Set<String> b = new HashSet();
    private final Map<String, String> c = new HashMap();
    
    public Set<String> a()
    {
      return this.b;
    }
    
    public String b(String paramString)
    {
      return (String)this.c.get(paramString);
    }
    
    public Map<String, String> c()
    {
      return this.c;
    }
    
    public int d()
    {
      return this.a;
    }
    
    public void e(Map<String, String> paramMap)
    {
      f(paramMap);
      if (paramMap != null) {
        this.b.addAll(paramMap.keySet());
      }
    }
    
    public void f(Map<String, String> paramMap)
    {
      this.c.putAll(paramMap);
    }
    
    public void g(int paramInt)
    {
      this.a = paramInt;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("HeaderContent{headers=");
      localStringBuilder.append(this.c);
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
  }
  
  public static abstract interface e
  {
    public abstract HttpURLConnection a(URL paramURL)
      throws IOException;
  }
  
  public static class f
    extends k.d
  {
    private Map<String, Object> d;
    
    public f(Map<String, Object> paramMap)
    {
      this.d = paramMap;
    }
    
    public Object h(String paramString)
    {
      return this.d.get(paramString);
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("MapContent{bodies=");
      localStringBuilder.append(this.d);
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
  }
  
  public static class g
    extends k.d
  {
    private InputStream d;
    
    public g(InputStream paramInputStream)
    {
      this.d = paramInputStream;
    }
    
    public void h()
    {
      g.a(this.d);
    }
    
    public InputStream i()
    {
      return this.d;
    }
  }
  
  public static class h
    extends k.d
  {
    private String d;
    
    public h(String paramString)
    {
      this.d = paramString;
    }
    
    public String h()
    {
      return this.d;
    }
    
    void i(String paramString)
    {
      this.d = paramString;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("StringContent{body='");
      localStringBuilder.append(this.d);
      localStringBuilder.append('\'');
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     a6.k
 * JD-Core Version:    0.7.0.1
 */