package com.bumptech.glide.load.data;

import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.HttpException;
import f3.c;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import r2.g;

public class j
  implements d<InputStream>
{
  static final b g = new a();
  private final g a;
  private final int b;
  private final b c;
  private HttpURLConnection d;
  private InputStream e;
  private volatile boolean f;
  
  public j(g paramg, int paramInt)
  {
    this(paramg, paramInt, g);
  }
  
  j(g paramg, int paramInt, b paramb)
  {
    this.a = paramg;
    this.b = paramInt;
    this.c = paramb;
  }
  
  private HttpURLConnection c(URL paramURL, Map<String, String> paramMap)
    throws HttpException
  {
    try
    {
      paramURL = this.c.a(paramURL);
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        paramURL.addRequestProperty((String)localEntry.getKey(), (String)localEntry.getValue());
      }
      paramURL.setConnectTimeout(this.b);
      paramURL.setReadTimeout(this.b);
      paramURL.setUseCaches(false);
      paramURL.setDoInput(true);
      paramURL.setInstanceFollowRedirects(false);
      return paramURL;
    }
    catch (IOException paramURL)
    {
      throw new HttpException("URL.openConnection threw", 0, paramURL);
    }
  }
  
  private static int f(HttpURLConnection paramHttpURLConnection)
  {
    try
    {
      int i = paramHttpURLConnection.getResponseCode();
      return i;
    }
    catch (IOException paramHttpURLConnection)
    {
      if (Log.isLoggable("HttpUrlFetcher", 3)) {
        Log.d("HttpUrlFetcher", "Failed to get a response code", paramHttpURLConnection);
      }
    }
    return -1;
  }
  
  private InputStream g(HttpURLConnection paramHttpURLConnection)
    throws HttpException
  {
    try
    {
      if (TextUtils.isEmpty(paramHttpURLConnection.getContentEncoding()))
      {
        int i = paramHttpURLConnection.getContentLength();
        this.e = c.d(paramHttpURLConnection.getInputStream(), i);
      }
      else
      {
        if (Log.isLoggable("HttpUrlFetcher", 3))
        {
          StringBuilder localStringBuilder = new java/lang/StringBuilder;
          localStringBuilder.<init>();
          localStringBuilder.append("Got non empty content encoding: ");
          localStringBuilder.append(paramHttpURLConnection.getContentEncoding());
          Log.d("HttpUrlFetcher", localStringBuilder.toString());
        }
        this.e = paramHttpURLConnection.getInputStream();
      }
      return this.e;
    }
    catch (IOException localIOException)
    {
      throw new HttpException("Failed to obtain InputStream", f(paramHttpURLConnection), localIOException);
    }
  }
  
  private static boolean h(int paramInt)
  {
    boolean bool;
    if (paramInt / 100 == 2) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private static boolean i(int paramInt)
  {
    boolean bool;
    if (paramInt / 100 == 3) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private InputStream j(URL paramURL1, int paramInt, URL paramURL2, Map<String, String> paramMap)
    throws HttpException
  {
    if ((paramInt >= 5) || (paramURL2 != null)) {}
    try
    {
      if (paramURL1.toURI().equals(paramURL2.toURI()))
      {
        paramURL2 = new com/bumptech/glide/load/HttpException;
        paramURL2.<init>("In re-direct loop", -1);
        throw paramURL2;
      }
    }
    catch (URISyntaxException paramURL2)
    {
      label39:
      break label39;
    }
    paramURL2 = c(paramURL1, paramMap);
    this.d = paramURL2;
    try
    {
      paramURL2.connect();
      this.e = this.d.getInputStream();
      if (this.f) {
        return null;
      }
      int i = f(this.d);
      if (h(i)) {
        return g(this.d);
      }
      if (i(i))
      {
        paramURL2 = this.d.getHeaderField("Location");
        if (!TextUtils.isEmpty(paramURL2)) {
          try
          {
            URL localURL = new URL(paramURL1, paramURL2);
            b();
            return j(localURL, paramInt + 1, paramURL1, paramMap);
          }
          catch (MalformedURLException paramMap)
          {
            paramURL1 = new StringBuilder();
            paramURL1.append("Bad redirect url: ");
            paramURL1.append(paramURL2);
            throw new HttpException(paramURL1.toString(), i, paramMap);
          }
        }
        throw new HttpException("Received empty or null redirect url", i);
      }
      if (i == -1) {
        throw new HttpException(i);
      }
      try
      {
        paramURL1 = new com/bumptech/glide/load/HttpException;
        paramURL1.<init>(this.d.getResponseMessage(), i);
        throw paramURL1;
      }
      catch (IOException paramURL1)
      {
        throw new HttpException("Failed to get a response message", i, paramURL1);
      }
      throw new HttpException("Too many (> 5) redirects!", -1);
    }
    catch (IOException paramURL1)
    {
      throw new HttpException("Failed to connect or obtain data", f(this.d), paramURL1);
    }
  }
  
  public Class<InputStream> a()
  {
    return InputStream.class;
  }
  
  public void b()
  {
    Object localObject = this.e;
    if (localObject != null) {}
    try
    {
      ((InputStream)localObject).close();
      label13:
      localObject = this.d;
      if (localObject != null) {
        ((HttpURLConnection)localObject).disconnect();
      }
      this.d = null;
      return;
    }
    catch (IOException localIOException)
    {
      break label13;
    }
  }
  
  public void cancel()
  {
    this.f = true;
  }
  
  public DataSource d()
  {
    return DataSource.REMOTE;
  }
  
  /* Error */
  public void e(com.bumptech.glide.Priority paramPriority, d.a<? super InputStream> parama)
  {
    // Byte code:
    //   0: invokestatic 272	f3/f:b	()J
    //   3: lstore_3
    //   4: aload_2
    //   5: aload_0
    //   6: aload_0
    //   7: getfield 39	com/bumptech/glide/load/data/j:a	Lr2/g;
    //   10: invokevirtual 277	r2/g:h	()Ljava/net/URL;
    //   13: iconst_0
    //   14: aconst_null
    //   15: aload_0
    //   16: getfield 39	com/bumptech/glide/load/data/j:a	Lr2/g;
    //   19: invokevirtual 280	r2/g:e	()Ljava/util/Map;
    //   22: invokespecial 232	com/bumptech/glide/load/data/j:j	(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
    //   25: invokeinterface 285 2 0
    //   30: ldc 123
    //   32: iconst_2
    //   33: invokestatic 129	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   36: ifeq +89 -> 125
    //   39: new 161	java/lang/StringBuilder
    //   42: dup
    //   43: invokespecial 162	java/lang/StringBuilder:<init>	()V
    //   46: astore_1
    //   47: goto +51 -> 98
    //   50: astore_2
    //   51: goto +75 -> 126
    //   54: astore_1
    //   55: ldc 123
    //   57: iconst_3
    //   58: invokestatic 129	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   61: ifeq +13 -> 74
    //   64: ldc 123
    //   66: ldc_w 287
    //   69: aload_1
    //   70: invokestatic 134	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   73: pop
    //   74: aload_2
    //   75: aload_1
    //   76: invokeinterface 290 2 0
    //   81: ldc 123
    //   83: iconst_2
    //   84: invokestatic 129	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   87: ifeq +38 -> 125
    //   90: new 161	java/lang/StringBuilder
    //   93: dup
    //   94: invokespecial 162	java/lang/StringBuilder:<init>	()V
    //   97: astore_1
    //   98: aload_1
    //   99: ldc_w 292
    //   102: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: pop
    //   106: aload_1
    //   107: lload_3
    //   108: invokestatic 295	f3/f:a	(J)D
    //   111: invokevirtual 298	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   114: pop
    //   115: ldc 123
    //   117: aload_1
    //   118: invokevirtual 171	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   121: invokestatic 301	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   124: pop
    //   125: return
    //   126: ldc 123
    //   128: iconst_2
    //   129: invokestatic 129	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   132: ifeq +38 -> 170
    //   135: new 161	java/lang/StringBuilder
    //   138: dup
    //   139: invokespecial 162	java/lang/StringBuilder:<init>	()V
    //   142: astore_1
    //   143: aload_1
    //   144: ldc_w 292
    //   147: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   150: pop
    //   151: aload_1
    //   152: lload_3
    //   153: invokestatic 295	f3/f:a	(J)D
    //   156: invokevirtual 298	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   159: pop
    //   160: ldc 123
    //   162: aload_1
    //   163: invokevirtual 171	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   166: invokestatic 301	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   169: pop
    //   170: aload_2
    //   171: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	172	0	this	j
    //   0	172	1	paramPriority	com.bumptech.glide.Priority
    //   0	172	2	parama	d.a<? super InputStream>
    //   3	150	3	l	long
    // Exception table:
    //   from	to	target	type
    //   4	30	50	finally
    //   55	74	50	finally
    //   74	81	50	finally
    //   4	30	54	java/io/IOException
  }
  
  private static class a
    implements j.b
  {
    public HttpURLConnection a(URL paramURL)
      throws IOException
    {
      return (HttpURLConnection)paramURL.openConnection();
    }
  }
  
  static abstract interface b
  {
    public abstract HttpURLConnection a(URL paramURL)
      throws IOException;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.data.j
 * JD-Core Version:    0.7.0.1
 */