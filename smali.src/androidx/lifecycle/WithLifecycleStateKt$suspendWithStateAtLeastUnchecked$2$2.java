package androidx.lifecycle;

import kotlin.Metadata;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Lambda;
import kotlin.u;
import kotlinx.coroutines.CoroutineDispatcher;
import w7.l;

@Metadata(bv={}, d1={""}, d2={"R", "", "it", "Lkotlin/u;", "<anonymous>"}, k=3, mv={1, 5, 1})
final class WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$2
  extends Lambda
  implements l<Throwable, u>
{
  WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$2(CoroutineDispatcher paramCoroutineDispatcher, Lifecycle paramLifecycle, WithLifecycleStateKt.suspendWithStateAtLeastUnchecked.2.observer.1 param1)
  {
    super(1);
  }
  
  public final void invoke(Throwable paramThrowable)
  {
    paramThrowable = this.$lifecycleDispatcher;
    EmptyCoroutineContext localEmptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
    if (paramThrowable.s0(localEmptyCoroutineContext)) {
      this.$lifecycleDispatcher.q0(localEmptyCoroutineContext, new a(this.$this_suspendWithStateAtLeastUnchecked, this.$observer));
    } else {
      this.$this_suspendWithStateAtLeastUnchecked.c(this.$observer);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"R", "Lkotlin/u;", "<anonymous>"}, k=3, mv={1, 5, 1})
  static final class a
    implements Runnable
  {
    a(Lifecycle paramLifecycle, WithLifecycleStateKt.suspendWithStateAtLeastUnchecked.2.observer.1 param1) {}
    
    public final void run()
    {
      this.a.c(this.b);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.WithLifecycleStateKt.suspendWithStateAtLeastUnchecked.2.2
 * JD-Core Version:    0.7.0.1
 */