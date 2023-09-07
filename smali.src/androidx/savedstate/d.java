package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle.State;
import androidx.lifecycle.n;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Landroidx/savedstate/d;", "", "Lkotlin/u;", "c", "Landroid/os/Bundle;", "savedState", "d", "outBundle", "e", "Landroidx/savedstate/e;", "a", "Landroidx/savedstate/e;", "owner", "Landroidx/savedstate/c;", "b", "Landroidx/savedstate/c;", "()Landroidx/savedstate/c;", "savedStateRegistry", "", "Z", "attached", "<init>", "(Landroidx/savedstate/e;)V", "savedstate_release"}, k=1, mv={1, 6, 0})
public final class d
{
  public static final a d = new a(null);
  private final e a;
  private final c b;
  private boolean c;
  
  private d(e parame)
  {
    this.a = parame;
    this.b = new c();
  }
  
  public static final d a(e parame)
  {
    return d.a(parame);
  }
  
  public final c b()
  {
    return this.b;
  }
  
  public final void c()
  {
    Lifecycle localLifecycle = this.a.getLifecycle();
    r.e(localLifecycle, "owner.lifecycle");
    int i;
    if (localLifecycle.b() == Lifecycle.State.INITIALIZED) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0)
    {
      localLifecycle.a(new Recreator(this.a));
      this.b.e(localLifecycle);
      this.c = true;
      return;
    }
    throw new IllegalStateException("Restarter must be created only during owner's initialization stage".toString());
  }
  
  public final void d(Bundle paramBundle)
  {
    if (!this.c) {
      c();
    }
    Lifecycle localLifecycle = this.a.getLifecycle();
    r.e(localLifecycle, "owner.lifecycle");
    if ((localLifecycle.b().isAtLeast(Lifecycle.State.STARTED) ^ true))
    {
      this.b.f(paramBundle);
      return;
    }
    paramBundle = new StringBuilder();
    paramBundle.append("performRestore cannot be called when owner is ");
    paramBundle.append(localLifecycle.b());
    throw new IllegalStateException(paramBundle.toString().toString());
  }
  
  public final void e(Bundle paramBundle)
  {
    r.f(paramBundle, "outBundle");
    this.b.g(paramBundle);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Landroidx/savedstate/d$a;", "", "Landroidx/savedstate/e;", "owner", "Landroidx/savedstate/d;", "a", "<init>", "()V", "savedstate_release"}, k=1, mv={1, 6, 0})
  public static final class a
  {
    public final d a(e parame)
    {
      r.f(parame, "owner");
      return new d(parame, null);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.savedstate.d
 * JD-Core Version:    0.7.0.1
 */