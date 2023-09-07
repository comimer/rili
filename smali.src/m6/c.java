package m6;

import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.webkit.JavascriptInterface;
import com.xiaomi.passport.jsb.method_impl.PassportJsbMethodShareMiniProgramToFriend;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import n6.e;
import n6.f;
import n6.g;
import n6.h;
import n6.i;
import n6.j;
import n6.l;
import n6.m;
import n6.n;
import n6.o;
import n6.p;
import n6.q;
import n6.r;
import n6.s;
import n6.t;
import n6.u;
import org.json.JSONException;
import org.json.JSONObject;

public class c
{
  private final com.xiaomi.passport.webview.a a;
  private final Map<String, b> b;
  
  public c(com.xiaomi.passport.webview.a parama, List<b> paramList)
  {
    this.a = parama;
    this.b = new HashMap();
    d(new m());
    d(new n());
    d(new u());
    d(new n6.a());
    d(new s());
    d(new t());
    d(new o());
    d(new n6.c());
    d(new f());
    d(new n6.d());
    d(new g());
    d(new h());
    d(new p());
    d(new r());
    d(new e());
    d(new i());
    d(new n6.k());
    d(new j());
    d(new l());
    if (!TextUtils.isEmpty(com.xiaomi.accountsdk.utils.k.b(parama.getContext()))) {
      d(new PassportJsbMethodShareMiniProgramToFriend(com.xiaomi.accountsdk.utils.k.b(parama.getContext())));
    }
    d(new n6.b());
    d(new q());
    if (paramList != null)
    {
      parama = paramList.iterator();
      while (parama.hasNext()) {
        d((b)parama.next());
      }
    }
  }
  
  private String e(final b paramb, final JSONObject paramJSONObject)
  {
    Object localObject = new CountDownLatch(1);
    final String[] arrayOfString = new String[1];
    a locala = new a(paramb, paramJSONObject, arrayOfString, (CountDownLatch)localObject);
    if (Looper.myLooper() == Looper.getMainLooper())
    {
      locala.run();
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("invoke method:");
      ((StringBuilder)localObject).append(paramb.getName());
      ((StringBuilder)localObject).append(", params=");
      ((StringBuilder)localObject).append(paramJSONObject);
      ((StringBuilder)localObject).append(", result=");
      ((StringBuilder)localObject).append(arrayOfString[0]);
      com.xiaomi.accountsdk.utils.b.g("PassportJsbMethodInvoker", ((StringBuilder)localObject).toString());
      return arrayOfString[0];
    }
    try
    {
      this.a.post(locala);
      ((CountDownLatch)localObject).await();
      localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      ((StringBuilder)localObject).append("invoke method ");
      ((StringBuilder)localObject).append(paramb.getName());
      ((StringBuilder)localObject).append(" with ");
      ((StringBuilder)localObject).append(paramJSONObject);
      ((StringBuilder)localObject).append(" result=");
      ((StringBuilder)localObject).append(arrayOfString[0]);
      com.xiaomi.accountsdk.utils.b.g("PassportJsbMethodInvoker", ((StringBuilder)localObject).toString());
      paramb = arrayOfString[0];
      return paramb;
    }
    catch (InterruptedException paramJSONObject)
    {
      paramJSONObject = new StringBuilder();
      paramJSONObject.append("invoke method ");
      paramJSONObject.append(paramb.getName());
      paramJSONObject.append(" interrupted");
      com.xiaomi.accountsdk.utils.b.g("PassportJsbMethodInvoker", paramJSONObject.toString());
    }
    return f(101, "interrupted invoke method");
  }
  
  private String f(int paramInt, String paramString)
  {
    try
    {
      JSONObject localJSONObject = new org/json/JSONObject;
      localJSONObject.<init>();
      localJSONObject.put("code", paramInt);
      localJSONObject.put("message", paramString);
      paramString = localJSONObject.toString();
      return paramString;
    }
    catch (JSONException paramString)
    {
      throw new IllegalStateException("should never happen", paramString);
    }
  }
  
