package androidx.core.util;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Result.a;
import kotlin.coroutines.c;
import kotlin.u;

@Metadata(bv={}, d1={""}, d2={"Landroidx/core/util/ContinuationRunnable;", "Ljava/lang/Runnable;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Lkotlin/u;", "run", "", "toString", "Lkotlin/coroutines/c;", "continuation", "Lkotlin/coroutines/c;", "<init>", "(Lkotlin/coroutines/c;)V", "core-ktx_release"}, k=1, mv={1, 6, 0})
final class ContinuationRunnable
  extends AtomicBoolean
  implements Runnable
{
  private final c<u> continuation;
  
  public ContinuationRunnable(c<? super u> paramc)
  {
    super(false);
    this.continuation = paramc;
  }
  
  public void run()
  {
    if (compareAndSet(false, true))
    {
      c localc = this.continuation;
      Result.a locala = Result.Companion;
      localc.resumeWith(Result.constructor-impl(u.a));
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("ContinuationRunnable(ran = ");
    localStringBuilder.append(get());
    localStringBuilder.append(')');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.util.ContinuationRunnable
 * JD-Core Version:    0.7.0.1
 */