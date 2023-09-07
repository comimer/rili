package y0;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.e;
import androidx.work.f;
import androidx.work.impl.utils.futures.AbstractFuture;
import androidx.work.impl.utils.futures.b;
import androidx.work.k;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import x0.p;

public class n
  implements Runnable
{
  static final String g = k.f("WorkForegroundRunnable");
  final b<Void> a = b.s();
  final Context b;
  final p c;
  final ListenableWorker d;
  final f e;
  final z0.a f;
  
  @SuppressLint({"LambdaLast"})
  public n(Context paramContext, p paramp, ListenableWorker paramListenableWorker, f paramf, z0.a parama)
  {
    this.b = paramContext;
    this.c = paramp;
    this.d = paramListenableWorker;
    this.e = paramf;
    this.f = parama;
  }
  
  public ListenableFuture<Void> a()
  {
    return this.a;
  }
  
  @SuppressLint({"UnsafeExperimentalUsageError"})
  public void run()
  {
    if ((this.c.q) && (!androidx.core.os.a.c()))
    {
      final b localb = b.s();
      this.f.a().execute(new a(localb));
      localb.addListener(new b(localb), this.f.a());
      return;
    }
    this.a.o(null);
  }
  
  class a
    implements Runnable
  {
    a(b paramb) {}
    
    public void run()
    {
      localb.q(n.this.d.d());
    }
  }
  
  class b
    implements Runnable
  {
    b(b paramb) {}
    
    public void run()
    {
      try
      {
        Object localObject1 = (e)localb.get();
        Object localObject2;
        if (localObject1 != null)
        {
          k.c().a(n.g, String.format("Updating notification for %s", new Object[] { n.this.c.c }), new Throwable[0]);
          n.this.d.n(true);
          localObject2 = n.this;
          localb.q(((n)localObject2).e.a(((n)localObject2).b, ((n)localObject2).d.e(), (e)localObject1));
        }
        else
        {
          localObject2 = String.format("Worker was marked important (%s) but did not provide ForegroundInfo", new Object[] { n.this.c.c });
          localObject1 = new java/lang/IllegalStateException;
          ((IllegalStateException)localObject1).<init>((String)localObject2);
          throw ((Throwable)localObject1);
        }
      }
      finally
      {
        localb.p(localThrowable);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y0.n
 * JD-Core Version:    0.7.0.1
 */