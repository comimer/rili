package androidx.lifecycle;

import android.os.Bundle;
import androidx.savedstate.e;
import g0.a;
import g0.a.b;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import w7.l;

@Metadata(bv={}, d1={""}, d2={"Landroidx/savedstate/e;", "savedStateRegistryOwner", "Landroidx/lifecycle/n0;", "viewModelStoreOwner", "", "key", "Landroid/os/Bundle;", "defaultArgs", "Landroidx/lifecycle/c0;", "a", "Lg0/a;", "b", "Landroidx/lifecycle/e0;", "d", "(Landroidx/lifecycle/n0;)Landroidx/lifecycle/e0;", "savedStateHandlesVM", "Landroidx/lifecycle/d0;", "c", "(Landroidx/savedstate/e;)Landroidx/lifecycle/d0;", "savedStateHandlesProvider", "lifecycle-viewmodel-savedstate_release"}, k=2, mv={1, 6, 0})
public final class SavedStateHandleSupport
{
  public static final a.b<e> a = new b();
  public static final a.b<n0> b = new c();
  public static final a.b<Bundle> c = new a();
  
  private static final c0 a(e parame, n0 paramn0, String paramString, Bundle paramBundle)
  {
    d0 locald0 = c(parame);
    e0 locale0 = d(paramn0);
    paramn0 = (c0)locale0.a().get(paramString);
    parame = paramn0;
    if (paramn0 == null)
    {
      parame = c0.f.a(locald0.b(paramString), paramBundle);
      locale0.a().put(paramString, parame);
    }
    return parame;
  }
  
  public static final c0 b(a parama)
  {
    r.f(parama, "<this>");
    e locale = (e)parama.a(a);
    if (locale != null)
    {
      n0 localn0 = (n0)parama.a(b);
      if (localn0 != null)
      {
        Bundle localBundle = (Bundle)parama.a(c);
        parama = (String)parama.a(k0.c.d);
        if (parama != null) {
          return a(locale, localn0, parama, localBundle);
        }
        throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_KEY`");
      }
      throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`");
    }
    throw new IllegalArgumentException("CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`");
  }
  
  public static final d0 c(e parame)
  {
    r.f(parame, "<this>");
    parame = parame.getSavedStateRegistry().c("androidx.lifecycle.internal.SavedStateHandlesProvider");
    if ((parame instanceof d0)) {
      parame = (d0)parame;
    } else {
      parame = null;
    }
    if (parame != null) {
      return parame;
    }
    throw new IllegalStateException("enableSavedStateHandles() wasn't called prior to createSavedStateHandle() call");
  }
  
  public static final e0 d(n0 paramn0)
  {
    r.f(paramn0, "<this>");
    g0.c localc = new g0.c();
    Lambda local1 = savedStateHandlesVM.1.1.INSTANCE;
    localc.a(v.b(e0.class), local1);
    return (e0)new k0(paramn0, localc.b()).b("androidx.lifecycle.internal.SavedStateHandlesVM", e0.class);
  }
  
  @Metadata(bv={}, d1={""}, d2={"androidx/lifecycle/SavedStateHandleSupport$a", "Lg0/a$b;", "Landroid/os/Bundle;", "lifecycle-viewmodel-savedstate_release"}, k=1, mv={1, 6, 0})
  public static final class a
    implements a.b<Bundle>
  {}
  
  @Metadata(bv={}, d1={""}, d2={"androidx/lifecycle/SavedStateHandleSupport$b", "Lg0/a$b;", "Landroidx/savedstate/e;", "lifecycle-viewmodel-savedstate_release"}, k=1, mv={1, 6, 0})
  public static final class b
    implements a.b<e>
  {}
  
  @Metadata(bv={}, d1={""}, d2={"androidx/lifecycle/SavedStateHandleSupport$c", "Lg0/a$b;", "Landroidx/lifecycle/n0;", "lifecycle-viewmodel-savedstate_release"}, k=1, mv={1, 6, 0})
  public static final class c
    implements a.b<n0>
  {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.SavedStateHandleSupport
 * JD-Core Version:    0.7.0.1
 */