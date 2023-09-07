package androidx.lifecycle;

import android.os.Bundle;
import androidx.savedstate.c;
import androidx.savedstate.c.a;
import androidx.savedstate.e;
import java.util.Iterator;
import java.util.Set;

class LegacySavedStateHandleController
{
  static void a(i0 parami0, c paramc, Lifecycle paramLifecycle)
  {
    parami0 = (SavedStateHandleController)parami0.getTag("androidx.lifecycle.savedstate.vm.tag");
    if ((parami0 != null) && (!parami0.j()))
    {
      parami0.h(paramc, paramLifecycle);
      c(paramc, paramLifecycle);
    }
  }
  
  static SavedStateHandleController b(c paramc, Lifecycle paramLifecycle, String paramString, Bundle paramBundle)
  {
    paramString = new SavedStateHandleController(paramString, c0.c(paramc.b(paramString), paramBundle));
    paramString.h(paramc, paramLifecycle);
    c(paramc, paramLifecycle);
    return paramString;
  }
  
  private static void c(final c paramc, Lifecycle paramLifecycle)
  {
    Lifecycle.State localState = paramLifecycle.b();
    if ((localState != Lifecycle.State.INITIALIZED) && (!localState.isAtLeast(Lifecycle.State.STARTED))) {
      paramLifecycle.a(new l()
      {
        public void g(n paramAnonymousn, Lifecycle.Event paramAnonymousEvent)
        {
          if (paramAnonymousEvent == Lifecycle.Event.ON_START)
          {
            LegacySavedStateHandleController.this.c(this);
            paramc.i(LegacySavedStateHandleController.a.class);
          }
        }
      });
    } else {
      paramc.i(a.class);
    }
  }
  
  static final class a
    implements c.a
  {
    public void a(e parame)
    {
      if ((parame instanceof n0))
      {
        m0 localm0 = ((n0)parame).getViewModelStore();
        c localc = parame.getSavedStateRegistry();
        Iterator localIterator = localm0.c().iterator();
        while (localIterator.hasNext()) {
          LegacySavedStateHandleController.a(localm0.b((String)localIterator.next()), localc, parame.getLifecycle());
        }
        if (!localm0.c().isEmpty()) {
          localc.i(a.class);
        }
        return;
      }
      throw new IllegalStateException("Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner");
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.LegacySavedStateHandleController
 * JD-Core Version:    0.7.0.1
 */