package androidx.room;

import android.annotation.SuppressLint;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import androidx.lifecycle.LiveData;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Lock;
import l0.a;
import l0.c;
import l0.f;

public class h
{
  private static final String[] m = { "UPDATE", "DELETE", "INSERT" };
  final HashMap<String, Integer> a;
  final String[] b;
  private Map<String, Set<String>> c;
  final RoomDatabase d;
  AtomicBoolean e;
  private volatile boolean f;
  volatile f g;
  private b h;
  private final g i;
  @SuppressLint({"RestrictedApi"})
  final j.b<c, d> j;
  private i k;
  Runnable l;
  
  public h(RoomDatabase paramRoomDatabase, Map<String, String> paramMap, Map<String, Set<String>> paramMap1, String... paramVarArgs)
  {
    int n = 0;
    this.e = new AtomicBoolean(false);
    this.f = false;
    this.j = new j.b();
    this.l = new a();
    this.d = paramRoomDatabase;
    this.h = new b(paramVarArgs.length);
    this.a = new HashMap();
    this.c = paramMap1;
    this.i = new g(paramRoomDatabase);
    int i1 = paramVarArgs.length;
    this.b = new String[i1];
    while (n < i1)
    {
      paramMap1 = paramVarArgs[n];
      paramRoomDatabase = Locale.US;
      String str = paramMap1.toLowerCase(paramRoomDatabase);
      this.a.put(str, Integer.valueOf(n));
      paramMap1 = (String)paramMap.get(paramVarArgs[n]);
      if (paramMap1 != null) {
        this.b[n] = paramMap1.toLowerCase(paramRoomDatabase);
      } else {
        this.b[n] = str;
      }
      n++;
    }
    paramRoomDatabase = paramMap.entrySet().iterator();
    while (paramRoomDatabase.hasNext())
    {
      paramMap1 = (Map.Entry)paramRoomDatabase.next();
      paramMap = (String)paramMap1.getValue();
      paramVarArgs = Locale.US;
      paramMap = paramMap.toLowerCase(paramVarArgs);
      if (this.a.containsKey(paramMap))
      {
        paramVarArgs = ((String)paramMap1.getKey()).toLowerCase(paramVarArgs);
        paramMap1 = this.a;
        paramMap1.put(paramVarArgs, paramMap1.get(paramMap));
      }
    }
  }
  
  private static void c(StringBuilder paramStringBuilder, String paramString1, String paramString2)
  {
    paramStringBuilder.append("`");
    paramStringBuilder.append("room_table_modification_trigger_");
    paramStringBuilder.append(paramString1);
    paramStringBuilder.append("_");
    paramStringBuilder.append(paramString2);
    paramStringBuilder.append("`");
  }
  
  private String[] k(String[] paramArrayOfString)
  {
    HashSet localHashSet = new HashSet();
    int n = paramArrayOfString.length;
    for (int i1 = 0; i1 < n; i1++)
    {
      String str1 = paramArrayOfString[i1];
      String str2 = str1.toLowerCase(Locale.US);
      if (this.c.containsKey(str2)) {
        localHashSet.addAll((Collection)this.c.get(str2));
      } else {
        localHashSet.add(str1);
      }
    }
    return (String[])localHashSet.toArray(new String[localHashSet.size()]);
  }
  
  private void m(l0.b paramb, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("INSERT OR IGNORE INTO room_table_modification_log VALUES(");
    localStringBuilder.append(paramInt);
    localStringBuilder.append(", 0)");
    paramb.k(localStringBuilder.toString());
    String str1 = this.b[paramInt];
    localStringBuilder = new StringBuilder();
    for (String str2 : m)
    {
      localStringBuilder.setLength(0);
      localStringBuilder.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
      c(localStringBuilder, str1, str2);
      localStringBuilder.append(" AFTER ");
      localStringBuilder.append(str2);
      localStringBuilder.append(" ON `");
      localStringBuilder.append(str1);
      localStringBuilder.append("` BEGIN UPDATE ");
      localStringBuilder.append("room_table_modification_log");
      localStringBuilder.append(" SET ");
      localStringBuilder.append("invalidated");
      localStringBuilder.append(" = 1");
      localStringBuilder.append(" WHERE ");
      localStringBuilder.append("table_id");
      localStringBuilder.append(" = ");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(" AND ");
      localStringBuilder.append("invalidated");
      localStringBuilder.append(" = 0");
      localStringBuilder.append("; END");
      paramb.k(localStringBuilder.toString());
    }
  }
  
