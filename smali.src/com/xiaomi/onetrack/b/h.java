package com.xiaomi.onetrack.b;

import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.onetrack.c.b;
import com.xiaomi.onetrack.f.a;
import com.xiaomi.onetrack.util.p;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

public class h
{
  private static final String a = "ConfigDbManager";
  private static final int e = 100;
  private g b = new g(a.a());
  private ConcurrentHashMap<String, l> c = new ConcurrentHashMap();
  private ConcurrentHashMap<String, Boolean> d = new ConcurrentHashMap();
  
  public static h a()
  {
    return a.a();
  }
  
  private static int b(JSONObject paramJSONObject)
  {
    int i = 100;
    int k;
    try
    {
      int j = paramJSONObject.optInt("sample", 100);
      k = i;
      if (j >= 0) {
        if (j > 100) {
          k = i;
        } else {
          k = j;
        }
      }
    }
    catch (Exception localException)
    {
      paramJSONObject = new StringBuilder();
      paramJSONObject.append("getCommonSample Exception:");
      paramJSONObject.append(localException.getMessage());
      p.a("ConfigDbManager", paramJSONObject.toString());
      k = i;
    }
    return k;
  }
  
  /* Error */
  private void b(ArrayList<l> paramArrayList)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore_3
    //   4: aload_0
    //   5: getfield 43	com/xiaomi/onetrack/b/h:b	Lcom/xiaomi/onetrack/b/g;
    //   8: invokevirtual 96	android/database/sqlite/SQLiteOpenHelper:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   11: astore 4
    //   13: aload 4
    //   15: invokevirtual 101	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   18: aload_1
    //   19: invokevirtual 107	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   22: astore_3
    //   23: aload_3
    //   24: invokeinterface 113 1 0
    //   29: ifeq +227 -> 256
    //   32: aload_3
    //   33: invokeinterface 117 1 0
    //   38: checkcast 119	com/xiaomi/onetrack/b/l
    //   41: astore_1
    //   42: new 121	android/content/ContentValues
    //   45: astore_2
    //   46: aload_2
    //   47: invokespecial 122	android/content/ContentValues:<init>	()V
    //   50: aload_2
    //   51: ldc 124
    //   53: aload_1
    //   54: getfield 126	com/xiaomi/onetrack/b/l:a	Ljava/lang/String;
    //   57: invokevirtual 129	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   60: aload_2
    //   61: ldc 131
    //   63: aload_1
    //   64: getfield 134	com/xiaomi/onetrack/b/l:c	J
    //   67: invokestatic 140	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   70: invokevirtual 143	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   73: aload_1
    //   74: getfield 146	com/xiaomi/onetrack/b/l:e	Lorg/json/JSONObject;
    //   77: astore 5
    //   79: aload 5
    //   81: ifnull +14 -> 95
    //   84: aload_2
    //   85: ldc 148
    //   87: aload 5
    //   89: invokevirtual 149	org/json/JSONObject:toString	()Ljava/lang/String;
    //   92: invokevirtual 129	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   95: aload_1
    //   96: getfield 151	com/xiaomi/onetrack/b/l:d	Ljava/lang/String;
    //   99: astore 5
    //   101: aload 5
    //   103: ifnull +11 -> 114
    //   106: aload_2
    //   107: ldc 153
    //   109: aload 5
    //   111: invokevirtual 129	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   114: aload 4
    //   116: ldc 155
    //   118: ldc 157
    //   120: iconst_1
    //   121: anewarray 159	java/lang/String
    //   124: dup
    //   125: iconst_0
    //   126: aload_1
    //   127: getfield 126	com/xiaomi/onetrack/b/l:a	Ljava/lang/String;
    //   130: aastore
    //   131: invokestatic 165	android/database/DatabaseUtils:queryNumEntries	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    //   134: lconst_0
    //   135: lcmp
    //   136: ifle +60 -> 196
    //   139: aload 4
    //   141: ldc 155
    //   143: aload_2
    //   144: ldc 157
    //   146: iconst_1
    //   147: anewarray 159	java/lang/String
    //   150: dup
    //   151: iconst_0
    //   152: aload_1
    //   153: getfield 126	com/xiaomi/onetrack/b/l:a	Ljava/lang/String;
    //   156: aastore
    //   157: invokevirtual 169	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   160: istore 6
    //   162: new 69	java/lang/StringBuilder
    //   165: astore_2
    //   166: aload_2
    //   167: invokespecial 70	java/lang/StringBuilder:<init>	()V
    //   170: aload_2
    //   171: ldc 171
    //   173: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: pop
    //   177: aload_2
    //   178: iload 6
    //   180: invokevirtual 174	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   183: pop
    //   184: ldc 10
    //   186: aload_2
    //   187: invokevirtual 85	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   190: invokestatic 90	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   193: goto +45 -> 238
    //   196: aload 4
    //   198: ldc 155
    //   200: aconst_null
    //   201: aload_2
    //   202: invokevirtual 178	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   205: lstore 7
    //   207: new 69	java/lang/StringBuilder
    //   210: astore_2
    //   211: aload_2
    //   212: invokespecial 70	java/lang/StringBuilder:<init>	()V
    //   215: aload_2
    //   216: ldc 180
    //   218: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   221: pop
    //   222: aload_2
    //   223: lload 7
    //   225: invokevirtual 183	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   228: pop
    //   229: ldc 10
    //   231: aload_2
    //   232: invokevirtual 85	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   235: invokestatic 90	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   238: aload_0
    //   239: getfield 31	com/xiaomi/onetrack/b/h:d	Ljava/util/concurrent/ConcurrentHashMap;
    //   242: aload_1
    //   243: getfield 126	com/xiaomi/onetrack/b/l:a	Ljava/lang/String;
    //   246: getstatic 189	java/lang/Boolean:TRUE	Ljava/lang/Boolean;
    //   249: invokevirtual 192	java/util/concurrent/ConcurrentHashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   252: pop
    //   253: goto -230 -> 23
    //   256: aload 4
    //   258: invokevirtual 195	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   261: aload 4
    //   263: invokevirtual 198	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   266: goto +93 -> 359
    //   269: astore_3
    //   270: new 69	java/lang/StringBuilder
    //   273: dup
    //   274: invokespecial 70	java/lang/StringBuilder:<init>	()V
    //   277: astore_1
    //   278: goto +59 -> 337
    //   281: astore_1
    //   282: aload 4
    //   284: astore_3
    //   285: goto +75 -> 360
    //   288: astore_3
    //   289: aload 4
    //   291: astore_1
    //   292: aload_3
    //   293: astore 4
    //   295: goto +11 -> 306
    //   298: astore_1
    //   299: goto +61 -> 360
    //   302: astore 4
    //   304: aload_2
    //   305: astore_1
    //   306: aload_1
    //   307: astore_3
    //   308: ldc 10
    //   310: ldc 200
    //   312: aload 4
    //   314: invokestatic 203	com/xiaomi/onetrack/util/p:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   317: aload_1
    //   318: ifnull +41 -> 359
    //   321: aload_1
    //   322: invokevirtual 198	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   325: goto +34 -> 359
    //   328: astore_3
    //   329: new 69	java/lang/StringBuilder
    //   332: dup
    //   333: invokespecial 70	java/lang/StringBuilder:<init>	()V
    //   336: astore_1
    //   337: aload_1
    //   338: ldc 205
    //   340: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   343: pop
    //   344: aload_1
    //   345: aload_3
    //   346: invokevirtual 208	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   349: pop
    //   350: ldc 10
    //   352: aload_1
    //   353: invokevirtual 85	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   356: invokestatic 210	com/xiaomi/onetrack/util/p:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   359: return
    //   360: aload_3
    //   361: ifnull +45 -> 406
    //   364: aload_3
    //   365: invokevirtual 198	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   368: goto +38 -> 406
    //   371: astore_3
    //   372: new 69	java/lang/StringBuilder
    //   375: dup
    //   376: invokespecial 70	java/lang/StringBuilder:<init>	()V
    //   379: astore 4
    //   381: aload 4
    //   383: ldc 205
    //   385: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   388: pop
    //   389: aload 4
    //   391: aload_3
    //   392: invokevirtual 208	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   395: pop
    //   396: ldc 10
    //   398: aload 4
    //   400: invokevirtual 85	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   403: invokestatic 210	com/xiaomi/onetrack/util/p:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   406: aload_1
    //   407: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	408	0	this	h
    //   0	408	1	paramArrayList	ArrayList<l>
    //   1	304	2	localObject1	Object
    //   3	30	3	localIterator	java.util.Iterator
    //   269	1	3	localException1	Exception
    //   284	1	3	localObject2	Object
    //   288	5	3	localException2	Exception
    //   307	1	3	localArrayList	ArrayList<l>
    //   328	37	3	localException3	Exception
    //   371	21	3	localException4	Exception
    //   11	283	4	localObject3	Object
    //   302	11	4	localException5	Exception
    //   379	20	4	localStringBuilder	StringBuilder
    //   77	33	5	localObject4	Object
    //   160	19	6	i	int
    //   205	19	7	l	long
    // Exception table:
    //   from	to	target	type
    //   261	266	269	java/lang/Exception
    //   13	23	281	finally
    //   23	79	281	finally
    //   84	95	281	finally
    //   95	101	281	finally
    //   106	114	281	finally
    //   114	193	281	finally
    //   196	238	281	finally
    //   238	253	281	finally
    //   256	261	281	finally
    //   13	23	288	java/lang/Exception
    //   23	79	288	java/lang/Exception
    //   84	95	288	java/lang/Exception
    //   95	101	288	java/lang/Exception
    //   106	114	288	java/lang/Exception
    //   114	193	288	java/lang/Exception
    //   196	238	288	java/lang/Exception
    //   238	253	288	java/lang/Exception
    //   256	261	288	java/lang/Exception
    //   4	13	298	finally
    //   308	317	298	finally
    //   4	13	302	java/lang/Exception
    //   321	325	328	java/lang/Exception
    //   364	368	371	java/lang/Exception
  }
  
  private JSONObject c(String paramString1, String paramString2)
  {
    if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString2))) {
      try
      {
        if ((this.c.get(paramString1) == null) || ((this.d.containsKey(paramString1)) && (((Boolean)this.d.get(paramString1)).booleanValue()))) {
          b(paramString1);
        }
        paramString1 = (l)this.c.get(paramString1);
        if (paramString1 != null)
        {
          paramString1 = paramString1.e;
          if (paramString1 != null)
          {
            JSONArray localJSONArray = paramString1.optJSONArray("events");
            if (localJSONArray != null) {
              for (int i = 0; i < localJSONArray.length(); i++)
              {
                paramString1 = localJSONArray.getJSONObject(i);
                if (TextUtils.equals(paramString2, paramString1.optString("event")))
                {
                  if (p.a)
                  {
                    paramString2 = new java/lang/StringBuilder;
                    paramString2.<init>();
                    paramString2.append("getEventConfig:");
                    paramString2.append(paramString1.toString());
                    p.a("ConfigDbManager", paramString2.toString());
                  }
                  return paramString1;
                }
              }
            }
          }
        }
        return null;
      }
      catch (Exception paramString2)
      {
        paramString1 = new StringBuilder();
        paramString1.append("getEventConfig error: ");
        paramString1.append(paramString2.toString());
        Log.e("ConfigDbManager", paramString1.toString());
      }
    }
  }
  
  public double a(String paramString1, String paramString2, String paramString3, double paramDouble)
  {
    try
    {
      paramString1 = c(paramString1, paramString2);
      if (paramString1 == null)
      {
        p.a("ConfigDbManager", "config not available, use default value");
        return paramDouble;
      }
      double d1 = paramString1.getDouble(paramString3);
      return d1;
    }
    catch (Exception paramString2)
    {
      paramString1 = new StringBuilder();
      paramString1.append("getDouble: ");
      paramString1.append(paramString2.toString());
      p.b("ConfigDbManager", paramString1.toString());
    }
    return paramDouble;
  }
  
  public int a(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    try
    {
      paramString1 = c(paramString1, paramString2);
      if (paramString1 == null)
      {
        p.a("ConfigDbManager", "config not available, use default value");
        return paramInt;
      }
      int i = paramString1.getInt(paramString3);
      return i;
    }
    catch (Exception paramString1)
    {
      paramString2 = new StringBuilder();
      paramString2.append("getInt: ");
      paramString2.append(paramString1.toString());
      p.b("ConfigDbManager", paramString2.toString());
    }
    return paramInt;
  }
  
  public long a(String paramString1, String paramString2, String paramString3, long paramLong)
  {
    try
    {
      paramString1 = c(paramString1, paramString2);
      if (paramString1 == null)
      {
        p.a("ConfigDbManager", "config not available, use default value");
        return paramLong;
      }
      long l = paramString1.getLong(paramString3);
      return l;
    }
    catch (Exception paramString2)
    {
      paramString1 = new StringBuilder();
      paramString1.append("getLong: ");
      paramString1.append(paramString2.toString());
      p.b("ConfigDbManager", paramString1.toString());
    }
    return paramLong;
  }
  
  public String a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    try
    {
      paramString1 = c(paramString1, paramString2);
      if (paramString1 == null)
      {
        p.a("ConfigDbManager", "config not available, use default value");
        return paramString4;
      }
      paramString1 = paramString1.getString(paramString3);
      return paramString1;
    }
    catch (Exception paramString1)
    {
      paramString2 = new StringBuilder();
      paramString2.append("getString: ");
      paramString2.append(paramString1.toString());
      p.b("ConfigDbManager", paramString2.toString());
    }
    return paramString4;
  }
  
  public void a(String paramString)
  {
    paramString = new FutureTask(new j(this, paramString), null);
    b.a(paramString);
    try
    {
      paramString.get();
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public void a(ArrayList<l> paramArrayList)
  {
    b.a(new i(this, paramArrayList));
  }
  
  public boolean a(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = f(paramString1);
      if (paramString1 != null)
      {
        JSONObject localJSONObject = paramString1.e;
        if ((localJSONObject != null) && (localJSONObject.has(paramString2)))
        {
          boolean bool = paramString1.e.optBoolean(paramString2);
          return bool;
        }
      }
    }
    catch (Exception paramString2)
    {
      paramString1 = new StringBuilder();
      paramString1.append("getAppLevelBoolean");
      paramString1.append(paramString2.toString());
      p.b("ConfigDbManager", paramString1.toString());
    }
    return false;
  }
  
  public boolean a(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    try
    {
      paramString1 = c(paramString1, paramString2);
      if (paramString1 == null)
      {
        p.a("ConfigDbManager", "config not available, use default value");
        return paramBoolean;
      }
      boolean bool = paramString1.getBoolean(paramString3);
      return bool;
    }
    catch (Exception paramString2)
    {
      paramString1 = new StringBuilder();
      paramString1.append("getBoolean: ");
      paramString1.append(paramString2.toString());
      p.b("ConfigDbManager", paramString1.toString());
    }
    return paramBoolean;
  }
  
  public long b(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {
      return 100L;
    }
    try
    {
      if (this.c.get(paramString1) == null) {
        b(paramString1);
      }
      if (this.c.get(paramString1) != null)
      {
        int i = a(paramString1, paramString2, "sample", -1);
        if (i == -1)
        {
          paramString1 = (l)this.c.get(paramString1);
          if (paramString1 != null)
          {
            paramString2 = new java/lang/StringBuilder;
            paramString2.<init>();
            paramString2.append("will return common sample ");
            paramString2.append(paramString1.b);
            p.a("ConfigDbManager", paramString2.toString());
            return paramString1.b;
          }
        }
        paramString1 = new java/lang/StringBuilder;
        paramString1.<init>();
        paramString1.append("will return event sample ");
        paramString1.append(i);
        p.a("ConfigDbManager", paramString1.toString());
        return i;
      }
    }
    catch (Exception paramString1)
    {
      paramString2 = new StringBuilder();
      paramString2.append("getAppEventSample");
      paramString2.append(paramString1.toString());
      p.b("ConfigDbManager", paramString2.toString());
      p.a("ConfigDbManager", "will return def sample");
    }
    return 100L;
  }
  
  public void b(String paramString)
  {
    Object localObject = new FutureTask(new k(this, paramString));
    b.a((Runnable)localObject);
    try
    {
      l locall = (l)((FutureTask)localObject).get(5L, TimeUnit.SECONDS);
      if (locall != null)
      {
        this.c.put(paramString, locall);
        this.d.put(paramString, Boolean.FALSE);
        if (p.a)
        {
          localObject = new java/lang/StringBuilder;
          ((StringBuilder)localObject).<init>();
          ((StringBuilder)localObject).append("getConfig   appId :");
          ((StringBuilder)localObject).append(paramString);
          ((StringBuilder)localObject).append(" config: ");
          ((StringBuilder)localObject).append(locall.toString());
          p.a("ConfigDbManager", ((StringBuilder)localObject).toString());
        }
      }
    }
    catch (Exception paramString)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("getConfig error: ");
      ((StringBuilder)localObject).append(paramString.toString());
      p.b("ConfigDbManager", ((StringBuilder)localObject).toString());
    }
  }
  
  public String c(String paramString)
  {
    paramString = f(paramString);
    if (paramString != null)
    {
      paramString = paramString.e;
      if (paramString != null) {
        return paramString.optString("bannedParams");
      }
    }
    return "";
  }
  
  public String d(String paramString)
  {
    paramString = f(paramString);
    if (paramString != null) {
      return paramString.d;
    }
    return "";
  }
  
  public int e(String paramString)
  {
    paramString = f(paramString);
    if (paramString != null)
    {
      paramString = paramString.e;
      if (paramString != null) {
        return paramString.optInt("version");
      }
    }
    return 0;
  }
  
  public l f(String paramString)
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append("getAppConfigData start, appId: ");
    localStringBuilder1.append(paramString);
    p.a("ConfigDbManager", localStringBuilder1.toString());
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append("mUpdated: ");
    localStringBuilder1.append(this.d);
    localStringBuilder1.append(",ruleDataMap.get(appId): ");
    localStringBuilder1.append(this.c.get(paramString));
    p.a("ConfigDbManager", localStringBuilder1.toString());
    try
    {
      if ((this.c.get(paramString) == null) || ((this.d.containsKey(paramString)) && (((Boolean)this.d.get(paramString)).booleanValue()))) {
        b(paramString);
      }
    }
    catch (Exception localException)
    {
      StringBuilder localStringBuilder2 = new StringBuilder();
      localStringBuilder2.append("getConfig error: ");
      localStringBuilder2.append(localException.getMessage());
      p.b("ConfigDbManager", localStringBuilder2.toString());
    }
    return (l)this.c.get(paramString);
  }
  
  private static class a
  {
    private static final h a = new h(null);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.b.h
 * JD-Core Version:    0.7.0.1
 */