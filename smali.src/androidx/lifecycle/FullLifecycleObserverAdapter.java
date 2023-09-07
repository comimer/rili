package androidx.lifecycle;

class FullLifecycleObserverAdapter
  implements l
{
  private final g a;
  private final l b;
  
  FullLifecycleObserverAdapter(g paramg, l paraml)
  {
    this.a = paramg;
    this.b = paraml;
  }
  
  public void g(n paramn, Lifecycle.Event paramEvent)
  {
    switch (a.a[paramEvent.ordinal()])
    {
    default: 
      break;
    case 7: 
      throw new IllegalArgumentException("ON_ANY must not been send by anybody");
    case 6: 
      this.a.d(paramn);
      break;
    case 5: 
      this.a.c(paramn);
      break;
    case 4: 
      this.a.b(paramn);
      break;
    case 3: 
      this.a.f(paramn);
      break;
    case 2: 
      this.a.e(paramn);
      break;
    case 1: 
      this.a.a(paramn);
    }
    l locall = this.b;
    if (locall != null) {
      locall.g(paramn, paramEvent);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.FullLifecycleObserverAdapter
 * JD-Core Version:    0.7.0.1
 */