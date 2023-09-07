package androidx.work;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Future;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import kotlin.u;
import w7.l;

@Metadata(bv={}, d1={""}, d2={"R", "", "it", "Lkotlin/u;", "<anonymous>"}, k=3, mv={1, 5, 1})
public final class ListenableFutureKt$await$2$2
  extends Lambda
  implements l<Throwable, u>
{
  public ListenableFutureKt$await$2$2(ListenableFuture<Object> paramListenableFuture)
  {
    super(1);
  }
  
  public final void invoke(Throwable paramThrowable)
  {
    this.$this_await.cancel(false);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.ListenableFutureKt.await.2.2
 * JD-Core Version:    0.7.0.1
 */