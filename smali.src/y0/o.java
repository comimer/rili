package y0;

import android.content.Context;
import android.content.Intent;
import androidx.work.WorkInfo.State;
import androidx.work.e;
import androidx.work.f;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.utils.futures.AbstractFuture;
import androidx.work.impl.utils.futures.b;
import androidx.work.k;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.UUID;
import x0.q;

public class o
  implements f
{
  private static final String d = k.f("WMFgUpdater");
  private final z0.a a;
  final w0.a b;
  final q c;
  
  public o(WorkDatabase paramWorkDatabase, w0.a parama, z0.a parama1)
  {
    this.b = parama;
    this.a = parama1;
    this.c = paramWorkDatabase.j();
  }
  
  public ListenableFuture<Void> a(final Context paramContext, final UUID paramUUID, final e parame)
  {
    final b localb = b.s();
    this.a.b(new a(localb, paramUUID, parame, paramContext));
    return localb;
  }
  
  class a
    implements Runnable
  {
    a(b paramb, UUID paramUUID, e parame, Context paramContext) {}
    
    public void run()
    {
      try
      {
        if (!localb.isCancelled())
        {
          String str = paramUUID.toString();
          Object localObject = o.this.c.m(str);
          if ((localObject != null) && (!((WorkInfo.State)localObject).isFinished()))
          {
            o.this.b.a(str, parame);
            localObject = androidx.work.impl.foreground.a.a(paramContext, str, parame);
            paramContext.startService((Intent)localObject);
          }
          else
          {
            localObject = new java/lang/IllegalStateException;
            ((IllegalStateException)localObject).<init>("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
            throw ((Throwable)localObject);
          }
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
 * Qualified Name:     y0.o
 * JD-Core Version:    0.7.0.1
 */