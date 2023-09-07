package androidx.databinding;

import androidx.lifecycle.n;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

class q<T>
  extends WeakReference<ViewDataBinding>
{
  private final m<T> a;
  protected final int b;
  private T c;
  
  public q(ViewDataBinding paramViewDataBinding, int paramInt, m<T> paramm, ReferenceQueue<ViewDataBinding> paramReferenceQueue)
  {
    super(paramViewDataBinding, paramReferenceQueue);
    this.b = paramInt;
    this.a = paramm;
  }
  
  protected ViewDataBinding a()
  {
    ViewDataBinding localViewDataBinding = (ViewDataBinding)get();
    if (localViewDataBinding == null) {
      e();
    }
    return localViewDataBinding;
  }
  
  public T b()
  {
    return this.c;
  }
  
  public void c(n paramn)
  {
    this.a.a(paramn);
  }
  
  public void d(T paramT)
  {
    e();
    this.c = paramT;
    if (paramT != null) {
      this.a.c(paramT);
    }
  }
  
  public boolean e()
  {
    Object localObject = this.c;
    boolean bool;
    if (localObject != null)
    {
      this.a.b(localObject);
      bool = true;
    }
    else
    {
      bool = false;
    }
    this.c = null;
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.databinding.q
 * JD-Core Version:    0.7.0.1
 */