  private String g(d paramd)
  {
    try
    {
      JSONObject localJSONObject = new org/json/JSONObject;
      localJSONObject.<init>();
      localJSONObject.put("code", 0);
      localJSONObject.put("message", "ok");
      paramd.a(localJSONObject, "result");
      paramd = localJSONObject.toString();
      return paramd;
    }
    catch (JSONException paramd)
    {
      throw new IllegalStateException("should never happen", paramd);
    }
  }
  
  public void d(b paramb)
  {
    this.b.put(paramb.getName(), paramb);
  }
  
  public void h()
  {
    Iterator localIterator = this.b.values().iterator();
    while (localIterator.hasNext()) {
      ((b)localIterator.next()).release(this.a);
    }
    this.b.clear();
  }
  
  @JavascriptInterface
  public String invokeMethod(String paramString)
  {
    return invokeMethod(paramString, new JSONObject());
  }
  
  @JavascriptInterface
  public String invokeMethod(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString2)) {
      return invokeMethod(paramString1, new JSONObject());
    }
    try
    {
      JSONObject localJSONObject = new org/json/JSONObject;
      localJSONObject.<init>(paramString2);
      paramString2 = invokeMethod(paramString1, localJSONObject);
      return paramString2;
    }
    catch (JSONException localJSONException)
    {
      paramString2 = new StringBuilder();
      paramString2.append("invoke method ");
      paramString2.append(paramString1);
      com.xiaomi.accountsdk.utils.b.h("PassportJsbMethodInvoker", paramString2.toString(), localJSONException);
    }
    return f(102, "json params is error format");
  }
  
  @JavascriptInterface
  public String invokeMethod(String paramString, JSONObject paramJSONObject)
  {
    JSONObject localJSONObject = paramJSONObject;
    if (paramJSONObject == null) {
      localJSONObject = new JSONObject();
    }
    paramJSONObject = (b)this.b.get(paramString);
    if (paramJSONObject == null)
    {
      paramJSONObject = new StringBuilder();
      paramJSONObject.append("invoke method ");
      paramJSONObject.append(paramString);
      paramJSONObject.append(" not found");
      com.xiaomi.accountsdk.utils.b.g("PassportJsbMethodInvoker", paramJSONObject.toString());
      return f(100, String.format("method %s is undefined", new Object[] { paramString }));
    }
    return e(paramJSONObject, localJSONObject);
  }
  
  @JavascriptInterface
  public boolean isMethodSupported(String paramString)
  {
    boolean bool;
    if (this.b.get(paramString) != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  class a
    implements Runnable
  {
    a(b paramb, JSONObject paramJSONObject, String[] paramArrayOfString, CountDownLatch paramCountDownLatch) {}
    
    /* Error */
    public void run()
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 26	m6/c$a:a	Lm6/b;
      //   4: aload_0
      //   5: getfield 24	m6/c$a:e	Lm6/c;
      //   8: invokestatic 44	m6/c:a	(Lm6/c;)Lcom/xiaomi/passport/webview/a;
      //   11: aload_0
      //   12: getfield 28	m6/c$a:b	Lorg/json/JSONObject;
      //   15: invokevirtual 50	m6/b:invoke	(Lcom/xiaomi/passport/webview/a;Lorg/json/JSONObject;)Lm6/d;
      //   18: astore_1
      //   19: aload_1
      //   20: ifnonnull +57 -> 77
      //   23: aload_0
      //   24: getfield 30	m6/c$a:c	[Ljava/lang/String;
      //   27: astore_2
      //   28: aload_0
      //   29: getfield 24	m6/c$a:e	Lm6/c;
      //   32: astore_3
      //   33: new 52	java/lang/StringBuilder
      //   36: astore_1
      //   37: aload_1
      //   38: invokespecial 53	java/lang/StringBuilder:<init>	()V
      //   41: aload_1
      //   42: ldc 55
      //   44: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   47: pop
      //   48: aload_1
      //   49: aload_0
      //   50: getfield 26	m6/c$a:a	Lm6/b;
      //   53: invokevirtual 63	m6/b:getName	()Ljava/lang/String;
      //   56: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   59: pop
      //   60: aload_2
      //   61: iconst_0
      //   62: aload_3
      //   63: sipush 150
      //   66: aload_1
      //   67: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   70: invokestatic 69	m6/c:b	(Lm6/c;ILjava/lang/String;)Ljava/lang/String;
      //   73: aastore
      //   74: goto +45 -> 119
      //   77: aload_0
      //   78: getfield 30	m6/c$a:c	[Ljava/lang/String;
      //   81: iconst_0
      //   82: aload_0
      //   83: getfield 24	m6/c$a:e	Lm6/c;
      //   86: aload_1
      //   87: invokestatic 72	m6/c:c	(Lm6/c;Lm6/d;)Ljava/lang/String;
      //   90: aastore
      //   91: goto +28 -> 119
      //   94: astore_1
      //   95: goto +60 -> 155
      //   98: astore_1
      //   99: aload_0
      //   100: getfield 30	m6/c$a:c	[Ljava/lang/String;
      //   103: iconst_0
      //   104: aload_0
      //   105: getfield 24	m6/c$a:e	Lm6/c;
      //   108: sipush 200
      //   111: aload_1
      //   112: invokevirtual 77	java/lang/Throwable:getMessage	()Ljava/lang/String;
      //   115: invokestatic 69	m6/c:b	(Lm6/c;ILjava/lang/String;)Ljava/lang/String;
      //   118: aastore
      //   119: aload_0
      //   120: getfield 32	m6/c$a:d	Ljava/util/concurrent/CountDownLatch;
      //   123: invokevirtual 82	java/util/concurrent/CountDownLatch:countDown	()V
      //   126: goto +28 -> 154
      //   129: astore_1
      //   130: aload_0
      //   131: getfield 30	m6/c$a:c	[Ljava/lang/String;
      //   134: iconst_0
      //   135: aload_0
      //   136: getfield 24	m6/c$a:e	Lm6/c;
      //   139: aload_1
      //   140: getfield 86	com/xiaomi/passport/jsb/PassportJsbMethodException:errorCode	I
      //   143: aload_1
      //   144: getfield 90	com/xiaomi/passport/jsb/PassportJsbMethodException:errorMessage	Ljava/lang/String;
      //   147: invokestatic 69	m6/c:b	(Lm6/c;ILjava/lang/String;)Ljava/lang/String;
      //   150: aastore
      //   151: goto -32 -> 119
      //   154: return
      //   155: aload_0
      //   156: getfield 32	m6/c$a:d	Ljava/util/concurrent/CountDownLatch;
      //   159: invokevirtual 82	java/util/concurrent/CountDownLatch:countDown	()V
      //   162: aload_1
      //   163: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	164	0	this	a
      //   18	69	1	localObject1	Object
      //   94	1	1	localObject2	Object
      //   98	14	1	localException	java.lang.Exception
      //   129	34	1	localPassportJsbMethodException	com.xiaomi.passport.jsb.PassportJsbMethodException
      //   27	34	2	arrayOfString	String[]
      //   32	31	3	localc	c
      // Exception table:
      //   from	to	target	type
      //   0	19	94	finally
      //   23	74	94	finally
      //   77	91	94	finally
      //   99	119	94	finally
      //   130	151	94	finally
      //   0	19	98	java/lang/Exception
      //   23	74	98	java/lang/Exception
      //   77	91	98	java/lang/Exception
      //   0	19	129	com/xiaomi/passport/jsb/PassportJsbMethodException
      //   23	74	129	com/xiaomi/passport/jsb/PassportJsbMethodException
      //   77	91	129	com/xiaomi/passport/jsb/PassportJsbMethodException
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     m6.c
 * JD-Core Version:    0.7.0.1
 */