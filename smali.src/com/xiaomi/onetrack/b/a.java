package com.xiaomi.onetrack.b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.xiaomi.onetrack.util.i;
import com.xiaomi.onetrack.util.p;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class a
{
  private static ConcurrentHashMap<String, Boolean> A = new ConcurrentHashMap();
  public static final String a = "disable_log";
  public static final String b = "event";
  public static final String c = "events";
  public static final String d = "level";
  public static final String e = "sample";
  public static final String f = "needIds";
  public static final String g = "bannedParams";
  public static final String h = "version";
  private static final String i = "AppConfigUpdater";
  private static final long j = 172800000L;
  private static final String k = "hash";
  private static final String l = "appId";
  private static final String m = "apps";
  private static final String n = "type";
  private static final String o = "status";
  private static final String p = "deleted";
  private static final String q = "Android";
  private static AtomicBoolean r = new AtomicBoolean(false);
  private static final int s = 0;
  private static final int t = 1;
  private static final int u = 2;
  private static final int v = 100;
  private static ConcurrentHashMap<String, Long> w = new ConcurrentHashMap();
  private static final long x = 1800000L;
  private static a y = new a(Looper.getMainLooper(), null);
  private static final int z = 0;
  
  private static JSONArray a(JSONArray paramJSONArray1, JSONArray paramJSONArray2)
  {
    int i1 = 0;
    Object localObject1;
    for (;;)
    {
      localObject1 = paramJSONArray1;
      if (paramJSONArray2 != null)
      {
        Object localObject2 = paramJSONArray1;
        localObject1 = paramJSONArray1;
        try
        {
          if (i1 < paramJSONArray2.length())
          {
            localObject2 = paramJSONArray1;
            JSONObject localJSONObject = paramJSONArray2.optJSONObject(i1);
            localObject2 = paramJSONArray1;
            localObject1 = localJSONObject.optString("event");
            for (int i2 = 0; paramJSONArray1 != null; i2++)
            {
              localObject2 = paramJSONArray1;
              if (i2 >= paramJSONArray1.length()) {
                break;
              }
              localObject2 = paramJSONArray1;
              if (TextUtils.equals((CharSequence)localObject1, paramJSONArray1.optJSONObject(i2).optString("event")))
              {
                localObject2 = paramJSONArray1;
                paramJSONArray1.remove(i2);
                break;
              }
            }
            localObject2 = paramJSONArray1;
            if (localJSONObject.has("status"))
            {
              localObject1 = paramJSONArray1;
              localObject2 = paramJSONArray1;
              if (localJSONObject.has("status"))
              {
                localObject1 = paramJSONArray1;
                localObject2 = paramJSONArray1;
                if (TextUtils.equals(localJSONObject.optString("status"), "deleted")) {}
              }
            }
            else
            {
              localObject1 = paramJSONArray1;
              if (paramJSONArray1 == null)
              {
                localObject2 = paramJSONArray1;
                localObject1 = new org/json/JSONArray;
                localObject2 = paramJSONArray1;
                ((JSONArray)localObject1).<init>();
              }
              localObject2 = localObject1;
              ((JSONArray)localObject1).put(localJSONObject);
            }
            i1++;
            paramJSONArray1 = (JSONArray)localObject1;
          }
        }
        catch (Exception paramJSONArray1)
        {
          paramJSONArray2 = new StringBuilder();
          paramJSONArray2.append("mergeEventsElement error:");
          paramJSONArray2.append(paramJSONArray1.toString());
          p.b("AppConfigUpdater", paramJSONArray2.toString());
          localObject1 = localObject2;
        }
      }
    }
    return localObject1;
  }
  
  private static JSONObject a(String paramString, JSONObject paramJSONObject)
  {
    try
    {
      paramString = h.a().f(paramString);
      if (paramString != null) {
        paramString = paramString.e.optJSONArray("events");
      } else {
        paramString = null;
      }
      paramJSONObject.put("events", a(paramString, paramJSONObject.optJSONArray("events")));
      return paramJSONObject;
    }
    catch (Exception paramString)
    {
      paramJSONObject = new StringBuilder();
      paramJSONObject.append("mergeConfig: ");
      paramJSONObject.append(paramString.toString());
      p.b("AppConfigUpdater", paramJSONObject.toString());
    }
    return null;
  }
  
  public static void a(String paramString)
  {
    i.a(new b(paramString));
  }
  
  public static void a(String paramString, List<String> paramList)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    try
    {
      JSONObject localJSONObject = new org/json/JSONObject;
      localJSONObject.<init>(paramString);
      if (localJSONObject.optInt("code") == 0)
      {
        d(paramList);
        a(localJSONObject.optJSONObject("data").optJSONArray("apps"), paramList);
      }
    }
    catch (Exception paramString)
    {
      paramList = new StringBuilder();
      paramList.append("saveAppCloudData: ");
      paramList.append(paramString.toString());
      p.a("AppConfigUpdater", paramList.toString());
    }
  }
  
  private static void a(String paramString, JSONObject paramJSONObject, long paramLong)
    throws JSONException
  {
    int i1;
    if (paramJSONObject == null) {
      i1 = 0;
    } else {
      i1 = paramJSONObject.optInt("version");
    }
    int i2 = h.a().e(paramString);
    paramString = new StringBuilder();
    paramString.append("local version: ");
    paramString.append(i2);
    paramString.append(", server version: ");
    paramString.append(i1);
    p.a("AppConfigUpdater", paramString.toString());
    if ((i2 > 0) && (i1 <= i2))
    {
      a(paramJSONObject, paramLong);
      return;
    }
    if (paramJSONObject != null) {
      i2 = paramJSONObject.optInt("type");
    } else {
      i2 = -1;
    }
    paramString = new StringBuilder();
    paramString.append("type: ");
    paramString.append(i2);
    p.a("AppConfigUpdater", paramString.toString());
    if ((i2 != 0) && (i2 != 1))
    {
      if (i2 == 2) {
        b(paramJSONObject, paramLong);
      } else {
        p.a("AppConfigUpdater", "handleData do nothing!");
      }
    }
    else {
      a(paramJSONObject, paramLong, i1);
    }
  }
  
  private static void a(List<String> paramList, long paramLong)
  {
    try
    {
      localObject = new java/util/ArrayList;
      ((ArrayList)localObject).<init>();
      for (int i1 = 0; i1 < paramList.size(); i1++)
      {
        l locall = new com/xiaomi/onetrack/b/l;
        locall.<init>();
        locall.a = ((String)paramList.get(i1));
        locall.b = 100L;
        locall.c = paramLong;
        ((ArrayList)localObject).add(locall);
      }
      h.a().a((ArrayList)localObject);
    }
    catch (Exception paramList)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("handleError");
      ((StringBuilder)localObject).append(paramList.toString());
      p.b("AppConfigUpdater", ((StringBuilder)localObject).toString());
    }
  }
  
  private static void a(List<String> paramList1, long paramLong, List<String> paramList2)
  {
    try
    {
      if (paramList1.size() != paramList2.size())
      {
        paramList1.removeAll(paramList2);
        a(paramList1, paramLong);
      }
    }
    catch (Exception paramList2)
    {
      paramList1 = new StringBuilder();
      paramList1.append("handleInvalidAppIds error:");
      paramList1.append(paramList2.toString());
      p.b("AppConfigUpdater", paramList1.toString());
    }
  }
  
  private static void a(JSONArray paramJSONArray, List<String> paramList)
    throws JSONException
  {
    p.a("AppConfigUpdater", "updateDataToDb start");
    long l1 = System.currentTimeMillis() + 86400000L + new Random().nextInt(86400000);
    if ((paramJSONArray != null) && (paramJSONArray.length() > 0))
    {
      ArrayList localArrayList = new ArrayList();
      for (int i1 = 0; i1 < paramJSONArray.length(); i1++)
      {
        JSONObject localJSONObject = paramJSONArray.optJSONObject(i1);
        String str;
        if (localJSONObject == null) {
          str = "";
        } else {
          str = localJSONObject.optString("appId");
        }
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("appId: ");
        localStringBuilder.append(str);
        p.a("AppConfigUpdater", localStringBuilder.toString());
        if (!TextUtils.isEmpty(str))
        {
          localArrayList.add(str);
          a(str, localJSONObject, l1);
        }
      }
      a(paramList, l1, localArrayList);
    }
    else
    {
      a(paramList, l1);
    }
  }
  
  public static void a(JSONObject paramJSONObject)
  {
    i.a(new c(paramJSONObject));
  }
  
  private static void a(JSONObject paramJSONObject, long paramLong)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramJSONObject != null)
    {
      l locall = new l();
      locall.a = paramJSONObject.optString("appId");
      locall.c = paramLong;
      localArrayList.add(locall);
    }
    if (!localArrayList.isEmpty()) {
      h.a().a(localArrayList);
    } else {
      p.a("AppConfigUpdater", "updateMinVersionData no timestamp can be updated!");
    }
  }
  
  private static void a(JSONObject paramJSONObject, long paramLong, int paramInt)
    throws JSONException
  {
    ArrayList localArrayList = new ArrayList();
    if (paramJSONObject != null)
    {
      l locall1 = new l();
      locall1.d = paramJSONObject.optString("hash");
      locall1.a = paramJSONObject.optString("appId");
      locall1.b = b(paramJSONObject);
      locall1.c = paramLong;
      if (!paramJSONObject.has("events"))
      {
        l locall2 = h.a().f(locall1.a);
        if (locall2 != null)
        {
          JSONObject localJSONObject = locall2.e;
          if ((localJSONObject != null) && (localJSONObject.optJSONArray("events") != null)) {
            paramJSONObject.put("events", locall2.e.optJSONArray("events"));
          }
        }
      }
      locall1.e = paramJSONObject;
      localArrayList.add(locall1);
    }
    if (!localArrayList.isEmpty()) {
      h.a().a(localArrayList);
    } else {
      p.a("AppConfigUpdater", "handleFullOrNoNewData no configuration can be updated!");
    }
  }
  
  private static int b(JSONObject paramJSONObject)
  {
    int i1 = 100;
    int i3;
    try
    {
      int i2 = paramJSONObject.optInt("sample", 100);
      i3 = i1;
      if (i2 >= 0) {
        if (i2 > 100) {
          i3 = i1;
        } else {
          i3 = i2;
        }
      }
    }
    catch (Exception localException)
    {
      paramJSONObject = new StringBuilder();
      paramJSONObject.append("getCommonSample Exception:");
      paramJSONObject.append(localException.getMessage());
      p.a("AppConfigUpdater", paramJSONObject.toString());
      i3 = i1;
    }
    return i3;
  }
  
  public static void b(String paramString)
  {
    if (d(paramString))
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(paramString);
      b(localArrayList);
    }
    else
    {
      p.a("AppConfigUpdater", "AppConfigUpdater Does not meet prerequisites for request");
    }
  }
  
  /* Error */
  private static void b(List<String> paramList)
  {
    // Byte code:
    //   0: new 153	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 154	java/lang/StringBuilder:<init>	()V
    //   7: astore_1
    //   8: aload_1
    //   9: ldc_w 366
    //   12: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   15: pop
    //   16: aload_1
    //   17: aload_0
    //   18: invokevirtual 164	java/lang/Object:toString	()Ljava/lang/String;
    //   21: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: pop
    //   25: ldc 37
    //   27: aload_1
    //   28: invokevirtual 165	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   31: invokestatic 232	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   34: ldc 37
    //   36: invokestatic 370	com/xiaomi/onetrack/util/q:a	(Ljava/lang/String;)Z
    //   39: ifeq +4 -> 43
    //   42: return
    //   43: getstatic 91	com/xiaomi/onetrack/b/a:r	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   46: iconst_0
    //   47: iconst_1
    //   48: invokevirtual 374	java/util/concurrent/atomic/AtomicBoolean:compareAndSet	(ZZ)Z
    //   51: ifeq +350 -> 401
    //   54: new 376	java/util/HashMap
    //   57: dup
    //   58: invokespecial 377	java/util/HashMap:<init>	()V
    //   61: astore_2
    //   62: invokestatic 382	com/xiaomi/onetrack/f/a:b	()Landroid/content/Context;
    //   65: astore_1
    //   66: aload_2
    //   67: ldc_w 384
    //   70: invokestatic 389	com/xiaomi/onetrack/util/oaid/a:a	()Lcom/xiaomi/onetrack/util/oaid/a;
    //   73: aload_1
    //   74: invokevirtual 392	com/xiaomi/onetrack/util/oaid/a:a	(Landroid/content/Context;)Ljava/lang/String;
    //   77: invokeinterface 397 3 0
    //   82: pop
    //   83: aload_2
    //   84: ldc_w 399
    //   87: invokestatic 401	com/xiaomi/onetrack/util/q:d	()Ljava/lang/String;
    //   90: invokeinterface 397 3 0
    //   95: pop
    //   96: aload_2
    //   97: ldc_w 403
    //   100: invokestatic 405	com/xiaomi/onetrack/util/q:c	()Ljava/lang/String;
    //   103: invokeinterface 397 3 0
    //   108: pop
    //   109: invokestatic 407	com/xiaomi/onetrack/util/q:h	()Z
    //   112: istore_3
    //   113: iload_3
    //   114: ifeq +10 -> 124
    //   117: ldc_w 409
    //   120: astore_1
    //   121: goto +7 -> 128
    //   124: ldc_w 411
    //   127: astore_1
    //   128: aload_2
    //   129: ldc_w 413
    //   132: aload_1
    //   133: invokeinterface 397 3 0
    //   138: pop
    //   139: aload_2
    //   140: ldc_w 415
    //   143: ldc_w 417
    //   146: invokeinterface 397 3 0
    //   151: pop
    //   152: aload_2
    //   153: ldc_w 419
    //   156: invokestatic 420	com/xiaomi/onetrack/f/a:c	()Ljava/lang/String;
    //   159: invokeinterface 397 3 0
    //   164: pop
    //   165: aload_2
    //   166: ldc_w 422
    //   169: invokestatic 424	com/xiaomi/onetrack/util/q:e	()Ljava/lang/String;
    //   172: invokeinterface 397 3 0
    //   177: pop
    //   178: aload_2
    //   179: ldc_w 426
    //   182: invokestatic 429	com/xiaomi/onetrack/util/DeviceUtil:c	()Ljava/lang/String;
    //   185: invokeinterface 397 3 0
    //   190: pop
    //   191: aload_2
    //   192: ldc_w 431
    //   195: invokestatic 433	com/xiaomi/onetrack/util/q:i	()Ljava/lang/String;
    //   198: invokeinterface 397 3 0
    //   203: pop
    //   204: aload_2
    //   205: ldc_w 435
    //   208: aload_0
    //   209: invokestatic 438	com/xiaomi/onetrack/b/a:c	(Ljava/util/List;)Ljava/lang/String;
    //   212: invokeinterface 397 3 0
    //   217: pop
    //   218: aload_2
    //   219: ldc_w 440
    //   222: invokestatic 441	com/xiaomi/onetrack/f/a:e	()Ljava/lang/String;
    //   225: invokeinterface 397 3 0
    //   230: pop
    //   231: aload_2
    //   232: ldc_w 443
    //   235: ldc 62
    //   237: invokeinterface 397 3 0
    //   242: pop
    //   243: aload_2
    //   244: ldc_w 445
    //   247: ldc_w 409
    //   250: invokeinterface 397 3 0
    //   255: pop
    //   256: invokestatic 450	com/xiaomi/onetrack/util/x:a	()Lcom/xiaomi/onetrack/util/x;
    //   259: invokevirtual 451	com/xiaomi/onetrack/util/x:c	()Ljava/lang/String;
    //   262: astore 4
    //   264: new 153	java/lang/StringBuilder
    //   267: astore_1
    //   268: aload_1
    //   269: invokespecial 154	java/lang/StringBuilder:<init>	()V
    //   272: aload_1
    //   273: ldc_w 453
    //   276: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   279: pop
    //   280: aload_1
    //   281: aload 4
    //   283: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   286: pop
    //   287: ldc 37
    //   289: aload_1
    //   290: invokevirtual 165	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   293: invokestatic 232	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   296: aload 4
    //   298: aload_2
    //   299: iconst_1
    //   300: invokestatic 458	com/xiaomi/onetrack/g/b:b	(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    //   303: astore_1
    //   304: new 153	java/lang/StringBuilder
    //   307: astore_2
    //   308: aload_2
    //   309: invokespecial 154	java/lang/StringBuilder:<init>	()V
    //   312: aload_2
    //   313: ldc_w 460
    //   316: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   319: pop
    //   320: aload_2
    //   321: aload_1
    //   322: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   325: pop
    //   326: ldc 37
    //   328: aload_2
    //   329: invokevirtual 165	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   332: invokestatic 232	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   335: aload_1
    //   336: aload_0
    //   337: invokestatic 462	com/xiaomi/onetrack/b/a:a	(Ljava/lang/String;Ljava/util/List;)V
    //   340: goto +42 -> 382
    //   343: astore_0
    //   344: goto +48 -> 392
    //   347: astore_0
    //   348: new 153	java/lang/StringBuilder
    //   351: astore_1
    //   352: aload_1
    //   353: invokespecial 154	java/lang/StringBuilder:<init>	()V
    //   356: aload_1
    //   357: ldc_w 464
    //   360: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   363: pop
    //   364: aload_1
    //   365: aload_0
    //   366: invokevirtual 359	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   369: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   372: pop
    //   373: ldc 37
    //   375: aload_1
    //   376: invokevirtual 165	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   379: invokestatic 170	com/xiaomi/onetrack/util/p:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   382: getstatic 91	com/xiaomi/onetrack/b/a:r	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   385: iconst_0
    //   386: invokevirtual 467	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   389: goto +12 -> 401
    //   392: getstatic 91	com/xiaomi/onetrack/b/a:r	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   395: iconst_0
    //   396: invokevirtual 467	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   399: aload_0
    //   400: athrow
    //   401: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	402	0	paramList	List<String>
    //   7	369	1	localObject1	Object
    //   61	268	2	localObject2	Object
    //   112	2	3	bool	boolean
    //   262	35	4	str	String
    // Exception table:
    //   from	to	target	type
    //   62	113	343	finally
    //   128	340	343	finally
    //   348	382	343	finally
    //   62	113	347	java/lang/Exception
    //   128	340	347	java/lang/Exception
  }
  
  private static void b(JSONObject paramJSONObject, long paramLong)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramJSONObject != null) && (paramJSONObject.has("events")))
    {
      l locall = new l();
      locall.d = paramJSONObject.optString("hash");
      String str = paramJSONObject.optString("appId");
      locall.a = str;
      locall.b = b(paramJSONObject);
      locall.c = paramLong;
      locall.e = a(str, paramJSONObject);
      localArrayList.add(locall);
    }
    else
    {
      p.a("AppConfigUpdater", "handleIncrementalUpdate config is not change!");
    }
    if (!localArrayList.isEmpty()) {
      h.a().a(localArrayList);
    } else {
      p.a("AppConfigUpdater", "handleIncrementalUpdate no configuration can be updated!");
    }
  }
  
  private static String c(List<String> paramList)
  {
    localJSONArray = new JSONArray();
    try
    {
      JSONObject localJSONObject = new org/json/JSONObject;
      localJSONObject.<init>();
      for (int i1 = 0; i1 < paramList.size(); i1++)
      {
        String str = (String)paramList.get(i1);
        localJSONObject.put("appId", str);
        localJSONObject.put("hash", h.a().d(str));
        localJSONArray.put(localJSONObject);
      }
      return localJSONArray.toString();
    }
    catch (Exception paramList)
    {
      paramList.printStackTrace();
    }
  }
  
  private static void d(List<String> paramList)
  {
    if ((paramList != null) && (paramList.size() != 0)) {
      for (int i1 = 0; i1 < paramList.size(); i1++) {
        w.put(paramList.get(i1), Long.valueOf(System.currentTimeMillis() + 1800000L));
      }
    }
  }
  
  private static boolean d(String paramString)
  {
    if (!com.xiaomi.onetrack.g.c.a())
    {
      p.a("AppConfigUpdater", "net is not connected!");
      return false;
    }
    paramString = h.a().f(paramString);
    if (paramString == null) {
      return true;
    }
    long l1 = paramString.c;
    return (l1 < System.currentTimeMillis()) || (l1 - System.currentTimeMillis() > 172800000L);
  }
  
  private static boolean e(String paramString)
  {
    paramString = (Long)w.get(paramString);
    return (paramString == null) || (paramString.longValue() - System.currentTimeMillis() < 0L) || (paramString.longValue() - System.currentTimeMillis() > 1800000L);
  }
  
  private static class a
    extends Handler
  {
    private a(Looper paramLooper)
    {
      super();
    }
    
    public void handleMessage(Message paramMessage)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("ScheduleCloudHandler.handleMessage, msg.what=");
      ((StringBuilder)localObject).append(paramMessage.what);
      p.a("AppConfigUpdater", ((StringBuilder)localObject).toString());
      if (paramMessage.what == 0)
      {
        paramMessage = paramMessage.obj;
        if (paramMessage != null) {
          try
          {
            paramMessage = (String)paramMessage;
            localObject = new java/lang/StringBuilder;
            ((StringBuilder)localObject).<init>();
            ((StringBuilder)localObject).append("ScheduleCloudHandler.handleMessage, appId: ");
            ((StringBuilder)localObject).append(paramMessage);
            p.a("AppConfigUpdater", ((StringBuilder)localObject).toString());
            localObject = new com/xiaomi/onetrack/b/d;
            ((d)localObject).<init>(this, paramMessage);
            i.a((Runnable)localObject);
          }
          catch (Exception paramMessage)
          {
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("handleMessage error: ");
            ((StringBuilder)localObject).append(paramMessage.getMessage());
            p.b("AppConfigUpdater", ((StringBuilder)localObject).toString());
          }
        } else {
          p.a("AppConfigUpdater", "ScheduleCloudHandler.handleMessage, msg.obj is null");
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.b.a
 * JD-Core Version:    0.7.0.1
 */