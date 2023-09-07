package androidx.lifecycle;

import android.annotation.SuppressLint;
import android.app.Application;
import android.os.Bundle;
import androidx.savedstate.c;
import androidx.savedstate.e;
import java.lang.reflect.Constructor;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Landroidx/lifecycle/f0;", "Landroidx/lifecycle/k0$d;", "Landroidx/lifecycle/k0$b;", "Landroidx/lifecycle/i0;", "T", "Ljava/lang/Class;", "modelClass", "Lg0/a;", "extras", "b", "(Ljava/lang/Class;Lg0/a;)Landroidx/lifecycle/i0;", "", "key", "d", "(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/i0;", "a", "(Ljava/lang/Class;)Landroidx/lifecycle/i0;", "viewModel", "Lkotlin/u;", "c", "Landroid/app/Application;", "Landroid/app/Application;", "application", "Landroidx/lifecycle/k0$b;", "factory", "Landroid/os/Bundle;", "Landroid/os/Bundle;", "defaultArgs", "Landroidx/lifecycle/Lifecycle;", "e", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "Landroidx/savedstate/c;", "f", "Landroidx/savedstate/c;", "savedStateRegistry", "Landroidx/savedstate/e;", "owner", "<init>", "(Landroid/app/Application;Landroidx/savedstate/e;Landroid/os/Bundle;)V", "lifecycle-viewmodel-savedstate_release"}, k=1, mv={1, 6, 0})
public final class f0
  extends k0.d
  implements k0.b
{
  private Application b;
  private final k0.b c;
  private Bundle d;
  private Lifecycle e;
  private c f;
  
  @SuppressLint({"LambdaLast"})
  public f0(Application paramApplication, e parame, Bundle paramBundle)
  {
    this.f = parame.getSavedStateRegistry();
    this.e = parame.getLifecycle();
    this.d = paramBundle;
    this.b = paramApplication;
    if (paramApplication != null) {
      paramApplication = k0.a.f.b(paramApplication);
    } else {
      paramApplication = new k0.a();
    }
    this.c = paramApplication;
  }
  
  public <T extends i0> T a(Class<T> paramClass)
  {
    r.f(paramClass, "modelClass");
    String str = paramClass.getCanonicalName();
    if (str != null) {
      return d(str, paramClass);
    }
    throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
  }
  
  public <T extends i0> T b(Class<T> paramClass, g0.a parama)
  {
    r.f(paramClass, "modelClass");
    r.f(parama, "extras");
    Object localObject = (String)parama.a(k0.c.d);
    if (localObject != null)
    {
      if ((parama.a(SavedStateHandleSupport.a) != null) && (parama.a(SavedStateHandleSupport.b) != null))
      {
        Application localApplication = (Application)parama.a(k0.a.h);
        boolean bool = a.class.isAssignableFrom(paramClass);
        if ((bool) && (localApplication != null)) {
          localObject = g0.c(paramClass, g0.a());
        } else {
          localObject = g0.c(paramClass, g0.b());
        }
        if (localObject == null) {
          return this.c.b(paramClass, parama);
        }
        if ((bool) && (localApplication != null)) {
          paramClass = g0.d(paramClass, (Constructor)localObject, new Object[] { localApplication, SavedStateHandleSupport.b(parama) });
        } else {
          paramClass = g0.d(paramClass, (Constructor)localObject, new Object[] { SavedStateHandleSupport.b(parama) });
        }
      }
      else
      {
        if (this.e == null) {
          break label183;
        }
        paramClass = d((String)localObject, paramClass);
      }
      return paramClass;
      label183:
      throw new IllegalStateException("SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel.");
    }
    throw new IllegalStateException("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
  }
  
  public void c(i0 parami0)
  {
    r.f(parami0, "viewModel");
    Lifecycle localLifecycle = this.e;
    if (localLifecycle != null) {
      LegacySavedStateHandleController.a(parami0, this.f, localLifecycle);
    }
  }
  
  public final <T extends i0> T d(String paramString, Class<T> paramClass)
  {
    r.f(paramString, "key");
    r.f(paramClass, "modelClass");
    if (this.e != null)
    {
      boolean bool = a.class.isAssignableFrom(paramClass);
      Constructor localConstructor;
      if ((bool) && (this.b != null)) {
        localConstructor = g0.c(paramClass, g0.a());
      } else {
        localConstructor = g0.c(paramClass, g0.b());
      }
      if (localConstructor == null)
      {
        if (this.b != null) {
          paramString = this.c.a(paramClass);
        } else {
          paramString = k0.c.b.a().a(paramClass);
        }
        return paramString;
      }
      SavedStateHandleController localSavedStateHandleController = LegacySavedStateHandleController.b(this.f, this.e, paramString, this.d);
      if (bool)
      {
        Application localApplication = this.b;
        if (localApplication != null)
        {
          r.c(localApplication);
          paramString = localSavedStateHandleController.i();
          r.e(paramString, "controller.handle");
          paramString = g0.d(paramClass, localConstructor, new Object[] { localApplication, paramString });
          break label197;
        }
      }
      paramString = localSavedStateHandleController.i();
      r.e(paramString, "controller.handle");
      paramString = g0.d(paramClass, localConstructor, new Object[] { paramString });
      label197:
      paramString.setTagIfAbsent("androidx.lifecycle.savedstate.vm.tag", localSavedStateHandleController);
      return paramString;
    }
    throw new UnsupportedOperationException("SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras).");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.f0
 * JD-Core Version:    0.7.0.1
 */