package androidx.lifecycle;

import android.os.BaseBundle;
import android.os.Bundle;
import androidx.savedstate.c;
import androidx.savedstate.c.c;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import kotlin.Metadata;
import kotlin.f;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Landroidx/lifecycle/d0;", "Landroidx/savedstate/c$c;", "Landroid/os/Bundle;", "a", "Lkotlin/u;", "d", "", "key", "b", "Landroidx/savedstate/c;", "Landroidx/savedstate/c;", "savedStateRegistry", "", "Z", "restored", "c", "Landroid/os/Bundle;", "restoredState", "Landroidx/lifecycle/e0;", "Lkotlin/f;", "()Landroidx/lifecycle/e0;", "viewModel", "lifecycle-viewmodel-savedstate_release"}, k=1, mv={1, 6, 0})
public final class d0
  implements c.c
{
  private final c a;
  private boolean b;
  private Bundle c;
  private final f d;
  
  private final e0 c()
  {
    return (e0)this.d.getValue();
  }
  
  public Bundle a()
  {
    Bundle localBundle = new Bundle();
    Object localObject1 = this.c;
    if (localObject1 != null) {
      localBundle.putAll((Bundle)localObject1);
    }
    localObject1 = c().a().entrySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = (Map.Entry)((Iterator)localObject1).next();
      String str = (String)((Map.Entry)localObject2).getKey();
      localObject2 = ((c0)((Map.Entry)localObject2).getValue()).d().a();
      if (!r.a(localObject2, Bundle.EMPTY)) {
        localBundle.putBundle(str, (Bundle)localObject2);
      }
    }
    this.b = false;
    return localBundle;
  }
  
  public final Bundle b(String paramString)
  {
    r.f(paramString, "key");
    d();
    Bundle localBundle1 = this.c;
    if (localBundle1 != null) {
      localBundle1 = localBundle1.getBundle(paramString);
    } else {
      localBundle1 = null;
    }
    Bundle localBundle2 = this.c;
    if (localBundle2 != null) {
      localBundle2.remove(paramString);
    }
    paramString = this.c;
    int i = 1;
    if ((paramString == null) || (paramString.isEmpty() != true)) {
      i = 0;
    }
    if (i != 0) {
      this.c = null;
    }
    return localBundle1;
  }
  
  public final void d()
  {
    if (!this.b)
    {
      this.c = this.a.b("androidx.lifecycle.internal.SavedStateHandlesProvider");
      this.b = true;
      c();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.d0
 * JD-Core Version:    0.7.0.1
 */