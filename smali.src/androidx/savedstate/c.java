package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.BaseBundle;
import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle.Event;
import androidx.lifecycle.n;
import java.util.Iterator;
import java.util.Map.Entry;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Landroidx/savedstate/c;", "", "", "key", "Landroid/os/Bundle;", "b", "Landroidx/savedstate/c$c;", "provider", "Lkotlin/u;", "h", "c", "Ljava/lang/Class;", "Landroidx/savedstate/c$a;", "clazz", "i", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "e", "(Landroidx/lifecycle/Lifecycle;)V", "savedState", "f", "(Landroid/os/Bundle;)V", "outBundle", "g", "", "Z", "attached", "Landroid/os/Bundle;", "restoredState", "<set-?>", "d", "isRestored", "()Z", "Landroidx/savedstate/Recreator$b;", "Landroidx/savedstate/Recreator$b;", "recreatorProvider", "isAllowingSavingState$savedstate_release", "setAllowingSavingState$savedstate_release", "(Z)V", "isAllowingSavingState", "<init>", "()V", "a", "savedstate_release"}, k=1, mv={1, 6, 0})
@SuppressLint({"RestrictedApi"})
public final class c
{
  private static final b g = new b(null);
  private final j.b<String, c> a = new j.b();
  private boolean b;
  private Bundle c;
  private boolean d;
  private Recreator.b e;
  private boolean f = true;
  
  private static final void d(c paramc, n paramn, Lifecycle.Event paramEvent)
  {
    r.f(paramc, "this$0");
    r.f(paramn, "<anonymous parameter 0>");
    r.f(paramEvent, "event");
    if (paramEvent == Lifecycle.Event.ON_START) {
      paramc.f = true;
    } else if (paramEvent == Lifecycle.Event.ON_STOP) {
      paramc.f = false;
    }
  }
  
  public final Bundle b(String paramString)
  {
    r.f(paramString, "key");
    if (this.d)
    {
      Bundle localBundle1 = this.c;
      if (localBundle1 != null)
      {
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
        int i = 0;
        int j = i;
        if (paramString != null)
        {
          j = i;
          if (!paramString.isEmpty()) {
            j = 1;
          }
        }
        if (j == 0) {
          this.c = null;
        }
        return localBundle1;
      }
      return null;
    }
    throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component".toString());
  }
  
  public final c c(String paramString)
  {
    r.f(paramString, "key");
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Map.Entry)localIterator.next();
      r.e(localObject, "components");
      String str = (String)((Map.Entry)localObject).getKey();
      localObject = (c)((Map.Entry)localObject).getValue();
      if (r.a(str, paramString)) {
        return (String)localObject;
      }
    }
    paramString = null;
    return paramString;
  }
  
  public final void e(Lifecycle paramLifecycle)
  {
    r.f(paramLifecycle, "lifecycle");
    if ((this.b ^ true))
    {
      paramLifecycle.a(new b(this));
      this.b = true;
      return;
    }
    throw new IllegalStateException("SavedStateRegistry was already attached.".toString());
  }
  
  public final void f(Bundle paramBundle)
  {
    if (this.b)
    {
      if ((this.d ^ true))
      {
        if (paramBundle != null) {
          paramBundle = paramBundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
        } else {
          paramBundle = null;
        }
        this.c = paramBundle;
        this.d = true;
        return;
      }
      throw new IllegalStateException("SavedStateRegistry was already restored.".toString());
    }
    throw new IllegalStateException("You must call performAttach() before calling performRestore(Bundle).".toString());
  }
  
  public final void g(Bundle paramBundle)
  {
    r.f(paramBundle, "outBundle");
    Bundle localBundle = new Bundle();
    Object localObject = this.c;
    if (localObject != null) {
      localBundle.putAll((Bundle)localObject);
    }
    localObject = this.a.h();
    r.e(localObject, "this.components.iteratorWithAdditions()");
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      localBundle.putBundle((String)localEntry.getKey(), ((c)localEntry.getValue()).a());
    }
    if (!localBundle.isEmpty()) {
      paramBundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", localBundle);
    }
  }
  
  public final void h(String paramString, c paramc)
  {
    r.f(paramString, "key");
    r.f(paramc, "provider");
    int i;
    if ((c)this.a.l(paramString, paramc) == null) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      return;
    }
    throw new IllegalArgumentException("SavedStateProvider with the given key is already registered".toString());
  }
  
  public final void i(Class<? extends a> paramClass)
  {
    r.f(paramClass, "clazz");
    if (this.f)
    {
      Recreator.b localb = this.e;
      Object localObject = localb;
      if (localb == null) {
        localObject = new Recreator.b(this);
      }
      this.e = ((Recreator.b)localObject);
      try
      {
        paramClass.getDeclaredConstructor(new Class[0]);
        localObject = this.e;
        if (localObject != null)
        {
          paramClass = paramClass.getName();
          r.e(paramClass, "clazz.name");
          ((Recreator.b)localObject).b(paramClass);
        }
        return;
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Class ");
        ((StringBuilder)localObject).append(paramClass.getSimpleName());
        ((StringBuilder)localObject).append(" must have default constructor in order to be automatically recreated");
        throw new IllegalArgumentException(((StringBuilder)localObject).toString(), localNoSuchMethodException);
      }
    }
    throw new IllegalStateException("Can not perform this action after onSaveInstanceState".toString());
  }
  
  @Metadata(bv={}, d1={""}, d2={"Landroidx/savedstate/c$a;", "", "Landroidx/savedstate/e;", "owner", "Lkotlin/u;", "a", "savedstate_release"}, k=1, mv={1, 6, 0})
  public static abstract interface a
  {
    public abstract void a(e parame);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Landroidx/savedstate/c$b;", "", "", "SAVED_COMPONENTS_KEY", "Ljava/lang/String;", "<init>", "()V", "savedstate_release"}, k=1, mv={1, 6, 0})
  private static final class b {}
  
  @Metadata(bv={}, d1={""}, d2={"Landroidx/savedstate/c$c;", "", "Landroid/os/Bundle;", "a", "savedstate_release"}, k=1, mv={1, 6, 0})
  public static abstract interface c
  {
    public abstract Bundle a();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.savedstate.c
 * JD-Core Version:    0.7.0.1
 */