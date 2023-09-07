package f7;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.ConnectivityManager.NetworkCallback;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.NetworkRequest;
import android.net.NetworkRequest.Builder;
import android.os.SystemClock;
import android.util.Pair;
import com.xiaomi.phonenum.bean.HttpError;
import java.io.IOException;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.CookiePolicy;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

public class f
  extends c
{
  private static CookieManager c;
  private h7.b a;
  private Context b;
  
  static
  {
    CookieManager localCookieManager = new CookieManager();
    c = localCookieManager;
    localCookieManager.setCookiePolicy(CookiePolicy.ACCEPT_ALL);
  }
  
  public f(Context paramContext)
  {
    this.b = paramContext;
    this.a = h7.a.i(paramContext);
    CookieHandler.setDefault(c);
  }
  
  public a c(b paramb)
  {
    return new b(paramb, null);
  }
  
  private class b
    implements a
  {
    private b a;
    
    private b(b paramb)
    {
      this.a = paramb;
    }
    
    /* Error */
    private e.a b(d paramd, HttpURLConnection paramHttpURLConnection)
      throws IOException
    {
      // Byte code:
      //   0: aload_2
      //   1: aload_0
      //   2: getfield 23	f7/f$b:a	Lf7/b;
      //   5: getfield 35	f7/b:a	J
      //   8: l2i
      //   9: invokevirtual 41	java/net/URLConnection:setConnectTimeout	(I)V
      //   12: aload_2
      //   13: aload_0
      //   14: getfield 23	f7/f$b:a	Lf7/b;
      //   17: getfield 43	f7/b:b	J
      //   20: l2i
      //   21: invokevirtual 46	java/net/URLConnection:setReadTimeout	(I)V
      //   24: aload_1
      //   25: getfield 52	f7/d:d	Ljava/util/Map;
      //   28: ifnull +22 -> 50
      //   31: aload_2
      //   32: iconst_1
      //   33: invokevirtual 56	java/net/URLConnection:setDoInput	(Z)V
      //   36: aload_2
      //   37: iconst_1
      //   38: invokevirtual 59	java/net/URLConnection:setDoOutput	(Z)V
      //   41: aload_2
      //   42: ldc 61
      //   44: invokevirtual 67	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
      //   47: goto +9 -> 56
      //   50: aload_2
      //   51: ldc 69
      //   53: invokevirtual 67	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
      //   56: aload_2
      //   57: aload_1
      //   58: getfield 73	f7/d:e	Z
      //   61: invokevirtual 76	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
      //   64: aload_1
      //   65: getfield 79	f7/d:c	Ljava/util/Map;
      //   68: astore_3
      //   69: aload_3
      //   70: ifnull +62 -> 132
      //   73: aload_3
      //   74: invokeinterface 85 1 0
      //   79: invokeinterface 91 1 0
      //   84: astore 4
      //   86: aload 4
      //   88: invokeinterface 97 1 0
      //   93: ifeq +39 -> 132
      //   96: aload 4
      //   98: invokeinterface 101 1 0
      //   103: checkcast 103	java/util/Map$Entry
      //   106: astore_3
      //   107: aload_2
      //   108: aload_3
      //   109: invokeinterface 106 1 0
      //   114: checkcast 108	java/lang/String
      //   117: aload_3
      //   118: invokeinterface 111 1 0
      //   123: checkcast 108	java/lang/String
      //   126: invokevirtual 115	java/net/URLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
      //   129: goto -43 -> 86
      //   132: aload_2
      //   133: invokevirtual 118	java/net/URLConnection:connect	()V
      //   136: aload_1
      //   137: getfield 52	f7/d:d	Ljava/util/Map;
      //   140: ifnull +59 -> 199
      //   143: aload_2
      //   144: invokevirtual 122	java/net/URLConnection:getOutputStream	()Ljava/io/OutputStream;
      //   147: astore_3
      //   148: new 124	java/io/BufferedWriter
      //   151: astore 5
      //   153: new 126	java/io/OutputStreamWriter
      //   156: astore 4
      //   158: aload 4
      //   160: aload_3
      //   161: ldc 128
      //   163: invokespecial 131	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
      //   166: aload 5
      //   168: aload 4
      //   170: invokespecial 134	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
      //   173: aload 5
      //   175: aload_1
      //   176: getfield 52	f7/d:d	Ljava/util/Map;
      //   179: invokestatic 139	com/xiaomi/phonenum/utils/a:c	(Ljava/util/Map;)Ljava/lang/String;
      //   182: invokevirtual 144	java/io/Writer:write	(Ljava/lang/String;)V
      //   185: aload 5
      //   187: invokevirtual 147	java/io/BufferedWriter:flush	()V
      //   190: aload 5
      //   192: invokevirtual 150	java/io/BufferedWriter:close	()V
      //   195: aload_3
      //   196: invokevirtual 153	java/io/OutputStream:close	()V
      //   199: aload_2
      //   200: invokevirtual 157	java/net/HttpURLConnection:getResponseCode	()I
      //   203: istore 6
      //   205: new 159	f7/e$a
      //   208: astore_1
      //   209: aload_1
      //   210: invokespecial 160	f7/e$a:<init>	()V
      //   213: aload_1
      //   214: iload 6
      //   216: invokevirtual 163	f7/e$a:c	(I)Lf7/e$a;
      //   219: aload_2
      //   220: ldc 165
      //   222: invokevirtual 169	java/net/URLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
      //   225: invokevirtual 172	f7/e$a:e	(Ljava/lang/String;)Lf7/e$a;
      //   228: aload_2
      //   229: ldc 174
      //   231: invokevirtual 169	java/net/URLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
      //   234: invokevirtual 177	f7/e$a:f	(Ljava/lang/String;)Lf7/e$a;
      //   237: aload_2
      //   238: invokevirtual 181	java/net/URLConnection:getHeaderFields	()Ljava/util/Map;
      //   241: invokevirtual 184	f7/e$a:d	(Ljava/util/Map;)Lf7/e$a;
      //   244: astore_1
      //   245: iload 6
      //   247: sipush 200
      //   250: if_icmpne +99 -> 349
      //   253: new 186	java/io/BufferedReader
      //   256: astore_3
      //   257: new 188	java/io/InputStreamReader
      //   260: astore 4
      //   262: aload 4
      //   264: aload_2
      //   265: invokevirtual 192	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
      //   268: invokespecial 195	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
      //   271: aload_3
      //   272: aload 4
      //   274: sipush 1024
      //   277: invokespecial 198	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
      //   280: new 200	java/lang/StringBuilder
      //   283: astore 5
      //   285: aload 5
      //   287: invokespecial 201	java/lang/StringBuilder:<init>	()V
      //   290: aload_3
      //   291: invokevirtual 205	java/io/BufferedReader:readLine	()Ljava/lang/String;
      //   294: astore 4
      //   296: aload 4
      //   298: ifnull +14 -> 312
      //   301: aload 5
      //   303: aload 4
      //   305: invokevirtual 209	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   308: pop
      //   309: goto -19 -> 290
      //   312: aload_1
      //   313: aload 5
      //   315: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   318: invokevirtual 214	f7/e$a:a	(Ljava/lang/String;)Lf7/e$a;
      //   321: astore_1
      //   322: aload_3
      //   323: invokevirtual 215	java/io/BufferedReader:close	()V
      //   326: aload_2
      //   327: invokevirtual 218	java/net/HttpURLConnection:disconnect	()V
      //   330: aload_1
      //   331: areturn
      //   332: astore_1
      //   333: goto +6 -> 339
      //   336: astore_1
      //   337: aconst_null
      //   338: astore_3
      //   339: aload_3
      //   340: ifnull +7 -> 347
      //   343: aload_3
      //   344: invokevirtual 215	java/io/BufferedReader:close	()V
      //   347: aload_1
      //   348: athrow
      //   349: aload_2
      //   350: invokevirtual 218	java/net/HttpURLConnection:disconnect	()V
      //   353: aload_1
      //   354: areturn
      //   355: astore_1
      //   356: aload_2
      //   357: invokevirtual 218	java/net/HttpURLConnection:disconnect	()V
      //   360: aload_1
      //   361: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	362	0	this	b
      //   0	362	1	paramd	d
      //   0	362	2	paramHttpURLConnection	HttpURLConnection
      //   68	276	3	localObject1	Object
      //   84	220	4	localObject2	Object
      //   151	163	5	localObject3	Object
      //   203	48	6	i	int
      // Exception table:
      //   from	to	target	type
      //   280	290	332	finally
      //   290	296	332	finally
      //   301	309	332	finally
      //   312	322	332	finally
      //   253	280	336	finally
      //   0	47	355	finally
      //   50	56	355	finally
      //   56	69	355	finally
      //   73	86	355	finally
      //   86	129	355	finally
      //   132	199	355	finally
      //   199	245	355	finally
      //   322	326	355	finally
      //   343	347	355	finally
      //   347	349	355	finally
    }
    
    private HttpURLConnection c(String paramString, Network paramNetwork)
      throws IOException
    {
      if (paramNetwork != null) {
        paramString = (HttpURLConnection)paramNetwork.openConnection(new URL(paramString));
      } else {
        paramString = (HttpURLConnection)new URL(paramString).openConnection();
      }
      return paramString;
    }
    
    private Pair<Network, ConnectivityManager.NetworkCallback> d()
    {
      try
      {
        localObject = e(f.d(f.this), this.a.d);
        return localObject;
      }
      catch (TimeoutException localTimeoutException)
      {
        Object localObject = new StringBuilder();
        ((StringBuilder)localObject).append("waitForCellular Timeout ");
        ((StringBuilder)localObject).append(this.a.d);
        com.xiaomi.accountsdk.utils.b.h("HttpUrlConnClient", ((StringBuilder)localObject).toString(), localTimeoutException);
      }
      catch (InterruptedException localInterruptedException)
      {
        com.xiaomi.accountsdk.utils.b.h("HttpUrlConnClient", "waitForCellular", localInterruptedException);
      }
      return null;
    }
    
    private Pair<Network, ConnectivityManager.NetworkCallback> e(final Context paramContext, long paramLong)
      throws InterruptedException, TimeoutException
    {
      paramContext = (ConnectivityManager)paramContext.getApplicationContext().getSystemService("connectivity");
      final AtomicReference localAtomicReference = new AtomicReference(null);
      Object localObject = new CountDownLatch(1);
      NetworkRequest localNetworkRequest = new NetworkRequest.Builder().addCapability(12).addTransportType(0).build();
      a locala = new a(paramContext, localAtomicReference, (CountDownLatch)localObject);
      paramContext.requestNetwork(localNetworkRequest, locala);
      if (((CountDownLatch)localObject).await(paramLong, TimeUnit.MILLISECONDS))
      {
        localObject = (Network)localAtomicReference.get();
        if (localObject == null)
        {
          paramContext.unregisterNetworkCallback(locala);
          return null;
        }
        return new Pair(localObject, locala);
      }
      paramContext.unregisterNetworkCallback(locala);
      throw new TimeoutException();
    }
    
    public e a(d paramd)
      throws IOException
    {
      long l = SystemClock.uptimeMillis();
      ConnectivityManager localConnectivityManager = (ConnectivityManager)f.d(f.this).getApplicationContext().getSystemService("connectivity");
      int i = this.a.e;
      Network localNetwork = null;
      if (i >= 0)
      {
        if (!f.e(f.this).h(i)) {
          return HttpError.DATA_NOT_ENABLED.result();
        }
        if (!f.e(f.this).e())
        {
          if (!o5.b.a(f.d(f.this), "android.permission.CHANGE_NETWORK_STATE")) {
            return HttpError.NO_CHANGE_NETWORK_STATE_PERMISSION.result();
          }
          localObject1 = d();
          localObject2 = localObject1;
          if (localObject1 != null) {
            break label129;
          }
          return HttpError.CELLULAR_NETWORK_NOT_AVAILABLE.result();
        }
      }
      Object localObject2 = null;
      label129:
      Object localObject1 = paramd.a;
      if (localObject2 != null) {
        localNetwork = (Network)localObject2.first;
      }
      paramd = b(paramd, c((String)localObject1, localNetwork));
      if (localObject2 != null) {
        localConnectivityManager.unregisterNetworkCallback((ConnectivityManager.NetworkCallback)localObject2.second);
      }
      return paramd.g(SystemClock.uptimeMillis() - l).b();
    }
    
    class a
      extends ConnectivityManager.NetworkCallback
    {
      a(ConnectivityManager paramConnectivityManager, AtomicReference paramAtomicReference, CountDownLatch paramCountDownLatch) {}
      
      public void onAvailable(Network paramNetwork)
      {
        NetworkInfo localNetworkInfo = paramContext.getNetworkInfo(paramNetwork);
        if ((localNetworkInfo != null) && (localNetworkInfo.getState() == NetworkInfo.State.CONNECTED))
        {
          localAtomicReference.set(paramNetwork);
          this.c.countDown();
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f7.f
 * JD-Core Version:    0.7.0.1
 */