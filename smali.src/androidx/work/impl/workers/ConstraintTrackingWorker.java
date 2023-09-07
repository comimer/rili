package androidx.work.impl.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.ListenableWorker.a;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.utils.futures.b;
import androidx.work.k;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.concurrent.Executor;
import q0.i;
import t0.c;
import z0.a;

public class ConstraintTrackingWorker
  extends ListenableWorker
  implements c
{
  private static final String k = k.f("ConstraintTrkngWrkr");
  private WorkerParameters f;
  final Object g;
  volatile boolean h;
  b<ListenableWorker.a> i;
  private ListenableWorker j;
  
  public ConstraintTrackingWorker(Context paramContext, WorkerParameters paramWorkerParameters)
  {
    super(paramContext, paramWorkerParameters);
    this.f = paramWorkerParameters;
    this.g = new Object();
    this.h = false;
    this.i = b.s();
  }
  
  public void b(List<String> arg1)
  {
    k.c().a(k, String.format("Constraints changed for %s", new Object[] { ??? }), new Throwable[0]);
    synchronized (this.g)
    {
      this.h = true;
      return;
    }
  }
  
  public void f(List<String> paramList) {}
  
  public a h()
  {
    return i.n(a()).s();
  }
  
  public boolean j()
  {
    ListenableWorker localListenableWorker = this.j;
    boolean bool;
    if ((localListenableWorker != null) && (localListenableWorker.j())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void m()
  {
    super.m();
    ListenableWorker localListenableWorker = this.j;
    if ((localListenableWorker != null) && (!localListenableWorker.k())) {
      this.j.q();
    }
  }
  
  public ListenableFuture<ListenableWorker.a> p()
  {
    c().execute(new a());
    return this.i;
  }
  
  public WorkDatabase r()
  {
    return i.n(a()).r();
  }
  
  void s()
  {
    this.i.o(ListenableWorker.a.a());
  }
  
  void t()
  {
    this.i.o(ListenableWorker.a.b());
  }
  
  /* Error */
  void u()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 139	androidx/work/ListenableWorker:g	()Landroidx/work/d;
    //   4: ldc 141
    //   6: invokevirtual 145	androidx/work/d:i	(Ljava/lang/String;)Ljava/lang/String;
    //   9: astore_1
    //   10: aload_1
    //   11: invokestatic 151	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   14: ifeq +23 -> 37
    //   17: invokestatic 63	androidx/work/k:c	()Landroidx/work/k;
    //   20: getstatic 34	androidx/work/impl/workers/ConstraintTrackingWorker:k	Ljava/lang/String;
    //   23: ldc 153
    //   25: iconst_0
    //   26: anewarray 73	java/lang/Throwable
    //   29: invokevirtual 155	androidx/work/k:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    //   32: aload_0
    //   33: invokevirtual 157	androidx/work/impl/workers/ConstraintTrackingWorker:s	()V
    //   36: return
    //   37: aload_0
    //   38: invokevirtual 160	androidx/work/ListenableWorker:i	()Landroidx/work/t;
    //   41: aload_0
    //   42: invokevirtual 83	androidx/work/ListenableWorker:a	()Landroid/content/Context;
    //   45: aload_1
    //   46: aload_0
    //   47: getfield 41	androidx/work/impl/workers/ConstraintTrackingWorker:f	Landroidx/work/WorkerParameters;
    //   50: invokevirtual 165	androidx/work/t:b	(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;
    //   53: astore_2
    //   54: aload_0
    //   55: aload_2
    //   56: putfield 94	androidx/work/impl/workers/ConstraintTrackingWorker:j	Landroidx/work/ListenableWorker;
    //   59: aload_2
    //   60: ifnonnull +23 -> 83
    //   63: invokestatic 63	androidx/work/k:c	()Landroidx/work/k;
    //   66: getstatic 34	androidx/work/impl/workers/ConstraintTrackingWorker:k	Ljava/lang/String;
    //   69: ldc 153
    //   71: iconst_0
    //   72: anewarray 73	java/lang/Throwable
    //   75: invokevirtual 77	androidx/work/k:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    //   78: aload_0
    //   79: invokevirtual 157	androidx/work/impl/workers/ConstraintTrackingWorker:s	()V
    //   82: return
    //   83: aload_0
    //   84: invokevirtual 166	androidx/work/impl/workers/ConstraintTrackingWorker:r	()Landroidx/work/impl/WorkDatabase;
    //   87: invokevirtual 171	androidx/work/impl/WorkDatabase:j	()Lx0/q;
    //   90: aload_0
    //   91: invokevirtual 175	androidx/work/ListenableWorker:e	()Ljava/util/UUID;
    //   94: invokevirtual 181	java/util/UUID:toString	()Ljava/lang/String;
    //   97: invokeinterface 186 2 0
    //   102: astore_2
    //   103: aload_2
    //   104: ifnonnull +8 -> 112
    //   107: aload_0
    //   108: invokevirtual 157	androidx/work/impl/workers/ConstraintTrackingWorker:s	()V
    //   111: return
    //   112: new 188	t0/d
    //   115: dup
    //   116: aload_0
    //   117: invokevirtual 83	androidx/work/ListenableWorker:a	()Landroid/content/Context;
    //   120: aload_0
    //   121: invokevirtual 190	androidx/work/impl/workers/ConstraintTrackingWorker:h	()Lz0/a;
    //   124: aload_0
    //   125: invokespecial 193	t0/d:<init>	(Landroid/content/Context;Lz0/a;Lt0/c;)V
    //   128: astore_3
    //   129: aload_3
    //   130: aload_2
    //   131: invokestatic 199	java/util/Collections:singletonList	(Ljava/lang/Object;)Ljava/util/List;
    //   134: invokevirtual 203	t0/d:d	(Ljava/lang/Iterable;)V
    //   137: aload_3
    //   138: aload_0
    //   139: invokevirtual 175	androidx/work/ListenableWorker:e	()Ljava/util/UUID;
    //   142: invokevirtual 181	java/util/UUID:toString	()Ljava/lang/String;
    //   145: invokevirtual 206	t0/d:c	(Ljava/lang/String;)Z
    //   148: ifeq +146 -> 294
    //   151: invokestatic 63	androidx/work/k:c	()Landroidx/work/k;
    //   154: getstatic 34	androidx/work/impl/workers/ConstraintTrackingWorker:k	Ljava/lang/String;
    //   157: ldc 208
    //   159: iconst_1
    //   160: anewarray 43	java/lang/Object
    //   163: dup
    //   164: iconst_0
    //   165: aload_1
    //   166: aastore
    //   167: invokestatic 71	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   170: iconst_0
    //   171: anewarray 73	java/lang/Throwable
    //   174: invokevirtual 77	androidx/work/k:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    //   177: aload_0
    //   178: getfield 94	androidx/work/impl/workers/ConstraintTrackingWorker:j	Landroidx/work/ListenableWorker;
    //   181: invokevirtual 210	androidx/work/ListenableWorker:p	()Lcom/google/common/util/concurrent/ListenableFuture;
    //   184: astore_3
    //   185: new 10	androidx/work/impl/workers/ConstraintTrackingWorker$b
    //   188: astore_2
    //   189: aload_2
    //   190: aload_0
    //   191: aload_3
    //   192: invokespecial 213	androidx/work/impl/workers/ConstraintTrackingWorker$b:<init>	(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lcom/google/common/util/concurrent/ListenableFuture;)V
    //   195: aload_3
    //   196: aload_2
    //   197: aload_0
    //   198: invokevirtual 109	androidx/work/ListenableWorker:c	()Ljava/util/concurrent/Executor;
    //   201: invokeinterface 219 3 0
    //   206: goto +118 -> 324
    //   209: astore_3
    //   210: invokestatic 63	androidx/work/k:c	()Landroidx/work/k;
    //   213: astore 4
    //   215: getstatic 34	androidx/work/impl/workers/ConstraintTrackingWorker:k	Ljava/lang/String;
    //   218: astore_2
    //   219: aload 4
    //   221: aload_2
    //   222: ldc 221
    //   224: iconst_1
    //   225: anewarray 43	java/lang/Object
    //   228: dup
    //   229: iconst_0
    //   230: aload_1
    //   231: aastore
    //   232: invokestatic 71	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   235: iconst_1
    //   236: anewarray 73	java/lang/Throwable
    //   239: dup
    //   240: iconst_0
    //   241: aload_3
    //   242: aastore
    //   243: invokevirtual 77	androidx/work/k:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    //   246: aload_0
    //   247: getfield 47	androidx/work/impl/workers/ConstraintTrackingWorker:g	Ljava/lang/Object;
    //   250: astore_1
    //   251: aload_1
    //   252: monitorenter
    //   253: aload_0
    //   254: getfield 49	androidx/work/impl/workers/ConstraintTrackingWorker:h	Z
    //   257: ifeq +23 -> 280
    //   260: invokestatic 63	androidx/work/k:c	()Landroidx/work/k;
    //   263: aload_2
    //   264: ldc 223
    //   266: iconst_0
    //   267: anewarray 73	java/lang/Throwable
    //   270: invokevirtual 77	androidx/work/k:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    //   273: aload_0
    //   274: invokevirtual 225	androidx/work/impl/workers/ConstraintTrackingWorker:t	()V
    //   277: goto +7 -> 284
    //   280: aload_0
    //   281: invokevirtual 157	androidx/work/impl/workers/ConstraintTrackingWorker:s	()V
    //   284: aload_1
    //   285: monitorexit
    //   286: goto +38 -> 324
    //   289: astore_2
    //   290: aload_1
    //   291: monitorexit
    //   292: aload_2
    //   293: athrow
    //   294: invokestatic 63	androidx/work/k:c	()Landroidx/work/k;
    //   297: getstatic 34	androidx/work/impl/workers/ConstraintTrackingWorker:k	Ljava/lang/String;
    //   300: ldc 227
    //   302: iconst_1
    //   303: anewarray 43	java/lang/Object
    //   306: dup
    //   307: iconst_0
    //   308: aload_1
    //   309: aastore
    //   310: invokestatic 71	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   313: iconst_0
    //   314: anewarray 73	java/lang/Throwable
    //   317: invokevirtual 77	androidx/work/k:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    //   320: aload_0
    //   321: invokevirtual 225	androidx/work/impl/workers/ConstraintTrackingWorker:t	()V
    //   324: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	325	0	this	ConstraintTrackingWorker
    //   53	211	2	localObject2	Object
    //   289	4	2	localObject3	Object
    //   128	68	3	localObject4	Object
    //   209	33	3	localObject5	Object
    //   213	7	4	localk	k
    // Exception table:
    //   from	to	target	type
    //   177	206	209	finally
    //   253	277	289	finally
    //   280	284	289	finally
    //   284	286	289	finally
    //   290	292	289	finally
  }
  
  class a
    implements Runnable
  {
    a() {}
    
    public void run()
    {
      ConstraintTrackingWorker.this.u();
    }
  }
  
  class b
    implements Runnable
  {
    b(ListenableFuture paramListenableFuture) {}
    
    public void run()
    {
      synchronized (ConstraintTrackingWorker.this.g)
      {
        if (ConstraintTrackingWorker.this.h) {
          ConstraintTrackingWorker.this.t();
        } else {
          ConstraintTrackingWorker.this.i.q(this.a);
        }
        return;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.impl.workers.ConstraintTrackingWorker
 * JD-Core Version:    0.7.0.1
 */