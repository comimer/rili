package androidx.lifecycle;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.w0;

@Metadata(bv={}, d1={""}, d2={"Landroidx/lifecycle/x;", "Lkotlinx/coroutines/CoroutineDispatcher;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "s0", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "Lkotlin/u;", "q0", "Landroidx/lifecycle/e;", "b", "Landroidx/lifecycle/e;", "dispatchQueue", "<init>", "()V", "lifecycle-runtime-ktx_release"}, k=1, mv={1, 5, 1})
public final class x
  extends CoroutineDispatcher
{
  public final e b = new e();
  
  public void q0(CoroutineContext paramCoroutineContext, Runnable paramRunnable)
  {
    r.f(paramCoroutineContext, "context");
    r.f(paramRunnable, "block");
    this.b.c(paramCoroutineContext, paramRunnable);
  }
  
  public boolean s0(CoroutineContext paramCoroutineContext)
  {
    r.f(paramCoroutineContext, "context");
    if (w0.c().u0().s0(paramCoroutineContext)) {
      return true;
    }
    return this.b.b() ^ true;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.x
 * JD-Core Version:    0.7.0.1
 */