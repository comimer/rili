package androidx.lifecycle;

import kotlin.Metadata;
import kotlin.coroutines.c;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.u;
import kotlinx.coroutines.k0;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Lkotlinx/coroutines/k0;", "Lkotlin/u;", "<anonymous>"}, k=3, mv={1, 5, 1})
@d(c="androidx.lifecycle.LifecycleCoroutineScope$launchWhenResumed$1", f="Lifecycle.kt", l={114}, m="invokeSuspend")
final class LifecycleCoroutineScope$launchWhenResumed$1
  extends SuspendLambda
  implements p<k0, c<? super u>, Object>
{
  int label;
  
  LifecycleCoroutineScope$launchWhenResumed$1(j paramj, p<? super k0, ? super c<? super u>, ? extends Object> paramp, c<? super 1> paramc)
  {
    super(2, paramc);
  }
  
  public final c<u> create(Object paramObject, c<?> paramc)
  {
    return new 1(this.this$0, this.$block, paramc);
  }
  
  public final Object invoke(k0 paramk0, c<? super u> paramc)
  {
    return ((1)create(paramk0, paramc)).invokeSuspend(u.a);
  }
  
  public final Object invokeSuspend(Object paramObject)
  {
    Object localObject = a.d();
    int i = this.label;
    if (i != 0)
    {
      if (i == 1) {
        kotlin.j.b(paramObject);
      } else {
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
      }
    }
    else
    {
      kotlin.j.b(paramObject);
      Lifecycle localLifecycle = this.this$0.h();
      paramObject = this.$block;
      this.label = 1;
      if (PausingDispatcherKt.b(localLifecycle, paramObject, this) == localObject) {
        return localObject;
      }
    }
    return u.a;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.LifecycleCoroutineScope.launchWhenResumed.1
 * JD-Core Version:    0.7.0.1
 */