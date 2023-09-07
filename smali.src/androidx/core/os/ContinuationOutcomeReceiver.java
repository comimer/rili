package androidx.core.os;

import android.os.OutcomeReceiver;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Result.a;
import kotlin.coroutines.c;
import kotlin.j;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Landroidx/core/os/ContinuationOutcomeReceiver;", "R", "", "E", "Landroid/os/OutcomeReceiver;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "result", "Lkotlin/u;", "onResult", "(Ljava/lang/Object;)V", "error", "onError", "(Ljava/lang/Throwable;)V", "", "toString", "Lkotlin/coroutines/c;", "continuation", "Lkotlin/coroutines/c;", "<init>", "(Lkotlin/coroutines/c;)V", "core-ktx_release"}, k=1, mv={1, 6, 0})
final class ContinuationOutcomeReceiver<R, E extends Throwable>
  extends AtomicBoolean
  implements OutcomeReceiver
{
  private final c<R> continuation;
  
  public ContinuationOutcomeReceiver(c<? super R> paramc)
  {
    super(false);
    this.continuation = paramc;
  }
  
  public void onError(E paramE)
  {
    r.f(paramE, "error");
    if (compareAndSet(false, true))
    {
      c localc = this.continuation;
      Result.a locala = Result.Companion;
      localc.resumeWith(Result.constructor-impl(j.a(paramE)));
    }
  }
  
  public void onResult(R paramR)
  {
    if (compareAndSet(false, true)) {
      this.continuation.resumeWith(Result.constructor-impl(paramR));
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("ContinuationOutcomeReceiver(outcomeReceived = ");
    localStringBuilder.append(get());
    localStringBuilder.append(')');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.os.ContinuationOutcomeReceiver
 * JD-Core Version:    0.7.0.1
 */