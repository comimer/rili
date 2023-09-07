package com.xiaomi.onetrack.a;

import android.content.Context;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.xiaomi.onetrack.b.n;
import com.xiaomi.onetrack.util.p;
import java.util.ArrayList;

public class a
{
  private static final String a = "AdMonitorManager";
  private static final int b = 204800;
  private static final int c = 100;
  private static final int d = 4;
  private static final int e = 300;
  private static final String f = "_id ASC";
  private static final int g = 7;
  private static a h;
  private final a i = new a(com.xiaomi.onetrack.f.a.a());
  
  private a()
  {
    c();
  }
  
  /* Error */
  private long a(com.xiaomi.onetrack.a.b.a parama)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 42	com/xiaomi/onetrack/a/a:i	Lcom/xiaomi/onetrack/a/a$a;
    //   4: astore_2
    //   5: aload_2
    //   6: monitorenter
    //   7: aload_1
    //   8: invokevirtual 54	com/xiaomi/onetrack/a/b/a:h	()Z
    //   11: ifne +42 -> 53
    //   14: new 56	java/lang/StringBuilder
    //   17: astore_3
    //   18: aload_3
    //   19: invokespecial 57	java/lang/StringBuilder:<init>	()V
    //   22: aload_3
    //   23: ldc 59
    //   25: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: pop
    //   29: aload_3
    //   30: aload_1
    //   31: invokevirtual 66	com/xiaomi/onetrack/a/b/a:a	()Ljava/lang/String;
    //   34: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: pop
    //   38: ldc 10
    //   40: aload_3
    //   41: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   44: invokestatic 74	com/xiaomi/onetrack/util/p:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   47: aload_2
    //   48: monitorexit
    //   49: ldc2_w 75
    //   52: lreturn
    //   53: aload_0
    //   54: getfield 42	com/xiaomi/onetrack/a/a:i	Lcom/xiaomi/onetrack/a/a$a;
    //   57: invokevirtual 82	android/database/sqlite/SQLiteOpenHelper:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   60: astore 4
    //   62: new 84	android/content/ContentValues
    //   65: astore_3
    //   66: aload_3
    //   67: invokespecial 85	android/content/ContentValues:<init>	()V
    //   70: aload_3
    //   71: ldc 87
    //   73: aload_1
    //   74: invokevirtual 89	com/xiaomi/onetrack/a/b/a:e	()Ljava/lang/String;
    //   77: invokevirtual 92	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   80: aload_3
    //   81: ldc 94
    //   83: aload_1
    //   84: invokevirtual 96	com/xiaomi/onetrack/a/b/a:f	()Ljava/lang/String;
    //   87: invokevirtual 92	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   90: aload_3
    //   91: ldc 98
    //   93: aload_1
    //   94: invokevirtual 66	com/xiaomi/onetrack/a/b/a:a	()Ljava/lang/String;
    //   97: invokevirtual 92	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   100: aload_3
    //   101: ldc 100
    //   103: aload_1
    //   104: invokevirtual 103	com/xiaomi/onetrack/a/b/a:d	()J
    //   107: invokestatic 109	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   110: invokevirtual 112	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   113: aload_3
    //   114: ldc 114
    //   116: aload_1
    //   117: invokevirtual 116	com/xiaomi/onetrack/a/b/a:c	()Ljava/lang/String;
    //   120: invokevirtual 92	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   123: aload 4
    //   125: ldc 118
    //   127: aconst_null
    //   128: aload_3
    //   129: invokevirtual 124	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   132: lstore 5
    //   134: new 56	java/lang/StringBuilder
    //   137: astore_1
    //   138: aload_1
    //   139: invokespecial 57	java/lang/StringBuilder:<init>	()V
    //   142: aload_1
    //   143: ldc 126
    //   145: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   148: pop
    //   149: aload_1
    //   150: lload 5
    //   152: invokevirtual 129	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   155: pop
    //   156: ldc 10
    //   158: aload_1
    //   159: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   162: invokestatic 131	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   165: getstatic 134	com/xiaomi/onetrack/util/p:a	Z
    //   168: ifeq +36 -> 204
    //   171: new 56	java/lang/StringBuilder
    //   174: astore_1
    //   175: aload_1
    //   176: invokespecial 57	java/lang/StringBuilder:<init>	()V
    //   179: aload_1
    //   180: ldc 136
    //   182: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   185: pop
    //   186: aload_1
    //   187: aload_0
    //   188: invokevirtual 138	com/xiaomi/onetrack/a/a:e	()J
    //   191: invokevirtual 129	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   194: pop
    //   195: ldc 10
    //   197: aload_1
    //   198: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   201: invokestatic 131	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   204: aload_2
    //   205: monitorexit
    //   206: lload 5
    //   208: lreturn
    //   209: astore_1
    //   210: new 56	java/lang/StringBuilder
    //   213: astore_3
    //   214: aload_3
    //   215: invokespecial 57	java/lang/StringBuilder:<init>	()V
    //   218: aload_3
    //   219: ldc 140
    //   221: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   224: pop
    //   225: aload_3
    //   226: aload_1
    //   227: invokevirtual 145	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   230: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   233: pop
    //   234: ldc 10
    //   236: aload_3
    //   237: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   240: invokestatic 131	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   243: aload_2
    //   244: monitorexit
    //   245: ldc2_w 75
    //   248: lreturn
    //   249: astore_1
    //   250: aload_2
    //   251: monitorexit
    //   252: aload_1
    //   253: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	254	0	this	a
    //   0	254	1	parama	com.xiaomi.onetrack.a.b.a
    //   4	247	2	locala	a
    //   17	220	3	localObject	Object
    //   132	75	5	l	long
    // Exception table:
    //   from	to	target	type
    //   7	47	209	finally
    //   53	204	209	finally
    //   47	49	249	finally
    //   204	206	249	finally
    //   210	245	249	finally
    //   250	252	249	finally
  }
  
  public static a a()
  {
    if (h == null) {
      a(com.xiaomi.onetrack.f.a.a());
    }
    return h;
  }
  
  public static void a(Context paramContext)
  {
    if (h == null) {
      try
      {
        if (h == null)
        {
          paramContext = new com/xiaomi/onetrack/a/a;
          paramContext.<init>();
          h = paramContext;
        }
      }
      finally {}
    }
  }
  
  private void f()
  {
    try
    {
      this.i.getWritableDatabase().delete("monitor", null, null);
      p.a("AdMonitorManager", "delete table monitor");
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public int a(ArrayList<Integer> paramArrayList)
  {
    a locala = this.i;
    if (paramArrayList != null) {}
    try
    {
      int j = paramArrayList.size();
      if (j != 0) {
        try
        {
          SQLiteDatabase localSQLiteDatabase = this.i.getWritableDatabase();
          int k = Long.toString(((Integer)paramArrayList.get(0)).intValue()).length();
          j = 1;
          int m = paramArrayList.size();
          StringBuilder localStringBuilder = new java/lang/StringBuilder;
          localStringBuilder.<init>((k + 1) * m + 16);
          localStringBuilder.append("_id");
          localStringBuilder.append(" in (");
          localStringBuilder.append(paramArrayList.get(0));
          k = paramArrayList.size();
          while (j < k)
          {
            localStringBuilder.append(",");
            localStringBuilder.append(paramArrayList.get(j));
            j++;
          }
          localStringBuilder.append(")");
          j = localSQLiteDatabase.delete("monitor", localStringBuilder.toString(), null);
          paramArrayList = new java/lang/StringBuilder;
          paramArrayList.<init>();
          paramArrayList.append("*** *** deleted ad monitor count ");
          paramArrayList.append(j);
          p.a("AdMonitorManager", paramArrayList.toString());
          if (p.a)
          {
            paramArrayList = new java/lang/StringBuilder;
            paramArrayList.<init>();
            paramArrayList.append("after delete ad monitor record remains=");
            paramArrayList.append(e());
            p.a("AdMonitorManager", paramArrayList.toString());
          }
          return j;
        }
        catch (Exception localException)
        {
          paramArrayList = new java/lang/StringBuilder;
          paramArrayList.<init>();
          paramArrayList.append("e=");
          paramArrayList.append(localException);
          p.b("AdMonitorManager", paramArrayList.toString());
          return 0;
        }
      }
      return 0;
    }
    finally {}
  }
  
  /* Error */
  public void a(com.xiaomi.onetrack.f.b paramb)
  {
    // Byte code:
    //   0: new 217	com/xiaomi/onetrack/a/b
    //   3: astore_2
    //   4: aload_2
    //   5: aload_0
    //   6: aload_1
    //   7: invokespecial 220	com/xiaomi/onetrack/a/b:<init>	(Lcom/xiaomi/onetrack/a/a;Lcom/xiaomi/onetrack/f/b;)V
    //   10: aload_2
    //   11: invokestatic 225	com/xiaomi/onetrack/a/a/a:a	(Ljava/lang/Runnable;)V
    //   14: goto +37 -> 51
    //   17: astore_2
    //   18: new 56	java/lang/StringBuilder
    //   21: dup
    //   22: invokespecial 57	java/lang/StringBuilder:<init>	()V
    //   25: astore_1
    //   26: aload_1
    //   27: ldc 227
    //   29: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: pop
    //   33: aload_1
    //   34: aload_2
    //   35: invokevirtual 145	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   38: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: pop
    //   42: ldc 10
    //   44: aload_1
    //   45: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   48: invokestatic 131	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   51: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	this	a
    //   0	52	1	paramb	com.xiaomi.onetrack.f.b
    //   3	8	2	localb	b
    //   17	18	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   0	14	17	finally
  }
  
  public boolean a(long paramLong1, long paramLong2, int paramInt)
  {
    boolean bool = true;
    if (paramInt <= 0) {
      return true;
    }
    if (paramInt < 4)
    {
      paramInt = n.a(paramInt - 1);
      if (Math.abs(paramLong1 - paramLong2) < paramInt) {
        bool = false;
      }
      return bool;
    }
    return false;
  }
  
  /* Error */
  public com.xiaomi.onetrack.a.c.a b()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 42	com/xiaomi/onetrack/a/a:i	Lcom/xiaomi/onetrack/a/a$a;
    //   4: astore_1
    //   5: aload_1
    //   6: monitorenter
    //   7: aconst_null
    //   8: astore_2
    //   9: aload_0
    //   10: getfield 42	com/xiaomi/onetrack/a/a:i	Lcom/xiaomi/onetrack/a/a$a;
    //   13: invokevirtual 245	android/database/sqlite/SQLiteOpenHelper:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   16: ldc 118
    //   18: aconst_null
    //   19: aconst_null
    //   20: aconst_null
    //   21: aconst_null
    //   22: aconst_null
    //   23: ldc 22
    //   25: invokevirtual 249	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   28: astore_3
    //   29: aload_3
    //   30: astore_2
    //   31: aload_3
    //   32: ldc 192
    //   34: invokeinterface 255 2 0
    //   39: istore 4
    //   41: aload_3
    //   42: astore_2
    //   43: aload_3
    //   44: ldc 87
    //   46: invokeinterface 255 2 0
    //   51: pop
    //   52: aload_3
    //   53: astore_2
    //   54: aload_3
    //   55: ldc 94
    //   57: invokeinterface 255 2 0
    //   62: pop
    //   63: aload_3
    //   64: astore_2
    //   65: aload_3
    //   66: ldc 98
    //   68: invokeinterface 255 2 0
    //   73: pop
    //   74: aload_3
    //   75: astore_2
    //   76: aload_3
    //   77: ldc 100
    //   79: invokeinterface 255 2 0
    //   84: istore 5
    //   86: aload_3
    //   87: astore_2
    //   88: aload_3
    //   89: ldc 114
    //   91: invokeinterface 255 2 0
    //   96: istore 6
    //   98: aload_3
    //   99: astore_2
    //   100: aload_3
    //   101: ldc_w 257
    //   104: invokeinterface 255 2 0
    //   109: istore 7
    //   111: aload_3
    //   112: astore_2
    //   113: new 166	java/util/ArrayList
    //   116: astore 8
    //   118: aload_3
    //   119: astore_2
    //   120: aload 8
    //   122: invokespecial 258	java/util/ArrayList:<init>	()V
    //   125: aload_3
    //   126: astore_2
    //   127: invokestatic 263	java/lang/System:currentTimeMillis	()J
    //   130: lstore 9
    //   132: iconst_0
    //   133: istore 11
    //   135: aload_3
    //   136: astore_2
    //   137: aload_3
    //   138: invokeinterface 266 1 0
    //   143: ifeq +145 -> 288
    //   146: aload_3
    //   147: astore_2
    //   148: aload_3
    //   149: iload 7
    //   151: invokeinterface 269 2 0
    //   156: istore 12
    //   158: aload_3
    //   159: astore_2
    //   160: aload_3
    //   161: iload 5
    //   163: invokeinterface 273 2 0
    //   168: lstore 13
    //   170: aload_3
    //   171: astore_2
    //   172: aload_0
    //   173: lload 9
    //   175: lload 13
    //   177: iload 12
    //   179: invokevirtual 275	com/xiaomi/onetrack/a/a:a	(JJI)Z
    //   182: ifne +6 -> 188
    //   185: goto -50 -> 135
    //   188: aload_3
    //   189: astore_2
    //   190: aload_3
    //   191: iload 4
    //   193: invokeinterface 269 2 0
    //   198: istore 15
    //   200: aload_3
    //   201: astore_2
    //   202: aload_3
    //   203: iload 6
    //   205: invokeinterface 279 2 0
    //   210: astore 16
    //   212: aload_3
    //   213: astore_2
    //   214: new 51	com/xiaomi/onetrack/a/b/a
    //   217: astore 17
    //   219: aload_3
    //   220: astore_2
    //   221: aload 17
    //   223: invokespecial 280	com/xiaomi/onetrack/a/b/a:<init>	()V
    //   226: aload_3
    //   227: astore_2
    //   228: aload 17
    //   230: aload 16
    //   232: invokevirtual 283	com/xiaomi/onetrack/a/b/a:b	(Ljava/lang/String;)V
    //   235: aload_3
    //   236: astore_2
    //   237: aload 17
    //   239: iload 15
    //   241: invokevirtual 285	com/xiaomi/onetrack/a/b/a:a	(I)V
    //   244: aload_3
    //   245: astore_2
    //   246: aload 17
    //   248: lload 13
    //   250: invokevirtual 288	com/xiaomi/onetrack/a/b/a:a	(J)V
    //   253: aload_3
    //   254: astore_2
    //   255: aload 17
    //   257: iload 12
    //   259: invokevirtual 290	com/xiaomi/onetrack/a/b/a:b	(I)V
    //   262: aload_3
    //   263: astore_2
    //   264: aload 8
    //   266: aload 17
    //   268: invokevirtual 294	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   271: pop
    //   272: iinc 11 1
    //   275: iload 11
    //   277: bipush 100
    //   279: if_icmplt +6 -> 285
    //   282: goto +6 -> 288
    //   285: goto -150 -> 135
    //   288: aload_3
    //   289: astore_2
    //   290: aload 8
    //   292: invokevirtual 170	java/util/ArrayList:size	()I
    //   295: istore 6
    //   297: iconst_1
    //   298: istore 18
    //   300: iload 18
    //   302: istore 19
    //   304: iload 6
    //   306: ifle +84 -> 390
    //   309: aload_3
    //   310: astore_2
    //   311: new 56	java/lang/StringBuilder
    //   314: astore 17
    //   316: aload_3
    //   317: astore_2
    //   318: aload 17
    //   320: invokespecial 57	java/lang/StringBuilder:<init>	()V
    //   323: aload_3
    //   324: astore_2
    //   325: aload 17
    //   327: ldc_w 296
    //   330: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   333: pop
    //   334: aload_3
    //   335: astore_2
    //   336: aload 17
    //   338: aload 8
    //   340: invokevirtual 170	java/util/ArrayList:size	()I
    //   343: invokevirtual 206	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   346: pop
    //   347: aload_3
    //   348: astore_2
    //   349: ldc 10
    //   351: aload 17
    //   353: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   356: invokestatic 131	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   359: aload_3
    //   360: astore_2
    //   361: aload_3
    //   362: invokeinterface 299 1 0
    //   367: ifeq +20 -> 387
    //   370: aload_3
    //   371: astore_2
    //   372: ldc 10
    //   374: ldc_w 301
    //   377: invokestatic 131	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   380: iload 18
    //   382: istore 19
    //   384: goto +6 -> 390
    //   387: iconst_0
    //   388: istore 19
    //   390: aload_3
    //   391: astore_2
    //   392: new 303	com/xiaomi/onetrack/a/c/a
    //   395: astore 17
    //   397: aload_3
    //   398: astore_2
    //   399: aload 17
    //   401: iload 11
    //   403: aload 8
    //   405: iload 19
    //   407: invokespecial 306	com/xiaomi/onetrack/a/c/a:<init>	(ILjava/util/ArrayList;Z)V
    //   410: aload_3
    //   411: invokeinterface 309 1 0
    //   416: aload_1
    //   417: monitorexit
    //   418: aload 17
    //   420: areturn
    //   421: astore 8
    //   423: goto +16 -> 439
    //   426: astore 8
    //   428: goto +40 -> 468
    //   431: astore_3
    //   432: goto +66 -> 498
    //   435: astore 8
    //   437: aconst_null
    //   438: astore_3
    //   439: aload_3
    //   440: astore_2
    //   441: ldc 10
    //   443: ldc_w 311
    //   446: aload 8
    //   448: invokestatic 314	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   451: aload_3
    //   452: ifnull +41 -> 493
    //   455: aload_3
    //   456: invokeinterface 309 1 0
    //   461: goto +32 -> 493
    //   464: astore 8
    //   466: aconst_null
    //   467: astore_3
    //   468: aload_3
    //   469: astore_2
    //   470: ldc 10
    //   472: ldc_w 316
    //   475: aload 8
    //   477: invokestatic 318	com/xiaomi/onetrack/util/p:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   480: aload_3
    //   481: astore_2
    //   482: aload_0
    //   483: invokespecial 320	com/xiaomi/onetrack/a/a:f	()V
    //   486: aload_3
    //   487: ifnull +6 -> 493
    //   490: goto -35 -> 455
    //   493: aload_1
    //   494: monitorexit
    //   495: aconst_null
    //   496: areturn
    //   497: astore_3
    //   498: aload_2
    //   499: ifnull +9 -> 508
    //   502: aload_2
    //   503: invokeinterface 309 1 0
    //   508: aload_3
    //   509: athrow
    //   510: astore_2
    //   511: aload_1
    //   512: monitorexit
    //   513: aload_2
    //   514: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	515	0	this	a
    //   4	508	1	locala	a
    //   8	495	2	localObject1	Object
    //   510	4	2	localObject2	Object
    //   28	383	3	localCursor	android.database.Cursor
    //   431	1	3	localObject3	Object
    //   438	49	3	localObject4	Object
    //   497	12	3	localObject5	Object
    //   39	153	4	j	int
    //   84	78	5	k	int
    //   96	209	6	m	int
    //   109	41	7	n	int
    //   116	288	8	localArrayList	ArrayList
    //   421	1	8	localException1	Exception
    //   426	1	8	localSQLiteBlobTooBigException1	android.database.sqlite.SQLiteBlobTooBigException
    //   435	12	8	localException2	Exception
    //   464	12	8	localSQLiteBlobTooBigException2	android.database.sqlite.SQLiteBlobTooBigException
    //   130	44	9	l1	long
    //   133	269	11	i1	int
    //   156	102	12	i2	int
    //   168	81	13	l2	long
    //   198	42	15	i3	int
    //   210	21	16	str	String
    //   217	202	17	localObject6	Object
    //   298	83	18	bool1	boolean
    //   302	104	19	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   31	41	421	java/lang/Exception
    //   43	52	421	java/lang/Exception
    //   54	63	421	java/lang/Exception
    //   65	74	421	java/lang/Exception
    //   76	86	421	java/lang/Exception
    //   88	98	421	java/lang/Exception
    //   100	111	421	java/lang/Exception
    //   113	118	421	java/lang/Exception
    //   120	125	421	java/lang/Exception
    //   127	132	421	java/lang/Exception
    //   137	146	421	java/lang/Exception
    //   148	158	421	java/lang/Exception
    //   160	170	421	java/lang/Exception
    //   172	185	421	java/lang/Exception
    //   190	200	421	java/lang/Exception
    //   202	212	421	java/lang/Exception
    //   214	219	421	java/lang/Exception
    //   221	226	421	java/lang/Exception
    //   228	235	421	java/lang/Exception
    //   237	244	421	java/lang/Exception
    //   246	253	421	java/lang/Exception
    //   255	262	421	java/lang/Exception
    //   264	272	421	java/lang/Exception
    //   290	297	421	java/lang/Exception
    //   311	316	421	java/lang/Exception
    //   318	323	421	java/lang/Exception
    //   325	334	421	java/lang/Exception
    //   336	347	421	java/lang/Exception
    //   349	359	421	java/lang/Exception
    //   361	370	421	java/lang/Exception
    //   372	380	421	java/lang/Exception
    //   392	397	421	java/lang/Exception
    //   399	410	421	java/lang/Exception
    //   31	41	426	android/database/sqlite/SQLiteBlobTooBigException
    //   43	52	426	android/database/sqlite/SQLiteBlobTooBigException
    //   54	63	426	android/database/sqlite/SQLiteBlobTooBigException
    //   65	74	426	android/database/sqlite/SQLiteBlobTooBigException
    //   76	86	426	android/database/sqlite/SQLiteBlobTooBigException
    //   88	98	426	android/database/sqlite/SQLiteBlobTooBigException
    //   100	111	426	android/database/sqlite/SQLiteBlobTooBigException
    //   113	118	426	android/database/sqlite/SQLiteBlobTooBigException
    //   120	125	426	android/database/sqlite/SQLiteBlobTooBigException
    //   127	132	426	android/database/sqlite/SQLiteBlobTooBigException
    //   137	146	426	android/database/sqlite/SQLiteBlobTooBigException
    //   148	158	426	android/database/sqlite/SQLiteBlobTooBigException
    //   160	170	426	android/database/sqlite/SQLiteBlobTooBigException
    //   172	185	426	android/database/sqlite/SQLiteBlobTooBigException
    //   190	200	426	android/database/sqlite/SQLiteBlobTooBigException
    //   202	212	426	android/database/sqlite/SQLiteBlobTooBigException
    //   214	219	426	android/database/sqlite/SQLiteBlobTooBigException
    //   221	226	426	android/database/sqlite/SQLiteBlobTooBigException
    //   228	235	426	android/database/sqlite/SQLiteBlobTooBigException
    //   237	244	426	android/database/sqlite/SQLiteBlobTooBigException
    //   246	253	426	android/database/sqlite/SQLiteBlobTooBigException
    //   255	262	426	android/database/sqlite/SQLiteBlobTooBigException
    //   264	272	426	android/database/sqlite/SQLiteBlobTooBigException
    //   290	297	426	android/database/sqlite/SQLiteBlobTooBigException
    //   311	316	426	android/database/sqlite/SQLiteBlobTooBigException
    //   318	323	426	android/database/sqlite/SQLiteBlobTooBigException
    //   325	334	426	android/database/sqlite/SQLiteBlobTooBigException
    //   336	347	426	android/database/sqlite/SQLiteBlobTooBigException
    //   349	359	426	android/database/sqlite/SQLiteBlobTooBigException
    //   361	370	426	android/database/sqlite/SQLiteBlobTooBigException
    //   372	380	426	android/database/sqlite/SQLiteBlobTooBigException
    //   392	397	426	android/database/sqlite/SQLiteBlobTooBigException
    //   399	410	426	android/database/sqlite/SQLiteBlobTooBigException
    //   9	29	431	finally
    //   9	29	435	java/lang/Exception
    //   9	29	464	android/database/sqlite/SQLiteBlobTooBigException
    //   31	41	497	finally
    //   43	52	497	finally
    //   54	63	497	finally
    //   65	74	497	finally
    //   76	86	497	finally
    //   88	98	497	finally
    //   100	111	497	finally
    //   113	118	497	finally
    //   120	125	497	finally
    //   127	132	497	finally
    //   137	146	497	finally
    //   148	158	497	finally
    //   160	170	497	finally
    //   172	185	497	finally
    //   190	200	497	finally
    //   202	212	497	finally
    //   214	219	497	finally
    //   221	226	497	finally
    //   228	235	497	finally
    //   237	244	497	finally
    //   246	253	497	finally
    //   255	262	497	finally
    //   264	272	497	finally
    //   290	297	497	finally
    //   311	316	497	finally
    //   318	323	497	finally
    //   325	334	497	finally
    //   336	347	497	finally
    //   349	359	497	finally
    //   361	370	497	finally
    //   372	380	497	finally
    //   392	397	497	finally
    //   399	410	497	finally
    //   441	451	497	finally
    //   470	480	497	finally
    //   482	486	497	finally
    //   410	418	510	finally
    //   455	461	510	finally
    //   493	495	510	finally
    //   502	508	510	finally
    //   508	510	510	finally
    //   511	513	510	finally
  }
  
  /* Error */
  public void b(ArrayList<Integer> paramArrayList)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 42	com/xiaomi/onetrack/a/a:i	Lcom/xiaomi/onetrack/a/a$a;
    //   4: astore_2
    //   5: aload_2
    //   6: monitorenter
    //   7: aload_1
    //   8: ifnull +430 -> 438
    //   11: aload_1
    //   12: invokevirtual 170	java/util/ArrayList:size	()I
    //   15: istore_3
    //   16: iload_3
    //   17: ifgt +6 -> 23
    //   20: goto +418 -> 438
    //   23: aconst_null
    //   24: astore 4
    //   26: aconst_null
    //   27: astore 5
    //   29: aload_0
    //   30: getfield 42	com/xiaomi/onetrack/a/a:i	Lcom/xiaomi/onetrack/a/a$a;
    //   33: invokevirtual 82	android/database/sqlite/SQLiteOpenHelper:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   36: astore 6
    //   38: aload 6
    //   40: astore 5
    //   42: aload 6
    //   44: astore 4
    //   46: aload 6
    //   48: invokevirtual 324	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   51: aload 6
    //   53: astore 5
    //   55: aload 6
    //   57: astore 4
    //   59: aload_1
    //   60: invokevirtual 328	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   63: astore_1
    //   64: aload 6
    //   66: astore 5
    //   68: aload 6
    //   70: astore 4
    //   72: aload_1
    //   73: invokeinterface 333 1 0
    //   78: ifeq +69 -> 147
    //   81: aload 6
    //   83: astore 5
    //   85: aload 6
    //   87: astore 4
    //   89: aload 6
    //   91: ldc_w 335
    //   94: iconst_5
    //   95: anewarray 4	java/lang/Object
    //   98: dup
    //   99: iconst_0
    //   100: ldc 118
    //   102: aastore
    //   103: dup
    //   104: iconst_1
    //   105: ldc_w 257
    //   108: aastore
    //   109: dup
    //   110: iconst_2
    //   111: ldc_w 257
    //   114: aastore
    //   115: dup
    //   116: iconst_3
    //   117: ldc 192
    //   119: aastore
    //   120: dup
    //   121: iconst_4
    //   122: aload_1
    //   123: invokeinterface 339 1 0
    //   128: checkcast 176	java/lang/Integer
    //   131: invokevirtual 179	java/lang/Integer:intValue	()I
    //   134: invokestatic 342	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   137: aastore
    //   138: invokestatic 346	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   141: invokevirtual 349	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   144: goto -80 -> 64
    //   147: aload 6
    //   149: astore 5
    //   151: aload 6
    //   153: astore 4
    //   155: aload 6
    //   157: invokevirtual 352	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   160: aload 6
    //   162: invokevirtual 355	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   165: aload 6
    //   167: invokevirtual 358	android/database/sqlite/SQLiteClosable:close	()V
    //   170: goto +265 -> 435
    //   173: astore_1
    //   174: new 56	java/lang/StringBuilder
    //   177: astore 5
    //   179: aload 5
    //   181: invokespecial 57	java/lang/StringBuilder:<init>	()V
    //   184: aload 5
    //   186: ldc_w 360
    //   189: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   192: pop
    //   193: aload 5
    //   195: aload_1
    //   196: invokevirtual 145	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   199: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: pop
    //   203: aload 5
    //   205: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   208: astore_1
    //   209: ldc 10
    //   211: aload_1
    //   212: invokestatic 212	com/xiaomi/onetrack/util/p:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   215: goto +220 -> 435
    //   218: astore_1
    //   219: goto +114 -> 333
    //   222: astore 6
    //   224: aload 4
    //   226: astore 5
    //   228: new 56	java/lang/StringBuilder
    //   231: astore_1
    //   232: aload 4
    //   234: astore 5
    //   236: aload_1
    //   237: invokespecial 57	java/lang/StringBuilder:<init>	()V
    //   240: aload 4
    //   242: astore 5
    //   244: aload_1
    //   245: ldc_w 362
    //   248: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   251: pop
    //   252: aload 4
    //   254: astore 5
    //   256: aload_1
    //   257: aload 6
    //   259: invokevirtual 145	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   262: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   265: pop
    //   266: aload 4
    //   268: astore 5
    //   270: ldc 10
    //   272: aload_1
    //   273: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   276: invokestatic 212	com/xiaomi/onetrack/util/p:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   279: aload 4
    //   281: ifnull +154 -> 435
    //   284: aload 4
    //   286: invokevirtual 355	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   289: aload 4
    //   291: invokevirtual 358	android/database/sqlite/SQLiteClosable:close	()V
    //   294: goto +141 -> 435
    //   297: astore 5
    //   299: new 56	java/lang/StringBuilder
    //   302: astore_1
    //   303: aload_1
    //   304: invokespecial 57	java/lang/StringBuilder:<init>	()V
    //   307: aload_1
    //   308: ldc_w 360
    //   311: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   314: pop
    //   315: aload_1
    //   316: aload 5
    //   318: invokevirtual 145	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   321: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   324: pop
    //   325: aload_1
    //   326: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   329: astore_1
    //   330: goto -121 -> 209
    //   333: aload 5
    //   335: ifnull +58 -> 393
    //   338: aload 5
    //   340: invokevirtual 355	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   343: aload 5
    //   345: invokevirtual 358	android/database/sqlite/SQLiteClosable:close	()V
    //   348: goto +45 -> 393
    //   351: astore 4
    //   353: new 56	java/lang/StringBuilder
    //   356: astore 5
    //   358: aload 5
    //   360: invokespecial 57	java/lang/StringBuilder:<init>	()V
    //   363: aload 5
    //   365: ldc_w 360
    //   368: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   371: pop
    //   372: aload 5
    //   374: aload 4
    //   376: invokevirtual 145	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   379: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   382: pop
    //   383: ldc 10
    //   385: aload 5
    //   387: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   390: invokestatic 212	com/xiaomi/onetrack/util/p:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   393: aload_1
    //   394: athrow
    //   395: astore_1
    //   396: new 56	java/lang/StringBuilder
    //   399: astore 5
    //   401: aload 5
    //   403: invokespecial 57	java/lang/StringBuilder:<init>	()V
    //   406: aload 5
    //   408: ldc_w 364
    //   411: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   414: pop
    //   415: aload 5
    //   417: aload_1
    //   418: invokevirtual 145	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   421: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   424: pop
    //   425: ldc 10
    //   427: aload 5
    //   429: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   432: invokestatic 131	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   435: aload_2
    //   436: monitorexit
    //   437: return
    //   438: aload_2
    //   439: monitorexit
    //   440: return
    //   441: astore_1
    //   442: aload_2
    //   443: monitorexit
    //   444: aload_1
    //   445: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	446	0	this	a
    //   0	446	1	paramArrayList	ArrayList<Integer>
    //   4	439	2	locala	a
    //   15	2	3	j	int
    //   24	266	4	localObject1	Object
    //   351	24	4	localException1	Exception
    //   27	242	5	localObject2	Object
    //   297	47	5	localException2	Exception
    //   356	72	5	localStringBuilder	StringBuilder
    //   36	130	6	localSQLiteDatabase	SQLiteDatabase
    //   222	36	6	localException3	Exception
    // Exception table:
    //   from	to	target	type
    //   160	170	173	java/lang/Exception
    //   29	38	218	finally
    //   46	51	218	finally
    //   59	64	218	finally
    //   72	81	218	finally
    //   89	144	218	finally
    //   155	160	218	finally
    //   228	232	218	finally
    //   236	240	218	finally
    //   244	252	218	finally
    //   256	266	218	finally
    //   270	279	218	finally
    //   29	38	222	java/lang/Exception
    //   46	51	222	java/lang/Exception
    //   59	64	222	java/lang/Exception
    //   72	81	222	java/lang/Exception
    //   89	144	222	java/lang/Exception
    //   155	160	222	java/lang/Exception
    //   284	294	297	java/lang/Exception
    //   338	348	351	java/lang/Exception
    //   11	16	395	finally
    //   160	170	395	finally
    //   174	209	395	finally
    //   209	215	395	finally
    //   284	294	395	finally
    //   299	330	395	finally
    //   338	348	395	finally
    //   353	393	395	finally
    //   393	395	395	finally
    //   396	435	441	finally
    //   435	437	441	finally
    //   438	440	441	finally
    //   442	444	441	finally
  }
  
  public void c()
  {
    com.xiaomi.onetrack.a.a.a.a(new c(this));
  }
  
  /* Error */
  public void d()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 42	com/xiaomi/onetrack/a/a:i	Lcom/xiaomi/onetrack/a/a$a;
    //   4: astore_1
    //   5: aload_1
    //   6: monitorenter
    //   7: aconst_null
    //   8: astore_2
    //   9: aconst_null
    //   10: astore_3
    //   11: aload_3
    //   12: astore 4
    //   14: aload_2
    //   15: astore 5
    //   17: aload_0
    //   18: getfield 42	com/xiaomi/onetrack/a/a:i	Lcom/xiaomi/onetrack/a/a$a;
    //   21: invokevirtual 82	android/database/sqlite/SQLiteOpenHelper:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   24: astore 6
    //   26: aload_3
    //   27: astore 4
    //   29: aload_2
    //   30: astore 5
    //   32: iconst_1
    //   33: anewarray 184	java/lang/String
    //   36: astore 7
    //   38: aload_3
    //   39: astore 4
    //   41: aload_2
    //   42: astore 5
    //   44: aload 7
    //   46: iconst_0
    //   47: ldc2_w 371
    //   50: invokestatic 182	java/lang/Long:toString	(J)Ljava/lang/String;
    //   53: aastore
    //   54: aload_3
    //   55: astore 4
    //   57: aload_2
    //   58: astore 5
    //   60: aload 6
    //   62: ldc 118
    //   64: iconst_1
    //   65: anewarray 184	java/lang/String
    //   68: dup
    //   69: iconst_0
    //   70: ldc 100
    //   72: aastore
    //   73: ldc_w 374
    //   76: aload 7
    //   78: aconst_null
    //   79: aconst_null
    //   80: ldc 22
    //   82: invokevirtual 249	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   85: astore_3
    //   86: aload_3
    //   87: astore 4
    //   89: aload_3
    //   90: astore 5
    //   92: aload_3
    //   93: invokeinterface 377 1 0
    //   98: ifeq +85 -> 183
    //   101: aload_3
    //   102: astore 4
    //   104: aload_3
    //   105: astore 5
    //   107: aload 6
    //   109: ldc 118
    //   111: ldc_w 374
    //   114: aload 7
    //   116: invokevirtual 158	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   119: istore 8
    //   121: aload_3
    //   122: astore 4
    //   124: aload_3
    //   125: astore 5
    //   127: new 56	java/lang/StringBuilder
    //   130: astore_2
    //   131: aload_3
    //   132: astore 4
    //   134: aload_3
    //   135: astore 5
    //   137: aload_2
    //   138: invokespecial 57	java/lang/StringBuilder:<init>	()V
    //   141: aload_3
    //   142: astore 4
    //   144: aload_3
    //   145: astore 5
    //   147: aload_2
    //   148: ldc_w 379
    //   151: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: pop
    //   155: aload_3
    //   156: astore 4
    //   158: aload_3
    //   159: astore 5
    //   161: aload_2
    //   162: iload 8
    //   164: invokevirtual 206	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   167: pop
    //   168: aload_3
    //   169: astore 4
    //   171: aload_3
    //   172: astore 5
    //   174: ldc 10
    //   176: aload_2
    //   177: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   180: invokestatic 131	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   183: aload_3
    //   184: astore_2
    //   185: aload_3
    //   186: astore 4
    //   188: aload_3
    //   189: astore 5
    //   191: getstatic 134	com/xiaomi/onetrack/util/p:a	Z
    //   194: ifeq +69 -> 263
    //   197: aload_3
    //   198: astore 4
    //   200: aload_3
    //   201: astore 5
    //   203: new 56	java/lang/StringBuilder
    //   206: astore_2
    //   207: aload_3
    //   208: astore 4
    //   210: aload_3
    //   211: astore 5
    //   213: aload_2
    //   214: invokespecial 57	java/lang/StringBuilder:<init>	()V
    //   217: aload_3
    //   218: astore 4
    //   220: aload_3
    //   221: astore 5
    //   223: aload_2
    //   224: ldc_w 381
    //   227: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   230: pop
    //   231: aload_3
    //   232: astore 4
    //   234: aload_3
    //   235: astore 5
    //   237: aload_2
    //   238: aload_0
    //   239: invokevirtual 138	com/xiaomi/onetrack/a/a:e	()J
    //   242: invokevirtual 129	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   245: pop
    //   246: aload_3
    //   247: astore 4
    //   249: aload_3
    //   250: astore 5
    //   252: ldc 10
    //   254: aload_2
    //   255: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   258: invokestatic 131	com/xiaomi/onetrack/util/p:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   261: aload_3
    //   262: astore_2
    //   263: aload_2
    //   264: invokeinterface 309 1 0
    //   269: goto +71 -> 340
    //   272: astore 5
    //   274: goto +69 -> 343
    //   277: astore_3
    //   278: aload 5
    //   280: astore 4
    //   282: new 56	java/lang/StringBuilder
    //   285: astore_2
    //   286: aload 5
    //   288: astore 4
    //   290: aload_2
    //   291: invokespecial 57	java/lang/StringBuilder:<init>	()V
    //   294: aload 5
    //   296: astore 4
    //   298: aload_2
    //   299: ldc_w 383
    //   302: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   305: pop
    //   306: aload 5
    //   308: astore 4
    //   310: aload_2
    //   311: aload_3
    //   312: invokevirtual 197	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   315: pop
    //   316: aload 5
    //   318: astore 4
    //   320: ldc 10
    //   322: aload_2
    //   323: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   326: invokestatic 385	com/xiaomi/onetrack/util/p:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   329: aload 5
    //   331: ifnull +9 -> 340
    //   334: aload 5
    //   336: astore_2
    //   337: goto -74 -> 263
    //   340: aload_1
    //   341: monitorexit
    //   342: return
    //   343: aload 4
    //   345: ifnull +10 -> 355
    //   348: aload 4
    //   350: invokeinterface 309 1 0
    //   355: aload 5
    //   357: athrow
    //   358: astore 5
    //   360: aload_1
    //   361: monitorexit
    //   362: aload 5
    //   364: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	365	0	this	a
    //   4	357	1	locala	a
    //   8	329	2	localObject1	Object
    //   10	252	3	localCursor	android.database.Cursor
    //   277	35	3	localException	Exception
    //   12	337	4	localObject2	Object
    //   15	236	5	localObject3	Object
    //   272	84	5	localObject4	Object
    //   358	5	5	localObject5	Object
    //   24	84	6	localSQLiteDatabase	SQLiteDatabase
    //   36	79	7	arrayOfString	String[]
    //   119	44	8	j	int
    // Exception table:
    //   from	to	target	type
    //   17	26	272	finally
    //   32	38	272	finally
    //   44	54	272	finally
    //   60	86	272	finally
    //   92	101	272	finally
    //   107	121	272	finally
    //   127	131	272	finally
    //   137	141	272	finally
    //   147	155	272	finally
    //   161	168	272	finally
    //   174	183	272	finally
    //   191	197	272	finally
    //   203	207	272	finally
    //   213	217	272	finally
    //   223	231	272	finally
    //   237	246	272	finally
    //   252	261	272	finally
    //   282	286	272	finally
    //   290	294	272	finally
    //   298	306	272	finally
    //   310	316	272	finally
    //   320	329	272	finally
    //   17	26	277	java/lang/Exception
    //   32	38	277	java/lang/Exception
    //   44	54	277	java/lang/Exception
    //   60	86	277	java/lang/Exception
    //   92	101	277	java/lang/Exception
    //   107	121	277	java/lang/Exception
    //   127	131	277	java/lang/Exception
    //   137	141	277	java/lang/Exception
    //   147	155	277	java/lang/Exception
    //   161	168	277	java/lang/Exception
    //   174	183	277	java/lang/Exception
    //   191	197	277	java/lang/Exception
    //   203	207	277	java/lang/Exception
    //   213	217	277	java/lang/Exception
    //   223	231	277	java/lang/Exception
    //   237	246	277	java/lang/Exception
    //   252	261	277	java/lang/Exception
    //   263	269	358	finally
    //   340	342	358	finally
    //   348	355	358	finally
    //   355	358	358	finally
    //   360	362	358	finally
  }
  
  public long e()
  {
    return DatabaseUtils.queryNumEntries(this.i.getReadableDatabase(), "monitor");
  }
  
  private static class a
    extends SQLiteOpenHelper
  {
    public static final String a = "onetrack_ad";
    public static final String b = "monitor";
    public static final String c = "_id";
    public static final String d = "appid";
    public static final String e = "package";
    public static final String f = "event_name";
    public static final String g = "url";
    public static final String h = "timestamp";
    public static final String i = "send_count";
    private static final int j = 1;
    private static final String k = "CREATE TABLE monitor (_id INTEGER PRIMARY KEY AUTOINCREMENT,appid TEXT,package TEXT,event_name TEXT,url TEXT,send_count INTEGER DEFAULT 0,timestamp INTEGER)";
    
    public a(Context paramContext)
    {
      super("onetrack_ad", null, 1);
    }
    
    public void onCreate(SQLiteDatabase paramSQLiteDatabase)
    {
      paramSQLiteDatabase.execSQL("CREATE TABLE monitor (_id INTEGER PRIMARY KEY AUTOINCREMENT,appid TEXT,package TEXT,event_name TEXT,url TEXT,send_count INTEGER DEFAULT 0,timestamp INTEGER)");
    }
    
    public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.a.a
 * JD-Core Version:    0.7.0.1
 */