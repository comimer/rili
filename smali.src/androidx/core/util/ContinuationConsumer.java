package androidx.core.util;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.c;

@Metadata(bv={}, d1={""}, d2={"Landroidx/core/util/ContinuationConsumer;", "T", "Ljava/util/function/Consumer;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "value", "Lkotlin/u;", "accept", "(Ljava/lang/Object;)V", "", "toString", "Lkotlin/coroutines/c;", "continuation", "Lkotlin/coroutines/c;", "<init>", "(Lkotlin/coroutines/c;)V", "core-ktx_release"}, k=1, mv={1, 6, 0})
final class ContinuationConsumer<T>
  extends AtomicBoolean
  implements Consumer<T>
{
  private final c<T> continuation;
  
  public ContinuationConsumer(c<? super T> paramc)
  {
    super(false);
    this.continuation = paramc;
  }
  
  public void accept(T paramT)
  {
    if (compareAndSet(false, true)) {
      this.continuation.resumeWith(Result.constructor-impl(paramT));
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("ContinuationConsumer(resultAccepted = ");
    localStringBuilder.append(get());
    localStringBuilder.append(')');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.util.ContinuationConsumer
 * JD-Core Version:    0.7.0.1
 */