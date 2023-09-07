package y5;

import android.os.Handler;
import android.os.Looper;
import com.xiaomi.accountsdk.utils.b;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import x5.d;

public abstract class a<ServerDataType, ClientDataType>
  extends FutureTask<ClientDataType>
{
  private final d<c<ClientDataType>> a;
  
  protected a(c<ClientDataType> paramc)
  {
    super(new a());
    this.a = new d(paramc);
  }
  
  private void c()
  {
    Looper localLooper = Looper.myLooper();
    if ((localLooper != null) && (localLooper == Looper.getMainLooper())) {
      b.h("ClientFuture", "calling this from your main thread can lead to deadlock and/or ANRs", new IllegalStateException("ClientFuture#calling this from your main thread can lead to deadlock"));
    }
  }
  
  private void d()
  {
    if (isCancelled()) {
      return;
    }
    new Handler(Looper.getMainLooper()).post(new b());
  }
  
  protected abstract ClientDataType b(ServerDataType paramServerDataType)
    throws Throwable;
  
  public boolean cancel(boolean paramBoolean)
  {
    this.a.b(null);
    return super.cancel(paramBoolean);
  }
  
  protected void done()
  {
    super.done();
    d();
  }
  
  /* Error */
  public final void e(ServerDataType paramServerDataType)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_0
    //   2: aload_1
    //   3: invokevirtual 95	y5/a:b	(Ljava/lang/Object;)Ljava/lang/Object;
    //   6: invokevirtual 98	java/util/concurrent/FutureTask:set	(Ljava/lang/Object;)V
    //   9: goto +9 -> 18
    //   12: astore_1
    //   13: aload_0
    //   14: aload_1
    //   15: invokevirtual 102	java/util/concurrent/FutureTask:setException	(Ljava/lang/Throwable;)V
    //   18: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	19	0	this	a
    //   0	19	1	paramServerDataType	ServerDataType
    // Exception table:
    //   from	to	target	type
    //   0	9	12	finally
  }
  
  public final void f(Throwable paramThrowable)
  {
    setException(paramThrowable);
  }
  
  public ClientDataType get()
    throws InterruptedException, ExecutionException
  {
    if (!isDone()) {
      c();
    }
    return super.get();
  }
  
  public ClientDataType get(long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException, ExecutionException, TimeoutException
  {
    if (!isDone()) {
      c();
    }
    return super.get(paramLong, paramTimeUnit);
  }
  
  class a
    implements Callable<ClientDataType>
  {
    public ClientDataType call()
      throws Exception
    {
      throw new IllegalStateException("this should never be called");
    }
  }
  
  class b
    implements Runnable
  {
    b() {}
    
    public void run()
    {
      a.c localc = (a.c)a.a(a.this).a();
      if (localc != null) {
        localc.a(a.this);
      }
    }
  }
  
  public static abstract interface c<ClientSideDataType>
  {
    public abstract void a(a<?, ClientSideDataType> parama);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y5.a
 * JD-Core Version:    0.7.0.1
 */