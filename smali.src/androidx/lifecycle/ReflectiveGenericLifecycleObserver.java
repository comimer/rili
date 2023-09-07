package androidx.lifecycle;

@Deprecated
class ReflectiveGenericLifecycleObserver
  implements l
{
  private final Object a;
  private final b.a b;
  
  ReflectiveGenericLifecycleObserver(Object paramObject)
  {
    this.a = paramObject;
    this.b = b.c.c(paramObject.getClass());
  }
  
  public void g(n paramn, Lifecycle.Event paramEvent)
  {
    this.b.a(paramn, paramEvent, this.a);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.ReflectiveGenericLifecycleObserver
 * JD-Core Version:    0.7.0.1
 */