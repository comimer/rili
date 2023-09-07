package androidx.lifecycle;

import kotlin.Metadata;
import kotlin.coroutines.c;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.j;
import kotlin.u;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.v1;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Lkotlinx/coroutines/k0;", "Lkotlin/u;", "<anonymous>"}, k=3, mv={1, 5, 1})
@d(c="androidx.lifecycle.LifecycleCoroutineScopeImpl$register$1", f="Lifecycle.kt", l={}, m="invokeSuspend")
final class LifecycleCoroutineScopeImpl$register$1
  extends SuspendLambda
  implements p<k0, c<? super u>, Object>
{
  int label;
  
  LifecycleCoroutineScopeImpl$register$1(LifecycleCoroutineScopeImpl paramLifecycleCoroutineScopeImpl, c<? super 1> paramc)
  {
    super(2, paramc);
  }
  
  public final c<u> create(Object paramObject, c<?> paramc)
  {
    paramc = new 1(this.this$0, paramc);
    paramc.L$0 = paramObject;
    return paramc;
  }
  
  public final Object invoke(k0 paramk0, c<? super u> paramc)
  {
    return ((1)create(paramk0, paramc)).invokeSuspend(u.a);
  }
  
  public final Object invokeSuspend(Object paramObject)
  {
    a.d();
    if (this.label == 0)
    {
      j.b(paramObject);
      paramObject = (k0)this.L$0;
      if (this.this$0.h().b().compareTo(Lifecycle.State.INITIALIZED) >= 0) {
        this.this$0.h().a(this.this$0);
      } else {
        v1.d(paramObject.V(), null, 1, null);
      }
      return u.a;
    }
    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.LifecycleCoroutineScopeImpl.register.1
 * JD-Core Version:    0.7.0.1
 */