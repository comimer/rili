package s0;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.Context;
import android.os.BaseBundle;
import android.text.TextUtils;
import androidx.room.RoomDatabase;
import androidx.work.WorkInfo.State;
import androidx.work.impl.WorkDatabase;
import androidx.work.k;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import q0.e;
import q0.i;
import x0.g;
import x0.h;
import x0.p;
import x0.q;
import y0.d;

public class b
  implements e
{
  private static final String e = k.f("SystemJobScheduler");
  private final Context a;
  private final JobScheduler b;
  private final i c;
  private final a d;
  
  public b(Context paramContext, i parami)
  {
    this(paramContext, parami, (JobScheduler)paramContext.getSystemService("jobscheduler"), new a(paramContext));
  }
  
  public b(Context paramContext, i parami, JobScheduler paramJobScheduler, a parama)
  {
    this.a = paramContext;
    this.c = parami;
    this.b = paramJobScheduler;
    this.d = parama;
  }
  
  public static void b(Context paramContext)
  {
    JobScheduler localJobScheduler = (JobScheduler)paramContext.getSystemService("jobscheduler");
    if (localJobScheduler != null)
    {
      paramContext = g(paramContext, localJobScheduler);
      if ((paramContext != null) && (!paramContext.isEmpty()))
      {
        paramContext = paramContext.iterator();
        while (paramContext.hasNext()) {
          c(localJobScheduler, ((JobInfo)paramContext.next()).getId());
        }
      }
    }
  }
  
  /* Error */
  private static void c(JobScheduler paramJobScheduler, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: iload_1
    //   2: invokevirtual 95	android/app/job/JobScheduler:cancel	(I)V
    //   5: goto +40 -> 45
    //   8: astore_0
    //   9: invokestatic 98	androidx/work/k:c	()Landroidx/work/k;
    //   12: getstatic 28	s0/b:e	Ljava/lang/String;
    //   15: invokestatic 104	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   18: ldc 106
    //   20: iconst_1
    //   21: anewarray 4	java/lang/Object
    //   24: dup
    //   25: iconst_0
    //   26: iload_1
    //   27: invokestatic 112	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   30: aastore
    //   31: invokestatic 118	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   34: iconst_1
    //   35: anewarray 120	java/lang/Throwable
    //   38: dup
    //   39: iconst_0
    //   40: aload_0
    //   41: aastore
    //   42: invokevirtual 123	androidx/work/k:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    //   45: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	46	0	paramJobScheduler	JobScheduler
    //   0	46	1	paramInt	int
    // Exception table:
    //   from	to	target	type
    //   0	5	8	finally
  }
  
  private static List<Integer> f(Context paramContext, JobScheduler paramJobScheduler, String paramString)
  {
    paramJobScheduler = g(paramContext, paramJobScheduler);
    if (paramJobScheduler == null) {
      return null;
    }
    paramContext = new ArrayList(2);
    paramJobScheduler = paramJobScheduler.iterator();
    while (paramJobScheduler.hasNext())
    {
      JobInfo localJobInfo = (JobInfo)paramJobScheduler.next();
      if (paramString.equals(h(localJobInfo))) {
        paramContext.add(Integer.valueOf(localJobInfo.getId()));
      }
    }
    return paramContext;
  }
  
  /* Error */
  private static List<JobInfo> g(Context paramContext, JobScheduler paramJobScheduler)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 145	android/app/job/JobScheduler:getAllPendingJobs	()Ljava/util/List;
    //   4: astore_1
    //   5: goto +25 -> 30
    //   8: astore_1
    //   9: invokestatic 98	androidx/work/k:c	()Landroidx/work/k;
    //   12: getstatic 28	s0/b:e	Ljava/lang/String;
    //   15: ldc 147
    //   17: iconst_1
    //   18: anewarray 120	java/lang/Throwable
    //   21: dup
    //   22: iconst_0
    //   23: aload_1
    //   24: aastore
    //   25: invokevirtual 123	androidx/work/k:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    //   28: aconst_null
    //   29: astore_1
    //   30: aload_1
    //   31: ifnonnull +5 -> 36
    //   34: aconst_null
    //   35: areturn
    //   36: new 126	java/util/ArrayList
    //   39: dup
    //   40: aload_1
    //   41: invokeinterface 150 1 0
    //   46: invokespecial 128	java/util/ArrayList:<init>	(I)V
    //   49: astore_2
    //   50: new 152	android/content/ComponentName
    //   53: dup
    //   54: aload_0
    //   55: ldc 154
    //   57: invokespecial 157	android/content/ComponentName:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   60: astore_0
    //   61: aload_1
    //   62: invokeinterface 73 1 0
    //   67: astore_1
    //   68: aload_1
    //   69: invokeinterface 78 1 0
    //   74: ifeq +35 -> 109
    //   77: aload_1
    //   78: invokeinterface 82 1 0
    //   83: checkcast 84	android/app/job/JobInfo
    //   86: astore_3
    //   87: aload_0
    //   88: aload_3
    //   89: invokevirtual 161	android/app/job/JobInfo:getService	()Landroid/content/ComponentName;
    //   92: invokevirtual 162	android/content/ComponentName:equals	(Ljava/lang/Object;)Z
    //   95: ifeq -27 -> 68
    //   98: aload_2
    //   99: aload_3
    //   100: invokeinterface 139 2 0
    //   105: pop
    //   106: goto -38 -> 68
    //   109: aload_2
    //   110: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	111	0	paramContext	Context
    //   0	111	1	paramJobScheduler	JobScheduler
    //   49	61	2	localArrayList	ArrayList
    //   86	14	3	localJobInfo	JobInfo
    // Exception table:
    //   from	to	target	type
    //   0	5	8	finally
  }
  
  private static String h(JobInfo paramJobInfo)
  {
    paramJobInfo = paramJobInfo.getExtras();
    if (paramJobInfo != null) {}
    try
    {
      if (paramJobInfo.containsKey("EXTRA_WORK_SPEC_ID"))
      {
        paramJobInfo = paramJobInfo.getString("EXTRA_WORK_SPEC_ID");
        return paramJobInfo;
      }
    }
    catch (NullPointerException paramJobInfo)
    {
      label27:
      break label27;
    }
    return null;
  }
  
  public static boolean i(Context paramContext, i parami)
  {
    Object localObject1 = (JobScheduler)paramContext.getSystemService("jobscheduler");
    Object localObject2 = g(paramContext, (JobScheduler)localObject1);
    paramContext = parami.r().g().a();
    boolean bool1 = false;
    int i;
    if (localObject2 != null) {
      i = ((List)localObject2).size();
    } else {
      i = 0;
    }
    Object localObject3 = new HashSet(i);
    if ((localObject2 != null) && (!((List)localObject2).isEmpty()))
    {
      Iterator localIterator = ((List)localObject2).iterator();
      while (localIterator.hasNext())
      {
        localObject2 = (JobInfo)localIterator.next();
        String str = h((JobInfo)localObject2);
        if (!TextUtils.isEmpty(str)) {
          ((Set)localObject3).add(str);
        } else {
          c((JobScheduler)localObject1, ((JobInfo)localObject2).getId());
        }
      }
    }
    localObject1 = paramContext.iterator();
    do
    {
      bool2 = bool1;
      if (!((Iterator)localObject1).hasNext()) {
        break;
      }
    } while (((Set)localObject3).contains((String)((Iterator)localObject1).next()));
    k.c().a(e, "Reconciling jobs", new Throwable[0]);
    boolean bool2 = true;
    if (bool2)
    {
      parami = parami.r();
      parami.beginTransaction();
      try
      {
        localObject3 = parami.j();
        paramContext = paramContext.iterator();
        while (paramContext.hasNext()) {
          ((q)localObject3).c((String)paramContext.next(), -1L);
        }
        parami.setTransactionSuccessful();
      }
      finally
      {
        parami.endTransaction();
      }
    }
    return bool2;
  }
  
  public boolean a()
  {
    return true;
  }
  
  public void d(String paramString)
  {
    Object localObject = f(this.a, this.b, paramString);
    if ((localObject != null) && (!((List)localObject).isEmpty()))
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        int i = ((Integer)((Iterator)localObject).next()).intValue();
        c(this.b, i);
      }
      this.c.r().g().c(paramString);
    }
  }
  
  public void e(p... paramVarArgs)
  {
    WorkDatabase localWorkDatabase = this.c.r();
    d locald = new d(localWorkDatabase);
    int i = paramVarArgs.length;
    int j = 0;
    while (j < i)
    {
      p localp = paramVarArgs[j];
      localWorkDatabase.beginTransaction();
      try
      {
        Object localObject1 = localWorkDatabase.j().n(localp.a);
        Object localObject2;
        Object localObject3;
        if (localObject1 == null)
        {
          localObject2 = k.c();
          localObject3 = e;
          localObject1 = new java/lang/StringBuilder;
          ((StringBuilder)localObject1).<init>();
          ((StringBuilder)localObject1).append("Skipping scheduling ");
          ((StringBuilder)localObject1).append(localp.a);
          ((StringBuilder)localObject1).append(" because it's no longer in the DB");
          ((k)localObject2).h((String)localObject3, ((StringBuilder)localObject1).toString(), new Throwable[0]);
          localWorkDatabase.setTransactionSuccessful();
        }
        else if (((p)localObject1).b != WorkInfo.State.ENQUEUED)
        {
          localObject3 = k.c();
          localObject1 = e;
          localObject2 = new java/lang/StringBuilder;
          ((StringBuilder)localObject2).<init>();
          ((StringBuilder)localObject2).append("Skipping scheduling ");
          ((StringBuilder)localObject2).append(localp.a);
          ((StringBuilder)localObject2).append(" because it is no longer enqueued");
          ((k)localObject3).h((String)localObject1, ((StringBuilder)localObject2).toString(), new Throwable[0]);
          localWorkDatabase.setTransactionSuccessful();
        }
        else
        {
          localObject1 = localWorkDatabase.g().b(localp.a);
          int k;
          if (localObject1 != null) {
            k = ((g)localObject1).b;
          } else {
            k = locald.d(this.c.l().i(), this.c.l().g());
          }
          if (localObject1 == null)
          {
            localObject1 = new x0/g;
            ((g)localObject1).<init>(localp.a, k);
            this.c.r().g().d((g)localObject1);
          }
          j(localp, k);
          localWorkDatabase.setTransactionSuccessful();
        }
        localWorkDatabase.endTransaction();
        j++;
      }
      finally
      {
        localWorkDatabase.endTransaction();
      }
    }
  }
  
  /* Error */
  public void j(p paramp, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 59	s0/b:d	Ls0/a;
    //   4: aload_1
    //   5: iload_2
    //   6: invokevirtual 321	s0/a:a	(Lx0/p;I)Landroid/app/job/JobInfo;
    //   9: astore_3
    //   10: invokestatic 98	androidx/work/k:c	()Landroidx/work/k;
    //   13: astore 4
    //   15: getstatic 28	s0/b:e	Ljava/lang/String;
    //   18: astore 5
    //   20: aload 4
    //   22: aload 5
    //   24: ldc_w 323
    //   27: iconst_2
    //   28: anewarray 4	java/lang/Object
    //   31: dup
    //   32: iconst_0
    //   33: aload_1
    //   34: getfield 255	x0/p:a	Ljava/lang/String;
    //   37: aastore
    //   38: dup
    //   39: iconst_1
    //   40: iload_2
    //   41: invokestatic 112	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   44: aastore
    //   45: invokestatic 326	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   48: iconst_0
    //   49: anewarray 120	java/lang/Throwable
    //   52: invokevirtual 215	androidx/work/k:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    //   55: aload_0
    //   56: getfield 57	s0/b:b	Landroid/app/job/JobScheduler;
    //   59: aload_3
    //   60: invokevirtual 330	android/app/job/JobScheduler:schedule	(Landroid/app/job/JobInfo;)I
    //   63: ifne +128 -> 191
    //   66: invokestatic 98	androidx/work/k:c	()Landroidx/work/k;
    //   69: aload 5
    //   71: ldc_w 332
    //   74: iconst_1
    //   75: anewarray 4	java/lang/Object
    //   78: dup
    //   79: iconst_0
    //   80: aload_1
    //   81: getfield 255	x0/p:a	Ljava/lang/String;
    //   84: aastore
    //   85: invokestatic 326	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   88: iconst_0
    //   89: anewarray 120	java/lang/Throwable
    //   92: invokevirtual 276	androidx/work/k:h	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    //   95: aload_1
    //   96: getfield 336	x0/p:q	Z
    //   99: ifeq +92 -> 191
    //   102: aload_1
    //   103: getfield 339	x0/p:r	Landroidx/work/OutOfQuotaPolicy;
    //   106: getstatic 344	androidx/work/OutOfQuotaPolicy:RUN_AS_NON_EXPEDITED_WORK_REQUEST	Landroidx/work/OutOfQuotaPolicy;
    //   109: if_acmpne +82 -> 191
    //   112: aload_1
    //   113: iconst_0
    //   114: putfield 336	x0/p:q	Z
    //   117: ldc_w 346
    //   120: iconst_1
    //   121: anewarray 4	java/lang/Object
    //   124: dup
    //   125: iconst_0
    //   126: aload_1
    //   127: getfield 255	x0/p:a	Ljava/lang/String;
    //   130: aastore
    //   131: invokestatic 326	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   134: astore_3
    //   135: invokestatic 98	androidx/work/k:c	()Landroidx/work/k;
    //   138: aload 5
    //   140: aload_3
    //   141: iconst_0
    //   142: anewarray 120	java/lang/Throwable
    //   145: invokevirtual 215	androidx/work/k:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    //   148: aload_0
    //   149: aload_1
    //   150: iload_2
    //   151: invokevirtual 316	s0/b:j	(Lx0/p;I)V
    //   154: goto +37 -> 191
    //   157: astore 5
    //   159: invokestatic 98	androidx/work/k:c	()Landroidx/work/k;
    //   162: getstatic 28	s0/b:e	Ljava/lang/String;
    //   165: ldc_w 348
    //   168: iconst_1
    //   169: anewarray 4	java/lang/Object
    //   172: dup
    //   173: iconst_0
    //   174: aload_1
    //   175: aastore
    //   176: invokestatic 326	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   179: iconst_1
    //   180: anewarray 120	java/lang/Throwable
    //   183: dup
    //   184: iconst_0
    //   185: aload 5
    //   187: aastore
    //   188: invokevirtual 123	androidx/work/k:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    //   191: return
    //   192: astore_1
    //   193: aload_0
    //   194: getfield 53	s0/b:a	Landroid/content/Context;
    //   197: aload_0
    //   198: getfield 57	s0/b:b	Landroid/app/job/JobScheduler;
    //   201: invokestatic 63	s0/b:g	(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;
    //   204: astore 5
    //   206: aload 5
    //   208: ifnull +14 -> 222
    //   211: aload 5
    //   213: invokeinterface 150 1 0
    //   218: istore_2
    //   219: goto +5 -> 224
    //   222: iconst_0
    //   223: istore_2
    //   224: invokestatic 104	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   227: ldc_w 350
    //   230: iconst_3
    //   231: anewarray 4	java/lang/Object
    //   234: dup
    //   235: iconst_0
    //   236: iload_2
    //   237: invokestatic 112	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   240: aastore
    //   241: dup
    //   242: iconst_1
    //   243: aload_0
    //   244: getfield 55	s0/b:c	Lq0/i;
    //   247: invokevirtual 188	q0/i:r	()Landroidx/work/impl/WorkDatabase;
    //   250: invokevirtual 224	androidx/work/impl/WorkDatabase:j	()Lx0/q;
    //   253: invokeinterface 352 1 0
    //   258: invokeinterface 150 1 0
    //   263: invokestatic 112	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   266: aastore
    //   267: dup
    //   268: iconst_2
    //   269: aload_0
    //   270: getfield 55	s0/b:c	Lq0/i;
    //   273: invokevirtual 298	q0/i:l	()Landroidx/work/a;
    //   276: invokevirtual 354	androidx/work/a:h	()I
    //   279: invokestatic 112	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   282: aastore
    //   283: invokestatic 118	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   286: astore 5
    //   288: invokestatic 98	androidx/work/k:c	()Landroidx/work/k;
    //   291: getstatic 28	s0/b:e	Ljava/lang/String;
    //   294: aload 5
    //   296: iconst_0
    //   297: anewarray 120	java/lang/Throwable
    //   300: invokevirtual 123	androidx/work/k:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    //   303: new 318	java/lang/IllegalStateException
    //   306: dup
    //   307: aload 5
    //   309: aload_1
    //   310: invokespecial 357	java/lang/IllegalStateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   313: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	314	0	this	b
    //   0	314	1	paramp	p
    //   0	314	2	paramInt	int
    //   9	132	3	localObject1	Object
    //   13	8	4	localk	k
    //   18	121	5	str	String
    //   157	29	5	localObject2	Object
    //   204	104	5	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   55	154	157	finally
    //   55	154	192	java/lang/IllegalStateException
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s0.b
 * JD-Core Version:    0.7.0.1
 */