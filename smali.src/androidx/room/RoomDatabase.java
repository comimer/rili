package androidx.room;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.database.Cursor;
import android.os.CancellationSignal;
import android.os.Looper;
import android.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock;
import l0.c.c;
import l0.e;
import l0.f;

public abstract class RoomDatabase
{
  private static final String DB_IMPL_SUFFIX = "_Impl";
  public static final int MAX_BIND_PARAMETER_CNT = 999;
  private boolean mAllowMainThreadQueries;
  private final Map<String, Object> mBackingFieldMap = new ConcurrentHashMap();
  @Deprecated
  protected List<b> mCallbacks;
  private final ReentrantReadWriteLock mCloseLock = new ReentrantReadWriteLock();
  @Deprecated
  protected volatile l0.b mDatabase;
  private final h mInvalidationTracker = createInvalidationTracker();
  private l0.c mOpenHelper;
  private Executor mQueryExecutor;
  private final ThreadLocal<Integer> mSuspendingTransactionId = new ThreadLocal();
  private Executor mTransactionExecutor;
  boolean mWriteAheadLoggingEnabled;
  
  private static boolean isMainThread()
  {
    boolean bool;
    if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void assertNotMainThread()
  {
    if (this.mAllowMainThreadQueries) {
      return;
    }
    if (!isMainThread()) {
      return;
    }
    throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
  }
  
  public void assertNotSuspendingTransaction()
  {
    if ((!inTransaction()) && (this.mSuspendingTransactionId.get() != null)) {
      throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
    }
  }
  
  @Deprecated
  public void beginTransaction()
  {
    assertNotMainThread();
    l0.b localb = this.mOpenHelper.K();
    this.mInvalidationTracker.q(localb);
    localb.f();
  }
  
  public abstract void clearAllTables();
  
  public void close()
  {
    if (isOpen())
    {
      ReentrantReadWriteLock.WriteLock localWriteLock = this.mCloseLock.writeLock();
      try
      {
        localWriteLock.lock();
        this.mInvalidationTracker.n();
        this.mOpenHelper.close();
        localWriteLock.unlock();
      }
      finally
      {
        localWriteLock.unlock();
      }
    }
  }
  
  public f compileStatement(String paramString)
  {
    assertNotMainThread();
    assertNotSuspendingTransaction();
    return this.mOpenHelper.K().p(paramString);
  }
  
  protected abstract h createInvalidationTracker();
  
  protected abstract l0.c createOpenHelper(b paramb);
  
  @Deprecated
  public void endTransaction()
  {
    this.mOpenHelper.K().O();
    if (!inTransaction()) {
      this.mInvalidationTracker.h();
    }
  }
  
  Map<String, Object> getBackingFieldMap()
  {
    return this.mBackingFieldMap;
  }
  
  Lock getCloseLock()
  {
    return this.mCloseLock.readLock();
  }
  
  public h getInvalidationTracker()
  {
    return this.mInvalidationTracker;
  }
  
  public l0.c getOpenHelper()
  {
    return this.mOpenHelper;
  }
  
  public Executor getQueryExecutor()
  {
    return this.mQueryExecutor;
  }
  
  ThreadLocal<Integer> getSuspendingTransactionId()
  {
    return this.mSuspendingTransactionId;
  }
  
  public Executor getTransactionExecutor()
  {
    return this.mTransactionExecutor;
  }
  
  public boolean inTransaction()
  {
    return this.mOpenHelper.K().f0();
  }
  
  public void init(b paramb)
  {
    l0.c localc = createOpenHelper(paramb);
    this.mOpenHelper = localc;
    if ((localc instanceof o)) {
      ((o)localc).d(paramb);
    }
    boolean bool;
    if (paramb.g == JournalMode.WRITE_AHEAD_LOGGING) {
      bool = true;
    } else {
      bool = false;
    }
    this.mOpenHelper.setWriteAheadLoggingEnabled(bool);
    this.mCallbacks = paramb.e;
    this.mQueryExecutor = paramb.h;
    this.mTransactionExecutor = new s(paramb.i);
    this.mAllowMainThreadQueries = paramb.f;
    this.mWriteAheadLoggingEnabled = bool;
    if (paramb.j) {
      this.mInvalidationTracker.l(paramb.b, paramb.c);
    }
  }
  
  protected void internalInitInvalidationTracker(l0.b paramb)
  {
    this.mInvalidationTracker.f(paramb);
  }
  
  public boolean isOpen()
  {
    l0.b localb = this.mDatabase;
    boolean bool;
    if ((localb != null) && (localb.isOpen())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public Cursor query(String paramString, Object[] paramArrayOfObject)
  {
    return this.mOpenHelper.K().b0(new l0.a(paramString, paramArrayOfObject));
  }
  
  public Cursor query(e parame)
  {
    return query(parame, null);
  }
  
  public Cursor query(e parame, CancellationSignal paramCancellationSignal)
  {
    assertNotMainThread();
    assertNotSuspendingTransaction();
    if (paramCancellationSignal != null) {
      return this.mOpenHelper.K().T(parame, paramCancellationSignal);
    }
    return this.mOpenHelper.K().b0(parame);
  }
  
  /* Error */
  public <V> V runInTransaction(java.util.concurrent.Callable<V> paramCallable)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 283	androidx/room/RoomDatabase:beginTransaction	()V
    //   4: aload_1
    //   5: invokeinterface 288 1 0
    //   10: astore_1
    //   11: aload_0
    //   12: invokevirtual 291	androidx/room/RoomDatabase:setTransactionSuccessful	()V
    //   15: aload_0
    //   16: invokevirtual 293	androidx/room/RoomDatabase:endTransaction	()V
    //   19: aload_1
    //   20: areturn
    //   21: astore_1
    //   22: goto +17 -> 39
    //   25: astore_1
    //   26: aload_1
    //   27: invokestatic 298	k0/e:a	(Ljava/lang/Exception;)V
    //   30: aload_0
    //   31: invokevirtual 293	androidx/room/RoomDatabase:endTransaction	()V
    //   34: aconst_null
    //   35: areturn
    //   36: astore_1
    //   37: aload_1
    //   38: athrow
    //   39: aload_0
    //   40: invokevirtual 293	androidx/room/RoomDatabase:endTransaction	()V
    //   43: aload_1
    //   44: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	45	0	this	RoomDatabase
    //   0	45	1	paramCallable	java.util.concurrent.Callable<V>
    // Exception table:
    //   from	to	target	type
    //   4	15	21	finally
    //   26	30	21	finally
    //   37	39	21	finally
    //   4	15	25	java/lang/Exception
    //   4	15	36	java/lang/RuntimeException
  }
  
  public void runInTransaction(Runnable paramRunnable)
  {
    beginTransaction();
    try
    {
      paramRunnable.run();
      setTransactionSuccessful();
      return;
    }
    finally
    {
      endTransaction();
    }
  }
  
  @Deprecated
  public void setTransactionSuccessful()
  {
    this.mOpenHelper.K().C();
  }
  
  public static enum JournalMode
  {
    static
    {
      JournalMode localJournalMode1 = new JournalMode("AUTOMATIC", 0);
      AUTOMATIC = localJournalMode1;
      JournalMode localJournalMode2 = new JournalMode("TRUNCATE", 1);
      TRUNCATE = localJournalMode2;
      JournalMode localJournalMode3 = new JournalMode("WRITE_AHEAD_LOGGING", 2);
      WRITE_AHEAD_LOGGING = localJournalMode3;
      $VALUES = new JournalMode[] { localJournalMode1, localJournalMode2, localJournalMode3 };
    }
    
    private JournalMode() {}
    
    private static boolean isLowRamDevice(ActivityManager paramActivityManager)
    {
      return paramActivityManager.isLowRamDevice();
    }
    
    @SuppressLint({"NewApi"})
    JournalMode resolve(Context paramContext)
    {
      if (this != AUTOMATIC) {
        return this;
      }
      paramContext = (ActivityManager)paramContext.getSystemService("activity");
      if ((paramContext != null) && (!isLowRamDevice(paramContext))) {
        return WRITE_AHEAD_LOGGING;
      }
      return TRUNCATE;
    }
  }
  
  public static class a<T extends RoomDatabase>
  {
    private final Class<T> a;
    private final String b;
    private final Context c;
    private ArrayList<RoomDatabase.b> d;
    private Executor e;
    private Executor f;
    private c.c g;
    private boolean h;
    private RoomDatabase.JournalMode i;
    private boolean j;
    private boolean k;
    private boolean l;
    private final RoomDatabase.c m;
    private Set<Integer> n;
    private Set<Integer> o;
    private String p;
    private File q;
    
    a(Context paramContext, Class<T> paramClass, String paramString)
    {
      this.c = paramContext;
      this.a = paramClass;
      this.b = paramString;
      this.i = RoomDatabase.JournalMode.AUTOMATIC;
      this.k = true;
      this.m = new RoomDatabase.c();
    }
    
    public a<T> a(RoomDatabase.b paramb)
    {
      if (this.d == null) {
        this.d = new ArrayList();
      }
      this.d.add(paramb);
      return this;
    }
    
    public a<T> b(j0.a... paramVarArgs)
    {
      if (this.o == null) {
        this.o = new HashSet();
      }
      int i1 = paramVarArgs.length;
      for (int i2 = 0; i2 < i1; i2++)
      {
        j0.a locala = paramVarArgs[i2];
        this.o.add(Integer.valueOf(locala.a));
        this.o.add(Integer.valueOf(locala.b));
      }
      this.m.b(paramVarArgs);
      return this;
    }
    
    public a<T> c()
    {
      this.h = true;
      return this;
    }
    
    @SuppressLint({"RestrictedApi"})
    public T d()
    {
      if (this.c != null)
      {
        if (this.a != null)
        {
          Object localObject1 = this.e;
          if ((localObject1 == null) && (this.f == null))
          {
            localObject1 = i.a.e();
            this.f = ((Executor)localObject1);
            this.e = ((Executor)localObject1);
          }
          else if ((localObject1 != null) && (this.f == null))
          {
            this.f = ((Executor)localObject1);
          }
          else if (localObject1 == null)
          {
            localObject1 = this.f;
            if (localObject1 != null) {
              this.e = ((Executor)localObject1);
            }
          }
          localObject1 = this.o;
          Object localObject2;
          if ((localObject1 != null) && (this.n != null))
          {
            localObject2 = ((Set)localObject1).iterator();
            while (((Iterator)localObject2).hasNext())
            {
              localObject1 = (Integer)((Iterator)localObject2).next();
              if (this.n.contains(localObject1))
              {
                localObject2 = new StringBuilder();
                ((StringBuilder)localObject2).append("Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: ");
                ((StringBuilder)localObject2).append(localObject1);
                throw new IllegalArgumentException(((StringBuilder)localObject2).toString());
              }
            }
          }
          if (this.g == null) {
            this.g = new m0.c();
          }
          localObject1 = this.p;
          if ((localObject1 != null) || (this.q != null))
          {
            if (this.b != null)
            {
              if ((localObject1 != null) && (this.q != null)) {
                throw new IllegalArgumentException("Both createFromAsset() and createFromFile() was called on this Builder but the database can only be created using one of the two configurations.");
              }
              this.g = new p((String)localObject1, this.q, this.g);
            }
          }
          else
          {
            localObject1 = this.c;
            localObject2 = new b((Context)localObject1, this.b, this.g, this.m, this.d, this.h, this.i.resolve((Context)localObject1), this.e, this.f, this.j, this.k, this.l, this.n, this.p, this.q);
            localObject1 = (RoomDatabase)j.b(this.a, "_Impl");
            ((RoomDatabase)localObject1).init((b)localObject2);
            return localObject1;
          }
          throw new IllegalArgumentException("Cannot create from asset or file for an in-memory database.");
        }
        throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
      }
      throw new IllegalArgumentException("Cannot provide null context for the database.");
    }
    
    public a<T> e()
    {
      this.k = false;
      this.l = true;
      return this;
    }
    
    public a<T> f(c.c paramc)
    {
      this.g = paramc;
      return this;
    }
    
    public a<T> g(RoomDatabase.JournalMode paramJournalMode)
    {
      this.i = paramJournalMode;
      return this;
    }
    
    public a<T> h(Executor paramExecutor)
    {
      this.e = paramExecutor;
      return this;
    }
  }
  
  public static abstract class b
  {
    public void a(l0.b paramb) {}
    
    public void b(l0.b paramb) {}
    
    public void c(l0.b paramb) {}
  }
  
  public static class c
  {
    private HashMap<Integer, TreeMap<Integer, j0.a>> a = new HashMap();
    
    private void a(j0.a parama)
    {
      int i = parama.a;
      int j = parama.b;
      Object localObject1 = (TreeMap)this.a.get(Integer.valueOf(i));
      Object localObject2 = localObject1;
      if (localObject1 == null)
      {
        localObject2 = new TreeMap();
        this.a.put(Integer.valueOf(i), localObject2);
      }
      j0.a locala = (j0.a)((TreeMap)localObject2).get(Integer.valueOf(j));
      if (locala != null)
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("Overriding migration ");
        ((StringBuilder)localObject1).append(locala);
        ((StringBuilder)localObject1).append(" with ");
        ((StringBuilder)localObject1).append(parama);
        Log.w("ROOM", ((StringBuilder)localObject1).toString());
      }
      ((TreeMap)localObject2).put(Integer.valueOf(j), parama);
    }
    
    private List<j0.a> d(List<j0.a> paramList, boolean paramBoolean, int paramInt1, int paramInt2)
    {
      while (paramBoolean ? paramInt1 < paramInt2 : paramInt1 > paramInt2)
      {
        TreeMap localTreeMap = (TreeMap)this.a.get(Integer.valueOf(paramInt1));
        if (localTreeMap == null) {
          return null;
        }
        if (paramBoolean) {
          localObject = localTreeMap.descendingKeySet();
        } else {
          localObject = localTreeMap.keySet();
        }
        Object localObject = ((Set)localObject).iterator();
        int i;
        int k;
        do
        {
          boolean bool = ((Iterator)localObject).hasNext();
          i = 1;
          int j = 0;
          if (!bool) {
            break;
          }
          k = ((Integer)((Iterator)localObject).next()).intValue();
          if (paramBoolean)
          {
            m = j;
            if (k <= paramInt2)
            {
              m = j;
              if (k <= paramInt1) {}
            }
          }
          else
          {
            do
            {
              m = 1;
              break;
              m = j;
              if (k < paramInt2) {
                break;
              }
              m = j;
            } while (k < paramInt1);
          }
        } while (m == 0);
        paramList.add(localTreeMap.get(Integer.valueOf(k)));
        paramInt1 = k;
        int m = i;
        break label197;
        m = 0;
        label197:
        if (m == 0) {
          return null;
        }
      }
      return paramList;
    }
    
    public void b(j0.a... paramVarArgs)
    {
      int i = paramVarArgs.length;
      for (int j = 0; j < i; j++) {
        a(paramVarArgs[j]);
      }
    }
    
    public List<j0.a> c(int paramInt1, int paramInt2)
    {
      if (paramInt1 == paramInt2) {
        return Collections.emptyList();
      }
      boolean bool;
      if (paramInt2 > paramInt1) {
        bool = true;
      } else {
        bool = false;
      }
      return d(new ArrayList(), bool, paramInt1, paramInt2);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.room.RoomDatabase
 * JD-Core Version:    0.7.0.1
 */