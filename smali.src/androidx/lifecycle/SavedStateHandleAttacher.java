package androidx.lifecycle;

import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Landroidx/lifecycle/SavedStateHandleAttacher;", "Landroidx/lifecycle/l;", "Landroidx/lifecycle/n;", "source", "Landroidx/lifecycle/Lifecycle$Event;", "event", "Lkotlin/u;", "g", "Landroidx/lifecycle/d0;", "a", "Landroidx/lifecycle/d0;", "provider", "lifecycle-viewmodel-savedstate_release"}, k=1, mv={1, 6, 0})
public final class SavedStateHandleAttacher
  implements l
{
  private final d0 a;
  
  public void g(n paramn, Lifecycle.Event paramEvent)
  {
    r.f(paramn, "source");
    r.f(paramEvent, "event");
    int i;
    if (paramEvent == Lifecycle.Event.ON_CREATE) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0)
    {
      paramn.getLifecycle().c(this);
      this.a.d();
      return;
    }
    paramn = new StringBuilder();
    paramn.append("Next event must be ON_CREATE, it was ");
    paramn.append(paramEvent);
    throw new IllegalStateException(paramn.toString().toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.SavedStateHandleAttacher
 * JD-Core Version:    0.7.0.1
 */