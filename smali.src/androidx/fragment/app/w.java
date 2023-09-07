package androidx.fragment.app;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle.Event;
import androidx.lifecycle.Lifecycle.State;
import androidx.lifecycle.f0;
import androidx.lifecycle.i;
import androidx.lifecycle.k0.b;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.lifecycle.o;
import androidx.savedstate.c;
import androidx.savedstate.d;
import androidx.savedstate.e;

class w
  implements i, e, n0
{
  private final Fragment a;
  private final m0 b;
  private k0.b c;
  private o d = null;
  private d e = null;
  
  w(Fragment paramFragment, m0 paramm0)
  {
    this.a = paramFragment;
    this.b = paramm0;
  }
  
  void a(Lifecycle.Event paramEvent)
  {
    this.d.h(paramEvent);
  }
  
  void b()
  {
    if (this.d == null)
    {
      this.d = new o(this);
      this.e = d.a(this);
    }
  }
  
  boolean c()
  {
    boolean bool;
    if (this.d != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  void d(Bundle paramBundle)
  {
    this.e.d(paramBundle);
  }
  
  void e(Bundle paramBundle)
  {
    this.e.e(paramBundle);
  }
  
  void f(Lifecycle.State paramState)
  {
    this.d.o(paramState);
  }
  
  public k0.b getDefaultViewModelProviderFactory()
  {
    Object localObject1 = this.a.getDefaultViewModelProviderFactory();
    if (!localObject1.equals(this.a.mDefaultFactory))
    {
      this.c = ((k0.b)localObject1);
      return localObject1;
    }
    if (this.c == null)
    {
      Object localObject2 = null;
      Object localObject3;
      for (localObject1 = this.a.requireContext().getApplicationContext();; localObject1 = ((ContextWrapper)localObject1).getBaseContext())
      {
        localObject3 = localObject2;
        if (!(localObject1 instanceof ContextWrapper)) {
          break;
        }
        if ((localObject1 instanceof Application))
        {
          localObject3 = (Application)localObject1;
          break;
        }
      }
      this.c = new f0((Application)localObject3, this, this.a.getArguments());
    }
    return this.c;
  }
  
  public Lifecycle getLifecycle()
  {
    b();
    return this.d;
  }
  
  public c getSavedStateRegistry()
  {
    b();
    return this.e.b();
  }
  
  public m0 getViewModelStore()
  {
    b();
    return this.b;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.fragment.app.w
 * JD-Core Version:    0.7.0.1
 */