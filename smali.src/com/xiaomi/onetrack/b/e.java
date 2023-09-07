package com.xiaomi.onetrack.b;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.onetrack.g.b;
import com.xiaomi.onetrack.g.c;
import com.xiaomi.onetrack.util.DeviceUtil;
import com.xiaomi.onetrack.util.aa;
import com.xiaomi.onetrack.util.i;
import com.xiaomi.onetrack.util.p;
import com.xiaomi.onetrack.util.q;
import com.xiaomi.onetrack.util.x;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class e
{
  public static final String a = "l";
  private static final String b = "CommonConfigUpdater";
  private static final String c = "t";
  private static final String d = "levels";
  private static final String e = "Android";
  private static ConcurrentHashMap<Integer, Integer> f = new ConcurrentHashMap();
  private static final long g = 172800000L;
  
  public static void a()
  {
    i.a(new f());
  }
  
  private static void a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    try
    {
      JSONObject localJSONObject1 = new org/json/JSONObject;
      localJSONObject1.<init>(paramString);
      if (localJSONObject1.optInt("code") == 0)
      {
        paramString = localJSONObject1.optString("hash");
        localJSONObject1 = localJSONObject1.optJSONObject("data");
        if (localJSONObject1 != null)
        {
          JSONObject localJSONObject2 = localJSONObject1.optJSONObject("regionUrl");
          if (localJSONObject2 != null) {
            x.a().a(localJSONObject2);
          }
          aa.d(localJSONObject1.toString());
          aa.c(paramString);
        }
        long l = System.currentTimeMillis();
        paramString = new java/util/Random;
        paramString.<init>();
        aa.j(l + 86400000L + paramString.nextInt(86400000));
      }
    }
    catch (JSONException localJSONException)
    {
      paramString = new StringBuilder();
      paramString.append("saveCommonCloudData: ");
      paramString.append(localJSONException.toString());
      p.a("CommonConfigUpdater", paramString.toString());
    }
  }
  
  public static void b()
  {
    if (e()) {
      f();
    } else {
      p.a("CommonConfigUpdater", "CommonConfigUpdater Does not meet prerequisites for request");
    }
  }
  
  /* Error */
  public static Map<Integer, Integer> c()
  {
    // Byte code:
    //   0: getstatic 36	com/xiaomi/onetrack/b/e:f	Ljava/util/concurrent/ConcurrentHashMap;
    //   3: invokevirtual 145	java/util/concurrent/ConcurrentHashMap:isEmpty	()Z
    //   6: ifne +7 -> 13
    //   9: getstatic 36	com/xiaomi/onetrack/b/e:f	Ljava/util/concurrent/ConcurrentHashMap;
    //   12: areturn
    //   13: invokestatic 147	com/xiaomi/onetrack/util/aa:l	()Ljava/lang/String;
    //   16: astore_0
    //   17: aload_0
    //   18: invokestatic 55	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   21: ifne +115 -> 136
    //   24: new 57	org/json/JSONObject
    //   27: astore_1
    //   28: aload_1
    //   29: aload_0
    //   30: invokespecial 59	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   33: aload_1
    //   34: ldc 17
    //   36: invokevirtual 151	org/json/JSONObject:optJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   39: astore_0
    //   40: iconst_0
    //   41: istore_2
    //   42: iload_2
    //   43: aload_0
    //   44: invokevirtual 157	org/json/JSONArray:length	()I
    //   47: if_icmpge +89 -> 136
    //   50: aload_0
    //   51: iload_2
    //   52: invokevirtual 161	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   55: astore_1
    //   56: aload_1
    //   57: ldc 8
    //   59: invokevirtual 65	org/json/JSONObject:optInt	(Ljava/lang/String;)I
    //   62: istore_3
    //   63: aload_1
    //   64: ldc 14
    //   66: invokevirtual 65	org/json/JSONObject:optInt	(Ljava/lang/String;)I
    //   69: istore 4
    //   71: iload_3
    //   72: ifle +24 -> 96
    //   75: iload 4
    //   77: ifle +19 -> 96
    //   80: getstatic 36	com/xiaomi/onetrack/b/e:f	Ljava/util/concurrent/ConcurrentHashMap;
    //   83: iload_3
    //   84: invokestatic 167	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   87: iload 4
    //   89: invokestatic 167	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   92: invokevirtual 171	java/util/concurrent/ConcurrentHashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   95: pop
    //   96: iinc 2 1
    //   99: goto -57 -> 42
    //   102: astore_0
    //   103: new 119	java/lang/StringBuilder
    //   106: dup
    //   107: invokespecial 120	java/lang/StringBuilder:<init>	()V
    //   110: astore_1
    //   111: aload_1
    //   112: ldc 173
    //   114: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: pop
    //   118: aload_1
    //   119: aload_0
    //   120: invokevirtual 127	java/lang/Object:toString	()Ljava/lang/String;
    //   123: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: pop
    //   127: ldc 11
    //   129: aload_1
    //   130: invokevirtual 128	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   133: invokestatic 133	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   136: getstatic 36	com/xiaomi/onetrack/b/e:f	Ljava/util/concurrent/ConcurrentHashMap;
    //   139: invokevirtual 145	java/util/concurrent/ConcurrentHashMap:isEmpty	()Z
    //   142: ifeq +10 -> 152
    //   145: invokestatic 176	com/xiaomi/onetrack/b/e:g	()Ljava/util/HashMap;
    //   148: astore_0
    //   149: goto +7 -> 156
    //   152: getstatic 36	com/xiaomi/onetrack/b/e:f	Ljava/util/concurrent/ConcurrentHashMap;
    //   155: astore_0
    //   156: aload_0
    //   157: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   16	35	0	localObject1	Object
    //   102	18	0	localException	java.lang.Exception
    //   148	9	0	localObject2	Object
    //   27	103	1	localObject3	Object
    //   41	56	2	i	int
    //   62	22	3	j	int
    //   69	19	4	k	int
    // Exception table:
    //   from	to	target	type
    //   0	13	102	java/lang/Exception
    //   13	40	102	java/lang/Exception
    //   42	71	102	java/lang/Exception
    //   80	96	102	java/lang/Exception
  }
  
  private static boolean e()
  {
    if (!c.a())
    {
      p.b("CommonConfigUpdater", "net is not connected!");
      return false;
    }
    if (TextUtils.isEmpty(aa.l())) {
      return true;
    }
    long l = aa.j();
    return (l < System.currentTimeMillis()) || (l - System.currentTimeMillis() > 172800000L);
  }
  
  private static void f()
  {
    if (q.a("CommonConfigUpdater")) {
      return;
    }
    Object localObject1 = new HashMap();
    try
    {
      Object localObject2 = com.xiaomi.onetrack.f.a.b();
      ((Map)localObject1).put("oa", com.xiaomi.onetrack.util.oaid.a.a().a((Context)localObject2));
      ((Map)localObject1).put("ov", q.d());
      ((Map)localObject1).put("ob", q.c());
      if (q.h()) {
        localObject2 = "1";
      } else {
        localObject2 = "0";
      }
      ((Map)localObject1).put("ii", localObject2);
      ((Map)localObject1).put("sv", "2.0.3");
      ((Map)localObject1).put("appVer", com.xiaomi.onetrack.f.a.c());
      ((Map)localObject1).put("av", q.e());
      ((Map)localObject1).put("ml", DeviceUtil.c());
      ((Map)localObject1).put("re", q.i());
      ((Map)localObject1).put("platform", "Android");
      localObject2 = x.a().d();
      localObject1 = b.b((String)localObject2, (Map)localObject1, true);
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      localStringBuilder.append("url:");
      localStringBuilder.append((String)localObject2);
      localStringBuilder.append(" response:");
      localStringBuilder.append((String)localObject1);
      p.a("CommonConfigUpdater", localStringBuilder.toString());
      a((String)localObject1);
    }
    catch (IOException localIOException)
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("requestCloudData: ");
      ((StringBuilder)localObject1).append(localIOException.toString());
      p.a("CommonConfigUpdater", ((StringBuilder)localObject1).toString());
    }
  }
  
  private static HashMap<Integer, Integer> g()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(Integer.valueOf(1), Integer.valueOf(1000));
    localHashMap.put(Integer.valueOf(2), Integer.valueOf(15000));
    localHashMap.put(Integer.valueOf(3), Integer.valueOf(900000));
    return localHashMap;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.b.e
 * JD-Core Version:    0.7.0.1
 */