  private void o(l0.b paramb, int paramInt)
  {
    String str1 = this.b[paramInt];
    StringBuilder localStringBuilder = new StringBuilder();
    for (String str2 : m)
    {
      localStringBuilder.setLength(0);
      localStringBuilder.append("DROP TRIGGER IF EXISTS ");
      c(localStringBuilder, str1, str2);
      paramb.k(localStringBuilder.toString());
    }
  }
  
  private String[] r(String[] paramArrayOfString)
  {
    Object localObject = k(paramArrayOfString);
    int n = localObject.length;
    int i1 = 0;
    while (i1 < n)
    {
      paramArrayOfString = localObject[i1];
      if (this.a.containsKey(paramArrayOfString.toLowerCase(Locale.US)))
      {
        i1++;
      }
      else
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("There is no table with name ");
        ((StringBuilder)localObject).append(paramArrayOfString);
        throw new IllegalArgumentException(((StringBuilder)localObject).toString());
      }
    }
    return localObject;
  }
  
  @SuppressLint({"RestrictedApi"})
  public void a(c paramc)
  {
    ??? = k(paramc.a);
    int[] arrayOfInt = new int[???.length];
    int n = ???.length;
    int i1 = 0;
    while (i1 < n)
    {
      localObject2 = (Integer)this.a.get(???[i1].toLowerCase(Locale.US));
      if (localObject2 != null)
      {
        arrayOfInt[i1] = ((Integer)localObject2).intValue();
        i1++;
      }
      else
      {
        paramc = new StringBuilder();
        paramc.append("There is no table with name ");
        paramc.append(???[i1]);
        throw new IllegalArgumentException(paramc.toString());
      }
    }
    Object localObject2 = new d(paramc, arrayOfInt, (String[])???);
    synchronized (this.j)
    {
      paramc = (d)this.j.l(paramc, localObject2);
      if ((paramc == null) && (this.h.b(arrayOfInt))) {
        p();
      }
      return;
    }
  }
  
  public void b(c paramc)
  {
    a(new e(this, paramc));
  }
  
  public <T> LiveData<T> d(String[] paramArrayOfString, boolean paramBoolean, Callable<T> paramCallable)
  {
    return this.i.a(r(paramArrayOfString), paramBoolean, paramCallable);
  }
  
  boolean e()
  {
    if (!this.d.isOpen()) {
      return false;
    }
    if (!this.f) {
      this.d.getOpenHelper().K();
    }
    if (!this.f)
    {
      Log.e("ROOM", "database is not initialized even though it is open");
      return false;
    }
    return true;
  }
  
  void f(l0.b paramb)
  {
    try
    {
      if (this.f)
      {
        Log.e("ROOM", "Invalidation tracker is initialized twice :/.");
        return;
      }
      paramb.k("PRAGMA temp_store = MEMORY;");
      paramb.k("PRAGMA recursive_triggers='ON';");
      paramb.k("CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
      q(paramb);
      this.g = paramb.p("UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 ");
      this.f = true;
      return;
    }
    finally {}
  }
  
  public void g(String... paramVarArgs)
  {
    synchronized (this.j)
    {
      Iterator localIterator = this.j.iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (!((c)localEntry.getKey()).a()) {
          ((d)localEntry.getValue()).b(paramVarArgs);
        }
      }
      return;
    }
  }
  
  public void h()
  {
    if (this.e.compareAndSet(false, true)) {
      this.d.getQueryExecutor().execute(this.l);
    }
  }
  
  public void i()
  {
    p();
    this.l.run();
  }
  
  @SuppressLint({"RestrictedApi"})
  public void j(c paramc)
  {
    synchronized (this.j)
    {
      paramc = (d)this.j.m(paramc);
      if ((paramc != null) && (this.h.c(paramc.a))) {
        p();
      }
      return;
    }
  }
  
  void l(Context paramContext, String paramString)
  {
    this.k = new i(paramContext, paramString, this, this.d.getQueryExecutor());
  }
  
  void n()
  {
    i locali = this.k;
    if (locali != null)
    {
      locali.a();
      this.k = null;
    }
  }
  
  void p()
  {
    if (!this.d.isOpen()) {
      return;
    }
    q(this.d.getOpenHelper().K());
  }
  
  void q(l0.b paramb)
  {
    if (paramb.f0()) {
      return;
    }
    try
    {
      for (;;)
      {
        Lock localLock = this.d.getCloseLock();
        localLock.lock();
        try
        {
          int[] arrayOfInt = this.h.a();
          if (arrayOfInt == null) {
            return;
          }
          int n = arrayOfInt.length;
          paramb.f();
          int i1 = 0;
          for (;;)
          {
            if (i1 < n)
            {
              int i2 = arrayOfInt[i1];
              if ((i2 != 1) && (i2 != 2)) {}
            }
            try
            {
              o(paramb, i1);
              break label101;
              m(paramb, i1);
              label101:
              i1++;
            }
            finally {}
          }
          paramb.C();
          paramb.O();
          this.h.d();
          localLock.unlock();
        }
        finally
        {
          localLock.unlock();
        }
      }
      Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", paramb);
    }
    catch (SQLiteException paramb) {}catch (IllegalStateException paramb) {}
  }
  
  class a
    implements Runnable
  {
    a() {}
    
    private Set<Integer> a()
    {
      HashSet localHashSet = new HashSet();
      Cursor localCursor = h.this.d.query(new a("SELECT * FROM room_table_modification_log WHERE invalidated = 1;"));
      try
      {
        while (localCursor.moveToNext()) {
          localHashSet.add(Integer.valueOf(localCursor.getInt(0)));
        }
        localCursor.close();
        if (!localHashSet.isEmpty()) {
          h.this.g.o();
        }
        return localHashSet;
      }
      finally
      {
        localCursor.close();
      }
    }
    
    /* Error */
    public void run()
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 14	androidx/room/h$a:a	Landroidx/room/h;
      //   4: getfield 26	androidx/room/h:d	Landroidx/room/RoomDatabase;
      //   7: invokevirtual 86	androidx/room/RoomDatabase:getCloseLock	()Ljava/util/concurrent/locks/Lock;
      //   10: astore_1
      //   11: aconst_null
      //   12: astore_2
      //   13: aconst_null
      //   14: astore_3
      //   15: aconst_null
      //   16: astore 4
      //   18: aload_2
      //   19: astore 5
      //   21: aload_3
      //   22: astore 6
      //   24: aload_1
      //   25: invokeinterface 91 1 0
      //   30: aload_2
      //   31: astore 5
      //   33: aload_3
      //   34: astore 6
      //   36: aload_0
      //   37: getfield 14	androidx/room/h$a:a	Landroidx/room/h;
      //   40: invokevirtual 94	androidx/room/h:e	()Z
      //   43: istore 7
      //   45: iload 7
      //   47: ifne +10 -> 57
      //   50: aload_1
      //   51: invokeinterface 97 1 0
      //   56: return
      //   57: aload_2
      //   58: astore 5
      //   60: aload_3
      //   61: astore 6
      //   63: aload_0
      //   64: getfield 14	androidx/room/h$a:a	Landroidx/room/h;
      //   67: getfield 100	androidx/room/h:e	Ljava/util/concurrent/atomic/AtomicBoolean;
      //   70: iconst_1
      //   71: iconst_0
      //   72: invokevirtual 106	java/util/concurrent/atomic/AtomicBoolean:compareAndSet	(ZZ)Z
      //   75: istore 7
      //   77: iload 7
      //   79: ifne +10 -> 89
      //   82: aload_1
      //   83: invokeinterface 97 1 0
      //   88: return
      //   89: aload_2
      //   90: astore 5
      //   92: aload_3
      //   93: astore 6
      //   95: aload_0
      //   96: getfield 14	androidx/room/h$a:a	Landroidx/room/h;
      //   99: getfield 26	androidx/room/h:d	Landroidx/room/RoomDatabase;
      //   102: invokevirtual 109	androidx/room/RoomDatabase:inTransaction	()Z
      //   105: istore 7
      //   107: iload 7
      //   109: ifeq +10 -> 119
      //   112: aload_1
      //   113: invokeinterface 97 1 0
      //   118: return
      //   119: aload_2
      //   120: astore 5
      //   122: aload_3
      //   123: astore 6
      //   125: aload_0
      //   126: getfield 14	androidx/room/h$a:a	Landroidx/room/h;
      //   129: getfield 26	androidx/room/h:d	Landroidx/room/RoomDatabase;
      //   132: astore 8
      //   134: aload_2
      //   135: astore 5
      //   137: aload_3
      //   138: astore 6
      //   140: aload 8
      //   142: getfield 113	androidx/room/RoomDatabase:mWriteAheadLoggingEnabled	Z
      //   145: ifeq +94 -> 239
      //   148: aload_2
      //   149: astore 5
      //   151: aload_3
      //   152: astore 6
      //   154: aload 8
      //   156: invokevirtual 117	androidx/room/RoomDatabase:getOpenHelper	()Ll0/c;
      //   159: invokeinterface 123 1 0
      //   164: astore 8
      //   166: aload_2
      //   167: astore 5
      //   169: aload_3
      //   170: astore 6
      //   172: aload 8
      //   174: invokeinterface 128 1 0
      //   179: aload_0
      //   180: invokespecial 130	androidx/room/h$a:a	()Ljava/util/Set;
      //   183: astore_2
      //   184: aload_2
      //   185: astore 4
      //   187: aload 8
      //   189: invokeinterface 133 1 0
      //   194: aload_2
      //   195: astore 5
      //   197: aload_2
      //   198: astore 6
      //   200: aload 8
      //   202: invokeinterface 136 1 0
      //   207: aload_2
      //   208: astore 6
      //   210: goto +74 -> 284
      //   213: astore_2
      //   214: aload 4
      //   216: astore 5
      //   218: aload 4
      //   220: astore 6
      //   222: aload 8
      //   224: invokeinterface 136 1 0
      //   229: aload 4
      //   231: astore 5
      //   233: aload 4
      //   235: astore 6
      //   237: aload_2
      //   238: athrow
      //   239: aload_2
      //   240: astore 5
      //   242: aload_3
      //   243: astore 6
      //   245: aload_0
      //   246: invokespecial 130	androidx/room/h$a:a	()Ljava/util/Set;
      //   249: astore 4
      //   251: aload 4
      //   253: astore 6
      //   255: goto +29 -> 284
      //   258: astore 6
      //   260: goto +120 -> 380
      //   263: astore 4
      //   265: aload 5
      //   267: astore 6
      //   269: goto +5 -> 274
      //   272: astore 4
      //   274: ldc 138
      //   276: ldc 140
      //   278: aload 4
      //   280: invokestatic 145	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   283: pop
      //   284: aload_1
      //   285: invokeinterface 97 1 0
      //   290: aload 6
      //   292: ifnull +87 -> 379
      //   295: aload 6
      //   297: invokeinterface 148 1 0
      //   302: ifne +77 -> 379
      //   305: aload_0
      //   306: getfield 14	androidx/room/h$a:a	Landroidx/room/h;
      //   309: getfield 152	androidx/room/h:j	Lj/b;
      //   312: astore 5
      //   314: aload 5
      //   316: monitorenter
      //   317: aload_0
      //   318: getfield 14	androidx/room/h$a:a	Landroidx/room/h;
      //   321: getfield 152	androidx/room/h:j	Lj/b;
      //   324: invokevirtual 158	j/b:iterator	()Ljava/util/Iterator;
      //   327: astore 4
      //   329: aload 4
      //   331: invokeinterface 163 1 0
      //   336: ifeq +29 -> 365
      //   339: aload 4
      //   341: invokeinterface 167 1 0
      //   346: checkcast 169	java/util/Map$Entry
      //   349: invokeinterface 172 1 0
      //   354: checkcast 174	androidx/room/h$d
      //   357: aload 6
      //   359: invokevirtual 177	androidx/room/h$d:a	(Ljava/util/Set;)V
      //   362: goto -33 -> 329
      //   365: aload 5
      //   367: monitorexit
      //   368: goto +11 -> 379
      //   371: astore 6
      //   373: aload 5
      //   375: monitorexit
      //   376: aload 6
      //   378: athrow
      //   379: return
      //   380: aload_1
      //   381: invokeinterface 97 1 0
      //   386: aload 6
      //   388: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	389	0	this	a
      //   10	371	1	localLock	Lock
      //   12	196	2	localSet1	Set
      //   213	27	2	localObject1	Object
      //   14	229	3	localObject2	Object
      //   16	236	4	localSet2	Set
      //   263	1	4	localSQLiteException	SQLiteException
      //   272	7	4	localIllegalStateException	IllegalStateException
      //   327	13	4	localIterator	Iterator
      //   19	355	5	localObject3	Object
      //   22	232	6	localObject4	Object
      //   258	1	6	localObject5	Object
      //   267	91	6	localObject6	Object
      //   371	16	6	localObject7	Object
      //   43	65	7	bool	boolean
      //   132	91	8	localObject8	Object
      // Exception table:
      //   from	to	target	type
      //   179	184	213	finally
      //   187	194	213	finally
      //   24	30	258	finally
      //   36	45	258	finally
      //   63	77	258	finally
      //   95	107	258	finally
      //   125	134	258	finally
      //   140	148	258	finally
      //   154	166	258	finally
      //   172	179	258	finally
      //   200	207	258	finally
      //   222	229	258	finally
      //   237	239	258	finally
      //   245	251	258	finally
      //   274	284	258	finally
      //   24	30	263	android/database/sqlite/SQLiteException
      //   36	45	263	android/database/sqlite/SQLiteException
      //   63	77	263	android/database/sqlite/SQLiteException
      //   95	107	263	android/database/sqlite/SQLiteException
      //   125	134	263	android/database/sqlite/SQLiteException
      //   140	148	263	android/database/sqlite/SQLiteException
      //   154	166	263	android/database/sqlite/SQLiteException
      //   172	179	263	android/database/sqlite/SQLiteException
      //   200	207	263	android/database/sqlite/SQLiteException
      //   222	229	263	android/database/sqlite/SQLiteException
      //   237	239	263	android/database/sqlite/SQLiteException
      //   245	251	263	android/database/sqlite/SQLiteException
      //   24	30	272	java/lang/IllegalStateException
      //   36	45	272	java/lang/IllegalStateException
      //   63	77	272	java/lang/IllegalStateException
      //   95	107	272	java/lang/IllegalStateException
      //   125	134	272	java/lang/IllegalStateException
      //   140	148	272	java/lang/IllegalStateException
      //   154	166	272	java/lang/IllegalStateException
      //   172	179	272	java/lang/IllegalStateException
      //   200	207	272	java/lang/IllegalStateException
      //   222	229	272	java/lang/IllegalStateException
      //   237	239	272	java/lang/IllegalStateException
      //   245	251	272	java/lang/IllegalStateException
      //   317	329	371	finally
      //   329	362	371	finally
      //   365	368	371	finally
      //   373	376	371	finally
    }
  }
  
  static class b
  {
    final long[] a;
    final boolean[] b;
    final int[] c;
    boolean d;
    boolean e;
    
    b(int paramInt)
    {
      long[] arrayOfLong = new long[paramInt];
      this.a = arrayOfLong;
      boolean[] arrayOfBoolean = new boolean[paramInt];
      this.b = arrayOfBoolean;
      this.c = new int[paramInt];
      Arrays.fill(arrayOfLong, 0L);
      Arrays.fill(arrayOfBoolean, false);
    }
    
    int[] a()
    {
      try
      {
        if ((this.d) && (!this.e))
        {
          int i = this.a.length;
          for (int j = 0;; j++)
          {
            int k = 1;
            if (j >= i) {
              break;
            }
            int m;
            if (this.a[j] > 0L) {
              m = 1;
            } else {
              m = 0;
            }
            localObject1 = this.b;
            if (m != localObject1[j])
            {
              int[] arrayOfInt = this.c;
              if (m == 0) {
                k = 2;
              }
              arrayOfInt[j] = k;
            }
            else
            {
              this.c[j] = 0;
            }
            localObject1[j] = m;
          }
          this.e = true;
          this.d = false;
          Object localObject1 = this.c;
          return localObject1;
        }
        return null;
      }
      finally {}
    }
    
    boolean b(int... paramVarArgs)
    {
      try
      {
        int i = paramVarArgs.length;
        int j = 0;
        boolean bool = false;
        while (j < i)
        {
          int k = paramVarArgs[j];
          long[] arrayOfLong = this.a;
          long l = arrayOfLong[k];
          arrayOfLong[k] = (1L + l);
          if (l == 0L)
          {
            this.d = true;
            bool = true;
          }
          j++;
        }
        return bool;
      }
      finally {}
    }
    
    boolean c(int... paramVarArgs)
    {
      try
      {
        int i = paramVarArgs.length;
        int j = 0;
        boolean bool = false;
        while (j < i)
        {
          int k = paramVarArgs[j];
          long[] arrayOfLong = this.a;
          long l = arrayOfLong[k];
          arrayOfLong[k] = (l - 1L);
          if (l == 1L)
          {
            this.d = true;
            bool = true;
          }
          j++;
        }
        return bool;
      }
      finally {}
    }
    
    void d()
    {
      try
      {
        this.e = false;
        return;
      }
      finally {}
    }
  }
  
  public static abstract class c
  {
    final String[] a;
    
    public c(String[] paramArrayOfString)
    {
      this.a = ((String[])Arrays.copyOf(paramArrayOfString, paramArrayOfString.length));
    }
    
    boolean a()
    {
      return false;
    }
    
    public abstract void b(Set<String> paramSet);
  }
  
  static class d
  {
    final int[] a;
    private final String[] b;
    final h.c c;
    private final Set<String> d;
    
    d(h.c paramc, int[] paramArrayOfInt, String[] paramArrayOfString)
    {
      this.c = paramc;
      this.a = paramArrayOfInt;
      this.b = paramArrayOfString;
      if (paramArrayOfInt.length == 1)
      {
        paramc = new HashSet();
        paramc.add(paramArrayOfString[0]);
        this.d = Collections.unmodifiableSet(paramc);
      }
      else
      {
        this.d = null;
      }
    }
    
    void a(Set<Integer> paramSet)
    {
      int i = this.a.length;
      Object localObject1 = null;
      int j = 0;
      while (j < i)
      {
        Object localObject2 = localObject1;
        if (paramSet.contains(Integer.valueOf(this.a[j]))) {
          if (i == 1)
          {
            localObject2 = this.d;
          }
          else
          {
            localObject2 = localObject1;
            if (localObject1 == null) {
              localObject2 = new HashSet(i);
            }
            ((Set)localObject2).add(this.b[j]);
          }
        }
        j++;
        localObject1 = localObject2;
      }
      if (localObject1 != null) {
        this.c.b(localObject1);
      }
    }
    
    void b(String[] paramArrayOfString)
    {
      int i = this.b.length;
      Object localObject1 = null;
      int j;
      if (i == 1)
      {
        j = paramArrayOfString.length;
        for (i = 0;; i++)
        {
          localObject2 = localObject1;
          if (i >= j) {
            break;
          }
          if (paramArrayOfString[i].equalsIgnoreCase(this.b[0]))
          {
            localObject2 = this.d;
            break;
          }
        }
      }
      HashSet localHashSet = new HashSet();
      int k = paramArrayOfString.length;
      for (i = 0; i < k; i++)
      {
        localObject2 = paramArrayOfString[i];
        for (String str : this.b) {
          if (str.equalsIgnoreCase((String)localObject2))
          {
            localHashSet.add(str);
            break;
          }
        }
      }
      Object localObject2 = localObject1;
      if (localHashSet.size() > 0) {
        localObject2 = localHashSet;
      }
      if (localObject2 != null) {
        this.c.b((Set)localObject2);
      }
    }
  }
  
  static class e
    extends h.c
  {
    final h b;
    final WeakReference<h.c> c;
    
    e(h paramh, h.c paramc)
    {
      super();
      this.b = paramh;
      this.c = new WeakReference(paramc);
    }
    
    public void b(Set<String> paramSet)
    {
      h.c localc = (h.c)this.c.get();
      if (localc == null) {
        this.b.j(this);
      } else {
        localc.b(paramSet);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.room.h
 * JD-Core Version:    0.7.0.1
 */