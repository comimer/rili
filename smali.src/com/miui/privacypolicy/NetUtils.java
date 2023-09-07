package com.miui.privacypolicy;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONObject;

public class NetUtils
{
  protected static final String a = f("ro.miui.ui.version.name", "unknown");
  protected static final boolean b = f("ro.product.mod_device", "").contains("_global");
  
  private static void a(HttpURLConnection paramHttpURLConnection, JSONObject paramJSONObject)
    throws IOException
  {
    paramJSONObject = paramJSONObject.toString();
    if (!TextUtils.isEmpty(paramJSONObject))
    {
      paramHttpURLConnection.setDoOutput(true);
      paramHttpURLConnection.addRequestProperty("Content-Type", "application/json; charset=UTF-8");
      paramHttpURLConnection = new DataOutputStream(paramHttpURLConnection.getOutputStream());
      paramHttpURLConnection.writeBytes(paramJSONObject);
      paramHttpURLConnection.flush();
      paramHttpURLConnection.close();
    }
  }
  
  private static String b(Map<String, String> paramMap)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 1;
    try
    {
      Iterator localIterator = paramMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        paramMap = (Map.Entry)localIterator.next();
        if (i == 0) {
          localStringBuilder.append('&');
        }
        localStringBuilder.append(URLEncoder.encode((String)paramMap.getKey(), "UTF-8"));
        localStringBuilder.append('=');
        localStringBuilder.append(URLEncoder.encode((String)paramMap.getValue(), "UTF-8"));
        i = 0;
      }
      paramMap = localStringBuilder.toString();
      return paramMap;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      paramMap = new StringBuilder();
      paramMap.append("Encoding not supported: ");
      paramMap.append(localStringBuilder);
      throw new RuntimeException(paramMap.toString(), localUnsupportedEncodingException);
    }
  }
  
  private static byte[] c(String paramString)
  {
    try
    {
      byte[] arrayOfByte = paramString.getBytes("UTF-8");
      return arrayOfByte;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
    return paramString.getBytes();
  }
  
  private static String d(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(c(paramString));
      paramString = new java/math/BigInteger;
      paramString.<init>(1, localMessageDigest.digest());
      paramString = String.format("%1$032X", new Object[] { paramString });
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      throw new RuntimeException(paramString);
    }
  }
  
  private static String e(Map<String, String> paramMap, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    ArrayList localArrayList = new ArrayList();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      localArrayList.add(new b((String)localEntry.getKey(), (String)localEntry.getValue()));
    }
    Collections.sort(localArrayList);
    int i = localArrayList.size();
    for (int j = 0; j < i; j++)
    {
      paramMap = (b)localArrayList.get(j);
      localStringBuilder.append(b.c(paramMap));
      localStringBuilder.append("=");
      localStringBuilder.append(b.b(paramMap));
    }
    localStringBuilder.append(paramString);
    return d(new String(Base64.encodeToString(c(localStringBuilder.toString()), 2))).toUpperCase();
  }
  
  protected static String f(String paramString1, String paramString2)
  {
    try
    {
      Class localClass = Class.forName("android.os.SystemProperties");
      paramString1 = (String)localClass.getMethod("get", new Class[] { String.class, String.class }).invoke(localClass, new Object[] { paramString1, paramString2 });
      return paramString1;
    }
    catch (Exception paramString1)
    {
      Log.e("Privacy_NetUtil", "getSystemProperty error, ", paramString1);
    }
    return paramString2;
  }
  
  private static HttpURLConnection g(URL paramURL)
    throws IOException
  {
    paramURL = (HttpURLConnection)paramURL.openConnection();
    paramURL.setConnectTimeout(15000);
    paramURL.setReadTimeout(15000);
    paramURL.setUseCaches(false);
    paramURL.setDoInput(true);
    return paramURL;
  }
  
  /* Error */
  protected static String h(Map<String, String> paramMap, String paramString, HttpMethod paramHttpMethod, JSONObject paramJSONObject)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 5
    //   6: aload_1
    //   7: astore 6
    //   9: aload_2
    //   10: getstatic 305	com/miui/privacypolicy/NetUtils$HttpMethod:GET	Lcom/miui/privacypolicy/NetUtils$HttpMethod;
    //   13: if_acmpne +51 -> 64
    //   16: aload_1
    //   17: astore 6
    //   19: aload_0
    //   20: ifnull +44 -> 64
    //   23: aload_0
    //   24: invokestatic 307	com/miui/privacypolicy/NetUtils:b	(Ljava/util/Map;)Ljava/lang/String;
    //   27: astore 6
    //   29: aload_1
    //   30: ldc_w 309
    //   33: invokevirtual 39	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   36: ifeq +14 -> 50
    //   39: aload_1
    //   40: aload 6
    //   42: invokevirtual 312	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   45: astore 6
    //   47: goto +17 -> 64
    //   50: aload_1
    //   51: ldc_w 309
    //   54: invokevirtual 312	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   57: aload 6
    //   59: invokevirtual 312	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   62: astore 6
    //   64: new 280	java/net/URL
    //   67: astore_1
    //   68: aload_1
    //   69: aload 6
    //   71: invokespecial 313	java/net/URL:<init>	(Ljava/lang/String;)V
    //   74: aload_1
    //   75: invokestatic 315	com/miui/privacypolicy/NetUtils:g	(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    //   78: astore_1
    //   79: aload_1
    //   80: aload_2
    //   81: aload_0
    //   82: aload_3
    //   83: invokestatic 319	com/miui/privacypolicy/NetUtils:i	(Ljava/net/HttpURLConnection;Lcom/miui/privacypolicy/NetUtils$HttpMethod;Ljava/util/Map;Lorg/json/JSONObject;)V
    //   86: aload_1
    //   87: invokevirtual 322	java/net/HttpURLConnection:getResponseCode	()I
    //   90: sipush 200
    //   93: if_icmpne +85 -> 178
    //   96: aload_1
    //   97: invokevirtual 326	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   100: astore_0
    //   101: new 328	java/io/ByteArrayOutputStream
    //   104: astore_3
    //   105: aload_3
    //   106: invokespecial 329	java/io/ByteArrayOutputStream:<init>	()V
    //   109: sipush 4096
    //   112: newarray byte
    //   114: astore_1
    //   115: aload_0
    //   116: aload_1
    //   117: invokevirtual 335	java/io/InputStream:read	([B)I
    //   120: istore 7
    //   122: iload 7
    //   124: iconst_m1
    //   125: if_icmpeq +14 -> 139
    //   128: aload_3
    //   129: aload_1
    //   130: iconst_0
    //   131: iload 7
    //   133: invokevirtual 339	java/io/ByteArrayOutputStream:write	([BII)V
    //   136: goto -21 -> 115
    //   139: aload_3
    //   140: invokevirtual 340	java/io/ByteArrayOutputStream:toString	()Ljava/lang/String;
    //   143: astore_1
    //   144: aload_0
    //   145: invokestatic 345	com/miui/privacypolicy/a:a	(Ljava/io/InputStream;)V
    //   148: aload_3
    //   149: invokestatic 347	com/miui/privacypolicy/a:b	(Ljava/io/OutputStream;)V
    //   152: aload_1
    //   153: areturn
    //   154: astore_1
    //   155: aload_3
    //   156: astore_2
    //   157: goto +67 -> 224
    //   160: astore_2
    //   161: aload_3
    //   162: astore_1
    //   163: goto +41 -> 204
    //   166: astore_1
    //   167: aconst_null
    //   168: astore_2
    //   169: goto +55 -> 224
    //   172: astore_2
    //   173: aconst_null
    //   174: astore_1
    //   175: goto +29 -> 204
    //   178: aconst_null
    //   179: invokestatic 345	com/miui/privacypolicy/a:a	(Ljava/io/InputStream;)V
    //   182: aconst_null
    //   183: invokestatic 347	com/miui/privacypolicy/a:b	(Ljava/io/OutputStream;)V
    //   186: goto +30 -> 216
    //   189: astore_1
    //   190: aconst_null
    //   191: astore_2
    //   192: aload 4
    //   194: astore_0
    //   195: goto +29 -> 224
    //   198: astore_2
    //   199: aconst_null
    //   200: astore_1
    //   201: aload 5
    //   203: astore_0
    //   204: aload_2
    //   205: invokevirtual 352	java/lang/Throwable:printStackTrace	()V
    //   208: aload_0
    //   209: invokestatic 345	com/miui/privacypolicy/a:a	(Ljava/io/InputStream;)V
    //   212: aload_1
    //   213: invokestatic 347	com/miui/privacypolicy/a:b	(Ljava/io/OutputStream;)V
    //   216: ldc 31
    //   218: areturn
    //   219: astore_3
    //   220: aload_1
    //   221: astore_2
    //   222: aload_3
    //   223: astore_1
    //   224: aload_0
    //   225: invokestatic 345	com/miui/privacypolicy/a:a	(Ljava/io/InputStream;)V
    //   228: aload_2
    //   229: invokestatic 347	com/miui/privacypolicy/a:b	(Ljava/io/OutputStream;)V
    //   232: aload_1
    //   233: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	234	0	paramMap	Map<String, String>
    //   0	234	1	paramString	String
    //   0	234	2	paramHttpMethod	HttpMethod
    //   0	234	3	paramJSONObject	JSONObject
    //   1	192	4	localObject1	Object
    //   4	198	5	localObject2	Object
    //   7	63	6	str	String
    //   120	12	7	i	int
    // Exception table:
    //   from	to	target	type
    //   109	115	154	finally
    //   115	122	154	finally
    //   128	136	154	finally
    //   139	144	154	finally
    //   109	115	160	java/lang/Exception
    //   115	122	160	java/lang/Exception
    //   128	136	160	java/lang/Exception
    //   139	144	160	java/lang/Exception
    //   101	109	166	finally
    //   101	109	172	java/lang/Exception
    //   9	16	189	finally
    //   23	47	189	finally
    //   50	64	189	finally
    //   64	101	189	finally
    //   9	16	198	java/lang/Exception
    //   23	47	198	java/lang/Exception
    //   50	64	198	java/lang/Exception
    //   64	101	198	java/lang/Exception
    //   204	208	219	finally
  }
  
  private static void i(HttpURLConnection paramHttpURLConnection, HttpMethod paramHttpMethod, Map<String, String> paramMap, JSONObject paramJSONObject)
    throws IOException
  {
    paramHttpURLConnection.addRequestProperty("sign", e(paramMap, "2dcd9s0c-ad3f-2fas-0l3a-abzo301jd0s9"));
    paramHttpURLConnection.addRequestProperty("timestamp", (String)paramMap.get("timestamp"));
    paramHttpURLConnection.addRequestProperty("source", "sdk");
    int i = a.a[paramHttpMethod.ordinal()];
    if (i != 1)
    {
      if (i != 2)
      {
        if (i != 3)
        {
          if (i == 4) {
            paramHttpURLConnection.setRequestMethod("PUT");
          } else {
            throw new IllegalStateException("Unknown method type.");
          }
        }
        else
        {
          paramHttpURLConnection.setRequestMethod("POST");
          a(paramHttpURLConnection, paramJSONObject);
        }
      }
      else {
        paramHttpURLConnection.setRequestMethod("DELETE");
      }
    }
    else {
      paramHttpURLConnection.setRequestMethod("GET");
    }
  }
  
  protected static enum HttpMethod
  {
    static
    {
      HttpMethod localHttpMethod1 = new HttpMethod("GET", 0);
      GET = localHttpMethod1;
      HttpMethod localHttpMethod2 = new HttpMethod("POST", 1);
      POST = localHttpMethod2;
      HttpMethod localHttpMethod3 = new HttpMethod("PUT", 2);
      PUT = localHttpMethod3;
      HttpMethod localHttpMethod4 = new HttpMethod("DELETE", 3);
      DELETE = localHttpMethod4;
      $VALUES = new HttpMethod[] { localHttpMethod1, localHttpMethod2, localHttpMethod3, localHttpMethod4 };
    }
    
    private HttpMethod() {}
  }
  
  protected static class b
    implements Comparable<b>
  {
    private String a;
    private String b;
    
    b(String paramString1, String paramString2)
    {
      this.a = paramString1;
      this.b = paramString2;
    }
    
    public int h(b paramb)
    {
      return this.a.compareTo(paramb.a);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.privacypolicy.NetUtils
 * JD-Core Version:    0.7.0.1
 */