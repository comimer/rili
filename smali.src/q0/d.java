package q0;

import android.content.Context;
import android.os.PowerManager.WakeLock;
import androidx.work.WorkerParameters.a;
import androidx.work.impl.WorkDatabase;
import androidx.work.k;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import y0.m;

public class d
  implements b, w0.a
{
  private static final String l = k.f("Processor");
  private PowerManager.WakeLock a;
  private Context b;
  private androidx.work.a c;
  private z0.a d;
  private WorkDatabase e;
  private Map<String, j> f;
  private Map<String, j> g;
  private List<e> h;
  private Set<String> i;
  private final List<b> j;
  private final Object k;
  
  public d(Context paramContext, androidx.work.a parama, z0.a parama1, WorkDatabase paramWorkDatabase, List<e> paramList)
  {
    this.b = paramContext;
    this.c = parama;
    this.d = parama1;
    this.e = paramWorkDatabase;
    this.g = new HashMap();
    this.f = new HashMap();
    this.h = paramList;
    this.i = new HashSet();
    this.j = new ArrayList();
    this.a = null;
    this.k = new Object();
  }
  
  private static boolean e(String paramString, j paramj)
  {
    if (paramj != null)
    {
      paramj.d();
      k.c().a(l, String.format("WorkerWrapper interrupted for %s", new Object[] { paramString }), new Throwable[0]);
      return true;
    }
    k.c().a(l, String.format("WorkerWrapper could not be found for %s", new Object[] { paramString }), new Throwable[0]);
    return false;
  }
  
  /* Error */
  private void m()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 83	q0/d:k	Ljava/lang/Object;
    //   4: astore_1
    //   5: aload_1
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 67	q0/d:f	Ljava/util/Map;
    //   11: invokeinterface 115 1 0
    //   16: iconst_1
    //   17: ixor
    //   18: ifne +61 -> 79
    //   21: aload_0
    //   22: getfield 54	q0/d:b	Landroid/content/Context;
    //   25: invokestatic 120	androidx/work/impl/foreground/a:e	(Landroid/content/Context;)Landroid/content/Intent;
    //   28: astore_2
    //   29: aload_0
    //   30: getfield 54	q0/d:b	Landroid/content/Context;
    //   33: aload_2
    //   34: invokevirtual 126	android/content/Context:startService	(Landroid/content/Intent;)Landroid/content/ComponentName;
    //   37: pop
    //   38: goto +23 -> 61
    //   41: astore_2
    //   42: invokestatic 93	androidx/work/k:c	()Landroidx/work/k;
    //   45: getstatic 47	q0/d:l	Ljava/lang/String;
    //   48: ldc 128
    //   50: iconst_1
    //   51: anewarray 103	java/lang/Throwable
    //   54: dup
    //   55: iconst_0
    //   56: aload_2
    //   57: aastore
    //   58: invokevirtual 130	androidx/work/k:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    //   61: aload_0
    //   62: getfield 81	q0/d:a	Landroid/os/PowerManager$WakeLock;
    //   65: astore_2
    //   66: aload_2
    //   67: ifnull +12 -> 79
    //   70: aload_2
    //   71: invokevirtual 135	android/os/PowerManager$WakeLock:release	()V
    //   74: aload_0
    //   75: aconst_null
    //   76: putfield 81	q0/d:a	Landroid/os/PowerManager$WakeLock;
    //   79: aload_1
    //   80: monitorexit
    //   81: return
    //   82: astore_2
    //   83: aload_1
    //   84: monitorexit
    //   85: aload_2
    //   86: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	87	0	this	d
    //   4	80	1	localObject1	Object
    //   28	6	2	localIntent	android.content.Intent
    //   41	16	2	localObject2	Object
    //   65	6	2	localWakeLock	PowerManager.WakeLock
    //   82	4	2	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   29	38	41	finally
    //   7	29	82	finally
    //   42	61	82	finally
    //   61	66	82	finally
    //   70	79	82	finally
    //   79	81	82	finally
    //   83	85	82	finally
  }
  
  public void a(String paramString, androidx.work.e parame)
  {
    synchronized (this.k)
    {
      k.c().d(l, String.format("Moving WorkSpec (%s) to the foreground", new Object[] { paramString }), new Throwable[0]);
      j localj = (j)this.g.remove(paramString);
      if (localj != null)
      {
        if (this.a == null)
        {
          PowerManager.WakeLock localWakeLock = m.b(this.b, "ProcessorForegroundLck");
          this.a = localWakeLock;
          localWakeLock.acquire();
        }
        this.f.put(paramString, localj);
        paramString = androidx.work.impl.foreground.a.d(this.b, paramString, parame);
        androidx.core.content.a.k(this.b, paramString);
      }
      return;
    }
  }
  
  public void b(String paramString)
  {
    synchronized (this.k)
    {
      this.f.remove(paramString);
      m();
      return;
    }
  }
  
  public void c(String paramString, boolean paramBoolean)
  {
    synchronized (this.k)
    {
      this.g.remove(paramString);
      k.c().a(l, String.format("%s %s executed; reschedule = %s", new Object[] { getClass().getSimpleName(), paramString, Boolean.valueOf(paramBoolean) }), new Throwable[0]);
      Iterator localIterator = this.j.iterator();
      while (localIterator.hasNext()) {
        ((b)localIterator.next()).c(paramString, paramBoolean);
      }
      return;
    }
  }
  
  public void d(b paramb)
  {
    synchronized (this.k)
    {
      this.j.add(paramb);
      return;
    }
  }
  
  public boolean f(String paramString)
  {
    synchronized (this.k)
    {
      boolean bool = this.i.contains(paramString);
      return bool;
    }
  }
  
  public boolean g(String paramString)
  {
    synchronized (this.k)
    {
      boolean bool;
      if ((!this.g.containsKey(paramString)) && (!this.f.containsKey(paramString))) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
  }
  
  public boolean h(String paramString)
  {
    synchronized (this.k)
    {
      boolean bool = this.f.containsKey(paramString);
      return bool;
    }
  }
  
  public void i(b paramb)
  {
    synchronized (this.k)
    {
      this.j.remove(paramb);
      return;
    }
  }
  
  public boolean j(String paramString)
  {
    return k(paramString, null);
  }
  
  public boolean k(String paramString, WorkerParameters.a parama)
  {
    synchronized (this.k)
    {
      if (g(paramString))
      {
        k.c().a(l, String.format("Work %s is already enqueued for processing", new Object[] { paramString }), new Throwable[0]);
        return false;
      }
      Object localObject2 = new q0/j$c;
      ((j.c)localObject2).<init>(this.b, this.c, this.d, this, this.e, paramString);
      parama = ((j.c)localObject2).c(this.h).b(parama).a();
      ListenableFuture localListenableFuture = parama.b();
      localObject2 = new q0/d$a;
      ((a)localObject2).<init>(this, paramString, localListenableFuture);
      localListenableFuture.addListener((Runnable)localObject2, this.d.a());
      this.g.put(paramString, parama);
      this.d.c().execute(parama);
      k.c().a(l, String.format("%s: processing %s", new Object[] { getClass().getSimpleName(), paramString }), new Throwable[0]);
      return true;
    }
  }
  
  public boolean l(String paramString)
  {
    synchronized (this.k)
    {
      Object localObject2 = k.c();
      Object localObject3 = l;
      int m = 1;
      ((k)localObject2).a((String)localObject3, String.format("Processor cancelling %s", new Object[] { paramString }), new Throwable[0]);
      this.i.add(paramString);
      localObject3 = (j)this.f.remove(paramString);
      if (localObject3 == null) {
        m = 0;
      }
      localObject2 = localObject3;
      if (localObject3 == null) {
        localObject2 = (j)this.g.remove(paramString);
      }
      boolean bool = e(paramString, (j)localObject2);
      if (m != 0) {
        m();
      }
      return bool;
    }
  }
  
  public boolean n(String paramString)
  {
    synchronized (this.k)
    {
      k.c().a(l, String.format("Processor stopping foreground work %s", new Object[] { paramString }), new Throwable[0]);
      boolean bool = e(paramString, (j)this.f.remove(paramString));
      return bool;
    }
  }
  
  public boolean o(String paramString)
  {
    synchronized (this.k)
    {
      k.c().a(l, String.format("Processor stopping background work %s", new Object[] { paramString }), new Throwable[0]);
      boolean bool = e(paramString, (j)this.g.remove(paramString));
      return bool;
    }
  }
  
  private static class a
    implements Runnable
  {
    private b a;
    private String b;
    private ListenableFuture<Boolean> c;
    
    a(b paramb, String paramString, ListenableFuture<Boolean> paramListenableFuture)
    {
      this.a = paramb;
      this.b = paramString;
      this.c = paramListenableFuture;
    }
    
    public void run()
    {
      boolean bool;
      try
      {
        bool = ((Boolean)this.c.get()).booleanValue();
      }
      catch (InterruptedException|ExecutionException localInterruptedException)
      {
        bool = true;
      }
      this.a.c(this.b, bool);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     q0.d
 * JD-Core Version:    0.7.0.1
 */