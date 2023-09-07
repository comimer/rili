package androidx.work.impl.utils.futures;

import com.google.common.util.concurrent.ListenableFuture;

public final class b<V>
  extends AbstractFuture<V>
{
  public static <V> b<V> s()
  {
    return new b();
  }
  
  public boolean o(V paramV)
  {
    return super.o(paramV);
  }
  
  public boolean p(Throwable paramThrowable)
  {
    return super.p(paramThrowable);
  }
  
  public boolean q(ListenableFuture<? extends V> paramListenableFuture)
  {
    return super.q(paramListenableFuture);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.impl.utils.futures.b
 * JD-Core Version:    0.7.0.1
 */