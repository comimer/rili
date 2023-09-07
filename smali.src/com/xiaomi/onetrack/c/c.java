package com.xiaomi.onetrack.c;

import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.IntentFilter;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.xiaomi.onetrack.b.n;
import com.xiaomi.onetrack.util.aa;
import com.xiaomi.onetrack.util.p;
import java.util.ArrayList;
import org.json.JSONObject;

public class c
{
  private static final String a = "EventManager";
  private static final boolean b = false;
  private static final int c = 204800;
  private static final int d = 307200;
  private static final int e = 300;
  private static final String f = "priority ASC, _id ASC";
  private static final int g = 7;
  private static c h;
  private static BroadcastReceiver j = new d();
  private a i = new a(com.xiaomi.onetrack.f.a.a());
  
  private c()
  {
    b();
  }
  
  public static c a()
  {
    if (h == null) {
      a(com.xiaomi.onetrack.f.a.b());
    }
    return h;
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    return new String(com.xiaomi.onetrack.d.a.b(paramArrayOfByte, com.xiaomi.onetrack.d.d.a(com.xiaomi.onetrack.d.c.a(), true).getBytes()));
  }
  
  public static void a(Context paramContext)
  {
    if (h == null) {
      try
      {
        if (h == null)
        {
          c localc = new com/xiaomi/onetrack/c/c;
          localc.<init>();
          h = localc;
        }
      }
      finally {}
    }
    b(paramContext);
  }
  
  public static byte[] a(String paramString)
  {
    String str = com.xiaomi.onetrack.d.d.a(com.xiaomi.onetrack.d.c.a(), true);
    return com.xiaomi.onetrack.d.a.a(paramString.getBytes(), str.getBytes());
  }
  
