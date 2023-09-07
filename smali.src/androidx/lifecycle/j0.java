package androidx.lifecycle;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.q2;
import kotlinx.coroutines.w0;

@Metadata(bv={}, d1={""}, d2={"Landroidx/lifecycle/i0;", "Lkotlinx/coroutines/k0;", "a", "(Landroidx/lifecycle/i0;)Lkotlinx/coroutines/k0;", "viewModelScope", "lifecycle-viewmodel-ktx_release"}, k=2, mv={1, 6, 0})
public final class j0
{
  public static final k0 a(i0 parami0)
  {
    r.f(parami0, "<this>");
    k0 localk0 = (k0)parami0.getTag("androidx.lifecycle.ViewModelCoroutineScope.JOB_KEY");
    if (localk0 != null) {
      return localk0;
    }
    parami0 = parami0.setTagIfAbsent("androidx.lifecycle.ViewModelCoroutineScope.JOB_KEY", new c(q2.b(null, 1, null).plus(w0.c().u0())));
    r.e(parami0, "setTagIfAbsent(\n        …Main.immediate)\n        )");
    return (k0)parami0;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.j0
 * JD-Core Version:    0.7.0.1
 */