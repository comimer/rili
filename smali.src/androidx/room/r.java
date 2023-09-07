package androidx.room;

import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.CoroutineContext.a;
import kotlin.coroutines.CoroutineContext.a.a;
import kotlin.coroutines.CoroutineContext.b;
import kotlin.coroutines.d;
import kotlinx.coroutines.s1;
import kotlinx.coroutines.s1.a;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Landroidx/room/r;", "Lkotlin/coroutines/CoroutineContext$a;", "Lkotlin/u;", "a", "f", "Ljava/util/concurrent/atomic/AtomicInteger;", "Ljava/util/concurrent/atomic/AtomicInteger;", "referenceCount", "Lkotlinx/coroutines/s1;", "b", "Lkotlinx/coroutines/s1;", "transactionThreadControlJob", "Lkotlin/coroutines/d;", "c", "Lkotlin/coroutines/d;", "()Lkotlin/coroutines/d;", "transactionDispatcher", "Lkotlin/coroutines/CoroutineContext$b;", "getKey", "()Lkotlin/coroutines/CoroutineContext$b;", "key", "<init>", "(Lkotlinx/coroutines/s1;Lkotlin/coroutines/d;)V", "d", "room-ktx_release"}, k=1, mv={1, 4, 0})
public final class r
  implements CoroutineContext.a
{
  public static final a d = new a(null);
  private final AtomicInteger a;
  private final s1 b;
  private final d c;
  
  public r(s1 params1, d paramd)
  {
    this.b = params1;
    this.c = paramd;
    this.a = new AtomicInteger(0);
  }
  
  public final void a()
  {
    this.a.incrementAndGet();
  }
  
  public final d b()
  {
    return this.c;
  }
  
  public final void f()
  {
    int i = this.a.decrementAndGet();
    if (i >= 0)
    {
      if (i == 0) {
        s1.a.a(this.b, null, 1, null);
      }
      return;
    }
    throw new IllegalStateException("Transaction was never started or was already released.");
  }
  
  public <R> R fold(R paramR, p<? super R, ? super CoroutineContext.a, ? extends R> paramp)
  {
    kotlin.jvm.internal.r.g(paramp, "operation");
    return CoroutineContext.a.a.a(this, paramR, paramp);
  }
  
  public <E extends CoroutineContext.a> E get(CoroutineContext.b<E> paramb)
  {
    kotlin.jvm.internal.r.g(paramb, "key");
    return CoroutineContext.a.a.b(this, paramb);
  }
  
  public CoroutineContext.b<r> getKey()
  {
    return d;
  }
  
  public CoroutineContext minusKey(CoroutineContext.b<?> paramb)
  {
    kotlin.jvm.internal.r.g(paramb, "key");
    return CoroutineContext.a.a.c(this, paramb);
  }
  
  public CoroutineContext plus(CoroutineContext paramCoroutineContext)
  {
    kotlin.jvm.internal.r.g(paramCoroutineContext, "context");
    return CoroutineContext.a.a.d(this, paramCoroutineContext);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Landroidx/room/r$a;", "Lkotlin/coroutines/CoroutineContext$b;", "Landroidx/room/r;", "<init>", "()V", "room-ktx_release"}, k=1, mv={1, 4, 0})
  public static final class a
    implements CoroutineContext.b<r>
  {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.room.r
 * JD-Core Version:    0.7.0.1
 */