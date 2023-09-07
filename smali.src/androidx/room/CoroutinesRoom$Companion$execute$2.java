package androidx.room;

import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.coroutines.c;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.j;
import kotlin.jvm.internal.r;
import kotlin.u;
import kotlinx.coroutines.k0;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"R", "Lkotlinx/coroutines/k0;", "kotlin.jvm.PlatformType", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k=3, mv={1, 4, 0})
@d(c="androidx.room.CoroutinesRoom$Companion$execute$2", f="CoroutinesRoom.kt", l={}, m="invokeSuspend")
final class CoroutinesRoom$Companion$execute$2
  extends SuspendLambda
  implements p<k0, c<Object>, Object>
{
  int label;
  private k0 p$;
  
  CoroutinesRoom$Companion$execute$2(Callable paramCallable, c paramc)
  {
    super(2, paramc);
  }
  
  public final c<u> create(Object paramObject, c<?> paramc)
  {
    r.g(paramc, "completion");
    paramc = new 2(this.$callable, paramc);
    paramc.p$ = ((k0)paramObject);
    return paramc;
  }
  
  public final Object invoke(Object paramObject1, Object paramObject2)
  {
    return ((2)create(paramObject1, (c)paramObject2)).invokeSuspend(u.a);
  }
  
  public final Object invokeSuspend(Object paramObject)
  {
    a.d();
    if (this.label == 0)
    {
      j.b(paramObject);
      return this.$callable.call();
    }
    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.room.CoroutinesRoom.Companion.execute.2
 * JD-Core Version:    0.7.0.1
 */