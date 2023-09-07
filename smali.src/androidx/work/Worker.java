package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.work.impl.utils.futures.b;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

public abstract class Worker
  extends ListenableWorker
{
  b<ListenableWorker.a> f;
  
  @SuppressLint({"BanKeepAnnotation"})
  @Keep
  public Worker(Context paramContext, WorkerParameters paramWorkerParameters)
  {
    super(paramContext, paramWorkerParameters);
  }
  
  public final ListenableFuture<ListenableWorker.a> p()
  {
    this.f = b.s();
    c().execute(new a());
    return this.f;
  }
  
  public abstract ListenableWorker.a r();
  
  class a
    implements Runnable
  {
    a() {}
    
    /* Error */
    public void run()
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 17	androidx/work/Worker$a:a	Landroidx/work/Worker;
      //   4: invokevirtual 26	androidx/work/Worker:r	()Landroidx/work/ListenableWorker$a;
      //   7: astore_1
      //   8: aload_0
      //   9: getfield 17	androidx/work/Worker$a:a	Landroidx/work/Worker;
      //   12: getfield 30	androidx/work/Worker:f	Landroidx/work/impl/utils/futures/b;
      //   15: aload_1
      //   16: invokevirtual 36	androidx/work/impl/utils/futures/b:o	(Ljava/lang/Object;)Z
      //   19: pop
      //   20: goto +16 -> 36
      //   23: astore_1
      //   24: aload_0
      //   25: getfield 17	androidx/work/Worker$a:a	Landroidx/work/Worker;
      //   28: getfield 30	androidx/work/Worker:f	Landroidx/work/impl/utils/futures/b;
      //   31: aload_1
      //   32: invokevirtual 39	androidx/work/impl/utils/futures/b:p	(Ljava/lang/Throwable;)Z
      //   35: pop
      //   36: return
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	37	0	this	a
      //   7	9	1	locala	ListenableWorker.a
      //   23	9	1	localThrowable	java.lang.Throwable
      // Exception table:
      //   from	to	target	type
      //   0	20	23	finally
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.Worker
 * JD-Core Version:    0.7.0.1
 */