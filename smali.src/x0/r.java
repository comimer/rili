package x0;

import android.database.Cursor;
import androidx.lifecycle.LiveData;
import androidx.room.RoomDatabase;
import androidx.room.h;
import androidx.room.m;
import androidx.work.WorkInfo.State;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import k0.c;
import l0.e;
import n.a;
import n.g;

public final class r
  implements q
{
  private final RoomDatabase a;
  private final androidx.room.d<p> b;
  private final androidx.room.q c;
  private final androidx.room.q d;
  private final androidx.room.q e;
  private final androidx.room.q f;
  private final androidx.room.q g;
  private final androidx.room.q h;
  private final androidx.room.q i;
  private final androidx.room.q j;
  
  public r(RoomDatabase paramRoomDatabase)
  {
    this.a = paramRoomDatabase;
    this.b = new b(paramRoomDatabase);
    this.c = new c(paramRoomDatabase);
    this.d = new d(paramRoomDatabase);
    this.e = new e(paramRoomDatabase);
    this.f = new f(paramRoomDatabase);
    this.g = new g(paramRoomDatabase);
    this.h = new h(paramRoomDatabase);
    this.i = new i(paramRoomDatabase);
    this.j = new j(paramRoomDatabase);
  }
  
  private void v(a<String, ArrayList<androidx.work.d>> parama)
  {
    Object localObject1 = parama.keySet();
    if (((Set)localObject1).isEmpty()) {
      return;
    }
    if (parama.size() > 999)
    {
      localObject2 = new a(999);
      int k = parama.size();
      int m = 0;
      n = m;
      while (m < k)
      {
        ((g)localObject2).put((String)parama.l(m), (ArrayList)parama.p(m));
        int i1 = m + 1;
        int i2 = n + 1;
        m = i1;
        n = i2;
        if (i2 == 999)
        {
          v((a)localObject2);
          localObject2 = new a(999);
          n = 0;
          m = i1;
        }
      }
      if (n > 0) {
        v((a)localObject2);
      }
      return;
    }
    Object localObject2 = k0.f.b();
    ((StringBuilder)localObject2).append("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
    int n = ((Set)localObject1).size();
    k0.f.a((StringBuilder)localObject2, n);
    ((StringBuilder)localObject2).append(")");
    localObject2 = m.j(((StringBuilder)localObject2).toString(), n + 0);
    Iterator localIterator = ((Set)localObject1).iterator();
    for (n = 1; localIterator.hasNext(); n++)
    {
      localObject1 = (String)localIterator.next();
      if (localObject1 == null) {
        ((m)localObject2).X(n);
      } else {
        ((m)localObject2).l(n, (String)localObject1);
      }
    }
    localObject2 = c.b(this.a, (e)localObject2, false, null);
    try
    {
      n = k0.b.b((Cursor)localObject2, "work_spec_id");
      if (n == -1) {
        return;
      }
      while (((Cursor)localObject2).moveToNext()) {
        if (!((Cursor)localObject2).isNull(n))
        {
          localObject1 = (ArrayList)parama.get(((Cursor)localObject2).getString(n));
          if (localObject1 != null) {
            ((ArrayList)localObject1).add(androidx.work.d.g(((Cursor)localObject2).getBlob(0)));
          }
        }
      }
      return;
    }
    finally
    {
      ((Cursor)localObject2).close();
    }
  }
  
  private void w(a<String, ArrayList<String>> parama)
  {
    Object localObject1 = parama.keySet();
    if (((Set)localObject1).isEmpty()) {
      return;
    }
    if (parama.size() > 999)
    {
      localObject2 = new a(999);
      int k = parama.size();
      int m = 0;
      n = m;
      while (m < k)
      {
        ((g)localObject2).put((String)parama.l(m), (ArrayList)parama.p(m));
        int i1 = m + 1;
        int i2 = n + 1;
        m = i1;
        n = i2;
        if (i2 == 999)
        {
          w((a)localObject2);
          localObject2 = new a(999);
          n = 0;
          m = i1;
        }
      }
      if (n > 0) {
        w((a)localObject2);
      }
      return;
    }
    Object localObject2 = k0.f.b();
    ((StringBuilder)localObject2).append("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
    int n = ((Set)localObject1).size();
    k0.f.a((StringBuilder)localObject2, n);
    ((StringBuilder)localObject2).append(")");
    localObject2 = m.j(((StringBuilder)localObject2).toString(), n + 0);
    Iterator localIterator = ((Set)localObject1).iterator();
    for (n = 1; localIterator.hasNext(); n++)
    {
      localObject1 = (String)localIterator.next();
      if (localObject1 == null) {
        ((m)localObject2).X(n);
      } else {
        ((m)localObject2).l(n, (String)localObject1);
      }
    }
    localObject2 = c.b(this.a, (e)localObject2, false, null);
    try
    {
      n = k0.b.b((Cursor)localObject2, "work_spec_id");
      if (n == -1) {
        return;
      }
      while (((Cursor)localObject2).moveToNext()) {
        if (!((Cursor)localObject2).isNull(n))
        {
          localObject1 = (ArrayList)parama.get(((Cursor)localObject2).getString(n));
          if (localObject1 != null) {
            ((ArrayList)localObject1).add(((Cursor)localObject2).getString(0));
          }
        }
      }
      return;
    }
    finally
    {
      ((Cursor)localObject2).close();
    }
  }
  
  public void a(String paramString)
  {
    this.a.assertNotSuspendingTransaction();
    l0.f localf = this.c.acquire();
    if (paramString == null) {
      localf.X(1);
    } else {
      localf.l(1, paramString);
    }
    this.a.beginTransaction();
    try
    {
      localf.o();
      this.a.setTransactionSuccessful();
      return;
    }
    finally
    {
      this.a.endTransaction();
      this.c.release(localf);
    }
  }
  
  public int b(WorkInfo.State paramState, String... paramVarArgs)
  {
    this.a.assertNotSuspendingTransaction();
    Object localObject = k0.f.b();
    ((StringBuilder)localObject).append("UPDATE workspec SET state=");
    ((StringBuilder)localObject).append("?");
    ((StringBuilder)localObject).append(" WHERE id IN (");
    k0.f.a((StringBuilder)localObject, paramVarArgs.length);
    ((StringBuilder)localObject).append(")");
    localObject = ((StringBuilder)localObject).toString();
    localObject = this.a.compileStatement((String)localObject);
    ((l0.d)localObject).B(1, v.j(paramState));
    int k = paramVarArgs.length;
    int m = 2;
    for (int n = 0; n < k; n++)
    {
      paramState = paramVarArgs[n];
      if (paramState == null) {
        ((l0.d)localObject).X(m);
      } else {
        ((l0.d)localObject).l(m, paramState);
      }
      m++;
    }
    this.a.beginTransaction();
    try
    {
      n = ((l0.f)localObject).o();
      this.a.setTransactionSuccessful();
      return n;
    }
    finally
    {
      this.a.endTransaction();
    }
  }
  
  public int c(String paramString, long paramLong)
  {
    this.a.assertNotSuspendingTransaction();
    l0.f localf = this.h.acquire();
    localf.B(1, paramLong);
    if (paramString == null) {
      localf.X(2);
    } else {
      localf.l(2, paramString);
    }
    this.a.beginTransaction();
    try
    {
      int k = localf.o();
      this.a.setTransactionSuccessful();
      return k;
    }
    finally
    {
      this.a.endTransaction();
      this.h.release(localf);
    }
  }
  
  public List<p.b> d(String paramString)
  {
    m localm = m.j("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
    if (paramString == null) {
      localm.X(1);
    } else {
      localm.l(1, paramString);
    }
    this.a.assertNotSuspendingTransaction();
    paramString = c.b(this.a, localm, false, null);
    try
    {
      int k = k0.b.c(paramString, "id");
      int m = k0.b.c(paramString, "state");
      ArrayList localArrayList = new java/util/ArrayList;
      localArrayList.<init>(paramString.getCount());
      while (paramString.moveToNext())
      {
        p.b localb = new x0/p$b;
        localb.<init>();
        localb.a = paramString.getString(k);
        localb.b = v.g(paramString.getInt(m));
        localArrayList.add(localb);
      }
      return localArrayList;
    }
    finally
    {
      paramString.close();
      localm.z();
    }
  }
  
  /* Error */
  public List<p> e(long paramLong)
  {
    // Byte code:
    //   0: ldc_w 315
    //   3: iconst_1
    //   4: invokestatic 145	androidx/room/m:j	(Ljava/lang/String;I)Landroidx/room/m;
    //   7: astore_3
    //   8: aload_3
    //   9: iconst_1
    //   10: lload_1
    //   11: invokevirtual 316	androidx/room/m:B	(IJ)V
    //   14: aload_0
    //   15: getfield 47	x0/r:a	Landroidx/room/RoomDatabase;
    //   18: invokevirtual 228	androidx/room/RoomDatabase:assertNotSuspendingTransaction	()V
    //   21: aload_0
    //   22: getfield 47	x0/r:a	Landroidx/room/RoomDatabase;
    //   25: aload_3
    //   26: iconst_0
    //   27: aconst_null
    //   28: invokestatic 169	k0/c:b	(Landroidx/room/RoomDatabase;Ll0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;
    //   31: astore 4
    //   33: aload 4
    //   35: ldc_w 318
    //   38: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   41: istore 5
    //   43: aload 4
    //   45: ldc_w 320
    //   48: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   51: istore 6
    //   53: aload 4
    //   55: ldc_w 322
    //   58: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   61: istore 7
    //   63: aload 4
    //   65: ldc_w 324
    //   68: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   71: istore 8
    //   73: aload 4
    //   75: ldc_w 326
    //   78: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   81: istore 9
    //   83: aload 4
    //   85: ldc_w 328
    //   88: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   91: istore 10
    //   93: aload 4
    //   95: ldc_w 330
    //   98: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   101: istore 11
    //   103: aload 4
    //   105: ldc_w 332
    //   108: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   111: istore 12
    //   113: aload 4
    //   115: ldc_w 282
    //   118: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   121: istore 13
    //   123: aload 4
    //   125: ldc_w 286
    //   128: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   131: istore 14
    //   133: aload 4
    //   135: ldc_w 334
    //   138: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   141: istore 15
    //   143: aload 4
    //   145: ldc_w 336
    //   148: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   151: istore 16
    //   153: aload 4
    //   155: ldc_w 338
    //   158: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   161: istore 17
    //   163: aload 4
    //   165: ldc_w 340
    //   168: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   171: istore 18
    //   173: aload 4
    //   175: ldc_w 342
    //   178: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   181: istore 19
    //   183: aload 4
    //   185: ldc_w 344
    //   188: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   191: istore 20
    //   193: aload 4
    //   195: ldc_w 346
    //   198: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   201: istore 21
    //   203: aload 4
    //   205: ldc_w 348
    //   208: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   211: istore 22
    //   213: aload 4
    //   215: ldc_w 350
    //   218: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   221: istore 23
    //   223: aload 4
    //   225: ldc_w 352
    //   228: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   231: istore 24
    //   233: aload 4
    //   235: ldc_w 354
    //   238: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   241: istore 25
    //   243: aload 4
    //   245: ldc_w 356
    //   248: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   251: istore 26
    //   253: aload 4
    //   255: ldc_w 358
    //   258: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   261: istore 27
    //   263: aload 4
    //   265: ldc_w 360
    //   268: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   271: istore 28
    //   273: aload 4
    //   275: ldc_w 362
    //   278: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   281: istore 29
    //   283: new 111	java/util/ArrayList
    //   286: astore 30
    //   288: aload 30
    //   290: aload 4
    //   292: invokeinterface 289 1 0
    //   297: invokespecial 290	java/util/ArrayList:<init>	(I)V
    //   300: aload 4
    //   302: invokeinterface 184 1 0
    //   307: ifeq +482 -> 789
    //   310: aload 4
    //   312: iload 13
    //   314: invokeinterface 192 2 0
    //   319: astore 31
    //   321: aload 4
    //   323: iload 15
    //   325: invokeinterface 192 2 0
    //   330: astore 32
    //   332: new 364	androidx/work/b
    //   335: astore 33
    //   337: aload 33
    //   339: invokespecial 365	androidx/work/b:<init>	()V
    //   342: aload 33
    //   344: aload 4
    //   346: iload 5
    //   348: invokeinterface 300 2 0
    //   353: invokestatic 368	x0/v:e	(I)Landroidx/work/NetworkType;
    //   356: invokevirtual 372	androidx/work/b:k	(Landroidx/work/NetworkType;)V
    //   359: aload 4
    //   361: iload 6
    //   363: invokeinterface 300 2 0
    //   368: ifeq +9 -> 377
    //   371: iconst_1
    //   372: istore 34
    //   374: goto +6 -> 380
    //   377: iconst_0
    //   378: istore 34
    //   380: aload 33
    //   382: iload 34
    //   384: invokevirtual 376	androidx/work/b:m	(Z)V
    //   387: aload 4
    //   389: iload 7
    //   391: invokeinterface 300 2 0
    //   396: ifeq +9 -> 405
    //   399: iconst_1
    //   400: istore 34
    //   402: goto +6 -> 408
    //   405: iconst_0
    //   406: istore 34
    //   408: aload 33
    //   410: iload 34
    //   412: invokevirtual 379	androidx/work/b:n	(Z)V
    //   415: aload 4
    //   417: iload 8
    //   419: invokeinterface 300 2 0
    //   424: ifeq +9 -> 433
    //   427: iconst_1
    //   428: istore 34
    //   430: goto +6 -> 436
    //   433: iconst_0
    //   434: istore 34
    //   436: aload 33
    //   438: iload 34
    //   440: invokevirtual 381	androidx/work/b:l	(Z)V
    //   443: aload 4
    //   445: iload 9
    //   447: invokeinterface 300 2 0
    //   452: ifeq +9 -> 461
    //   455: iconst_1
    //   456: istore 34
    //   458: goto +6 -> 464
    //   461: iconst_0
    //   462: istore 34
    //   464: aload 33
    //   466: iload 34
    //   468: invokevirtual 383	androidx/work/b:o	(Z)V
    //   471: aload 33
    //   473: aload 4
    //   475: iload 10
    //   477: invokeinterface 387 2 0
    //   482: invokevirtual 390	androidx/work/b:p	(J)V
    //   485: aload 33
    //   487: aload 4
    //   489: iload 11
    //   491: invokeinterface 387 2 0
    //   496: invokevirtual 393	androidx/work/b:q	(J)V
    //   499: aload 33
    //   501: aload 4
    //   503: iload 12
    //   505: invokeinterface 200 2 0
    //   510: invokestatic 396	x0/v:b	([B)Landroidx/work/c;
    //   513: invokevirtual 399	androidx/work/b:j	(Landroidx/work/c;)V
    //   516: new 401	x0/p
    //   519: astore 35
    //   521: aload 35
    //   523: aload 31
    //   525: aload 32
    //   527: invokespecial 404	x0/p:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   530: aload 35
    //   532: aload 4
    //   534: iload 14
    //   536: invokeinterface 300 2 0
    //   541: invokestatic 303	x0/v:g	(I)Landroidx/work/WorkInfo$State;
    //   544: putfield 405	x0/p:b	Landroidx/work/WorkInfo$State;
    //   547: aload 35
    //   549: aload 4
    //   551: iload 16
    //   553: invokeinterface 192 2 0
    //   558: putfield 407	x0/p:d	Ljava/lang/String;
    //   561: aload 35
    //   563: aload 4
    //   565: iload 17
    //   567: invokeinterface 200 2 0
    //   572: invokestatic 205	androidx/work/d:g	([B)Landroidx/work/d;
    //   575: putfield 410	x0/p:e	Landroidx/work/d;
    //   578: aload 35
    //   580: aload 4
    //   582: iload 18
    //   584: invokeinterface 200 2 0
    //   589: invokestatic 205	androidx/work/d:g	([B)Landroidx/work/d;
    //   592: putfield 412	x0/p:f	Landroidx/work/d;
    //   595: aload 35
    //   597: aload 4
    //   599: iload 19
    //   601: invokeinterface 387 2 0
    //   606: putfield 415	x0/p:g	J
    //   609: aload 35
    //   611: aload 4
    //   613: iload 20
    //   615: invokeinterface 387 2 0
    //   620: putfield 417	x0/p:h	J
    //   623: aload 35
    //   625: aload 4
    //   627: iload 21
    //   629: invokeinterface 387 2 0
    //   634: putfield 419	x0/p:i	J
    //   637: aload 35
    //   639: aload 4
    //   641: iload 22
    //   643: invokeinterface 300 2 0
    //   648: putfield 422	x0/p:k	I
    //   651: aload 35
    //   653: aload 4
    //   655: iload 23
    //   657: invokeinterface 300 2 0
    //   662: invokestatic 425	x0/v:d	(I)Landroidx/work/BackoffPolicy;
    //   665: putfield 428	x0/p:l	Landroidx/work/BackoffPolicy;
    //   668: aload 35
    //   670: aload 4
    //   672: iload 24
    //   674: invokeinterface 387 2 0
    //   679: putfield 430	x0/p:m	J
    //   682: aload 35
    //   684: aload 4
    //   686: iload 25
    //   688: invokeinterface 387 2 0
    //   693: putfield 432	x0/p:n	J
    //   696: aload 35
    //   698: aload 4
    //   700: iload 26
    //   702: invokeinterface 387 2 0
    //   707: putfield 434	x0/p:o	J
    //   710: aload 35
    //   712: aload 4
    //   714: iload 27
    //   716: invokeinterface 387 2 0
    //   721: putfield 436	x0/p:p	J
    //   724: aload 4
    //   726: iload 28
    //   728: invokeinterface 300 2 0
    //   733: ifeq +9 -> 742
    //   736: iconst_1
    //   737: istore 34
    //   739: goto +6 -> 745
    //   742: iconst_0
    //   743: istore 34
    //   745: aload 35
    //   747: iload 34
    //   749: putfield 439	x0/p:q	Z
    //   752: aload 35
    //   754: aload 4
    //   756: iload 29
    //   758: invokeinterface 300 2 0
    //   763: invokestatic 442	x0/v:f	(I)Landroidx/work/OutOfQuotaPolicy;
    //   766: putfield 446	x0/p:r	Landroidx/work/OutOfQuotaPolicy;
    //   769: aload 35
    //   771: aload 33
    //   773: putfield 449	x0/p:j	Landroidx/work/b;
    //   776: aload 30
    //   778: aload 35
    //   780: invokeinterface 309 2 0
    //   785: pop
    //   786: goto -486 -> 300
    //   789: aload 4
    //   791: invokeinterface 181 1 0
    //   796: aload_3
    //   797: invokevirtual 311	androidx/room/m:z	()V
    //   800: aload 30
    //   802: areturn
    //   803: astore 33
    //   805: goto +5 -> 810
    //   808: astore 33
    //   810: aload 4
    //   812: invokeinterface 181 1 0
    //   817: aload_3
    //   818: invokevirtual 311	androidx/room/m:z	()V
    //   821: aload 33
    //   823: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	824	0	this	r
    //   0	824	1	paramLong	long
    //   7	811	3	localm	m
    //   31	780	4	localCursor	Cursor
    //   41	306	5	k	int
    //   51	311	6	m	int
    //   61	329	7	n	int
    //   71	347	8	i1	int
    //   81	365	9	i2	int
    //   91	385	10	i3	int
    //   101	389	11	i4	int
    //   111	393	12	i5	int
    //   121	192	13	i6	int
    //   131	404	14	i7	int
    //   141	183	15	i8	int
    //   151	401	16	i9	int
    //   161	405	17	i10	int
    //   171	412	18	i11	int
    //   181	419	19	i12	int
    //   191	423	20	i13	int
    //   201	427	21	i14	int
    //   211	431	22	i15	int
    //   221	435	23	i16	int
    //   231	442	24	i17	int
    //   241	446	25	i18	int
    //   251	450	26	i19	int
    //   261	454	27	i20	int
    //   271	456	28	i21	int
    //   281	476	29	i22	int
    //   286	515	30	localArrayList	ArrayList
    //   319	205	31	str1	String
    //   330	196	32	str2	String
    //   335	437	33	localb	androidx.work.b
    //   803	1	33	localObject1	Object
    //   808	14	33	localObject2	Object
    //   372	376	34	bool	boolean
    //   519	260	35	localp	p
    // Exception table:
    //   from	to	target	type
    //   173	288	803	finally
    //   288	300	803	finally
    //   300	371	803	finally
    //   380	399	803	finally
    //   408	427	803	finally
    //   436	455	803	finally
    //   464	595	803	finally
    //   595	668	803	finally
    //   668	696	803	finally
    //   696	736	803	finally
    //   745	786	803	finally
    //   33	173	808	finally
  }
  
  public void f(p paramp)
  {
    this.a.assertNotSuspendingTransaction();
    this.a.beginTransaction();
    try
    {
      this.b.insert(paramp);
      this.a.setTransactionSuccessful();
      return;
    }
    finally
    {
      this.a.endTransaction();
    }
  }
  
  /* Error */
  public List<p> g(int paramInt)
  {
    // Byte code:
    //   0: ldc_w 460
    //   3: iconst_1
    //   4: invokestatic 145	androidx/room/m:j	(Ljava/lang/String;I)Landroidx/room/m;
    //   7: astore_2
    //   8: aload_2
    //   9: iconst_1
    //   10: iload_1
    //   11: i2l
    //   12: invokevirtual 316	androidx/room/m:B	(IJ)V
    //   15: aload_0
    //   16: getfield 47	x0/r:a	Landroidx/room/RoomDatabase;
    //   19: invokevirtual 228	androidx/room/RoomDatabase:assertNotSuspendingTransaction	()V
    //   22: aload_0
    //   23: getfield 47	x0/r:a	Landroidx/room/RoomDatabase;
    //   26: aload_2
    //   27: iconst_0
    //   28: aconst_null
    //   29: invokestatic 169	k0/c:b	(Landroidx/room/RoomDatabase;Ll0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;
    //   32: astore_3
    //   33: aload_3
    //   34: ldc_w 318
    //   37: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   40: istore 4
    //   42: aload_3
    //   43: ldc_w 320
    //   46: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   49: istore 5
    //   51: aload_3
    //   52: ldc_w 322
    //   55: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   58: istore 6
    //   60: aload_3
    //   61: ldc_w 324
    //   64: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   67: istore 7
    //   69: aload_3
    //   70: ldc_w 326
    //   73: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   76: istore 8
    //   78: aload_3
    //   79: ldc_w 328
    //   82: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   85: istore 9
    //   87: aload_3
    //   88: ldc_w 330
    //   91: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   94: istore 10
    //   96: aload_3
    //   97: ldc_w 332
    //   100: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   103: istore 11
    //   105: aload_3
    //   106: ldc_w 282
    //   109: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   112: istore 12
    //   114: aload_3
    //   115: ldc_w 286
    //   118: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   121: istore 13
    //   123: aload_3
    //   124: ldc_w 334
    //   127: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   130: istore 14
    //   132: aload_3
    //   133: ldc_w 336
    //   136: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   139: istore 15
    //   141: aload_3
    //   142: ldc_w 338
    //   145: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   148: istore 16
    //   150: aload_3
    //   151: ldc_w 340
    //   154: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   157: istore 17
    //   159: aload_3
    //   160: ldc_w 342
    //   163: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   166: istore 18
    //   168: aload_3
    //   169: ldc_w 344
    //   172: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   175: istore 19
    //   177: aload_3
    //   178: ldc_w 346
    //   181: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   184: istore 20
    //   186: aload_3
    //   187: ldc_w 348
    //   190: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   193: istore 21
    //   195: aload_3
    //   196: ldc_w 350
    //   199: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   202: istore 22
    //   204: aload_3
    //   205: ldc_w 352
    //   208: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   211: istore 23
    //   213: aload_3
    //   214: ldc_w 354
    //   217: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   220: istore 24
    //   222: aload_3
    //   223: ldc_w 356
    //   226: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   229: istore 25
    //   231: aload_3
    //   232: ldc_w 358
    //   235: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   238: istore 26
    //   240: aload_3
    //   241: ldc_w 360
    //   244: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   247: istore_1
    //   248: aload_3
    //   249: ldc_w 362
    //   252: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   255: istore 27
    //   257: new 111	java/util/ArrayList
    //   260: astore 28
    //   262: aload 28
    //   264: aload_3
    //   265: invokeinterface 289 1 0
    //   270: invokespecial 290	java/util/ArrayList:<init>	(I)V
    //   273: aload_3
    //   274: invokeinterface 184 1 0
    //   279: ifeq +456 -> 735
    //   282: aload_3
    //   283: iload 12
    //   285: invokeinterface 192 2 0
    //   290: astore 29
    //   292: aload_3
    //   293: iload 14
    //   295: invokeinterface 192 2 0
    //   300: astore 30
    //   302: new 364	androidx/work/b
    //   305: astore 31
    //   307: aload 31
    //   309: invokespecial 365	androidx/work/b:<init>	()V
    //   312: aload 31
    //   314: aload_3
    //   315: iload 4
    //   317: invokeinterface 300 2 0
    //   322: invokestatic 368	x0/v:e	(I)Landroidx/work/NetworkType;
    //   325: invokevirtual 372	androidx/work/b:k	(Landroidx/work/NetworkType;)V
    //   328: aload_3
    //   329: iload 5
    //   331: invokeinterface 300 2 0
    //   336: ifeq +9 -> 345
    //   339: iconst_1
    //   340: istore 32
    //   342: goto +6 -> 348
    //   345: iconst_0
    //   346: istore 32
    //   348: aload 31
    //   350: iload 32
    //   352: invokevirtual 376	androidx/work/b:m	(Z)V
    //   355: aload_3
    //   356: iload 6
    //   358: invokeinterface 300 2 0
    //   363: ifeq +9 -> 372
    //   366: iconst_1
    //   367: istore 32
    //   369: goto +6 -> 375
    //   372: iconst_0
    //   373: istore 32
    //   375: aload 31
    //   377: iload 32
    //   379: invokevirtual 379	androidx/work/b:n	(Z)V
    //   382: aload_3
    //   383: iload 7
    //   385: invokeinterface 300 2 0
    //   390: ifeq +9 -> 399
    //   393: iconst_1
    //   394: istore 32
    //   396: goto +6 -> 402
    //   399: iconst_0
    //   400: istore 32
    //   402: aload 31
    //   404: iload 32
    //   406: invokevirtual 381	androidx/work/b:l	(Z)V
    //   409: aload_3
    //   410: iload 8
    //   412: invokeinterface 300 2 0
    //   417: ifeq +9 -> 426
    //   420: iconst_1
    //   421: istore 32
    //   423: goto +6 -> 429
    //   426: iconst_0
    //   427: istore 32
    //   429: aload 31
    //   431: iload 32
    //   433: invokevirtual 383	androidx/work/b:o	(Z)V
    //   436: aload 31
    //   438: aload_3
    //   439: iload 9
    //   441: invokeinterface 387 2 0
    //   446: invokevirtual 390	androidx/work/b:p	(J)V
    //   449: aload 31
    //   451: aload_3
    //   452: iload 10
    //   454: invokeinterface 387 2 0
    //   459: invokevirtual 393	androidx/work/b:q	(J)V
    //   462: aload 31
    //   464: aload_3
    //   465: iload 11
    //   467: invokeinterface 200 2 0
    //   472: invokestatic 396	x0/v:b	([B)Landroidx/work/c;
    //   475: invokevirtual 399	androidx/work/b:j	(Landroidx/work/c;)V
    //   478: new 401	x0/p
    //   481: astore 33
    //   483: aload 33
    //   485: aload 29
    //   487: aload 30
    //   489: invokespecial 404	x0/p:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   492: aload 33
    //   494: aload_3
    //   495: iload 13
    //   497: invokeinterface 300 2 0
    //   502: invokestatic 303	x0/v:g	(I)Landroidx/work/WorkInfo$State;
    //   505: putfield 405	x0/p:b	Landroidx/work/WorkInfo$State;
    //   508: aload 33
    //   510: aload_3
    //   511: iload 15
    //   513: invokeinterface 192 2 0
    //   518: putfield 407	x0/p:d	Ljava/lang/String;
    //   521: aload 33
    //   523: aload_3
    //   524: iload 16
    //   526: invokeinterface 200 2 0
    //   531: invokestatic 205	androidx/work/d:g	([B)Landroidx/work/d;
    //   534: putfield 410	x0/p:e	Landroidx/work/d;
    //   537: aload 33
    //   539: aload_3
    //   540: iload 17
    //   542: invokeinterface 200 2 0
    //   547: invokestatic 205	androidx/work/d:g	([B)Landroidx/work/d;
    //   550: putfield 412	x0/p:f	Landroidx/work/d;
    //   553: aload 33
    //   555: aload_3
    //   556: iload 18
    //   558: invokeinterface 387 2 0
    //   563: putfield 415	x0/p:g	J
    //   566: aload 33
    //   568: aload_3
    //   569: iload 19
    //   571: invokeinterface 387 2 0
    //   576: putfield 417	x0/p:h	J
    //   579: aload 33
    //   581: aload_3
    //   582: iload 20
    //   584: invokeinterface 387 2 0
    //   589: putfield 419	x0/p:i	J
    //   592: aload 33
    //   594: aload_3
    //   595: iload 21
    //   597: invokeinterface 300 2 0
    //   602: putfield 422	x0/p:k	I
    //   605: aload 33
    //   607: aload_3
    //   608: iload 22
    //   610: invokeinterface 300 2 0
    //   615: invokestatic 425	x0/v:d	(I)Landroidx/work/BackoffPolicy;
    //   618: putfield 428	x0/p:l	Landroidx/work/BackoffPolicy;
    //   621: aload 33
    //   623: aload_3
    //   624: iload 23
    //   626: invokeinterface 387 2 0
    //   631: putfield 430	x0/p:m	J
    //   634: aload 33
    //   636: aload_3
    //   637: iload 24
    //   639: invokeinterface 387 2 0
    //   644: putfield 432	x0/p:n	J
    //   647: aload 33
    //   649: aload_3
    //   650: iload 25
    //   652: invokeinterface 387 2 0
    //   657: putfield 434	x0/p:o	J
    //   660: aload 33
    //   662: aload_3
    //   663: iload 26
    //   665: invokeinterface 387 2 0
    //   670: putfield 436	x0/p:p	J
    //   673: aload_3
    //   674: iload_1
    //   675: invokeinterface 300 2 0
    //   680: ifeq +9 -> 689
    //   683: iconst_1
    //   684: istore 32
    //   686: goto +6 -> 692
    //   689: iconst_0
    //   690: istore 32
    //   692: aload 33
    //   694: iload 32
    //   696: putfield 439	x0/p:q	Z
    //   699: aload 33
    //   701: aload_3
    //   702: iload 27
    //   704: invokeinterface 300 2 0
    //   709: invokestatic 442	x0/v:f	(I)Landroidx/work/OutOfQuotaPolicy;
    //   712: putfield 446	x0/p:r	Landroidx/work/OutOfQuotaPolicy;
    //   715: aload 33
    //   717: aload 31
    //   719: putfield 449	x0/p:j	Landroidx/work/b;
    //   722: aload 28
    //   724: aload 33
    //   726: invokeinterface 309 2 0
    //   731: pop
    //   732: goto -459 -> 273
    //   735: aload_3
    //   736: invokeinterface 181 1 0
    //   741: aload_2
    //   742: invokevirtual 311	androidx/room/m:z	()V
    //   745: aload 28
    //   747: areturn
    //   748: astore 33
    //   750: goto +5 -> 755
    //   753: astore 33
    //   755: aload_3
    //   756: invokeinterface 181 1 0
    //   761: aload_2
    //   762: invokevirtual 311	androidx/room/m:z	()V
    //   765: aload 33
    //   767: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	768	0	this	r
    //   0	768	1	paramInt	int
    //   7	755	2	localm	m
    //   32	724	3	localCursor	Cursor
    //   40	276	4	k	int
    //   49	281	5	m	int
    //   58	299	6	n	int
    //   67	317	7	i1	int
    //   76	335	8	i2	int
    //   85	355	9	i3	int
    //   94	359	10	i4	int
    //   103	363	11	i5	int
    //   112	172	12	i6	int
    //   121	375	13	i7	int
    //   130	164	14	i8	int
    //   139	373	15	i9	int
    //   148	377	16	i10	int
    //   157	384	17	i11	int
    //   166	391	18	i12	int
    //   175	395	19	i13	int
    //   184	399	20	i14	int
    //   193	403	21	i15	int
    //   202	407	22	i16	int
    //   211	414	23	i17	int
    //   220	418	24	i18	int
    //   229	422	25	i19	int
    //   238	426	26	i20	int
    //   255	448	27	i21	int
    //   260	486	28	localArrayList	ArrayList
    //   290	196	29	str1	String
    //   300	188	30	str2	String
    //   305	413	31	localb	androidx.work.b
    //   340	355	32	bool	boolean
    //   481	244	33	localp	p
    //   748	1	33	localObject1	Object
    //   753	13	33	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   159	262	748	finally
    //   262	273	748	finally
    //   273	339	748	finally
    //   348	366	748	finally
    //   375	393	748	finally
    //   402	420	748	finally
    //   429	553	748	finally
    //   553	621	748	finally
    //   621	647	748	finally
    //   647	683	748	finally
    //   692	732	748	finally
    //   33	159	753	finally
  }
  
  /* Error */
  public List<p> h()
  {
    // Byte code:
    //   0: ldc_w 464
    //   3: iconst_0
    //   4: invokestatic 145	androidx/room/m:j	(Ljava/lang/String;I)Landroidx/room/m;
    //   7: astore_1
    //   8: aload_0
    //   9: getfield 47	x0/r:a	Landroidx/room/RoomDatabase;
    //   12: invokevirtual 228	androidx/room/RoomDatabase:assertNotSuspendingTransaction	()V
    //   15: aload_0
    //   16: getfield 47	x0/r:a	Landroidx/room/RoomDatabase;
    //   19: aload_1
    //   20: iconst_0
    //   21: aconst_null
    //   22: invokestatic 169	k0/c:b	(Landroidx/room/RoomDatabase;Ll0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;
    //   25: astore_2
    //   26: aload_2
    //   27: ldc_w 318
    //   30: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   33: istore_3
    //   34: aload_2
    //   35: ldc_w 320
    //   38: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   41: istore 4
    //   43: aload_2
    //   44: ldc_w 322
    //   47: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   50: istore 5
    //   52: aload_2
    //   53: ldc_w 324
    //   56: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   59: istore 6
    //   61: aload_2
    //   62: ldc_w 326
    //   65: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   68: istore 7
    //   70: aload_2
    //   71: ldc_w 328
    //   74: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   77: istore 8
    //   79: aload_2
    //   80: ldc_w 330
    //   83: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   86: istore 9
    //   88: aload_2
    //   89: ldc_w 332
    //   92: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   95: istore 10
    //   97: aload_2
    //   98: ldc_w 282
    //   101: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   104: istore 11
    //   106: aload_2
    //   107: ldc_w 286
    //   110: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   113: istore 12
    //   115: aload_2
    //   116: ldc_w 334
    //   119: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   122: istore 13
    //   124: aload_2
    //   125: ldc_w 336
    //   128: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   131: istore 14
    //   133: aload_2
    //   134: ldc_w 338
    //   137: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   140: istore 15
    //   142: aload_2
    //   143: ldc_w 340
    //   146: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   149: istore 16
    //   151: aload_2
    //   152: ldc_w 342
    //   155: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   158: istore 17
    //   160: aload_2
    //   161: ldc_w 344
    //   164: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   167: istore 18
    //   169: aload_2
    //   170: ldc_w 346
    //   173: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   176: istore 19
    //   178: aload_2
    //   179: ldc_w 348
    //   182: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   185: istore 20
    //   187: aload_2
    //   188: ldc_w 350
    //   191: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   194: istore 21
    //   196: aload_2
    //   197: ldc_w 352
    //   200: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   203: istore 22
    //   205: aload_2
    //   206: ldc_w 354
    //   209: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   212: istore 23
    //   214: aload_2
    //   215: ldc_w 356
    //   218: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   221: istore 24
    //   223: aload_2
    //   224: ldc_w 358
    //   227: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   230: istore 25
    //   232: aload_2
    //   233: ldc_w 360
    //   236: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   239: istore 26
    //   241: aload_2
    //   242: ldc_w 362
    //   245: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   248: istore 27
    //   250: new 111	java/util/ArrayList
    //   253: astore 28
    //   255: aload 28
    //   257: aload_2
    //   258: invokeinterface 289 1 0
    //   263: invokespecial 290	java/util/ArrayList:<init>	(I)V
    //   266: aload_2
    //   267: invokeinterface 184 1 0
    //   272: ifeq +456 -> 728
    //   275: aload_2
    //   276: iload 11
    //   278: invokeinterface 192 2 0
    //   283: astore 29
    //   285: aload_2
    //   286: iload 13
    //   288: invokeinterface 192 2 0
    //   293: astore 30
    //   295: new 364	androidx/work/b
    //   298: astore 31
    //   300: aload 31
    //   302: invokespecial 365	androidx/work/b:<init>	()V
    //   305: aload 31
    //   307: aload_2
    //   308: iload_3
    //   309: invokeinterface 300 2 0
    //   314: invokestatic 368	x0/v:e	(I)Landroidx/work/NetworkType;
    //   317: invokevirtual 372	androidx/work/b:k	(Landroidx/work/NetworkType;)V
    //   320: aload_2
    //   321: iload 4
    //   323: invokeinterface 300 2 0
    //   328: ifeq +9 -> 337
    //   331: iconst_1
    //   332: istore 32
    //   334: goto +6 -> 340
    //   337: iconst_0
    //   338: istore 32
    //   340: aload 31
    //   342: iload 32
    //   344: invokevirtual 376	androidx/work/b:m	(Z)V
    //   347: aload_2
    //   348: iload 5
    //   350: invokeinterface 300 2 0
    //   355: ifeq +9 -> 364
    //   358: iconst_1
    //   359: istore 32
    //   361: goto +6 -> 367
    //   364: iconst_0
    //   365: istore 32
    //   367: aload 31
    //   369: iload 32
    //   371: invokevirtual 379	androidx/work/b:n	(Z)V
    //   374: aload_2
    //   375: iload 6
    //   377: invokeinterface 300 2 0
    //   382: ifeq +9 -> 391
    //   385: iconst_1
    //   386: istore 32
    //   388: goto +6 -> 394
    //   391: iconst_0
    //   392: istore 32
    //   394: aload 31
    //   396: iload 32
    //   398: invokevirtual 381	androidx/work/b:l	(Z)V
    //   401: aload_2
    //   402: iload 7
    //   404: invokeinterface 300 2 0
    //   409: ifeq +9 -> 418
    //   412: iconst_1
    //   413: istore 32
    //   415: goto +6 -> 421
    //   418: iconst_0
    //   419: istore 32
    //   421: aload 31
    //   423: iload 32
    //   425: invokevirtual 383	androidx/work/b:o	(Z)V
    //   428: aload 31
    //   430: aload_2
    //   431: iload 8
    //   433: invokeinterface 387 2 0
    //   438: invokevirtual 390	androidx/work/b:p	(J)V
    //   441: aload 31
    //   443: aload_2
    //   444: iload 9
    //   446: invokeinterface 387 2 0
    //   451: invokevirtual 393	androidx/work/b:q	(J)V
    //   454: aload 31
    //   456: aload_2
    //   457: iload 10
    //   459: invokeinterface 200 2 0
    //   464: invokestatic 396	x0/v:b	([B)Landroidx/work/c;
    //   467: invokevirtual 399	androidx/work/b:j	(Landroidx/work/c;)V
    //   470: new 401	x0/p
    //   473: astore 33
    //   475: aload 33
    //   477: aload 29
    //   479: aload 30
    //   481: invokespecial 404	x0/p:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   484: aload 33
    //   486: aload_2
    //   487: iload 12
    //   489: invokeinterface 300 2 0
    //   494: invokestatic 303	x0/v:g	(I)Landroidx/work/WorkInfo$State;
    //   497: putfield 405	x0/p:b	Landroidx/work/WorkInfo$State;
    //   500: aload 33
    //   502: aload_2
    //   503: iload 14
    //   505: invokeinterface 192 2 0
    //   510: putfield 407	x0/p:d	Ljava/lang/String;
    //   513: aload 33
    //   515: aload_2
    //   516: iload 15
    //   518: invokeinterface 200 2 0
    //   523: invokestatic 205	androidx/work/d:g	([B)Landroidx/work/d;
    //   526: putfield 410	x0/p:e	Landroidx/work/d;
    //   529: aload 33
    //   531: aload_2
    //   532: iload 16
    //   534: invokeinterface 200 2 0
    //   539: invokestatic 205	androidx/work/d:g	([B)Landroidx/work/d;
    //   542: putfield 412	x0/p:f	Landroidx/work/d;
    //   545: aload 33
    //   547: aload_2
    //   548: iload 17
    //   550: invokeinterface 387 2 0
    //   555: putfield 415	x0/p:g	J
    //   558: aload 33
    //   560: aload_2
    //   561: iload 18
    //   563: invokeinterface 387 2 0
    //   568: putfield 417	x0/p:h	J
    //   571: aload 33
    //   573: aload_2
    //   574: iload 19
    //   576: invokeinterface 387 2 0
    //   581: putfield 419	x0/p:i	J
    //   584: aload 33
    //   586: aload_2
    //   587: iload 20
    //   589: invokeinterface 300 2 0
    //   594: putfield 422	x0/p:k	I
    //   597: aload 33
    //   599: aload_2
    //   600: iload 21
    //   602: invokeinterface 300 2 0
    //   607: invokestatic 425	x0/v:d	(I)Landroidx/work/BackoffPolicy;
    //   610: putfield 428	x0/p:l	Landroidx/work/BackoffPolicy;
    //   613: aload 33
    //   615: aload_2
    //   616: iload 22
    //   618: invokeinterface 387 2 0
    //   623: putfield 430	x0/p:m	J
    //   626: aload 33
    //   628: aload_2
    //   629: iload 23
    //   631: invokeinterface 387 2 0
    //   636: putfield 432	x0/p:n	J
    //   639: aload 33
    //   641: aload_2
    //   642: iload 24
    //   644: invokeinterface 387 2 0
    //   649: putfield 434	x0/p:o	J
    //   652: aload 33
    //   654: aload_2
    //   655: iload 25
    //   657: invokeinterface 387 2 0
    //   662: putfield 436	x0/p:p	J
    //   665: aload_2
    //   666: iload 26
    //   668: invokeinterface 300 2 0
    //   673: ifeq +9 -> 682
    //   676: iconst_1
    //   677: istore 32
    //   679: goto +6 -> 685
    //   682: iconst_0
    //   683: istore 32
    //   685: aload 33
    //   687: iload 32
    //   689: putfield 439	x0/p:q	Z
    //   692: aload 33
    //   694: aload_2
    //   695: iload 27
    //   697: invokeinterface 300 2 0
    //   702: invokestatic 442	x0/v:f	(I)Landroidx/work/OutOfQuotaPolicy;
    //   705: putfield 446	x0/p:r	Landroidx/work/OutOfQuotaPolicy;
    //   708: aload 33
    //   710: aload 31
    //   712: putfield 449	x0/p:j	Landroidx/work/b;
    //   715: aload 28
    //   717: aload 33
    //   719: invokeinterface 309 2 0
    //   724: pop
    //   725: goto -459 -> 266
    //   728: aload_2
    //   729: invokeinterface 181 1 0
    //   734: aload_1
    //   735: invokevirtual 311	androidx/room/m:z	()V
    //   738: aload 28
    //   740: areturn
    //   741: astore 33
    //   743: goto +5 -> 748
    //   746: astore 33
    //   748: aload_2
    //   749: invokeinterface 181 1 0
    //   754: aload_1
    //   755: invokevirtual 311	androidx/room/m:z	()V
    //   758: aload 33
    //   760: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	761	0	this	r
    //   7	748	1	localm	m
    //   25	724	2	localCursor	Cursor
    //   33	276	3	k	int
    //   41	281	4	m	int
    //   50	299	5	n	int
    //   59	317	6	i1	int
    //   68	335	7	i2	int
    //   77	355	8	i3	int
    //   86	359	9	i4	int
    //   95	363	10	i5	int
    //   104	173	11	i6	int
    //   113	375	12	i7	int
    //   122	165	13	i8	int
    //   131	373	14	i9	int
    //   140	377	15	i10	int
    //   149	384	16	i11	int
    //   158	391	17	i12	int
    //   167	395	18	i13	int
    //   176	399	19	i14	int
    //   185	403	20	i15	int
    //   194	407	21	i16	int
    //   203	414	22	i17	int
    //   212	418	23	i18	int
    //   221	422	24	i19	int
    //   230	426	25	i20	int
    //   239	428	26	i21	int
    //   248	448	27	i22	int
    //   253	486	28	localArrayList	ArrayList
    //   283	195	29	str1	String
    //   293	187	30	str2	String
    //   298	413	31	localb	androidx.work.b
    //   332	356	32	bool	boolean
    //   473	245	33	localp	p
    //   741	1	33	localObject1	Object
    //   746	13	33	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   151	255	741	finally
    //   255	266	741	finally
    //   266	331	741	finally
    //   340	358	741	finally
    //   367	385	741	finally
    //   394	412	741	finally
    //   421	545	741	finally
    //   545	613	741	finally
    //   613	639	741	finally
    //   639	676	741	finally
    //   685	725	741	finally
    //   26	151	746	finally
  }
  
  public void i(String paramString, androidx.work.d paramd)
  {
    this.a.assertNotSuspendingTransaction();
    l0.f localf = this.d.acquire();
    paramd = androidx.work.d.k(paramd);
    if (paramd == null) {
      localf.X(1);
    } else {
      localf.F(1, paramd);
    }
    if (paramString == null) {
      localf.X(2);
    } else {
      localf.l(2, paramString);
    }
    this.a.beginTransaction();
    try
    {
      localf.o();
      this.a.setTransactionSuccessful();
      return;
    }
    finally
    {
      this.a.endTransaction();
      this.d.release(localf);
    }
  }
  
  /* Error */
  public List<p> j()
  {
    // Byte code:
    //   0: ldc_w 475
    //   3: iconst_0
    //   4: invokestatic 145	androidx/room/m:j	(Ljava/lang/String;I)Landroidx/room/m;
    //   7: astore_1
    //   8: aload_0
    //   9: getfield 47	x0/r:a	Landroidx/room/RoomDatabase;
    //   12: invokevirtual 228	androidx/room/RoomDatabase:assertNotSuspendingTransaction	()V
    //   15: aload_0
    //   16: getfield 47	x0/r:a	Landroidx/room/RoomDatabase;
    //   19: aload_1
    //   20: iconst_0
    //   21: aconst_null
    //   22: invokestatic 169	k0/c:b	(Landroidx/room/RoomDatabase;Ll0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;
    //   25: astore_2
    //   26: aload_2
    //   27: ldc_w 318
    //   30: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   33: istore_3
    //   34: aload_2
    //   35: ldc_w 320
    //   38: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   41: istore 4
    //   43: aload_2
    //   44: ldc_w 322
    //   47: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   50: istore 5
    //   52: aload_2
    //   53: ldc_w 324
    //   56: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   59: istore 6
    //   61: aload_2
    //   62: ldc_w 326
    //   65: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   68: istore 7
    //   70: aload_2
    //   71: ldc_w 328
    //   74: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   77: istore 8
    //   79: aload_2
    //   80: ldc_w 330
    //   83: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   86: istore 9
    //   88: aload_2
    //   89: ldc_w 332
    //   92: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   95: istore 10
    //   97: aload_2
    //   98: ldc_w 282
    //   101: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   104: istore 11
    //   106: aload_2
    //   107: ldc_w 286
    //   110: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   113: istore 12
    //   115: aload_2
    //   116: ldc_w 334
    //   119: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   122: istore 13
    //   124: aload_2
    //   125: ldc_w 336
    //   128: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   131: istore 14
    //   133: aload_2
    //   134: ldc_w 338
    //   137: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   140: istore 15
    //   142: aload_2
    //   143: ldc_w 340
    //   146: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   149: istore 16
    //   151: aload_2
    //   152: ldc_w 342
    //   155: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   158: istore 17
    //   160: aload_2
    //   161: ldc_w 344
    //   164: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   167: istore 18
    //   169: aload_2
    //   170: ldc_w 346
    //   173: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   176: istore 19
    //   178: aload_2
    //   179: ldc_w 348
    //   182: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   185: istore 20
    //   187: aload_2
    //   188: ldc_w 350
    //   191: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   194: istore 21
    //   196: aload_2
    //   197: ldc_w 352
    //   200: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   203: istore 22
    //   205: aload_2
    //   206: ldc_w 354
    //   209: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   212: istore 23
    //   214: aload_2
    //   215: ldc_w 356
    //   218: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   221: istore 24
    //   223: aload_2
    //   224: ldc_w 358
    //   227: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   230: istore 25
    //   232: aload_2
    //   233: ldc_w 360
    //   236: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   239: istore 26
    //   241: aload_2
    //   242: ldc_w 362
    //   245: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   248: istore 27
    //   250: new 111	java/util/ArrayList
    //   253: astore 28
    //   255: aload 28
    //   257: aload_2
    //   258: invokeinterface 289 1 0
    //   263: invokespecial 290	java/util/ArrayList:<init>	(I)V
    //   266: aload_2
    //   267: invokeinterface 184 1 0
    //   272: ifeq +456 -> 728
    //   275: aload_2
    //   276: iload 11
    //   278: invokeinterface 192 2 0
    //   283: astore 29
    //   285: aload_2
    //   286: iload 13
    //   288: invokeinterface 192 2 0
    //   293: astore 30
    //   295: new 364	androidx/work/b
    //   298: astore 31
    //   300: aload 31
    //   302: invokespecial 365	androidx/work/b:<init>	()V
    //   305: aload 31
    //   307: aload_2
    //   308: iload_3
    //   309: invokeinterface 300 2 0
    //   314: invokestatic 368	x0/v:e	(I)Landroidx/work/NetworkType;
    //   317: invokevirtual 372	androidx/work/b:k	(Landroidx/work/NetworkType;)V
    //   320: aload_2
    //   321: iload 4
    //   323: invokeinterface 300 2 0
    //   328: ifeq +9 -> 337
    //   331: iconst_1
    //   332: istore 32
    //   334: goto +6 -> 340
    //   337: iconst_0
    //   338: istore 32
    //   340: aload 31
    //   342: iload 32
    //   344: invokevirtual 376	androidx/work/b:m	(Z)V
    //   347: aload_2
    //   348: iload 5
    //   350: invokeinterface 300 2 0
    //   355: ifeq +9 -> 364
    //   358: iconst_1
    //   359: istore 32
    //   361: goto +6 -> 367
    //   364: iconst_0
    //   365: istore 32
    //   367: aload 31
    //   369: iload 32
    //   371: invokevirtual 379	androidx/work/b:n	(Z)V
    //   374: aload_2
    //   375: iload 6
    //   377: invokeinterface 300 2 0
    //   382: ifeq +9 -> 391
    //   385: iconst_1
    //   386: istore 32
    //   388: goto +6 -> 394
    //   391: iconst_0
    //   392: istore 32
    //   394: aload 31
    //   396: iload 32
    //   398: invokevirtual 381	androidx/work/b:l	(Z)V
    //   401: aload_2
    //   402: iload 7
    //   404: invokeinterface 300 2 0
    //   409: ifeq +9 -> 418
    //   412: iconst_1
    //   413: istore 32
    //   415: goto +6 -> 421
    //   418: iconst_0
    //   419: istore 32
    //   421: aload 31
    //   423: iload 32
    //   425: invokevirtual 383	androidx/work/b:o	(Z)V
    //   428: aload 31
    //   430: aload_2
    //   431: iload 8
    //   433: invokeinterface 387 2 0
    //   438: invokevirtual 390	androidx/work/b:p	(J)V
    //   441: aload 31
    //   443: aload_2
    //   444: iload 9
    //   446: invokeinterface 387 2 0
    //   451: invokevirtual 393	androidx/work/b:q	(J)V
    //   454: aload 31
    //   456: aload_2
    //   457: iload 10
    //   459: invokeinterface 200 2 0
    //   464: invokestatic 396	x0/v:b	([B)Landroidx/work/c;
    //   467: invokevirtual 399	androidx/work/b:j	(Landroidx/work/c;)V
    //   470: new 401	x0/p
    //   473: astore 33
    //   475: aload 33
    //   477: aload 29
    //   479: aload 30
    //   481: invokespecial 404	x0/p:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   484: aload 33
    //   486: aload_2
    //   487: iload 12
    //   489: invokeinterface 300 2 0
    //   494: invokestatic 303	x0/v:g	(I)Landroidx/work/WorkInfo$State;
    //   497: putfield 405	x0/p:b	Landroidx/work/WorkInfo$State;
    //   500: aload 33
    //   502: aload_2
    //   503: iload 14
    //   505: invokeinterface 192 2 0
    //   510: putfield 407	x0/p:d	Ljava/lang/String;
    //   513: aload 33
    //   515: aload_2
    //   516: iload 15
    //   518: invokeinterface 200 2 0
    //   523: invokestatic 205	androidx/work/d:g	([B)Landroidx/work/d;
    //   526: putfield 410	x0/p:e	Landroidx/work/d;
    //   529: aload 33
    //   531: aload_2
    //   532: iload 16
    //   534: invokeinterface 200 2 0
    //   539: invokestatic 205	androidx/work/d:g	([B)Landroidx/work/d;
    //   542: putfield 412	x0/p:f	Landroidx/work/d;
    //   545: aload 33
    //   547: aload_2
    //   548: iload 17
    //   550: invokeinterface 387 2 0
    //   555: putfield 415	x0/p:g	J
    //   558: aload 33
    //   560: aload_2
    //   561: iload 18
    //   563: invokeinterface 387 2 0
    //   568: putfield 417	x0/p:h	J
    //   571: aload 33
    //   573: aload_2
    //   574: iload 19
    //   576: invokeinterface 387 2 0
    //   581: putfield 419	x0/p:i	J
    //   584: aload 33
    //   586: aload_2
    //   587: iload 20
    //   589: invokeinterface 300 2 0
    //   594: putfield 422	x0/p:k	I
    //   597: aload 33
    //   599: aload_2
    //   600: iload 21
    //   602: invokeinterface 300 2 0
    //   607: invokestatic 425	x0/v:d	(I)Landroidx/work/BackoffPolicy;
    //   610: putfield 428	x0/p:l	Landroidx/work/BackoffPolicy;
    //   613: aload 33
    //   615: aload_2
    //   616: iload 22
    //   618: invokeinterface 387 2 0
    //   623: putfield 430	x0/p:m	J
    //   626: aload 33
    //   628: aload_2
    //   629: iload 23
    //   631: invokeinterface 387 2 0
    //   636: putfield 432	x0/p:n	J
    //   639: aload 33
    //   641: aload_2
    //   642: iload 24
    //   644: invokeinterface 387 2 0
    //   649: putfield 434	x0/p:o	J
    //   652: aload 33
    //   654: aload_2
    //   655: iload 25
    //   657: invokeinterface 387 2 0
    //   662: putfield 436	x0/p:p	J
    //   665: aload_2
    //   666: iload 26
    //   668: invokeinterface 300 2 0
    //   673: ifeq +9 -> 682
    //   676: iconst_1
    //   677: istore 32
    //   679: goto +6 -> 685
    //   682: iconst_0
    //   683: istore 32
    //   685: aload 33
    //   687: iload 32
    //   689: putfield 439	x0/p:q	Z
    //   692: aload 33
    //   694: aload_2
    //   695: iload 27
    //   697: invokeinterface 300 2 0
    //   702: invokestatic 442	x0/v:f	(I)Landroidx/work/OutOfQuotaPolicy;
    //   705: putfield 446	x0/p:r	Landroidx/work/OutOfQuotaPolicy;
    //   708: aload 33
    //   710: aload 31
    //   712: putfield 449	x0/p:j	Landroidx/work/b;
    //   715: aload 28
    //   717: aload 33
    //   719: invokeinterface 309 2 0
    //   724: pop
    //   725: goto -459 -> 266
    //   728: aload_2
    //   729: invokeinterface 181 1 0
    //   734: aload_1
    //   735: invokevirtual 311	androidx/room/m:z	()V
    //   738: aload 28
    //   740: areturn
    //   741: astore 28
    //   743: goto +5 -> 748
    //   746: astore 28
    //   748: aload_2
    //   749: invokeinterface 181 1 0
    //   754: aload_1
    //   755: invokevirtual 311	androidx/room/m:z	()V
    //   758: aload 28
    //   760: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	761	0	this	r
    //   7	748	1	localm	m
    //   25	724	2	localCursor	Cursor
    //   33	276	3	k	int
    //   41	281	4	m	int
    //   50	299	5	n	int
    //   59	317	6	i1	int
    //   68	335	7	i2	int
    //   77	355	8	i3	int
    //   86	359	9	i4	int
    //   95	363	10	i5	int
    //   104	173	11	i6	int
    //   113	375	12	i7	int
    //   122	165	13	i8	int
    //   131	373	14	i9	int
    //   140	377	15	i10	int
    //   149	384	16	i11	int
    //   158	391	17	i12	int
    //   167	395	18	i13	int
    //   176	399	19	i14	int
    //   185	403	20	i15	int
    //   194	407	21	i16	int
    //   203	414	22	i17	int
    //   212	418	23	i18	int
    //   221	422	24	i19	int
    //   230	426	25	i20	int
    //   239	428	26	i21	int
    //   248	448	27	i22	int
    //   253	486	28	localArrayList	ArrayList
    //   741	1	28	localObject1	Object
    //   746	13	28	localObject2	Object
    //   283	195	29	str1	String
    //   293	187	30	str2	String
    //   298	413	31	localb	androidx.work.b
    //   332	356	32	bool	boolean
    //   473	245	33	localp	p
    // Exception table:
    //   from	to	target	type
    //   151	255	741	finally
    //   255	266	741	finally
    //   266	331	741	finally
    //   340	358	741	finally
    //   367	385	741	finally
    //   394	412	741	finally
    //   421	545	741	finally
    //   545	613	741	finally
    //   613	639	741	finally
    //   639	676	741	finally
    //   685	725	741	finally
    //   26	151	746	finally
  }
  
  public boolean k()
  {
    boolean bool1 = false;
    m localm = m.j("SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1", 0);
    this.a.assertNotSuspendingTransaction();
    Cursor localCursor = c.b(this.a, localm, false, null);
    boolean bool2 = bool1;
    try
    {
      if (localCursor.moveToFirst())
      {
        int k = localCursor.getInt(0);
        bool2 = bool1;
        if (k != 0) {
          bool2 = true;
        }
      }
      return bool2;
    }
    finally
    {
      localCursor.close();
      localm.z();
    }
  }
  
  public List<String> l(String paramString)
  {
    m localm = m.j("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
    if (paramString == null) {
      localm.X(1);
    } else {
      localm.l(1, paramString);
    }
    this.a.assertNotSuspendingTransaction();
    paramString = c.b(this.a, localm, false, null);
    try
    {
      ArrayList localArrayList = new java/util/ArrayList;
      localArrayList.<init>(paramString.getCount());
      while (paramString.moveToNext()) {
        localArrayList.add(paramString.getString(0));
      }
      return localArrayList;
    }
    finally
    {
      paramString.close();
      localm.z();
    }
  }
  
  public WorkInfo.State m(String paramString)
  {
    m localm = m.j("SELECT state FROM workspec WHERE id=?", 1);
    if (paramString == null) {
      localm.X(1);
    } else {
      localm.l(1, paramString);
    }
    this.a.assertNotSuspendingTransaction();
    Object localObject = this.a;
    paramString = null;
    localObject = c.b((RoomDatabase)localObject, localm, false, null);
    try
    {
      if (((Cursor)localObject).moveToFirst()) {
        paramString = v.g(((Cursor)localObject).getInt(0));
      }
      return paramString;
    }
    finally
    {
      ((Cursor)localObject).close();
      localm.z();
    }
  }
  
  /* Error */
  public p n(String paramString)
  {
    // Byte code:
    //   0: ldc_w 489
    //   3: iconst_1
    //   4: invokestatic 145	androidx/room/m:j	(Ljava/lang/String;I)Landroidx/room/m;
    //   7: astore_2
    //   8: aload_1
    //   9: ifnonnull +11 -> 20
    //   12: aload_2
    //   13: iconst_1
    //   14: invokevirtual 161	androidx/room/m:X	(I)V
    //   17: goto +9 -> 26
    //   20: aload_2
    //   21: iconst_1
    //   22: aload_1
    //   23: invokevirtual 164	androidx/room/m:l	(ILjava/lang/String;)V
    //   26: aload_0
    //   27: getfield 47	x0/r:a	Landroidx/room/RoomDatabase;
    //   30: invokevirtual 228	androidx/room/RoomDatabase:assertNotSuspendingTransaction	()V
    //   33: aload_0
    //   34: getfield 47	x0/r:a	Landroidx/room/RoomDatabase;
    //   37: aload_2
    //   38: iconst_0
    //   39: aconst_null
    //   40: invokestatic 169	k0/c:b	(Landroidx/room/RoomDatabase;Ll0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;
    //   43: astore_3
    //   44: aload_3
    //   45: ldc_w 318
    //   48: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   51: istore 4
    //   53: aload_3
    //   54: ldc_w 320
    //   57: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   60: istore 5
    //   62: aload_3
    //   63: ldc_w 322
    //   66: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   69: istore 6
    //   71: aload_3
    //   72: ldc_w 324
    //   75: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   78: istore 7
    //   80: aload_3
    //   81: ldc_w 326
    //   84: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   87: istore 8
    //   89: aload_3
    //   90: ldc_w 328
    //   93: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   96: istore 9
    //   98: aload_3
    //   99: ldc_w 330
    //   102: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   105: istore 10
    //   107: aload_3
    //   108: ldc_w 332
    //   111: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   114: istore 11
    //   116: aload_3
    //   117: ldc_w 282
    //   120: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   123: istore 12
    //   125: aload_3
    //   126: ldc_w 286
    //   129: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   132: istore 13
    //   134: aload_3
    //   135: ldc_w 334
    //   138: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   141: istore 14
    //   143: aload_3
    //   144: ldc_w 336
    //   147: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   150: istore 15
    //   152: aload_3
    //   153: ldc_w 338
    //   156: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   159: istore 16
    //   161: aload_3
    //   162: ldc_w 340
    //   165: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   168: istore 17
    //   170: aload_3
    //   171: ldc_w 342
    //   174: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   177: istore 18
    //   179: aload_3
    //   180: ldc_w 344
    //   183: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   186: istore 19
    //   188: aload_3
    //   189: ldc_w 346
    //   192: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   195: istore 20
    //   197: aload_3
    //   198: ldc_w 348
    //   201: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   204: istore 21
    //   206: aload_3
    //   207: ldc_w 350
    //   210: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   213: istore 22
    //   215: aload_3
    //   216: ldc_w 352
    //   219: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   222: istore 23
    //   224: aload_3
    //   225: ldc_w 354
    //   228: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   231: istore 24
    //   233: aload_3
    //   234: ldc_w 356
    //   237: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   240: istore 25
    //   242: aload_3
    //   243: ldc_w 358
    //   246: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   249: istore 26
    //   251: aload_3
    //   252: ldc_w 360
    //   255: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   258: istore 27
    //   260: aload_3
    //   261: ldc_w 362
    //   264: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   267: istore 28
    //   269: aload_3
    //   270: invokeinterface 480 1 0
    //   275: ifeq +429 -> 704
    //   278: aload_3
    //   279: iload 12
    //   281: invokeinterface 192 2 0
    //   286: astore 29
    //   288: aload_3
    //   289: iload 14
    //   291: invokeinterface 192 2 0
    //   296: astore 30
    //   298: new 364	androidx/work/b
    //   301: astore 31
    //   303: aload 31
    //   305: invokespecial 365	androidx/work/b:<init>	()V
    //   308: aload 31
    //   310: aload_3
    //   311: iload 4
    //   313: invokeinterface 300 2 0
    //   318: invokestatic 368	x0/v:e	(I)Landroidx/work/NetworkType;
    //   321: invokevirtual 372	androidx/work/b:k	(Landroidx/work/NetworkType;)V
    //   324: aload_3
    //   325: iload 5
    //   327: invokeinterface 300 2 0
    //   332: ifeq +9 -> 341
    //   335: iconst_1
    //   336: istore 32
    //   338: goto +6 -> 344
    //   341: iconst_0
    //   342: istore 32
    //   344: aload 31
    //   346: iload 32
    //   348: invokevirtual 376	androidx/work/b:m	(Z)V
    //   351: aload_3
    //   352: iload 6
    //   354: invokeinterface 300 2 0
    //   359: ifeq +9 -> 368
    //   362: iconst_1
    //   363: istore 32
    //   365: goto +6 -> 371
    //   368: iconst_0
    //   369: istore 32
    //   371: aload 31
    //   373: iload 32
    //   375: invokevirtual 379	androidx/work/b:n	(Z)V
    //   378: aload_3
    //   379: iload 7
    //   381: invokeinterface 300 2 0
    //   386: ifeq +9 -> 395
    //   389: iconst_1
    //   390: istore 32
    //   392: goto +6 -> 398
    //   395: iconst_0
    //   396: istore 32
    //   398: aload 31
    //   400: iload 32
    //   402: invokevirtual 381	androidx/work/b:l	(Z)V
    //   405: aload_3
    //   406: iload 8
    //   408: invokeinterface 300 2 0
    //   413: ifeq +9 -> 422
    //   416: iconst_1
    //   417: istore 32
    //   419: goto +6 -> 425
    //   422: iconst_0
    //   423: istore 32
    //   425: aload 31
    //   427: iload 32
    //   429: invokevirtual 383	androidx/work/b:o	(Z)V
    //   432: aload 31
    //   434: aload_3
    //   435: iload 9
    //   437: invokeinterface 387 2 0
    //   442: invokevirtual 390	androidx/work/b:p	(J)V
    //   445: aload 31
    //   447: aload_3
    //   448: iload 10
    //   450: invokeinterface 387 2 0
    //   455: invokevirtual 393	androidx/work/b:q	(J)V
    //   458: aload 31
    //   460: aload_3
    //   461: iload 11
    //   463: invokeinterface 200 2 0
    //   468: invokestatic 396	x0/v:b	([B)Landroidx/work/c;
    //   471: invokevirtual 399	androidx/work/b:j	(Landroidx/work/c;)V
    //   474: new 401	x0/p
    //   477: astore_1
    //   478: aload_1
    //   479: aload 29
    //   481: aload 30
    //   483: invokespecial 404	x0/p:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   486: aload_1
    //   487: aload_3
    //   488: iload 13
    //   490: invokeinterface 300 2 0
    //   495: invokestatic 303	x0/v:g	(I)Landroidx/work/WorkInfo$State;
    //   498: putfield 405	x0/p:b	Landroidx/work/WorkInfo$State;
    //   501: aload_1
    //   502: aload_3
    //   503: iload 15
    //   505: invokeinterface 192 2 0
    //   510: putfield 407	x0/p:d	Ljava/lang/String;
    //   513: aload_1
    //   514: aload_3
    //   515: iload 16
    //   517: invokeinterface 200 2 0
    //   522: invokestatic 205	androidx/work/d:g	([B)Landroidx/work/d;
    //   525: putfield 410	x0/p:e	Landroidx/work/d;
    //   528: aload_1
    //   529: aload_3
    //   530: iload 17
    //   532: invokeinterface 200 2 0
    //   537: invokestatic 205	androidx/work/d:g	([B)Landroidx/work/d;
    //   540: putfield 412	x0/p:f	Landroidx/work/d;
    //   543: aload_1
    //   544: aload_3
    //   545: iload 18
    //   547: invokeinterface 387 2 0
    //   552: putfield 415	x0/p:g	J
    //   555: aload_1
    //   556: aload_3
    //   557: iload 19
    //   559: invokeinterface 387 2 0
    //   564: putfield 417	x0/p:h	J
    //   567: aload_1
    //   568: aload_3
    //   569: iload 20
    //   571: invokeinterface 387 2 0
    //   576: putfield 419	x0/p:i	J
    //   579: aload_1
    //   580: aload_3
    //   581: iload 21
    //   583: invokeinterface 300 2 0
    //   588: putfield 422	x0/p:k	I
    //   591: aload_1
    //   592: aload_3
    //   593: iload 22
    //   595: invokeinterface 300 2 0
    //   600: invokestatic 425	x0/v:d	(I)Landroidx/work/BackoffPolicy;
    //   603: putfield 428	x0/p:l	Landroidx/work/BackoffPolicy;
    //   606: aload_1
    //   607: aload_3
    //   608: iload 23
    //   610: invokeinterface 387 2 0
    //   615: putfield 430	x0/p:m	J
    //   618: aload_1
    //   619: aload_3
    //   620: iload 24
    //   622: invokeinterface 387 2 0
    //   627: putfield 432	x0/p:n	J
    //   630: aload_1
    //   631: aload_3
    //   632: iload 25
    //   634: invokeinterface 387 2 0
    //   639: putfield 434	x0/p:o	J
    //   642: aload_1
    //   643: aload_3
    //   644: iload 26
    //   646: invokeinterface 387 2 0
    //   651: putfield 436	x0/p:p	J
    //   654: aload_3
    //   655: iload 27
    //   657: invokeinterface 300 2 0
    //   662: ifeq +9 -> 671
    //   665: iconst_1
    //   666: istore 32
    //   668: goto +6 -> 674
    //   671: iconst_0
    //   672: istore 32
    //   674: aload_1
    //   675: iload 32
    //   677: putfield 439	x0/p:q	Z
    //   680: aload_1
    //   681: aload_3
    //   682: iload 28
    //   684: invokeinterface 300 2 0
    //   689: invokestatic 442	x0/v:f	(I)Landroidx/work/OutOfQuotaPolicy;
    //   692: putfield 446	x0/p:r	Landroidx/work/OutOfQuotaPolicy;
    //   695: aload_1
    //   696: aload 31
    //   698: putfield 449	x0/p:j	Landroidx/work/b;
    //   701: goto +5 -> 706
    //   704: aconst_null
    //   705: astore_1
    //   706: aload_3
    //   707: invokeinterface 181 1 0
    //   712: aload_2
    //   713: invokevirtual 311	androidx/room/m:z	()V
    //   716: aload_1
    //   717: areturn
    //   718: astore_1
    //   719: goto +4 -> 723
    //   722: astore_1
    //   723: aload_3
    //   724: invokeinterface 181 1 0
    //   729: aload_2
    //   730: invokevirtual 311	androidx/room/m:z	()V
    //   733: aload_1
    //   734: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	735	0	this	r
    //   0	735	1	paramString	String
    //   7	723	2	localm	m
    //   43	681	3	localCursor	Cursor
    //   51	261	4	k	int
    //   60	266	5	m	int
    //   69	284	6	n	int
    //   78	302	7	i1	int
    //   87	320	8	i2	int
    //   96	340	9	i3	int
    //   105	344	10	i4	int
    //   114	348	11	i5	int
    //   123	157	12	i6	int
    //   132	357	13	i7	int
    //   141	149	14	i8	int
    //   150	354	15	i9	int
    //   159	357	16	i10	int
    //   168	363	17	i11	int
    //   177	369	18	i12	int
    //   186	372	19	i13	int
    //   195	375	20	i14	int
    //   204	378	21	i15	int
    //   213	381	22	i16	int
    //   222	387	23	i17	int
    //   231	390	24	i18	int
    //   240	393	25	i19	int
    //   249	396	26	i20	int
    //   258	398	27	i21	int
    //   267	416	28	i22	int
    //   286	194	29	str1	String
    //   296	186	30	str2	String
    //   301	396	31	localb	androidx.work.b
    //   336	340	32	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   170	335	718	finally
    //   344	362	718	finally
    //   371	389	718	finally
    //   398	416	718	finally
    //   425	665	718	finally
    //   674	701	718	finally
    //   44	170	722	finally
  }
  
  public int o(String paramString)
  {
    this.a.assertNotSuspendingTransaction();
    l0.f localf = this.g.acquire();
    if (paramString == null) {
      localf.X(1);
    } else {
      localf.l(1, paramString);
    }
    this.a.beginTransaction();
    try
    {
      int k = localf.o();
      this.a.setTransactionSuccessful();
      return k;
    }
    finally
    {
      this.a.endTransaction();
      this.g.release(localf);
    }
  }
  
  public LiveData<List<p.c>> p(List<String> paramList)
  {
    Object localObject = k0.f.b();
    ((StringBuilder)localObject).append("SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (");
    int k = paramList.size();
    k0.f.a((StringBuilder)localObject, k);
    ((StringBuilder)localObject).append(")");
    localObject = m.j(((StringBuilder)localObject).toString(), k + 0);
    Iterator localIterator = paramList.iterator();
    for (k = 1; localIterator.hasNext(); k++)
    {
      paramList = (String)localIterator.next();
      if (paramList == null) {
        ((m)localObject).X(k);
      } else {
        ((m)localObject).l(k, paramList);
      }
    }
    paramList = this.a.getInvalidationTracker();
    localObject = new a((m)localObject);
    return paramList.d(new String[] { "WorkTag", "WorkProgress", "workspec" }, true, (Callable)localObject);
  }
  
  public List<androidx.work.d> q(String paramString)
  {
    m localm = m.j("SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)", 1);
    if (paramString == null) {
      localm.X(1);
    } else {
      localm.l(1, paramString);
    }
    this.a.assertNotSuspendingTransaction();
    paramString = c.b(this.a, localm, false, null);
    try
    {
      ArrayList localArrayList = new java/util/ArrayList;
      localArrayList.<init>(paramString.getCount());
      while (paramString.moveToNext()) {
        localArrayList.add(androidx.work.d.g(paramString.getBlob(0)));
      }
      return localArrayList;
    }
    finally
    {
      paramString.close();
      localm.z();
    }
  }
  
  public int r(String paramString)
  {
    this.a.assertNotSuspendingTransaction();
    l0.f localf = this.f.acquire();
    if (paramString == null) {
      localf.X(1);
    } else {
      localf.l(1, paramString);
    }
    this.a.beginTransaction();
    try
    {
      int k = localf.o();
      this.a.setTransactionSuccessful();
      return k;
    }
    finally
    {
      this.a.endTransaction();
      this.f.release(localf);
    }
  }
  
  public void s(String paramString, long paramLong)
  {
    this.a.assertNotSuspendingTransaction();
    l0.f localf = this.e.acquire();
    localf.B(1, paramLong);
    if (paramString == null) {
      localf.X(2);
    } else {
      localf.l(2, paramString);
    }
    this.a.beginTransaction();
    try
    {
      localf.o();
      this.a.setTransactionSuccessful();
      return;
    }
    finally
    {
      this.a.endTransaction();
      this.e.release(localf);
    }
  }
  
  /* Error */
  public List<p> t(int paramInt)
  {
    // Byte code:
    //   0: ldc_w 522
    //   3: iconst_1
    //   4: invokestatic 145	androidx/room/m:j	(Ljava/lang/String;I)Landroidx/room/m;
    //   7: astore_2
    //   8: aload_2
    //   9: iconst_1
    //   10: iload_1
    //   11: i2l
    //   12: invokevirtual 316	androidx/room/m:B	(IJ)V
    //   15: aload_0
    //   16: getfield 47	x0/r:a	Landroidx/room/RoomDatabase;
    //   19: invokevirtual 228	androidx/room/RoomDatabase:assertNotSuspendingTransaction	()V
    //   22: aload_0
    //   23: getfield 47	x0/r:a	Landroidx/room/RoomDatabase;
    //   26: aload_2
    //   27: iconst_0
    //   28: aconst_null
    //   29: invokestatic 169	k0/c:b	(Landroidx/room/RoomDatabase;Ll0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;
    //   32: astore_3
    //   33: aload_3
    //   34: ldc_w 318
    //   37: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   40: istore 4
    //   42: aload_3
    //   43: ldc_w 320
    //   46: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   49: istore 5
    //   51: aload_3
    //   52: ldc_w 322
    //   55: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   58: istore 6
    //   60: aload_3
    //   61: ldc_w 324
    //   64: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   67: istore 7
    //   69: aload_3
    //   70: ldc_w 326
    //   73: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   76: istore 8
    //   78: aload_3
    //   79: ldc_w 328
    //   82: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   85: istore 9
    //   87: aload_3
    //   88: ldc_w 330
    //   91: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   94: istore 10
    //   96: aload_3
    //   97: ldc_w 332
    //   100: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   103: istore 11
    //   105: aload_3
    //   106: ldc_w 282
    //   109: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   112: istore 12
    //   114: aload_3
    //   115: ldc_w 286
    //   118: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   121: istore 13
    //   123: aload_3
    //   124: ldc_w 334
    //   127: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   130: istore 14
    //   132: aload_3
    //   133: ldc_w 336
    //   136: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   139: istore 15
    //   141: aload_3
    //   142: ldc_w 338
    //   145: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   148: istore 16
    //   150: aload_3
    //   151: ldc_w 340
    //   154: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   157: istore 17
    //   159: aload_3
    //   160: ldc_w 342
    //   163: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   166: istore 18
    //   168: aload_3
    //   169: ldc_w 344
    //   172: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   175: istore 19
    //   177: aload_3
    //   178: ldc_w 346
    //   181: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   184: istore 20
    //   186: aload_3
    //   187: ldc_w 348
    //   190: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   193: istore 21
    //   195: aload_3
    //   196: ldc_w 350
    //   199: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   202: istore_1
    //   203: aload_3
    //   204: ldc_w 352
    //   207: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   210: istore 22
    //   212: aload_3
    //   213: ldc_w 354
    //   216: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   219: istore 23
    //   221: aload_3
    //   222: ldc_w 356
    //   225: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   228: istore 24
    //   230: aload_3
    //   231: ldc_w 358
    //   234: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   237: istore 25
    //   239: aload_3
    //   240: ldc_w 360
    //   243: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   246: istore 26
    //   248: aload_3
    //   249: ldc_w 362
    //   252: invokestatic 284	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
    //   255: istore 27
    //   257: new 111	java/util/ArrayList
    //   260: astore 28
    //   262: aload 28
    //   264: aload_3
    //   265: invokeinterface 289 1 0
    //   270: invokespecial 290	java/util/ArrayList:<init>	(I)V
    //   273: aload_3
    //   274: invokeinterface 184 1 0
    //   279: ifeq +456 -> 735
    //   282: aload_3
    //   283: iload 12
    //   285: invokeinterface 192 2 0
    //   290: astore 29
    //   292: aload_3
    //   293: iload 14
    //   295: invokeinterface 192 2 0
    //   300: astore 30
    //   302: new 364	androidx/work/b
    //   305: astore 31
    //   307: aload 31
    //   309: invokespecial 365	androidx/work/b:<init>	()V
    //   312: aload 31
    //   314: aload_3
    //   315: iload 4
    //   317: invokeinterface 300 2 0
    //   322: invokestatic 368	x0/v:e	(I)Landroidx/work/NetworkType;
    //   325: invokevirtual 372	androidx/work/b:k	(Landroidx/work/NetworkType;)V
    //   328: aload_3
    //   329: iload 5
    //   331: invokeinterface 300 2 0
    //   336: ifeq +9 -> 345
    //   339: iconst_1
    //   340: istore 32
    //   342: goto +6 -> 348
    //   345: iconst_0
    //   346: istore 32
    //   348: aload 31
    //   350: iload 32
    //   352: invokevirtual 376	androidx/work/b:m	(Z)V
    //   355: aload_3
    //   356: iload 6
    //   358: invokeinterface 300 2 0
    //   363: ifeq +9 -> 372
    //   366: iconst_1
    //   367: istore 32
    //   369: goto +6 -> 375
    //   372: iconst_0
    //   373: istore 32
    //   375: aload 31
    //   377: iload 32
    //   379: invokevirtual 379	androidx/work/b:n	(Z)V
    //   382: aload_3
    //   383: iload 7
    //   385: invokeinterface 300 2 0
    //   390: ifeq +9 -> 399
    //   393: iconst_1
    //   394: istore 32
    //   396: goto +6 -> 402
    //   399: iconst_0
    //   400: istore 32
    //   402: aload 31
    //   404: iload 32
    //   406: invokevirtual 381	androidx/work/b:l	(Z)V
    //   409: aload_3
    //   410: iload 8
    //   412: invokeinterface 300 2 0
    //   417: ifeq +9 -> 426
    //   420: iconst_1
    //   421: istore 32
    //   423: goto +6 -> 429
    //   426: iconst_0
    //   427: istore 32
    //   429: aload 31
    //   431: iload 32
    //   433: invokevirtual 383	androidx/work/b:o	(Z)V
    //   436: aload 31
    //   438: aload_3
    //   439: iload 9
    //   441: invokeinterface 387 2 0
    //   446: invokevirtual 390	androidx/work/b:p	(J)V
    //   449: aload 31
    //   451: aload_3
    //   452: iload 10
    //   454: invokeinterface 387 2 0
    //   459: invokevirtual 393	androidx/work/b:q	(J)V
    //   462: aload 31
    //   464: aload_3
    //   465: iload 11
    //   467: invokeinterface 200 2 0
    //   472: invokestatic 396	x0/v:b	([B)Landroidx/work/c;
    //   475: invokevirtual 399	androidx/work/b:j	(Landroidx/work/c;)V
    //   478: new 401	x0/p
    //   481: astore 33
    //   483: aload 33
    //   485: aload 29
    //   487: aload 30
    //   489: invokespecial 404	x0/p:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   492: aload 33
    //   494: aload_3
    //   495: iload 13
    //   497: invokeinterface 300 2 0
    //   502: invokestatic 303	x0/v:g	(I)Landroidx/work/WorkInfo$State;
    //   505: putfield 405	x0/p:b	Landroidx/work/WorkInfo$State;
    //   508: aload 33
    //   510: aload_3
    //   511: iload 15
    //   513: invokeinterface 192 2 0
    //   518: putfield 407	x0/p:d	Ljava/lang/String;
    //   521: aload 33
    //   523: aload_3
    //   524: iload 16
    //   526: invokeinterface 200 2 0
    //   531: invokestatic 205	androidx/work/d:g	([B)Landroidx/work/d;
    //   534: putfield 410	x0/p:e	Landroidx/work/d;
    //   537: aload 33
    //   539: aload_3
    //   540: iload 17
    //   542: invokeinterface 200 2 0
    //   547: invokestatic 205	androidx/work/d:g	([B)Landroidx/work/d;
    //   550: putfield 412	x0/p:f	Landroidx/work/d;
    //   553: aload 33
    //   555: aload_3
    //   556: iload 18
    //   558: invokeinterface 387 2 0
    //   563: putfield 415	x0/p:g	J
    //   566: aload 33
    //   568: aload_3
    //   569: iload 19
    //   571: invokeinterface 387 2 0
    //   576: putfield 417	x0/p:h	J
    //   579: aload 33
    //   581: aload_3
    //   582: iload 20
    //   584: invokeinterface 387 2 0
    //   589: putfield 419	x0/p:i	J
    //   592: aload 33
    //   594: aload_3
    //   595: iload 21
    //   597: invokeinterface 300 2 0
    //   602: putfield 422	x0/p:k	I
    //   605: aload 33
    //   607: aload_3
    //   608: iload_1
    //   609: invokeinterface 300 2 0
    //   614: invokestatic 425	x0/v:d	(I)Landroidx/work/BackoffPolicy;
    //   617: putfield 428	x0/p:l	Landroidx/work/BackoffPolicy;
    //   620: aload 33
    //   622: aload_3
    //   623: iload 22
    //   625: invokeinterface 387 2 0
    //   630: putfield 430	x0/p:m	J
    //   633: aload 33
    //   635: aload_3
    //   636: iload 23
    //   638: invokeinterface 387 2 0
    //   643: putfield 432	x0/p:n	J
    //   646: aload 33
    //   648: aload_3
    //   649: iload 24
    //   651: invokeinterface 387 2 0
    //   656: putfield 434	x0/p:o	J
    //   659: aload 33
    //   661: aload_3
    //   662: iload 25
    //   664: invokeinterface 387 2 0
    //   669: putfield 436	x0/p:p	J
    //   672: aload_3
    //   673: iload 26
    //   675: invokeinterface 300 2 0
    //   680: ifeq +9 -> 689
    //   683: iconst_1
    //   684: istore 32
    //   686: goto +6 -> 692
    //   689: iconst_0
    //   690: istore 32
    //   692: aload 33
    //   694: iload 32
    //   696: putfield 439	x0/p:q	Z
    //   699: aload 33
    //   701: aload_3
    //   702: iload 27
    //   704: invokeinterface 300 2 0
    //   709: invokestatic 442	x0/v:f	(I)Landroidx/work/OutOfQuotaPolicy;
    //   712: putfield 446	x0/p:r	Landroidx/work/OutOfQuotaPolicy;
    //   715: aload 33
    //   717: aload 31
    //   719: putfield 449	x0/p:j	Landroidx/work/b;
    //   722: aload 28
    //   724: aload 33
    //   726: invokeinterface 309 2 0
    //   731: pop
    //   732: goto -459 -> 273
    //   735: aload_3
    //   736: invokeinterface 181 1 0
    //   741: aload_2
    //   742: invokevirtual 311	androidx/room/m:z	()V
    //   745: aload 28
    //   747: areturn
    //   748: astore 33
    //   750: goto +5 -> 755
    //   753: astore 33
    //   755: aload_3
    //   756: invokeinterface 181 1 0
    //   761: aload_2
    //   762: invokevirtual 311	androidx/room/m:z	()V
    //   765: aload 33
    //   767: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	768	0	this	r
    //   0	768	1	paramInt	int
    //   7	755	2	localm	m
    //   32	724	3	localCursor	Cursor
    //   40	276	4	k	int
    //   49	281	5	m	int
    //   58	299	6	n	int
    //   67	317	7	i1	int
    //   76	335	8	i2	int
    //   85	355	9	i3	int
    //   94	359	10	i4	int
    //   103	363	11	i5	int
    //   112	172	12	i6	int
    //   121	375	13	i7	int
    //   130	164	14	i8	int
    //   139	373	15	i9	int
    //   148	377	16	i10	int
    //   157	384	17	i11	int
    //   166	391	18	i12	int
    //   175	395	19	i13	int
    //   184	399	20	i14	int
    //   193	403	21	i15	int
    //   210	414	22	i16	int
    //   219	418	23	i17	int
    //   228	422	24	i18	int
    //   237	426	25	i19	int
    //   246	428	26	i20	int
    //   255	448	27	i21	int
    //   260	486	28	localArrayList	ArrayList
    //   290	196	29	str1	String
    //   300	188	30	str2	String
    //   305	413	31	localb	androidx.work.b
    //   340	355	32	bool	boolean
    //   481	244	33	localp	p
    //   748	1	33	localObject1	Object
    //   753	13	33	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   159	262	748	finally
    //   262	273	748	finally
    //   273	339	748	finally
    //   348	366	748	finally
    //   375	393	748	finally
    //   402	420	748	finally
    //   429	553	748	finally
    //   553	620	748	finally
    //   620	646	748	finally
    //   646	683	748	finally
    //   692	732	748	finally
    //   33	159	753	finally
  }
  
  public int u()
  {
    this.a.assertNotSuspendingTransaction();
    l0.f localf = this.i.acquire();
    this.a.beginTransaction();
    try
    {
      int k = localf.o();
      this.a.setTransactionSuccessful();
      return k;
    }
    finally
    {
      this.a.endTransaction();
      this.i.release(localf);
    }
  }
  
  class a
    implements Callable<List<p.c>>
  {
    a(m paramm) {}
    
    /* Error */
    public List<p.c> a()
      throws java.lang.Exception
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 20	x0/r$a:b	Lx0/r;
      //   4: invokestatic 33	x0/r:x	(Lx0/r;)Landroidx/room/RoomDatabase;
      //   7: invokevirtual 38	androidx/room/RoomDatabase:beginTransaction	()V
      //   10: aload_0
      //   11: getfield 20	x0/r$a:b	Lx0/r;
      //   14: invokestatic 33	x0/r:x	(Lx0/r;)Landroidx/room/RoomDatabase;
      //   17: aload_0
      //   18: getfield 22	x0/r$a:a	Landroidx/room/m;
      //   21: iconst_1
      //   22: aconst_null
      //   23: invokestatic 43	k0/c:b	(Landroidx/room/RoomDatabase;Ll0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;
      //   26: astore_1
      //   27: aload_1
      //   28: ldc 45
      //   30: invokestatic 51	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
      //   33: istore_2
      //   34: aload_1
      //   35: ldc 53
      //   37: invokestatic 51	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
      //   40: istore_3
      //   41: aload_1
      //   42: ldc 55
      //   44: invokestatic 51	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
      //   47: istore 4
      //   49: aload_1
      //   50: ldc 57
      //   52: invokestatic 51	k0/b:c	(Landroid/database/Cursor;Ljava/lang/String;)I
      //   55: istore 5
      //   57: new 59	n/a
      //   60: astore 6
      //   62: aload 6
      //   64: invokespecial 60	n/a:<init>	()V
      //   67: new 59	n/a
      //   70: astore 7
      //   72: aload 7
      //   74: invokespecial 60	n/a:<init>	()V
      //   77: aload_1
      //   78: invokeinterface 66 1 0
      //   83: ifeq +110 -> 193
      //   86: aload_1
      //   87: iload_2
      //   88: invokeinterface 70 2 0
      //   93: ifne +45 -> 138
      //   96: aload_1
      //   97: iload_2
      //   98: invokeinterface 74 2 0
      //   103: astore 8
      //   105: aload 6
      //   107: aload 8
      //   109: invokevirtual 80	n/g:get	(Ljava/lang/Object;)Ljava/lang/Object;
      //   112: checkcast 82	java/util/ArrayList
      //   115: ifnonnull +23 -> 138
      //   118: new 82	java/util/ArrayList
      //   121: astore 9
      //   123: aload 9
      //   125: invokespecial 83	java/util/ArrayList:<init>	()V
      //   128: aload 6
      //   130: aload 8
      //   132: aload 9
      //   134: invokevirtual 87	n/g:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
      //   137: pop
      //   138: aload_1
      //   139: iload_2
      //   140: invokeinterface 70 2 0
      //   145: ifne -68 -> 77
      //   148: aload_1
      //   149: iload_2
      //   150: invokeinterface 74 2 0
      //   155: astore 9
      //   157: aload 7
      //   159: aload 9
      //   161: invokevirtual 80	n/g:get	(Ljava/lang/Object;)Ljava/lang/Object;
      //   164: checkcast 82	java/util/ArrayList
      //   167: ifnonnull -90 -> 77
      //   170: new 82	java/util/ArrayList
      //   173: astore 8
      //   175: aload 8
      //   177: invokespecial 83	java/util/ArrayList:<init>	()V
      //   180: aload 7
      //   182: aload 9
      //   184: aload 8
      //   186: invokevirtual 87	n/g:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
      //   189: pop
      //   190: goto -113 -> 77
      //   193: aload_1
      //   194: iconst_m1
      //   195: invokeinterface 90 2 0
      //   200: pop
      //   201: aload_0
      //   202: getfield 20	x0/r$a:b	Lx0/r;
      //   205: aload 6
      //   207: invokestatic 94	x0/r:y	(Lx0/r;Ln/a;)V
      //   210: aload_0
      //   211: getfield 20	x0/r$a:b	Lx0/r;
      //   214: aload 7
      //   216: invokestatic 97	x0/r:z	(Lx0/r;Ln/a;)V
      //   219: new 82	java/util/ArrayList
      //   222: astore 10
      //   224: aload 10
      //   226: aload_1
      //   227: invokeinterface 101 1 0
      //   232: invokespecial 104	java/util/ArrayList:<init>	(I)V
      //   235: aload_1
      //   236: invokeinterface 66 1 0
      //   241: ifeq +200 -> 441
      //   244: aload_1
      //   245: iload_2
      //   246: invokeinterface 70 2 0
      //   251: ifne +23 -> 274
      //   254: aload 6
      //   256: aload_1
      //   257: iload_2
      //   258: invokeinterface 74 2 0
      //   263: invokevirtual 80	n/g:get	(Ljava/lang/Object;)Ljava/lang/Object;
      //   266: checkcast 82	java/util/ArrayList
      //   269: astore 8
      //   271: goto +6 -> 277
      //   274: aconst_null
      //   275: astore 8
      //   277: aload 8
      //   279: astore 9
      //   281: aload 8
      //   283: ifnonnull +13 -> 296
      //   286: new 82	java/util/ArrayList
      //   289: astore 9
      //   291: aload 9
      //   293: invokespecial 83	java/util/ArrayList:<init>	()V
      //   296: aload_1
      //   297: iload_2
      //   298: invokeinterface 70 2 0
      //   303: ifne +23 -> 326
      //   306: aload 7
      //   308: aload_1
      //   309: iload_2
      //   310: invokeinterface 74 2 0
      //   315: invokevirtual 80	n/g:get	(Ljava/lang/Object;)Ljava/lang/Object;
      //   318: checkcast 82	java/util/ArrayList
      //   321: astore 8
      //   323: goto +6 -> 329
      //   326: aconst_null
      //   327: astore 8
      //   329: aload 8
      //   331: astore 11
      //   333: aload 8
      //   335: ifnonnull +13 -> 348
      //   338: new 82	java/util/ArrayList
      //   341: astore 11
      //   343: aload 11
      //   345: invokespecial 83	java/util/ArrayList:<init>	()V
      //   348: new 106	x0/p$c
      //   351: astore 8
      //   353: aload 8
      //   355: invokespecial 107	x0/p$c:<init>	()V
      //   358: aload 8
      //   360: aload_1
      //   361: iload_2
      //   362: invokeinterface 74 2 0
      //   367: putfield 110	x0/p$c:a	Ljava/lang/String;
      //   370: aload 8
      //   372: aload_1
      //   373: iload_3
      //   374: invokeinterface 114 2 0
      //   379: invokestatic 120	x0/v:g	(I)Landroidx/work/WorkInfo$State;
      //   382: putfield 123	x0/p$c:b	Landroidx/work/WorkInfo$State;
      //   385: aload 8
      //   387: aload_1
      //   388: iload 4
      //   390: invokeinterface 127 2 0
      //   395: invokestatic 132	androidx/work/d:g	([B)Landroidx/work/d;
      //   398: putfield 135	x0/p$c:c	Landroidx/work/d;
      //   401: aload 8
      //   403: aload_1
      //   404: iload 5
      //   406: invokeinterface 114 2 0
      //   411: putfield 139	x0/p$c:d	I
      //   414: aload 8
      //   416: aload 9
      //   418: putfield 143	x0/p$c:e	Ljava/util/List;
      //   421: aload 8
      //   423: aload 11
      //   425: putfield 146	x0/p$c:f	Ljava/util/List;
      //   428: aload 10
      //   430: aload 8
      //   432: invokeinterface 152 2 0
      //   437: pop
      //   438: goto -203 -> 235
      //   441: aload_0
      //   442: getfield 20	x0/r$a:b	Lx0/r;
      //   445: invokestatic 33	x0/r:x	(Lx0/r;)Landroidx/room/RoomDatabase;
      //   448: invokevirtual 155	androidx/room/RoomDatabase:setTransactionSuccessful	()V
      //   451: aload_1
      //   452: invokeinterface 158 1 0
      //   457: aload_0
      //   458: getfield 20	x0/r$a:b	Lx0/r;
      //   461: invokestatic 33	x0/r:x	(Lx0/r;)Landroidx/room/RoomDatabase;
      //   464: invokevirtual 161	androidx/room/RoomDatabase:endTransaction	()V
      //   467: aload 10
      //   469: areturn
      //   470: astore 8
      //   472: aload_1
      //   473: invokeinterface 158 1 0
      //   478: aload 8
      //   480: athrow
      //   481: astore 8
      //   483: aload_0
      //   484: getfield 20	x0/r$a:b	Lx0/r;
      //   487: invokestatic 33	x0/r:x	(Lx0/r;)Landroidx/room/RoomDatabase;
      //   490: invokevirtual 161	androidx/room/RoomDatabase:endTransaction	()V
      //   493: aload 8
      //   495: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	496	0	this	a
      //   26	447	1	localCursor	Cursor
      //   33	329	2	i	int
      //   40	334	3	j	int
      //   47	342	4	k	int
      //   55	350	5	m	int
      //   60	195	6	locala1	a
      //   70	237	7	locala2	a
      //   103	328	8	localObject1	Object
      //   470	9	8	localObject2	Object
      //   481	13	8	localObject3	Object
      //   121	296	9	localObject4	Object
      //   222	246	10	localArrayList	ArrayList
      //   331	93	11	localObject5	Object
      // Exception table:
      //   from	to	target	type
      //   27	77	470	finally
      //   77	138	470	finally
      //   138	190	470	finally
      //   193	235	470	finally
      //   235	271	470	finally
      //   286	296	470	finally
      //   296	323	470	finally
      //   338	348	470	finally
      //   348	438	470	finally
      //   441	451	470	finally
      //   10	27	481	finally
      //   451	457	481	finally
      //   472	481	481	finally
    }
    
    protected void finalize()
    {
      this.a.z();
    }
  }
  
  class b
    extends androidx.room.d<p>
  {
    b(RoomDatabase paramRoomDatabase)
    {
      super();
    }
    
    public void a(l0.f paramf, p paramp)
    {
      Object localObject = paramp.a;
      if (localObject == null) {
        paramf.X(1);
      } else {
        paramf.l(1, (String)localObject);
      }
      paramf.B(2, v.j(paramp.b));
      localObject = paramp.c;
      if (localObject == null) {
        paramf.X(3);
      } else {
        paramf.l(3, (String)localObject);
      }
      localObject = paramp.d;
      if (localObject == null) {
        paramf.X(4);
      } else {
        paramf.l(4, (String)localObject);
      }
      localObject = androidx.work.d.k(paramp.e);
      if (localObject == null) {
        paramf.X(5);
      } else {
        paramf.F(5, (byte[])localObject);
      }
      localObject = androidx.work.d.k(paramp.f);
      if (localObject == null) {
        paramf.X(6);
      } else {
        paramf.F(6, (byte[])localObject);
      }
      paramf.B(7, paramp.g);
      paramf.B(8, paramp.h);
      paramf.B(9, paramp.i);
      paramf.B(10, paramp.k);
      paramf.B(11, v.a(paramp.l));
      paramf.B(12, paramp.m);
      paramf.B(13, paramp.n);
      paramf.B(14, paramp.o);
      paramf.B(15, paramp.p);
      paramf.B(16, paramp.q);
      paramf.B(17, v.i(paramp.r));
      paramp = paramp.j;
      if (paramp != null)
      {
        paramf.B(18, v.h(paramp.b()));
        paramf.B(19, paramp.g());
        paramf.B(20, paramp.h());
        paramf.B(21, paramp.f());
        paramf.B(22, paramp.i());
        paramf.B(23, paramp.c());
        paramf.B(24, paramp.d());
        paramp = v.c(paramp.a());
        if (paramp == null) {
          paramf.X(25);
        } else {
          paramf.F(25, paramp);
        }
      }
      else
      {
        paramf.X(18);
        paramf.X(19);
        paramf.X(20);
        paramf.X(21);
        paramf.X(22);
        paramf.X(23);
        paramf.X(24);
        paramf.X(25);
      }
    }
    
    public String createQuery()
    {
      return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    }
  }
  
  class c
    extends androidx.room.q
  {
    c(RoomDatabase paramRoomDatabase)
    {
      super();
    }
    
    public String createQuery()
    {
      return "DELETE FROM workspec WHERE id=?";
    }
  }
  
  class d
    extends androidx.room.q
  {
    d(RoomDatabase paramRoomDatabase)
    {
      super();
    }
    
    public String createQuery()
    {
      return "UPDATE workspec SET output=? WHERE id=?";
    }
  }
  
  class e
    extends androidx.room.q
  {
    e(RoomDatabase paramRoomDatabase)
    {
      super();
    }
    
    public String createQuery()
    {
      return "UPDATE workspec SET period_start_time=? WHERE id=?";
    }
  }
  
  class f
    extends androidx.room.q
  {
    f(RoomDatabase paramRoomDatabase)
    {
      super();
    }
    
    public String createQuery()
    {
      return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
    }
  }
  
  class g
    extends androidx.room.q
  {
    g(RoomDatabase paramRoomDatabase)
    {
      super();
    }
    
    public String createQuery()
    {
      return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
    }
  }
  
  class h
    extends androidx.room.q
  {
    h(RoomDatabase paramRoomDatabase)
    {
      super();
    }
    
    public String createQuery()
    {
      return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
    }
  }
  
  class i
    extends androidx.room.q
  {
    i(RoomDatabase paramRoomDatabase)
    {
      super();
    }
    
    public String createQuery()
    {
      return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
    }
  }
  
  class j
    extends androidx.room.q
  {
    j(RoomDatabase paramRoomDatabase)
    {
      super();
    }
    
    public String createQuery()
    {
      return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x0.r
 * JD-Core Version:    0.7.0.1
 */