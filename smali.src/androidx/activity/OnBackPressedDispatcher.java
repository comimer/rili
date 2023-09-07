package androidx.activity;

import android.annotation.SuppressLint;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Lifecycle.Event;
import androidx.lifecycle.Lifecycle.State;
import androidx.lifecycle.l;
import androidx.lifecycle.n;
import java.util.ArrayDeque;
import java.util.Iterator;

public final class OnBackPressedDispatcher
{
  private final Runnable a;
  final ArrayDeque<b> b = new ArrayDeque();
  
  public OnBackPressedDispatcher(Runnable paramRunnable)
  {
    this.a = paramRunnable;
  }
  
  @SuppressLint({"LambdaLast"})
  public void a(n paramn, b paramb)
  {
    paramn = paramn.getLifecycle();
    if (paramn.b() == Lifecycle.State.DESTROYED) {
      return;
    }
    paramb.a(new LifecycleOnBackPressedCancellable(paramn, paramb));
  }
  
  a b(b paramb)
  {
    this.b.add(paramb);
    a locala = new a(paramb);
    paramb.a(locala);
    return locala;
  }
  
  public void c()
  {
    Object localObject = this.b.descendingIterator();
    while (((Iterator)localObject).hasNext())
    {
      b localb = (b)((Iterator)localObject).next();
      if (localb.c())
      {
        localb.b();
        return;
      }
    }
    localObject = this.a;
    if (localObject != null) {
      ((Runnable)localObject).run();
    }
  }
  
  private class LifecycleOnBackPressedCancellable
    implements l, a
  {
    private final Lifecycle a;
    private final b b;
    private a c;
    
    LifecycleOnBackPressedCancellable(Lifecycle paramLifecycle, b paramb)
    {
      this.a = paramLifecycle;
      this.b = paramb;
      paramLifecycle.a(this);
    }
    
    public void cancel()
    {
      this.a.c(this);
      this.b.e(this);
      a locala = this.c;
      if (locala != null)
      {
        locala.cancel();
        this.c = null;
      }
    }
    
    public void g(n paramn, Lifecycle.Event paramEvent)
    {
      if (paramEvent == Lifecycle.Event.ON_START)
      {
        this.c = OnBackPressedDispatcher.this.b(this.b);
      }
      else if (paramEvent == Lifecycle.Event.ON_STOP)
      {
        paramn = this.c;
        if (paramn != null) {
          paramn.cancel();
        }
      }
      else if (paramEvent == Lifecycle.Event.ON_DESTROY)
      {
        cancel();
      }
    }
  }
  
  private class a
    implements a
  {
    private final b a;
    
    a(b paramb)
    {
      this.a = paramb;
    }
    
    public void cancel()
    {
      OnBackPressedDispatcher.this.b.remove(this.a);
      this.a.e(this);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.activity.OnBackPressedDispatcher
 * JD-Core Version:    0.7.0.1
 */