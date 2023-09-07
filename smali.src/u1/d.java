package u1;

import android.content.Context;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.common.retrofit.UserNoticedNotAgreedException;
import com.jakewharton.retrofit2.adapter.kotlin.coroutines.CoroutineCallAdapterFactory;
import com.jakewharton.retrofit2.adapter.kotlin.coroutines.CoroutineCallAdapterFactory.a;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.i;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0;
import com.xiaomi.onetrack.ServiceQualityEvent.Builder;
import com.xiaomi.onetrack.ServiceQualityEvent.ResultType;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import miui.accounts.ExtraAccountManager;
import okhttp3.a0;
import okhttp3.t;
import okhttp3.u;
import okhttp3.u.a;
import okhttp3.x;
import okhttp3.x.a;
import okhttp3.y;
import okhttp3.y.a;
import retrofit2.k.b;

@Metadata(bv={}, d1={""}, d2={"Lu1/d;", "", "Landroid/content/Context;", "context", "", "sso", "", "serviceToken", "cUserId", "b", "baseUrl", "Lu1/a;", "e", "Lokhttp3/x;", "g", "()Lokhttp3/x;", "client", "<init>", "()V", "a", "c", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class d
{
  public static final d a = new d();
  private static x b;
  
  public static final String a(Context paramContext)
  {
    return c(paramContext, false, null, null, 14, null);
  }
  
  public static final String b(Context paramContext, boolean paramBoolean, String paramString1, String paramString2)
  {
    int i = 0;
    String str2;
    if (paramContext != null)
    {
      String str1 = DeviceUtils.k(paramContext);
      str2 = str1;
      if (ExtraAccountManager.getXiaomiAccount(paramContext) != null)
      {
        i = 1;
        str2 = str1;
      }
    }
    else
    {
      str2 = "";
    }
    paramContext = new StringBuilder();
    paramContext.append("locale=");
    paramContext.append(Locale.getDefault());
    paramContext.append("; hid=");
    paramContext.append(str2);
    if ((paramBoolean) && (i != 0))
    {
      paramContext.append("; serviceToken=");
      paramContext.append(paramString1);
      paramContext.append("; cUserId=");
      paramContext.append(paramString2);
    }
    paramContext = paramContext.toString();
    r.e(paramContext, "sb.toString()");
    return paramContext;
  }
  
  public static final a d()
  {
    return f(null, 1, null);
  }
  
  public static final a e(String paramString)
  {
    r.f(paramString, "baseUrl");
    x localx = a.g();
    paramString = new k.b().c(paramString).b(uc.a.d()).a(CoroutineCallAdapterFactory.a.a()).g(localx).e().d(a.class);
    r.e(paramString, "retrofit.create(Calendar…estInterface::class.java)");
    return (a)paramString;
  }
  
  private final x g()
  {
    try
    {
      if (b == null)
      {
        localObject1 = new okhttp3/x$a;
        ((x.a)localObject1).<init>();
        x.a locala = ((x.a)localObject1).e(5L, TimeUnit.SECONDS);
        localObject1 = new u1/d$a;
        ((a)localObject1).<init>();
        locala = locala.a((u)localObject1);
        localObject1 = new u1/d$b;
        ((b)localObject1).<init>();
        locala = locala.a((u)localObject1);
        localObject1 = new u1/c;
        ((c)localObject1).<init>();
        locala = locala.a((u)localObject1);
        localObject1 = new u1/d$c;
        ((c)localObject1).<init>();
        b = locala.a((u)localObject1).d();
      }
      Object localObject1 = b;
      return localObject1;
    }
    finally {}
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lu1/d$a;", "Lokhttp3/u;", "Lokhttp3/u$a;", "chain", "Lokhttp3/a0;", "intercept", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private static final class a
    implements u
  {
    public a0 intercept(u.a parama)
      throws IOException
    {
      r.f(parama, "chain");
      if (z0.m()) {
        return parama.a(parama.b());
      }
      throw new UserNoticedNotAgreedException();
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lu1/d$b;", "Lokhttp3/u;", "Lokhttp3/u$a;", "chain", "Lokhttp3/a0;", "intercept", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private static final class b
    implements u
  {
    public a0 intercept(u.a parama)
      throws IOException
    {
      r.f(parama, "chain");
      return parama.a(parama.b().h().k("User-Agent").a("User-Agent", DeviceUtils.y()).b());
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lu1/d$c;", "Lokhttp3/u;", "Lokhttp3/a0;", "response", "", "reqInterface", "Ljava/lang/Exception;", "Lkotlin/Exception;", "ex", "Lokhttp3/t;", "url", "Lkotlin/u;", "a", "Lokhttp3/u$a;", "chain", "intercept", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private static final class c
    implements u
  {
    private final void a(a0 parama0, String paramString, Exception paramException, t paramt)
    {
      if ((parama0 == null) && (!i.f(CalendarApplication.e())))
      {
        parama0 = new StringBuilder();
        parama0.append("recordNetQuality network is unavailable! reqInterface:");
        parama0.append(paramString);
        z.a("Cal:D:RetrofitGenerator", parama0.toString());
        return;
      }
      if ((paramException != null) && (kotlin.text.k.p(paramException.getMessage(), "Canceled", true)))
      {
        parama0 = new StringBuilder();
        parama0.append("recordNetQuality request is canceled. reqInterface:");
        parama0.append(paramString);
        z.a("Cal:D:RetrofitGenerator", parama0.toString());
        return;
      }
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("net_available");
      ((StringBuilder)localObject).append(paramString);
      paramString = ((StringBuilder)localObject).toString();
      int i;
      if (parama0 != null) {
        i = parama0.m();
      } else {
        i = -1;
      }
      boolean bool;
      if (parama0 != null) {
        bool = parama0.isSuccessful();
      } else {
        bool = false;
      }
      if (bool) {
        parama0 = ServiceQualityEvent.ResultType.SUCCESS;
      } else if ((paramException instanceof SocketTimeoutException)) {
        parama0 = ServiceQualityEvent.ResultType.TIMEOUT;
      } else {
        parama0 = ServiceQualityEvent.ResultType.FAILED;
      }
      localObject = new ServiceQualityEvent.Builder().setScheme(paramt.s()).setHost(paramt.h()).setPort(Integer.valueOf(paramt.o())).setPath(paramt.d()).setResultType(parama0).setRequestTimestamp(Long.valueOf(System.currentTimeMillis()));
      paramt = new HashMap();
      paramt.put("req_interface", paramString);
      paramt.put("req_result_type", parama0);
      paramt.put("rsp_code", Integer.valueOf(i));
      g0.k(((ServiceQualityEvent.Builder)localObject).build());
      g0.g(paramt);
      paramt = new StringBuilder();
      paramt.append("recordNetQuality: reportFlag:");
      paramt.append(paramString);
      paramt.append(" responseCode:");
      paramt.append(i);
      paramt.append(" resultType:");
      paramt.append(parama0);
      paramt.append(" exception msg:");
      if (paramException != null) {
        parama0 = paramException.getMessage();
      } else {
        parama0 = null;
      }
      paramt.append(parama0);
      z.a("Cal:D:RetrofitGenerator", paramt.toString());
    }
    
    /* Error */
    public a0 intercept(u.a parama)
      throws IOException
    {
      // Byte code:
      //   0: aload_1
      //   1: ldc 218
      //   3: invokestatic 223	kotlin/jvm/internal/r:f	(Ljava/lang/Object;Ljava/lang/String;)V
      //   6: aload_1
      //   7: invokeinterface 229 1 0
      //   12: astore_2
      //   13: aload_1
      //   14: aload_2
      //   15: invokeinterface 232 2 0
      //   20: astore_1
      //   21: new 55	java/lang/StringBuilder
      //   24: dup
      //   25: invokespecial 56	java/lang/StringBuilder:<init>	()V
      //   28: astore_3
      //   29: aload_2
      //   30: invokevirtual 238	okhttp3/y:i	()Lokhttp3/t;
      //   33: invokevirtual 241	okhttp3/t:m	()Ljava/util/List;
      //   36: invokeinterface 247 1 0
      //   41: astore 4
      //   43: aload 4
      //   45: invokeinterface 252 1 0
      //   50: ifeq +85 -> 135
      //   53: aload 4
      //   55: invokeinterface 256 1 0
      //   60: checkcast 258	java/lang/String
      //   63: astore 5
      //   65: aload 5
      //   67: ifnull +22 -> 89
      //   70: aload 5
      //   72: invokeinterface 263 1 0
      //   77: ifne +6 -> 83
      //   80: goto +9 -> 89
      //   83: iconst_0
      //   84: istore 6
      //   86: goto +6 -> 92
      //   89: iconst_1
      //   90: istore 6
      //   92: iload 6
      //   94: ifne -51 -> 43
      //   97: new 55	java/lang/StringBuilder
      //   100: dup
      //   101: invokespecial 56	java/lang/StringBuilder:<init>	()V
      //   104: astore 7
      //   106: aload 7
      //   108: bipush 95
      //   110: invokevirtual 266	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
      //   113: pop
      //   114: aload 7
      //   116: aload 5
      //   118: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   121: pop
      //   122: aload_3
      //   123: aload 7
      //   125: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   128: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   131: pop
      //   132: goto -89 -> 43
      //   135: aload_3
      //   136: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   139: astore 5
      //   141: aload 5
      //   143: ldc_w 268
      //   146: invokestatic 270	kotlin/jvm/internal/r:e	(Ljava/lang/Object;Ljava/lang/String;)V
      //   149: aload_0
      //   150: aload_1
      //   151: aload 5
      //   153: aconst_null
      //   154: aload_2
      //   155: invokevirtual 238	okhttp3/y:i	()Lokhttp3/t;
      //   158: invokespecial 272	u1/d$c:a	(Lokhttp3/a0;Ljava/lang/String;Ljava/lang/Exception;Lokhttp3/t;)V
      //   161: aload_1
      //   162: areturn
      //   163: astore 5
      //   165: aconst_null
      //   166: astore_1
      //   167: goto +8 -> 175
      //   170: astore_1
      //   171: aload_1
      //   172: athrow
      //   173: astore 5
      //   175: new 55	java/lang/StringBuilder
      //   178: dup
      //   179: invokespecial 56	java/lang/StringBuilder:<init>	()V
      //   182: astore 7
      //   184: aload_2
      //   185: invokevirtual 238	okhttp3/y:i	()Lokhttp3/t;
      //   188: invokevirtual 241	okhttp3/t:m	()Ljava/util/List;
      //   191: invokeinterface 247 1 0
      //   196: astore 4
      //   198: aload 4
      //   200: invokeinterface 252 1 0
      //   205: ifeq +82 -> 287
      //   208: aload 4
      //   210: invokeinterface 256 1 0
      //   215: checkcast 258	java/lang/String
      //   218: astore 8
      //   220: aload 8
      //   222: ifnull +22 -> 244
      //   225: aload 8
      //   227: invokeinterface 263 1 0
      //   232: ifne +6 -> 238
      //   235: goto +9 -> 244
      //   238: iconst_0
      //   239: istore 6
      //   241: goto +6 -> 247
      //   244: iconst_1
      //   245: istore 6
      //   247: iload 6
      //   249: ifne -51 -> 198
      //   252: new 55	java/lang/StringBuilder
      //   255: dup
      //   256: invokespecial 56	java/lang/StringBuilder:<init>	()V
      //   259: astore_3
      //   260: aload_3
      //   261: bipush 95
      //   263: invokevirtual 266	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
      //   266: pop
      //   267: aload_3
      //   268: aload 8
      //   270: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   273: pop
      //   274: aload 7
      //   276: aload_3
      //   277: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   280: invokevirtual 62	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   283: pop
      //   284: goto -86 -> 198
      //   287: aload 7
      //   289: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   292: astore 7
      //   294: aload 7
      //   296: ldc_w 268
      //   299: invokestatic 270	kotlin/jvm/internal/r:e	(Ljava/lang/Object;Ljava/lang/String;)V
      //   302: aload_0
      //   303: aconst_null
      //   304: aload 7
      //   306: aload_1
      //   307: aload_2
      //   308: invokevirtual 238	okhttp3/y:i	()Lokhttp3/t;
      //   311: invokespecial 272	u1/d$c:a	(Lokhttp3/a0;Ljava/lang/String;Ljava/lang/Exception;Lokhttp3/t;)V
      //   314: aload 5
      //   316: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	317	0	this	c
      //   0	317	1	parama	u.a
      //   12	296	2	localy	y
      //   28	249	3	localStringBuilder	StringBuilder
      //   41	168	4	localIterator	java.util.Iterator
      //   63	89	5	str1	String
      //   163	1	5	localObject1	Object
      //   173	142	5	localObject2	Object
      //   84	164	6	i	int
      //   104	201	7	localObject3	Object
      //   218	51	8	str2	String
      // Exception table:
      //   from	to	target	type
      //   13	21	163	finally
      //   13	21	170	java/lang/Exception
      //   171	173	173	finally
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     u1.d
 * JD-Core Version:    0.7.0.1
 */