  private static void b(Context paramContext)
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.SCREEN_ON");
    localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
    paramContext.registerReceiver(j, localIntentFilter);
  }
  
  private void b(com.xiaomi.onetrack.f.b paramb)
  {
    synchronized (this.i)
    {
      if (!paramb.i())
      {
        localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        ((StringBuilder)localObject).append("addEventToDatabase event is inValid, event:");
        ((StringBuilder)localObject).append(paramb.e());
        p.c("EventManager", ((StringBuilder)localObject).toString());
        return;
      }
      Object localObject = this.i.getWritableDatabase();
      ContentValues localContentValues = new android/content/ContentValues;
      localContentValues.<init>();
      localContentValues.put("appid", paramb.c());
      localContentValues.put("package", paramb.d());
      localContentValues.put("event_name", paramb.e());
      localContentValues.put("priority", Integer.valueOf(paramb.f()));
      localContentValues.put("timestamp", Long.valueOf(System.currentTimeMillis()));
      byte[] arrayOfByte = a(paramb.g().toString());
      if (arrayOfByte.length > 204800)
      {
        p.b("EventManager", "Too large data, discard ***");
        return;
      }
      localContentValues.put("data", arrayOfByte);
      long l = ((SQLiteDatabase)localObject).insert("events", null, localContentValues);
      localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      ((StringBuilder)localObject).append("DB-Thread: EventManager.addEventToDatabase , row=");
      ((StringBuilder)localObject).append(l);
      p.a("EventManager", ((StringBuilder)localObject).toString());
      if (l != -1L)
      {
        if (p.a)
        {
          localObject = new java/lang/StringBuilder;
          ((StringBuilder)localObject).<init>();
          ((StringBuilder)localObject).append("添加后，DB 中事件个数为 ");
          ((StringBuilder)localObject).append(c());
          p.a("EventManager", ((StringBuilder)localObject).toString());
        }
        l = System.currentTimeMillis();
        if ("onetrack_active".equals(paramb.e())) {
          aa.a(l);
        }
        n.a(false);
      }
      return;
    }
  }
  
  private void d()
  {
    try
    {
      this.i.getWritableDatabase().delete("events", null, null);
      p.a("EventManager", "delete table events");
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public int a(ArrayList<Long> paramArrayList)
  {
    a locala = this.i;
    if (paramArrayList != null) {}
    try
    {
      int k = paramArrayList.size();
      if (k != 0) {
        try
        {
          SQLiteDatabase localSQLiteDatabase = this.i.getWritableDatabase();
          k = Long.toString(((Long)paramArrayList.get(0)).longValue()).length();
          boolean bool = true;
          int m = paramArrayList.size();
          localStringBuilder = new java/lang/StringBuilder;
          localStringBuilder.<init>((k + 1) * m + 16);
          localStringBuilder.append("_id");
          localStringBuilder.append(" in (");
          localStringBuilder.append(paramArrayList.get(0));
          m = paramArrayList.size();
          for (k = 1; k < m; k++)
          {
            localStringBuilder.append(",");
            localStringBuilder.append(paramArrayList.get(k));
          }
          localStringBuilder.append(")");
          k = localSQLiteDatabase.delete("events", localStringBuilder.toString(), null);
          paramArrayList = new java/lang/StringBuilder;
          paramArrayList.<init>();
          paramArrayList.append("deleted events count ");
          paramArrayList.append(k);
          p.a("EventManager", paramArrayList.toString());
          long l = a().c();
          if (l != 0L) {
            bool = false;
          }
          n.a(bool);
          paramArrayList = new java/lang/StringBuilder;
          paramArrayList.<init>();
          paramArrayList.append("after delete DB record remains=");
          paramArrayList.append(l);
          p.a("EventManager", paramArrayList.toString());
          return k;
        }
        catch (Exception paramArrayList)
        {
          StringBuilder localStringBuilder = new java/lang/StringBuilder;
          localStringBuilder.<init>();
          localStringBuilder.append("e=");
          localStringBuilder.append(paramArrayList);
          p.b("EventManager", localStringBuilder.toString());
          return 0;
        }
      }
      return 0;
    }
    finally {}
  }
  
  /* Error */
  public h a(int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield 52	com/xiaomi/onetrack/c/c:i	Lcom/xiaomi/onetrack/c/c$a;
    //   6: invokevirtual 311	android/database/sqlite/SQLiteOpenHelper:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   9: ldc 209
    //   11: aconst_null
    //   12: aconst_null
    //   13: aconst_null
    //   14: aconst_null
    //   15: aconst_null
    //   16: ldc 23
    //   18: invokevirtual 315	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   21: astore_3
    //   22: aload_3
    //   23: astore_2
    //   24: aload_3
    //   25: ldc_w 283
    //   28: invokeinterface 321 2 0
    //   33: istore 4
    //   35: aload_3
    //   36: astore_2
    //   37: aload_3
    //   38: ldc 149
    //   40: invokeinterface 321 2 0
    //   45: istore 5
    //   47: aload_3
    //   48: astore_2
    //   49: aload_3
    //   50: ldc 156
    //   52: invokeinterface 321 2 0
    //   57: pop
    //   58: aload_3
    //   59: astore_2
    //   60: aload_3
    //   61: ldc 160
    //   63: invokeinterface 321 2 0
    //   68: pop
    //   69: aload_3
    //   70: astore_2
    //   71: aload_3
    //   72: ldc 162
    //   74: invokeinterface 321 2 0
    //   79: istore 6
    //   81: aload_3
    //   82: astore_2
    //   83: aload_3
    //   84: ldc 204
    //   86: invokeinterface 321 2 0
    //   91: istore 7
    //   93: aload_3
    //   94: astore_2
    //   95: aload_3
    //   96: ldc 176
    //   98: invokeinterface 321 2 0
    //   103: istore 8
    //   105: aload_3
    //   106: astore_2
    //   107: new 323	org/json/JSONArray
    //   110: astore 9
    //   112: aload_3
    //   113: astore_2
    //   114: aload 9
    //   116: invokespecial 324	org/json/JSONArray:<init>	()V
    //   119: aload_3
    //   120: astore_2
    //   121: new 262	java/util/ArrayList
    //   124: astore 10
    //   126: aload_3
    //   127: astore_2
    //   128: aload 10
    //   130: invokespecial 325	java/util/ArrayList:<init>	()V
    //   133: iconst_1
    //   134: istore 11
    //   136: iconst_0
    //   137: istore 12
    //   139: iconst_0
    //   140: istore 13
    //   142: iload 12
    //   144: istore 14
    //   146: aload_3
    //   147: astore_2
    //   148: aload_3
    //   149: invokeinterface 328 1 0
    //   154: ifeq +308 -> 462
    //   157: aload_3
    //   158: astore_2
    //   159: aload_3
    //   160: iload 4
    //   162: invokeinterface 332 2 0
    //   167: lstore 15
    //   169: aload_3
    //   170: astore_2
    //   171: aload_3
    //   172: iload 8
    //   174: invokeinterface 332 2 0
    //   179: pop2
    //   180: aload_3
    //   181: astore_2
    //   182: aload_3
    //   183: iload 5
    //   185: invokeinterface 336 2 0
    //   190: pop
    //   191: aload_3
    //   192: astore_2
    //   193: aload_3
    //   194: iload 7
    //   196: invokeinterface 340 2 0
    //   201: astore 17
    //   203: aload 17
    //   205: ifnull +15 -> 220
    //   208: aload_3
    //   209: astore_2
    //   210: aload 17
    //   212: invokestatic 342	com/xiaomi/onetrack/c/c:a	([B)Ljava/lang/String;
    //   215: astore 17
    //   217: goto +6 -> 223
    //   220: aconst_null
    //   221: astore 17
    //   223: iload 11
    //   225: ifeq +102 -> 327
    //   228: aload_3
    //   229: astore_2
    //   230: aload_3
    //   231: iload 6
    //   233: invokeinterface 346 2 0
    //   238: istore 11
    //   240: iload 11
    //   242: iload_1
    //   243: if_icmple +78 -> 321
    //   246: aload_3
    //   247: astore_2
    //   248: new 120	java/lang/StringBuilder
    //   251: astore 17
    //   253: aload_3
    //   254: astore_2
    //   255: aload 17
    //   257: invokespecial 121	java/lang/StringBuilder:<init>	()V
    //   260: aload_3
    //   261: astore_2
    //   262: aload 17
    //   264: ldc_w 348
    //   267: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   270: pop
    //   271: aload_3
    //   272: astore_2
    //   273: aload 17
    //   275: iload_1
    //   276: invokevirtual 297	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   279: pop
    //   280: aload_3
    //   281: astore_2
    //   282: aload 17
    //   284: ldc_w 350
    //   287: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   290: pop
    //   291: aload_3
    //   292: astore_2
    //   293: aload 17
    //   295: iload 11
    //   297: invokevirtual 297	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   300: pop
    //   301: aload_3
    //   302: astore_2
    //   303: ldc 10
    //   305: aload 17
    //   307: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   310: invokestatic 222	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   313: aload_3
    //   314: invokeinterface 353 1 0
    //   319: aconst_null
    //   320: areturn
    //   321: iconst_0
    //   322: istore 11
    //   324: goto +3 -> 327
    //   327: aload_3
    //   328: astore_2
    //   329: new 195	org/json/JSONObject
    //   332: astore 18
    //   334: aload_3
    //   335: astore_2
    //   336: aload 18
    //   338: aload 17
    //   340: invokespecial 355	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   343: aload_3
    //   344: astore_2
    //   345: aload 9
    //   347: aload 18
    //   349: invokevirtual 358	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   352: pop
    //   353: aload_3
    //   354: astore_2
    //   355: aload 10
    //   357: lload 15
    //   359: invokestatic 187	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   362: invokevirtual 361	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   365: pop
    //   366: iinc 12 1
    //   369: goto +17 -> 386
    //   372: astore 18
    //   374: aload_3
    //   375: astore_2
    //   376: ldc 10
    //   378: ldc_w 363
    //   381: aload 18
    //   383: invokestatic 366	com/xiaomi/onetrack/util/p:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   386: aload_3
    //   387: astore_2
    //   388: iload 13
    //   390: aload 17
    //   392: invokevirtual 278	java/lang/String:length	()I
    //   395: iadd
    //   396: istore 13
    //   398: iload 13
    //   400: ldc 18
    //   402: if_icmplt +57 -> 459
    //   405: aload_3
    //   406: astore_2
    //   407: new 120	java/lang/StringBuilder
    //   410: astore 17
    //   412: aload_3
    //   413: astore_2
    //   414: aload 17
    //   416: invokespecial 121	java/lang/StringBuilder:<init>	()V
    //   419: aload_3
    //   420: astore_2
    //   421: aload 17
    //   423: ldc_w 368
    //   426: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   429: pop
    //   430: aload_3
    //   431: astore_2
    //   432: aload 17
    //   434: iload 13
    //   436: invokevirtual 297	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   439: pop
    //   440: aload_3
    //   441: astore_2
    //   442: ldc 10
    //   444: aload 17
    //   446: invokevirtual 133	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   449: invokestatic 222	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   452: iload 12
    //   454: istore 14
    //   456: goto +6 -> 462
    //   459: goto -317 -> 142
    //   462: aload_3
    //   463: astore 17
    //   465: aload_3
    //   466: astore_2
    //   467: aload 10
    //   469: invokevirtual 265	java/util/ArrayList:size	()I
    //   472: ifle +115 -> 587
    //   475: aload_3
    //   476: astore_2
    //   477: aload_3
    //   478: invokeinterface 371 1 0
    //   483: ifeq +19 -> 502
    //   486: aload_3
    //   487: astore_2
    //   488: ldc 10
    //   490: ldc_w 373
    //   493: invokestatic 222	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   496: iconst_1
    //   497: istore 19
    //   499: goto +23 -> 522
    //   502: aload_3
    //   503: astore_2
    //   504: aload_3
    //   505: iload 6
    //   507: invokeinterface 346 2 0
    //   512: iload_1
    //   513: if_icmple +6 -> 519
    //   516: goto -20 -> 496
    //   519: iconst_0
    //   520: istore 19
    //   522: aload_3
    //   523: astore_2
    //   524: new 375	com/xiaomi/onetrack/c/h
    //   527: dup
    //   528: aload 9
    //   530: iload 14
    //   532: aload 10
    //   534: iload 19
    //   536: invokespecial 378	com/xiaomi/onetrack/c/h:<init>	(Lorg/json/JSONArray;ILjava/util/ArrayList;Z)V
    //   539: astore 17
    //   541: aload_3
    //   542: invokeinterface 353 1 0
    //   547: aload 17
    //   549: areturn
    //   550: astore 17
    //   552: goto +16 -> 568
    //   555: astore 17
    //   557: goto +44 -> 601
    //   560: astore_3
    //   561: goto +71 -> 632
    //   564: astore 17
    //   566: aconst_null
    //   567: astore_3
    //   568: aload_3
    //   569: astore_2
    //   570: ldc 10
    //   572: ldc_w 380
    //   575: aload 17
    //   577: invokestatic 382	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   580: aload_3
    //   581: ifnull +48 -> 629
    //   584: aload_3
    //   585: astore 17
    //   587: aload 17
    //   589: invokeinterface 353 1 0
    //   594: goto +35 -> 629
    //   597: astore 17
    //   599: aconst_null
    //   600: astore_3
    //   601: aload_3
    //   602: astore_2
    //   603: ldc 10
    //   605: ldc_w 384
    //   608: aload 17
    //   610: invokestatic 366	com/xiaomi/onetrack/util/p:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   613: aload_3
    //   614: astore_2
    //   615: aload_0
    //   616: invokespecial 386	com/xiaomi/onetrack/c/c:d	()V
    //   619: aload_3
    //   620: ifnull +9 -> 629
    //   623: aload_3
    //   624: astore 17
    //   626: goto -39 -> 587
    //   629: aconst_null
    //   630: areturn
    //   631: astore_3
    //   632: aload_2
    //   633: ifnull +9 -> 642
    //   636: aload_2
    //   637: invokeinterface 353 1 0
    //   642: aload_3
    //   643: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	644	0	this	c
    //   0	644	1	paramInt	int
    //   1	636	2	localObject1	Object
    //   21	521	3	localCursor	android.database.Cursor
    //   560	1	3	localObject2	Object
    //   567	57	3	localObject3	Object
    //   631	12	3	localObject4	Object
    //   33	128	4	k	int
    //   45	139	5	m	int
    //   79	427	6	n	int
    //   91	104	7	i1	int
    //   103	70	8	i2	int
    //   110	419	9	localJSONArray	org.json.JSONArray
    //   124	409	10	localArrayList	ArrayList
    //   134	189	11	i3	int
    //   137	316	12	i4	int
    //   140	295	13	i5	int
    //   144	387	14	i6	int
    //   167	191	15	l	long
    //   201	347	17	localObject5	Object
    //   550	1	17	localException1	Exception
    //   555	1	17	localSQLiteBlobTooBigException1	android.database.sqlite.SQLiteBlobTooBigException
    //   564	12	17	localException2	Exception
    //   585	3	17	localObject6	Object
    //   597	12	17	localSQLiteBlobTooBigException2	android.database.sqlite.SQLiteBlobTooBigException
    //   624	1	17	localObject7	Object
    //   332	16	18	localJSONObject	JSONObject
    //   372	10	18	localException3	Exception
    //   497	38	19	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   345	353	372	java/lang/Exception
    //   355	366	372	java/lang/Exception
    //   24	35	550	java/lang/Exception
    //   37	47	550	java/lang/Exception
    //   49	58	550	java/lang/Exception
    //   60	69	550	java/lang/Exception
    //   71	81	550	java/lang/Exception
    //   83	93	550	java/lang/Exception
    //   95	105	550	java/lang/Exception
    //   107	112	550	java/lang/Exception
    //   114	119	550	java/lang/Exception
    //   121	126	550	java/lang/Exception
    //   128	133	550	java/lang/Exception
    //   148	157	550	java/lang/Exception
    //   159	169	550	java/lang/Exception
    //   171	180	550	java/lang/Exception
    //   182	191	550	java/lang/Exception
    //   193	203	550	java/lang/Exception
    //   210	217	550	java/lang/Exception
    //   230	240	550	java/lang/Exception
    //   248	253	550	java/lang/Exception
    //   255	260	550	java/lang/Exception
    //   262	271	550	java/lang/Exception
    //   273	280	550	java/lang/Exception
    //   282	291	550	java/lang/Exception
    //   293	301	550	java/lang/Exception
    //   303	313	550	java/lang/Exception
    //   329	334	550	java/lang/Exception
    //   336	343	550	java/lang/Exception
    //   376	386	550	java/lang/Exception
    //   388	398	550	java/lang/Exception
    //   407	412	550	java/lang/Exception
    //   414	419	550	java/lang/Exception
    //   421	430	550	java/lang/Exception
    //   432	440	550	java/lang/Exception
    //   442	452	550	java/lang/Exception
    //   467	475	550	java/lang/Exception
    //   477	486	550	java/lang/Exception
    //   488	496	550	java/lang/Exception
    //   504	516	550	java/lang/Exception
    //   524	541	550	java/lang/Exception
    //   24	35	555	android/database/sqlite/SQLiteBlobTooBigException
    //   37	47	555	android/database/sqlite/SQLiteBlobTooBigException
    //   49	58	555	android/database/sqlite/SQLiteBlobTooBigException
    //   60	69	555	android/database/sqlite/SQLiteBlobTooBigException
    //   71	81	555	android/database/sqlite/SQLiteBlobTooBigException
    //   83	93	555	android/database/sqlite/SQLiteBlobTooBigException
    //   95	105	555	android/database/sqlite/SQLiteBlobTooBigException
    //   107	112	555	android/database/sqlite/SQLiteBlobTooBigException
    //   114	119	555	android/database/sqlite/SQLiteBlobTooBigException
    //   121	126	555	android/database/sqlite/SQLiteBlobTooBigException
    //   128	133	555	android/database/sqlite/SQLiteBlobTooBigException
    //   148	157	555	android/database/sqlite/SQLiteBlobTooBigException
    //   159	169	555	android/database/sqlite/SQLiteBlobTooBigException
    //   171	180	555	android/database/sqlite/SQLiteBlobTooBigException
    //   182	191	555	android/database/sqlite/SQLiteBlobTooBigException
    //   193	203	555	android/database/sqlite/SQLiteBlobTooBigException
    //   210	217	555	android/database/sqlite/SQLiteBlobTooBigException
    //   230	240	555	android/database/sqlite/SQLiteBlobTooBigException
    //   248	253	555	android/database/sqlite/SQLiteBlobTooBigException
    //   255	260	555	android/database/sqlite/SQLiteBlobTooBigException
    //   262	271	555	android/database/sqlite/SQLiteBlobTooBigException
    //   273	280	555	android/database/sqlite/SQLiteBlobTooBigException
    //   282	291	555	android/database/sqlite/SQLiteBlobTooBigException
    //   293	301	555	android/database/sqlite/SQLiteBlobTooBigException
    //   303	313	555	android/database/sqlite/SQLiteBlobTooBigException
    //   329	334	555	android/database/sqlite/SQLiteBlobTooBigException
    //   336	343	555	android/database/sqlite/SQLiteBlobTooBigException
    //   376	386	555	android/database/sqlite/SQLiteBlobTooBigException
    //   388	398	555	android/database/sqlite/SQLiteBlobTooBigException
    //   407	412	555	android/database/sqlite/SQLiteBlobTooBigException
    //   414	419	555	android/database/sqlite/SQLiteBlobTooBigException
    //   421	430	555	android/database/sqlite/SQLiteBlobTooBigException
    //   432	440	555	android/database/sqlite/SQLiteBlobTooBigException
    //   442	452	555	android/database/sqlite/SQLiteBlobTooBigException
    //   467	475	555	android/database/sqlite/SQLiteBlobTooBigException
    //   477	486	555	android/database/sqlite/SQLiteBlobTooBigException
    //   488	496	555	android/database/sqlite/SQLiteBlobTooBigException
    //   504	516	555	android/database/sqlite/SQLiteBlobTooBigException
    //   524	541	555	android/database/sqlite/SQLiteBlobTooBigException
    //   2	22	560	finally
    //   2	22	564	java/lang/Exception
    //   2	22	597	android/database/sqlite/SQLiteBlobTooBigException
    //   24	35	631	finally
    //   37	47	631	finally
    //   49	58	631	finally
    //   60	69	631	finally
    //   71	81	631	finally
    //   83	93	631	finally
    //   95	105	631	finally
    //   107	112	631	finally
    //   114	119	631	finally
    //   121	126	631	finally
    //   128	133	631	finally
    //   148	157	631	finally
    //   159	169	631	finally
    //   171	180	631	finally
    //   182	191	631	finally
    //   193	203	631	finally
    //   210	217	631	finally
    //   230	240	631	finally
    //   248	253	631	finally
    //   255	260	631	finally
    //   262	271	631	finally
    //   273	280	631	finally
    //   282	291	631	finally
    //   293	301	631	finally
    //   303	313	631	finally
    //   329	334	631	finally
    //   336	343	631	finally
    //   345	353	631	finally
    //   355	366	631	finally
    //   376	386	631	finally
    //   388	398	631	finally
    //   407	412	631	finally
    //   414	419	631	finally
    //   421	430	631	finally
    //   432	440	631	finally
    //   442	452	631	finally
    //   467	475	631	finally
    //   477	486	631	finally
    //   488	496	631	finally
    //   504	516	631	finally
    //   524	541	631	finally
    //   570	580	631	finally
    //   603	613	631	finally
    //   615	619	631	finally
  }
  
  public void a(com.xiaomi.onetrack.f.b paramb)
  {
    try
    {
      f localf = new com/xiaomi/onetrack/c/f;
      localf.<init>(this, paramb);
      b.a(localf);
      return;
    }
    finally
    {
      paramb = finally;
      throw paramb;
    }
  }
  
  public void b()
  {
    b.a(new g(this));
  }
  
  public long c()
  {
    return DatabaseUtils.queryNumEntries(this.i.getReadableDatabase(), "events");
  }
  
  private static class a
    extends SQLiteOpenHelper
  {
    public static final String a = "onetrack";
    public static final String b = "events";
    public static final String c = "_id";
    public static final String d = "appid";
    public static final String e = "package";
    public static final String f = "event_name";
    public static final String g = "priority";
    public static final String h = "data";
    public static final String i = "timestamp";
    private static final int j = 1;
    private static final String k = "CREATE TABLE events (_id INTEGER PRIMARY KEY AUTOINCREMENT,appid TEXT,package TEXT,event_name TEXT,priority INTEGER,data BLOB,timestamp INTEGER)";
    
    public a(Context paramContext)
    {
      super("onetrack", null, 1);
    }
    
    public void onCreate(SQLiteDatabase paramSQLiteDatabase)
    {
      paramSQLiteDatabase.execSQL("CREATE TABLE events (_id INTEGER PRIMARY KEY AUTOINCREMENT,appid TEXT,package TEXT,event_name TEXT,priority INTEGER,data BLOB,timestamp INTEGER)");
    }
    
    public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.c.c
 * JD-Core Version:    0.7.0.1
 */