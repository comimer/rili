package androidx.lifecycle;

import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.s1;
import kotlinx.coroutines.s1.a;

@Metadata(bv={}, d1={""}, d2={"Landroidx/lifecycle/LifecycleController;", "", "Lkotlin/u;", "c", "Landroidx/lifecycle/Lifecycle;", "a", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "Landroidx/lifecycle/Lifecycle$State;", "b", "Landroidx/lifecycle/Lifecycle$State;", "minState", "Landroidx/lifecycle/e;", "Landroidx/lifecycle/e;", "dispatchQueue", "Landroidx/lifecycle/l;", "d", "Landroidx/lifecycle/l;", "observer", "Lkotlinx/coroutines/s1;", "parentJob", "<init>", "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/e;Lkotlinx/coroutines/s1;)V", "lifecycle-runtime-ktx_release"}, k=1, mv={1, 5, 1})
public final class LifecycleController
{
  private final Lifecycle a;
  private final Lifecycle.State b;
  private final e c;
  private final l d;
  
  public LifecycleController(Lifecycle paramLifecycle, Lifecycle.State paramState, e parame, final s1 params1)
  {
    this.a = paramLifecycle;
    this.b = paramState;
    this.c = parame;
    paramState = new l()
    {
      public final void g(n paramAnonymousn, Lifecycle.Event paramAnonymousEvent)
      {
        r.f(paramAnonymousn, "source");
        r.f(paramAnonymousEvent, "$noName_1");
        if (paramAnonymousn.getLifecycle().b() == Lifecycle.State.DESTROYED)
        {
          paramAnonymousn = this.a;
          s1.a.a(params1, null, 1, null);
          paramAnonymousn.c();
        }
        else if (paramAnonymousn.getLifecycle().b().compareTo(LifecycleController.b(this.a)) < 0)
        {
          LifecycleController.a(this.a).g();
        }
        else
        {
          LifecycleController.a(this.a).h();
        }
      }
    };
    this.d = paramState;
    if (paramLifecycle.b() == Lifecycle.State.DESTROYED)
    {
      s1.a.a(params1, null, 1, null);
      c();
    }
    else
    {
      paramLifecycle.a(paramState);
    }
  }
  
  public final void c()
  {
    this.a.c(this.d);
    this.c.f();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.LifecycleController
 * JD-Core Version:    0.7.0.1
 */