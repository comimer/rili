package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager.WakeLock;
import android.text.TextUtils;
import androidx.work.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import q0.d;
import q0.i;
import y0.j;
import y0.m;
import y0.q;
import z0.a;

public class e
  implements q0.b
{
  static final String k = k.f("SystemAlarmDispatcher");
  final Context a;
  private final a b;
  private final q c;
  private final d d;
  private final i e;
  final b f;
  private final Handler g;
  final List<Intent> h;
  Intent i;
  private c j;
  
  e(Context paramContext)
  {
    this(paramContext, null, null);
  }
  
  e(Context paramContext, d paramd, i parami)
  {
    Context localContext = paramContext.getApplicationContext();
    this.a = localContext;
    this.f = new b(localContext);
    this.c = new q();
    if (parami == null) {
      parami = i.n(paramContext);
    }
    this.e = parami;
    if (paramd == null) {
      paramd = parami.p();
    }
    this.d = paramd;
    this.b = parami.s();
    paramd.d(this);
    this.h = new ArrayList();
    this.i = null;
    this.g = new Handler(Looper.getMainLooper());
  }
  
  private void b()
  {
    if (this.g.getLooper().getThread() == Thread.currentThread()) {
      return;
    }
    throw new IllegalStateException("Needs to be invoked on the main thread.");
  }
  
  private boolean i(String paramString)
  {
    b();
    synchronized (this.h)
    {
      Iterator localIterator = this.h.iterator();
      while (localIterator.hasNext()) {
        if (paramString.equals(((Intent)localIterator.next()).getAction())) {
          return true;
        }
      }
      return false;
    }
  }
  
  private void l()
  {
    b();
    PowerManager.WakeLock localWakeLock = m.b(this.a, "ProcessCommand");
    try
    {
      localWakeLock.acquire();
      a locala = this.e.s();
      a locala1 = new androidx/work/impl/background/systemalarm/e$a;
      locala1.<init>(this);
      locala.b(locala1);
      return;
    }
    finally
    {
      localWakeLock.release();
    }
  }
  
  public boolean a(Intent paramIntent, int paramInt)
  {
    Object localObject1 = k.c();
    Object localObject2 = k;
    int m = 0;
    ((k)localObject1).a((String)localObject2, String.format("Adding command %s (%s)", new Object[] { paramIntent, Integer.valueOf(paramInt) }), new Throwable[0]);
    b();
    localObject1 = paramIntent.getAction();
    if (TextUtils.isEmpty((CharSequence)localObject1))
    {
      k.c().h((String)localObject2, "Unknown command. Ignoring", new Throwable[0]);
      return false;
    }
    if (("ACTION_CONSTRAINTS_CHANGED".equals(localObject1)) && (i("ACTION_CONSTRAINTS_CHANGED"))) {
      return false;
    }
    paramIntent.putExtra("KEY_START_ID", paramInt);
    localObject2 = this.h;
    paramInt = m;
    try
    {
      if (!this.h.isEmpty()) {
        paramInt = 1;
      }
      this.h.add(paramIntent);
      if (paramInt == 0) {
        l();
      }
      return true;
    }
    finally {}
  }
  
  public void c(String paramString, boolean paramBoolean)
  {
    k(new b(this, b.d(this.a, paramString, paramBoolean), 0));
  }
  
  void d()
  {
    ??? = k.c();
    Object localObject2 = k;
    ((k)???).a((String)localObject2, "Checking if commands are complete.", new Throwable[0]);
    b();
    synchronized (this.h)
    {
      if (this.i != null)
      {
        k.c().a((String)localObject2, String.format("Removing command %s", new Object[] { this.i }), new Throwable[0]);
        if (((Intent)this.h.remove(0)).equals(this.i))
        {
          this.i = null;
        }
        else
        {
          localObject2 = new java/lang/IllegalStateException;
          ((IllegalStateException)localObject2).<init>("Dequeue-d command is not the first.");
          throw ((Throwable)localObject2);
        }
      }
      j localj = this.b.c();
      if ((!this.f.n()) && (this.h.isEmpty()) && (!localj.a()))
      {
        k.c().a((String)localObject2, "No more commands & intents.", new Throwable[0]);
        localObject2 = this.j;
        if (localObject2 != null) {
          ((c)localObject2).a();
        }
      }
      else if (!this.h.isEmpty())
      {
        l();
      }
      return;
    }
  }
  
  d e()
  {
    return this.d;
  }
  
  a f()
  {
    return this.b;
  }
  
  i g()
  {
    return this.e;
  }
  
  q h()
  {
    return this.c;
  }
  
  void j()
  {
    k.c().a(k, "Destroying SystemAlarmDispatcher", new Throwable[0]);
    this.d.i(this);
    this.c.a();
    this.j = null;
  }
  
  void k(Runnable paramRunnable)
  {
    this.g.post(paramRunnable);
  }
  
  void m(c paramc)
  {
    if (this.j != null)
    {
      k.c().b(k, "A completion listener for SystemAlarmDispatcher already exists.", new Throwable[0]);
      return;
    }
    this.j = paramc;
  }
  
  class a
    implements Runnable
  {
    a() {}
    
    /* Error */
    public void run()
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 17	androidx/work/impl/background/systemalarm/e$a:a	Landroidx/work/impl/background/systemalarm/e;
      //   4: getfield 25	androidx/work/impl/background/systemalarm/e:h	Ljava/util/List;
      //   7: astore_1
      //   8: aload_1
      //   9: monitorenter
      //   10: aload_0
      //   11: getfield 17	androidx/work/impl/background/systemalarm/e$a:a	Landroidx/work/impl/background/systemalarm/e;
      //   14: astore_2
      //   15: aload_2
      //   16: aload_2
      //   17: getfield 25	androidx/work/impl/background/systemalarm/e:h	Ljava/util/List;
      //   20: iconst_0
      //   21: invokeinterface 31 2 0
      //   26: checkcast 33	android/content/Intent
      //   29: putfield 37	androidx/work/impl/background/systemalarm/e:i	Landroid/content/Intent;
      //   32: aload_1
      //   33: monitorexit
      //   34: aload_0
      //   35: getfield 17	androidx/work/impl/background/systemalarm/e$a:a	Landroidx/work/impl/background/systemalarm/e;
      //   38: getfield 37	androidx/work/impl/background/systemalarm/e:i	Landroid/content/Intent;
      //   41: astore_1
      //   42: aload_1
      //   43: ifnull +344 -> 387
      //   46: aload_1
      //   47: invokevirtual 41	android/content/Intent:getAction	()Ljava/lang/String;
      //   50: astore_1
      //   51: aload_0
      //   52: getfield 17	androidx/work/impl/background/systemalarm/e$a:a	Landroidx/work/impl/background/systemalarm/e;
      //   55: getfield 37	androidx/work/impl/background/systemalarm/e:i	Landroid/content/Intent;
      //   58: ldc 43
      //   60: iconst_0
      //   61: invokevirtual 47	android/content/Intent:getIntExtra	(Ljava/lang/String;I)I
      //   64: istore_3
      //   65: invokestatic 53	androidx/work/k:c	()Landroidx/work/k;
      //   68: astore_2
      //   69: getstatic 57	androidx/work/impl/background/systemalarm/e:k	Ljava/lang/String;
      //   72: astore 4
      //   74: aload_2
      //   75: aload 4
      //   77: ldc 59
      //   79: iconst_2
      //   80: anewarray 4	java/lang/Object
      //   83: dup
      //   84: iconst_0
      //   85: aload_0
      //   86: getfield 17	androidx/work/impl/background/systemalarm/e$a:a	Landroidx/work/impl/background/systemalarm/e;
      //   89: getfield 37	androidx/work/impl/background/systemalarm/e:i	Landroid/content/Intent;
      //   92: aastore
      //   93: dup
      //   94: iconst_1
      //   95: iload_3
      //   96: invokestatic 65	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   99: aastore
      //   100: invokestatic 71	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
      //   103: iconst_0
      //   104: anewarray 73	java/lang/Throwable
      //   107: invokevirtual 76	androidx/work/k:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
      //   110: aload_0
      //   111: getfield 17	androidx/work/impl/background/systemalarm/e$a:a	Landroidx/work/impl/background/systemalarm/e;
      //   114: getfield 79	androidx/work/impl/background/systemalarm/e:a	Landroid/content/Context;
      //   117: ldc 81
      //   119: iconst_2
      //   120: anewarray 4	java/lang/Object
      //   123: dup
      //   124: iconst_0
      //   125: aload_1
      //   126: aastore
      //   127: dup
      //   128: iconst_1
      //   129: iload_3
      //   130: invokestatic 65	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   133: aastore
      //   134: invokestatic 71	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
      //   137: invokestatic 87	y0/m:b	(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
      //   140: astore_2
      //   141: invokestatic 53	androidx/work/k:c	()Landroidx/work/k;
      //   144: aload 4
      //   146: ldc 89
      //   148: iconst_2
      //   149: anewarray 4	java/lang/Object
      //   152: dup
      //   153: iconst_0
      //   154: aload_1
      //   155: aastore
      //   156: dup
      //   157: iconst_1
      //   158: aload_2
      //   159: aastore
      //   160: invokestatic 71	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
      //   163: iconst_0
      //   164: anewarray 73	java/lang/Throwable
      //   167: invokevirtual 76	androidx/work/k:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
      //   170: aload_2
      //   171: invokevirtual 94	android/os/PowerManager$WakeLock:acquire	()V
      //   174: aload_0
      //   175: getfield 17	androidx/work/impl/background/systemalarm/e$a:a	Landroidx/work/impl/background/systemalarm/e;
      //   178: astore 5
      //   180: aload 5
      //   182: getfield 98	androidx/work/impl/background/systemalarm/e:f	Landroidx/work/impl/background/systemalarm/b;
      //   185: aload 5
      //   187: getfield 37	androidx/work/impl/background/systemalarm/e:i	Landroid/content/Intent;
      //   190: iload_3
      //   191: aload 5
      //   193: invokevirtual 104	androidx/work/impl/background/systemalarm/b:o	(Landroid/content/Intent;ILandroidx/work/impl/background/systemalarm/e;)V
      //   196: invokestatic 53	androidx/work/k:c	()Landroidx/work/k;
      //   199: aload 4
      //   201: ldc 106
      //   203: iconst_2
      //   204: anewarray 4	java/lang/Object
      //   207: dup
      //   208: iconst_0
      //   209: aload_1
      //   210: aastore
      //   211: dup
      //   212: iconst_1
      //   213: aload_2
      //   214: aastore
      //   215: invokestatic 71	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
      //   218: iconst_0
      //   219: anewarray 73	java/lang/Throwable
      //   222: invokevirtual 76	androidx/work/k:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
      //   225: aload_2
      //   226: invokevirtual 109	android/os/PowerManager$WakeLock:release	()V
      //   229: aload_0
      //   230: getfield 17	androidx/work/impl/background/systemalarm/e$a:a	Landroidx/work/impl/background/systemalarm/e;
      //   233: astore_2
      //   234: new 111	androidx/work/impl/background/systemalarm/e$d
      //   237: dup
      //   238: aload_2
      //   239: invokespecial 113	androidx/work/impl/background/systemalarm/e$d:<init>	(Landroidx/work/impl/background/systemalarm/e;)V
      //   242: astore_1
      //   243: goto +80 -> 323
      //   246: astore 5
      //   248: invokestatic 53	androidx/work/k:c	()Landroidx/work/k;
      //   251: astore 6
      //   253: getstatic 57	androidx/work/impl/background/systemalarm/e:k	Ljava/lang/String;
      //   256: astore 4
      //   258: aload 6
      //   260: aload 4
      //   262: ldc 115
      //   264: iconst_1
      //   265: anewarray 73	java/lang/Throwable
      //   268: dup
      //   269: iconst_0
      //   270: aload 5
      //   272: aastore
      //   273: invokevirtual 117	androidx/work/k:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
      //   276: invokestatic 53	androidx/work/k:c	()Landroidx/work/k;
      //   279: aload 4
      //   281: ldc 106
      //   283: iconst_2
      //   284: anewarray 4	java/lang/Object
      //   287: dup
      //   288: iconst_0
      //   289: aload_1
      //   290: aastore
      //   291: dup
      //   292: iconst_1
      //   293: aload_2
      //   294: aastore
      //   295: invokestatic 71	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
      //   298: iconst_0
      //   299: anewarray 73	java/lang/Throwable
      //   302: invokevirtual 76	androidx/work/k:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
      //   305: aload_2
      //   306: invokevirtual 109	android/os/PowerManager$WakeLock:release	()V
      //   309: aload_0
      //   310: getfield 17	androidx/work/impl/background/systemalarm/e$a:a	Landroidx/work/impl/background/systemalarm/e;
      //   313: astore_2
      //   314: new 111	androidx/work/impl/background/systemalarm/e$d
      //   317: dup
      //   318: aload_2
      //   319: invokespecial 113	androidx/work/impl/background/systemalarm/e$d:<init>	(Landroidx/work/impl/background/systemalarm/e;)V
      //   322: astore_1
      //   323: aload_2
      //   324: aload_1
      //   325: invokevirtual 120	androidx/work/impl/background/systemalarm/e:k	(Ljava/lang/Runnable;)V
      //   328: goto +59 -> 387
      //   331: astore 4
      //   333: invokestatic 53	androidx/work/k:c	()Landroidx/work/k;
      //   336: getstatic 57	androidx/work/impl/background/systemalarm/e:k	Ljava/lang/String;
      //   339: ldc 106
      //   341: iconst_2
      //   342: anewarray 4	java/lang/Object
      //   345: dup
      //   346: iconst_0
      //   347: aload_1
      //   348: aastore
      //   349: dup
      //   350: iconst_1
      //   351: aload_2
      //   352: aastore
      //   353: invokestatic 71	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
      //   356: iconst_0
      //   357: anewarray 73	java/lang/Throwable
      //   360: invokevirtual 76	androidx/work/k:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
      //   363: aload_2
      //   364: invokevirtual 109	android/os/PowerManager$WakeLock:release	()V
      //   367: aload_0
      //   368: getfield 17	androidx/work/impl/background/systemalarm/e$a:a	Landroidx/work/impl/background/systemalarm/e;
      //   371: astore_1
      //   372: aload_1
      //   373: new 111	androidx/work/impl/background/systemalarm/e$d
      //   376: dup
      //   377: aload_1
      //   378: invokespecial 113	androidx/work/impl/background/systemalarm/e$d:<init>	(Landroidx/work/impl/background/systemalarm/e;)V
      //   381: invokevirtual 120	androidx/work/impl/background/systemalarm/e:k	(Ljava/lang/Runnable;)V
      //   384: aload 4
      //   386: athrow
      //   387: return
      //   388: astore_2
      //   389: aload_1
      //   390: monitorexit
      //   391: aload_2
      //   392: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	393	0	this	a
      //   7	383	1	localObject1	Object
      //   14	350	2	localObject2	Object
      //   388	4	2	localObject3	Object
      //   64	127	3	i	int
      //   72	208	4	str	String
      //   331	54	4	localObject4	Object
      //   178	14	5	locale	e
      //   246	25	5	localObject5	Object
      //   251	8	6	localk	k
      // Exception table:
      //   from	to	target	type
      //   141	196	246	finally
      //   248	276	331	finally
      //   10	34	388	finally
      //   389	391	388	finally
    }
  }
  
  static class b
    implements Runnable
  {
    private final e a;
    private final Intent b;
    private final int c;
    
    b(e parame, Intent paramIntent, int paramInt)
    {
      this.a = parame;
      this.b = paramIntent;
      this.c = paramInt;
    }
    
    public void run()
    {
      this.a.a(this.b, this.c);
    }
  }
  
  static abstract interface c
  {
    public abstract void a();
  }
  
  static class d
    implements Runnable
  {
    private final e a;
    
    d(e parame)
    {
      this.a = parame;
    }
    
    public void run()
    {
      this.a.d();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.impl.background.systemalarm.e
 * JD-Core Version:    0.7.0.1
 */