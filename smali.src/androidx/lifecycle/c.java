package androidx.lifecycle;

import java.io.Closeable;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.v1;

@Metadata(bv={}, d1={""}, d2={"Landroidx/lifecycle/c;", "Ljava/io/Closeable;", "Lkotlinx/coroutines/k0;", "Lkotlin/u;", "close", "Lkotlin/coroutines/CoroutineContext;", "a", "Lkotlin/coroutines/CoroutineContext;", "V", "()Lkotlin/coroutines/CoroutineContext;", "coroutineContext", "context", "<init>", "(Lkotlin/coroutines/CoroutineContext;)V", "lifecycle-viewmodel-ktx_release"}, k=1, mv={1, 6, 0})
public final class c
  implements Closeable, k0
{
  private final CoroutineContext a;
  
  public c(CoroutineContext paramCoroutineContext)
  {
    this.a = paramCoroutineContext;
  }
  
  public CoroutineContext V()
  {
    return this.a;
  }
  
  public void close()
  {
    v1.d(V(), null, 1, null);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.c
 * JD-Core Version:    0.7.0.1
 */