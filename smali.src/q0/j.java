package q0;

import android.content.Context;
import androidx.room.RoomDatabase;
import androidx.work.ListenableWorker;
import androidx.work.ListenableWorker.a;
import androidx.work.ListenableWorker.a.a;
import androidx.work.ListenableWorker.a.b;
import androidx.work.ListenableWorker.a.c;
import androidx.work.WorkInfo.State;
import androidx.work.WorkerParameters;
import androidx.work.WorkerParameters.a;
import androidx.work.d;
import androidx.work.h;
import androidx.work.i;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.utils.futures.AbstractFuture;
import androidx.work.k;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import x0.q;
import y0.o;

public class j
  implements Runnable
{
  static final String w = k.f("WorkerWrapper");
  Context a;
  private String b;
  private List<e> c;
  private WorkerParameters.a d;
  x0.p e;
  ListenableWorker f;
  z0.a g;
  ListenableWorker.a h = ListenableWorker.a.a();
  private androidx.work.a i;
  private w0.a j;
  private WorkDatabase k;
  private q l;
  private x0.b m;
  private x0.t n;
  private List<String> o;
  private String p;
  androidx.work.impl.utils.futures.b<Boolean> q = androidx.work.impl.utils.futures.b.s();
  ListenableFuture<ListenableWorker.a> r = null;
  private volatile boolean v;
  
  j(c paramc)
  {
    this.a = paramc.a;
    this.g = paramc.d;
    this.j = paramc.c;
    this.b = paramc.g;
    this.c = paramc.h;
    this.d = paramc.i;
    this.f = paramc.b;
    this.i = paramc.e;
    paramc = paramc.f;
    this.k = paramc;
    this.l = paramc.j();
    this.m = this.k.b();
    this.n = this.k.k();
  }
  
  private String a(List<String> paramList)
  {
    StringBuilder localStringBuilder = new StringBuilder("Work [ id=");
    localStringBuilder.append(this.b);
    localStringBuilder.append(", tags={ ");
    Iterator localIterator = paramList.iterator();
    int i1 = 1;
    while (localIterator.hasNext())
    {
      paramList = (String)localIterator.next();
      if (i1 != 0) {
        i1 = 0;
      } else {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(paramList);
    }
    localStringBuilder.append(" } ]");
    return localStringBuilder.toString();
  }
  
  private void c(ListenableWorker.a parama)
  {
    if ((parama instanceof ListenableWorker.a.c))
    {
      k.c().d(w, String.format("Worker result SUCCESS for %s", new Object[] { this.p }), new Throwable[0]);
      if (this.e.d()) {
        h();
      } else {
        m();
      }
    }
    else if ((parama instanceof ListenableWorker.a.b))
    {
      k.c().d(w, String.format("Worker result RETRY for %s", new Object[] { this.p }), new Throwable[0]);
      g();
    }
    else
    {
      k.c().d(w, String.format("Worker result FAILURE for %s", new Object[] { this.p }), new Throwable[0]);
      if (this.e.d()) {
        h();
      } else {
        l();
      }
    }
  }
  
  private void e(String paramString)
  {
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.add(paramString);
    while (!localLinkedList.isEmpty())
    {
      paramString = (String)localLinkedList.remove();
      if (this.l.m(paramString) != WorkInfo.State.CANCELLED) {
        this.l.b(WorkInfo.State.FAILED, new String[] { paramString });
      }
      localLinkedList.addAll(this.m.a(paramString));
    }
  }
  
  private void g()
  {
    this.k.beginTransaction();
    try
    {
      this.l.b(WorkInfo.State.ENQUEUED, new String[] { this.b });
      this.l.s(this.b, System.currentTimeMillis());
      this.l.c(this.b, -1L);
      this.k.setTransactionSuccessful();
      return;
    }
    finally
    {
      this.k.endTransaction();
      i(true);
    }
  }
  
  private void h()
  {
    this.k.beginTransaction();
    try
    {
      this.l.s(this.b, System.currentTimeMillis());
      this.l.b(WorkInfo.State.ENQUEUED, new String[] { this.b });
      this.l.o(this.b);
      this.l.c(this.b, -1L);
      this.k.setTransactionSuccessful();
      return;
    }
    finally
    {
      this.k.endTransaction();
      i(false);
    }
  }
  
  private void i(boolean paramBoolean)
  {
    this.k.beginTransaction();
    try
    {
      if (!this.k.j().k()) {
        y0.f.a(this.a, RescheduleReceiver.class, false);
      }
      if (paramBoolean)
      {
        this.l.b(WorkInfo.State.ENQUEUED, new String[] { this.b });
        this.l.c(this.b, -1L);
      }
      if (this.e != null)
      {
        ListenableWorker localListenableWorker = this.f;
        if ((localListenableWorker != null) && (localListenableWorker.j())) {
          this.j.b(this.b);
        }
      }
      this.k.setTransactionSuccessful();
      this.k.endTransaction();
      this.q.o(Boolean.valueOf(paramBoolean));
      return;
    }
    finally
    {
      this.k.endTransaction();
    }
  }
  
  private void j()
  {
    WorkInfo.State localState = this.l.m(this.b);
    if (localState == WorkInfo.State.RUNNING)
    {
      k.c().a(w, String.format("Status for %s is RUNNING;not doing any work and rescheduling for later execution", new Object[] { this.b }), new Throwable[0]);
      i(true);
    }
    else
    {
      k.c().a(w, String.format("Status for %s is %s; not doing any work", new Object[] { this.b, localState }), new Throwable[0]);
      i(false);
    }
  }
  
  private void k()
  {
    if (n()) {
      return;
    }
    this.k.beginTransaction();
    try
    {
      Object localObject1 = this.l.n(this.b);
      this.e = ((x0.p)localObject1);
      if (localObject1 == null)
      {
        k.c().b(w, String.format("Didn't find WorkSpec for id %s", new Object[] { this.b }), new Throwable[0]);
        i(false);
        this.k.setTransactionSuccessful();
        return;
      }
      if (((x0.p)localObject1).b != WorkInfo.State.ENQUEUED)
      {
        j();
        this.k.setTransactionSuccessful();
        k.c().a(w, String.format("%s is not in ENQUEUED state. Nothing more to do.", new Object[] { this.e.c }), new Throwable[0]);
        return;
      }
      if ((((x0.p)localObject1).d()) || (this.e.c()))
      {
        long l1 = System.currentTimeMillis();
        localObject1 = this.e;
        int i1;
        if (((x0.p)localObject1).n == 0L) {
          i1 = 1;
        } else {
          i1 = 0;
        }
        if ((i1 == 0) && (l1 < ((x0.p)localObject1).a()))
        {
          k.c().a(w, String.format("Delaying execution for %s because it is being executed before schedule.", new Object[] { this.e.c }), new Throwable[0]);
          i(true);
          this.k.setTransactionSuccessful();
          return;
        }
      }
      this.k.setTransactionSuccessful();
      this.k.endTransaction();
      if (this.e.d()) {}
      for (localObject1 = this.e.e;; localObject1 = ((h)localObject3).b((List)localObject1))
      {
        break;
        localObject3 = this.i.f().b(this.e.d);
        if (localObject3 == null)
        {
          k.c().b(w, String.format("Could not create Input Merger %s", new Object[] { this.e.d }), new Throwable[0]);
          l();
          return;
        }
        localObject1 = new ArrayList();
        ((List)localObject1).add(this.e.e);
        ((List)localObject1).addAll(this.l.q(this.b));
      }
      Object localObject3 = new WorkerParameters(UUID.fromString(this.b), (d)localObject1, this.o, this.d, this.e.k, this.i.e(), this.g, this.i.m(), new y0.p(this.k, this.g), new o(this.k, this.j, this.g));
      if (this.f == null) {
        this.f = this.i.m().b(this.a, this.e.c, (WorkerParameters)localObject3);
      }
      localObject1 = this.f;
      if (localObject1 == null)
      {
        k.c().b(w, String.format("Could not create Worker %s", new Object[] { this.e.c }), new Throwable[0]);
        l();
        return;
      }
      if (((ListenableWorker)localObject1).l())
      {
        k.c().b(w, String.format("Received an already-used Worker %s; WorkerFactory should return new instances", new Object[] { this.e.c }), new Throwable[0]);
        l();
        return;
      }
      this.f.o();
      if (o())
      {
        if (n()) {
          return;
        }
        localObject1 = androidx.work.impl.utils.futures.b.s();
        localObject3 = new y0.n(this.a, this.e, this.f, ((WorkerParameters)localObject3).b(), this.g);
        this.g.a().execute((Runnable)localObject3);
        localObject3 = ((y0.n)localObject3).a();
        ((ListenableFuture)localObject3).addListener(new a((ListenableFuture)localObject3, (androidx.work.impl.utils.futures.b)localObject1), this.g.a());
        ((AbstractFuture)localObject1).addListener(new b((androidx.work.impl.utils.futures.b)localObject1, this.p), this.g.c());
      }
      else
      {
        j();
      }
      return;
    }
    finally
    {
      this.k.endTransaction();
    }
  }
  
  private void m()
  {
    this.k.beginTransaction();
    try
    {
      this.l.b(WorkInfo.State.SUCCEEDED, new String[] { this.b });
      Object localObject1 = ((ListenableWorker.a.c)this.h).e();
      this.l.i(this.b, (d)localObject1);
      long l1 = System.currentTimeMillis();
      localObject1 = this.m.a(this.b).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        String str = (String)((Iterator)localObject1).next();
        if ((this.l.m(str) == WorkInfo.State.BLOCKED) && (this.m.b(str)))
        {
          k.c().d(w, String.format("Setting status to enqueued for %s", new Object[] { str }), new Throwable[0]);
          this.l.b(WorkInfo.State.ENQUEUED, new String[] { str });
          this.l.s(str, l1);
        }
      }
      this.k.setTransactionSuccessful();
      return;
    }
    finally
    {
      this.k.endTransaction();
      i(false);
    }
  }
  
  private boolean n()
  {
    if (this.v)
    {
      k.c().a(w, String.format("Work interrupted for %s", new Object[] { this.p }), new Throwable[0]);
      WorkInfo.State localState = this.l.m(this.b);
      if (localState == null) {
        i(false);
      } else {
        i(localState.isFinished() ^ true);
      }
      return true;
    }
    return false;
  }
  
  private boolean o()
  {
    this.k.beginTransaction();
    try
    {
      WorkInfo.State localState1 = this.l.m(this.b);
      WorkInfo.State localState2 = WorkInfo.State.ENQUEUED;
      boolean bool = true;
      if (localState1 == localState2)
      {
        this.l.b(WorkInfo.State.RUNNING, new String[] { this.b });
        this.l.r(this.b);
      }
      else
      {
        bool = false;
      }
      this.k.setTransactionSuccessful();
      return bool;
    }
    finally
    {
      this.k.endTransaction();
    }
  }
  
  public ListenableFuture<Boolean> b()
  {
    return this.q;
  }
  
  public void d()
  {
    this.v = true;
    n();
    Object localObject = this.r;
    boolean bool;
    if (localObject != null)
    {
      bool = ((Future)localObject).isDone();
      this.r.cancel(true);
    }
    else
    {
      bool = false;
    }
    localObject = this.f;
    if ((localObject != null) && (!bool))
    {
      ((ListenableWorker)localObject).q();
    }
    else
    {
      localObject = String.format("WorkSpec %s is already done. Not interrupting.", new Object[] { this.e });
      k.c().a(w, (String)localObject, new Throwable[0]);
    }
  }
  
  void f()
  {
    if (!n())
    {
      this.k.beginTransaction();
      try
      {
        WorkInfo.State localState = this.l.m(this.b);
        this.k.i().a(this.b);
        if (localState == null) {
          i(false);
        } else if (localState == WorkInfo.State.RUNNING) {
          c(this.h);
        } else if (!localState.isFinished()) {
          g();
        }
        this.k.setTransactionSuccessful();
      }
      finally
      {
        this.k.endTransaction();
      }
    }
    Object localObject2 = this.c;
    if (localObject2 != null)
    {
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((e)((Iterator)localObject2).next()).d(this.b);
      }
      f.b(this.i, this.k, this.c);
    }
  }
  
  void l()
  {
    this.k.beginTransaction();
    try
    {
      e(this.b);
      d locald = ((ListenableWorker.a.a)this.h).e();
      this.l.i(this.b, locald);
      this.k.setTransactionSuccessful();
      return;
    }
    finally
    {
      this.k.endTransaction();
      i(false);
    }
  }
  
  public void run()
  {
    List localList = this.n.a(this.b);
    this.o = localList;
    this.p = a(localList);
    k();
  }
  
  class a
    implements Runnable
  {
    a(ListenableFuture paramListenableFuture, androidx.work.impl.utils.futures.b paramb) {}
    
    /* Error */
    public void run()
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 23	q0/j$a:a	Lcom/google/common/util/concurrent/ListenableFuture;
      //   4: invokeinterface 35 1 0
      //   9: pop
      //   10: invokestatic 40	androidx/work/k:c	()Landroidx/work/k;
      //   13: getstatic 44	q0/j:w	Ljava/lang/String;
      //   16: ldc 46
      //   18: iconst_1
      //   19: anewarray 4	java/lang/Object
      //   22: dup
      //   23: iconst_0
      //   24: aload_0
      //   25: getfield 21	q0/j$a:c	Lq0/j;
      //   28: getfield 50	q0/j:e	Lx0/p;
      //   31: getfield 54	x0/p:c	Ljava/lang/String;
      //   34: aastore
      //   35: invokestatic 60	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
      //   38: iconst_0
      //   39: anewarray 62	java/lang/Throwable
      //   42: invokevirtual 65	androidx/work/k:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
      //   45: aload_0
      //   46: getfield 21	q0/j$a:c	Lq0/j;
      //   49: astore_1
      //   50: aload_1
      //   51: aload_1
      //   52: getfield 69	q0/j:f	Landroidx/work/ListenableWorker;
      //   55: invokevirtual 75	androidx/work/ListenableWorker:p	()Lcom/google/common/util/concurrent/ListenableFuture;
      //   58: putfield 78	q0/j:r	Lcom/google/common/util/concurrent/ListenableFuture;
      //   61: aload_0
      //   62: getfield 25	q0/j$a:b	Landroidx/work/impl/utils/futures/b;
      //   65: aload_0
      //   66: getfield 21	q0/j$a:c	Lq0/j;
      //   69: getfield 78	q0/j:r	Lcom/google/common/util/concurrent/ListenableFuture;
      //   72: invokevirtual 84	androidx/work/impl/utils/futures/b:q	(Lcom/google/common/util/concurrent/ListenableFuture;)Z
      //   75: pop
      //   76: goto +13 -> 89
      //   79: astore_1
      //   80: aload_0
      //   81: getfield 25	q0/j$a:b	Landroidx/work/impl/utils/futures/b;
      //   84: aload_1
      //   85: invokevirtual 87	androidx/work/impl/utils/futures/b:p	(Ljava/lang/Throwable;)Z
      //   88: pop
      //   89: return
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	90	0	this	a
      //   49	3	1	localj	j
      //   79	6	1	localThrowable	Throwable
      // Exception table:
      //   from	to	target	type
      //   0	76	79	finally
    }
  }
  
  class b
    implements Runnable
  {
    b(androidx.work.impl.utils.futures.b paramb, String paramString) {}
    
    /* Error */
    @android.annotation.SuppressLint({"SyntheticAccessor"})
    public void run()
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 23	q0/j$b:a	Landroidx/work/impl/utils/futures/b;
      //   4: invokevirtual 44	androidx/work/impl/utils/futures/AbstractFuture:get	()Ljava/lang/Object;
      //   7: checkcast 46	androidx/work/ListenableWorker$a
      //   10: astore_1
      //   11: aload_1
      //   12: ifnonnull +41 -> 53
      //   15: invokestatic 51	androidx/work/k:c	()Landroidx/work/k;
      //   18: getstatic 54	q0/j:w	Ljava/lang/String;
      //   21: ldc 56
      //   23: iconst_1
      //   24: anewarray 4	java/lang/Object
      //   27: dup
      //   28: iconst_0
      //   29: aload_0
      //   30: getfield 21	q0/j$b:c	Lq0/j;
      //   33: getfield 60	q0/j:e	Lx0/p;
      //   36: getfield 64	x0/p:c	Ljava/lang/String;
      //   39: aastore
      //   40: invokestatic 70	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
      //   43: iconst_0
      //   44: anewarray 72	java/lang/Throwable
      //   47: invokevirtual 75	androidx/work/k:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
      //   50: goto +132 -> 182
      //   53: invokestatic 51	androidx/work/k:c	()Landroidx/work/k;
      //   56: getstatic 54	q0/j:w	Ljava/lang/String;
      //   59: ldc 77
      //   61: iconst_2
      //   62: anewarray 4	java/lang/Object
      //   65: dup
      //   66: iconst_0
      //   67: aload_0
      //   68: getfield 21	q0/j$b:c	Lq0/j;
      //   71: getfield 60	q0/j:e	Lx0/p;
      //   74: getfield 64	x0/p:c	Ljava/lang/String;
      //   77: aastore
      //   78: dup
      //   79: iconst_1
      //   80: aload_1
      //   81: aastore
      //   82: invokestatic 70	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
      //   85: iconst_0
      //   86: anewarray 72	java/lang/Throwable
      //   89: invokevirtual 79	androidx/work/k:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
      //   92: aload_0
      //   93: getfield 21	q0/j$b:c	Lq0/j;
      //   96: aload_1
      //   97: putfield 83	q0/j:h	Landroidx/work/ListenableWorker$a;
      //   100: goto +82 -> 182
      //   103: astore_1
      //   104: goto +86 -> 190
      //   107: astore_1
      //   108: goto +4 -> 112
      //   111: astore_1
      //   112: invokestatic 51	androidx/work/k:c	()Landroidx/work/k;
      //   115: getstatic 54	q0/j:w	Ljava/lang/String;
      //   118: ldc 85
      //   120: iconst_1
      //   121: anewarray 4	java/lang/Object
      //   124: dup
      //   125: iconst_0
      //   126: aload_0
      //   127: getfield 25	q0/j$b:b	Ljava/lang/String;
      //   130: aastore
      //   131: invokestatic 70	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
      //   134: iconst_1
      //   135: anewarray 72	java/lang/Throwable
      //   138: dup
      //   139: iconst_0
      //   140: aload_1
      //   141: aastore
      //   142: invokevirtual 75	androidx/work/k:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
      //   145: goto +37 -> 182
      //   148: astore_1
      //   149: invokestatic 51	androidx/work/k:c	()Landroidx/work/k;
      //   152: getstatic 54	q0/j:w	Ljava/lang/String;
      //   155: ldc 87
      //   157: iconst_1
      //   158: anewarray 4	java/lang/Object
      //   161: dup
      //   162: iconst_0
      //   163: aload_0
      //   164: getfield 25	q0/j$b:b	Ljava/lang/String;
      //   167: aastore
      //   168: invokestatic 70	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
      //   171: iconst_1
      //   172: anewarray 72	java/lang/Throwable
      //   175: dup
      //   176: iconst_0
      //   177: aload_1
      //   178: aastore
      //   179: invokevirtual 90	androidx/work/k:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
      //   182: aload_0
      //   183: getfield 21	q0/j$b:c	Lq0/j;
      //   186: invokevirtual 93	q0/j:f	()V
      //   189: return
      //   190: aload_0
      //   191: getfield 21	q0/j$b:c	Lq0/j;
      //   194: invokevirtual 93	q0/j:f	()V
      //   197: aload_1
      //   198: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	199	0	this	b
      //   10	87	1	locala	ListenableWorker.a
      //   103	1	1	localObject	Object
      //   107	1	1	localExecutionException	java.util.concurrent.ExecutionException
      //   111	30	1	localInterruptedException	java.lang.InterruptedException
      //   148	50	1	localCancellationException	java.util.concurrent.CancellationException
      // Exception table:
      //   from	to	target	type
      //   0	11	103	finally
      //   15	50	103	finally
      //   53	100	103	finally
      //   112	145	103	finally
      //   149	182	103	finally
      //   0	11	107	java/util/concurrent/ExecutionException
      //   15	50	107	java/util/concurrent/ExecutionException
      //   53	100	107	java/util/concurrent/ExecutionException
      //   0	11	111	java/lang/InterruptedException
      //   15	50	111	java/lang/InterruptedException
      //   53	100	111	java/lang/InterruptedException
      //   0	11	148	java/util/concurrent/CancellationException
      //   15	50	148	java/util/concurrent/CancellationException
      //   53	100	148	java/util/concurrent/CancellationException
    }
  }
  
  public static class c
  {
    Context a;
    ListenableWorker b;
    w0.a c;
    z0.a d;
    androidx.work.a e;
    WorkDatabase f;
    String g;
    List<e> h;
    WorkerParameters.a i = new WorkerParameters.a();
    
    public c(Context paramContext, androidx.work.a parama, z0.a parama1, w0.a parama2, WorkDatabase paramWorkDatabase, String paramString)
    {
      this.a = paramContext.getApplicationContext();
      this.d = parama1;
      this.c = parama2;
      this.e = parama;
      this.f = paramWorkDatabase;
      this.g = paramString;
    }
    
    public j a()
    {
      return new j(this);
    }
    
    public c b(WorkerParameters.a parama)
    {
      if (parama != null) {
        this.i = parama;
      }
      return this;
    }
    
    public c c(List<e> paramList)
    {
      this.h = paramList;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     q0.j
 * JD-Core Version:    0.7.0.1
 */