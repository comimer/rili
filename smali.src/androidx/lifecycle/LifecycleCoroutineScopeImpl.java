package androidx.lifecycle;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.v1;

@Metadata(bv={}, d1={""}, d2={"Landroidx/lifecycle/LifecycleCoroutineScopeImpl;", "Landroidx/lifecycle/j;", "Landroidx/lifecycle/l;", "Landroidx/lifecycle/n;", "source", "Landroidx/lifecycle/Lifecycle$Event;", "event", "Lkotlin/u;", "g", "Landroidx/lifecycle/Lifecycle;", "a", "Landroidx/lifecycle/Lifecycle;", "h", "()Landroidx/lifecycle/Lifecycle;", "lifecycle", "Lkotlin/coroutines/CoroutineContext;", "b", "Lkotlin/coroutines/CoroutineContext;", "V", "()Lkotlin/coroutines/CoroutineContext;", "coroutineContext", "lifecycle-runtime-ktx_release"}, k=1, mv={1, 5, 1})
public final class LifecycleCoroutineScopeImpl
  extends j
  implements l
{
  private final Lifecycle a;
  private final CoroutineContext b;
  
  public CoroutineContext V()
  {
    return this.b;
  }
  
  public void g(n paramn, Lifecycle.Event paramEvent)
  {
    r.f(paramn, "source");
    r.f(paramEvent, "event");
    if (h().b().compareTo(Lifecycle.State.DESTROYED) <= 0)
    {
      h().c(this);
      v1.d(V(), null, 1, null);
    }
  }
  
  public Lifecycle h()
  {
    return this.a;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.LifecycleCoroutineScopeImpl
 * JD-Core Version:    0.7.0.1
 */