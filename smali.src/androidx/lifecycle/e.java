package androidx.lifecycle;

import android.annotation.SuppressLint;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Queue;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.w0;

@Metadata(bv={}, d1={""}, d2={"Landroidx/lifecycle/e;", "", "Ljava/lang/Runnable;", "runnable", "Lkotlin/u;", "e", "g", "h", "f", "d", "", "b", "Lkotlin/coroutines/CoroutineContext;", "context", "c", "a", "Z", "paused", "finished", "isDraining", "Ljava/util/Queue;", "Ljava/util/Queue;", "queue", "<init>", "()V", "lifecycle-runtime-ktx_release"}, k=1, mv={1, 5, 1})
public final class e
{
  private boolean a = true;
  private boolean b;
  private boolean c;
  private final Queue<Runnable> d = new ArrayDeque();
  
  private final void e(Runnable paramRunnable)
  {
    if (this.d.offer(paramRunnable))
    {
      d();
      return;
    }
    throw new IllegalStateException("cannot enqueue any more runnables".toString());
  }
  
  public final boolean b()
  {
    boolean bool;
    if ((!this.b) && (this.a)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  @SuppressLint({"WrongThread"})
  public final void c(CoroutineContext paramCoroutineContext, final Runnable paramRunnable)
  {
    r.f(paramCoroutineContext, "context");
    r.f(paramRunnable, "runnable");
    d2 locald2 = w0.c().u0();
    if ((!locald2.s0(paramCoroutineContext)) && (!b())) {
      e(paramRunnable);
    } else {
      locald2.q0(paramCoroutineContext, new a(this, paramRunnable));
    }
  }
  
  public final void d()
  {
    if (this.c) {
      return;
    }
    try
    {
      this.c = true;
      while (((this.d.isEmpty() ^ true)) && (b()))
      {
        Runnable localRunnable = (Runnable)this.d.poll();
        if (localRunnable != null) {
          localRunnable.run();
        }
      }
      return;
    }
    finally
    {
      this.c = false;
    }
  }
  
  public final void f()
  {
    this.b = true;
    d();
  }
  
  public final void g()
  {
    this.a = true;
  }
  
  public final void h()
  {
    if (!this.a) {
      return;
    }
    if ((this.b ^ true))
    {
      this.a = false;
      d();
      return;
    }
    throw new IllegalStateException("Cannot resume a finished dispatcher".toString());
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/u;", "<anonymous>"}, k=3, mv={1, 5, 1})
  static final class a
    implements Runnable
  {
    a(e parame, Runnable paramRunnable) {}
    
    public final void run()
    {
      e.a(this.a, paramRunnable);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.e
 * JD-Core Version:    0.7.0.1
 */