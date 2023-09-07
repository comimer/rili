package androidx.lifecycle;

class CompositeGeneratedAdaptersObserver
  implements l
{
  private final h[] a;
  
  CompositeGeneratedAdaptersObserver(h[] paramArrayOfh)
  {
    this.a = paramArrayOfh;
  }
  
  public void g(n paramn, Lifecycle.Event paramEvent)
  {
    t localt = new t();
    h[] arrayOfh = this.a;
    int i = arrayOfh.length;
    int j = 0;
    for (int k = 0; k < i; k++) {
      arrayOfh[k].a(paramn, paramEvent, false, localt);
    }
    arrayOfh = this.a;
    i = arrayOfh.length;
    for (k = j; k < i; k++) {
      arrayOfh[k].a(paramn, paramEvent, true, localt);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.CompositeGeneratedAdaptersObserver
 * JD-Core Version:    0.7.0.1
 */