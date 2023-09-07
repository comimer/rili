package androidx.lifecycle;

import androidx.savedstate.c;

final class SavedStateHandleController
  implements l
{
  private final String a;
  private boolean b = false;
  private final c0 c;
  
  SavedStateHandleController(String paramString, c0 paramc0)
  {
    this.a = paramString;
    this.c = paramc0;
  }
  
  public void g(n paramn, Lifecycle.Event paramEvent)
  {
    if (paramEvent == Lifecycle.Event.ON_DESTROY)
    {
      this.b = false;
      paramn.getLifecycle().c(this);
    }
  }
  
  void h(c paramc, Lifecycle paramLifecycle)
  {
    if (!this.b)
    {
      this.b = true;
      paramLifecycle.a(this);
      paramc.h(this.a, this.c.d());
      return;
    }
    throw new IllegalStateException("Already attached to lifecycleOwner");
  }
  
  c0 i()
  {
    return this.c;
  }
  
  boolean j()
  {
    return this.b;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.SavedStateHandleController
 * JD-Core Version:    0.7.0.1
 */