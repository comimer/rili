package kotlin.coroutines;

import kotlin.Metadata;
import kotlin.jvm.internal.r;
import w7.l;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/coroutines/b;", "Lkotlin/coroutines/CoroutineContext$a;", "B", "E", "Lkotlin/coroutines/CoroutineContext$b;", "element", "b", "(Lkotlin/coroutines/CoroutineContext$a;)Lkotlin/coroutines/CoroutineContext$a;", "key", "", "a", "(Lkotlin/coroutines/CoroutineContext$b;)Z", "Lkotlin/coroutines/CoroutineContext$b;", "topmostKey", "baseKey", "Lkotlin/Function1;", "safeCast", "<init>", "(Lkotlin/coroutines/CoroutineContext$b;Lw7/l;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public abstract class b<B extends CoroutineContext.a, E extends B>
  implements CoroutineContext.b<E>
{
  private final l<CoroutineContext.a, E> a;
  private final CoroutineContext.b<?> b;
  
  public b(CoroutineContext.b<B> paramb, l<? super CoroutineContext.a, ? extends E> paraml)
  {
    this.a = paraml;
    paraml = paramb;
    if ((paramb instanceof b)) {
      paraml = ((b)paramb).b;
    }
    this.b = paraml;
  }
  
  public final boolean a(CoroutineContext.b<?> paramb)
  {
    r.f(paramb, "key");
    boolean bool;
    if ((paramb != this) && (this.b != paramb)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public final E b(CoroutineContext.a parama)
  {
    r.f(parama, "element");
    return (CoroutineContext.a)this.a.invoke(parama);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.coroutines.b
 * JD-Core Version:    0.7.0.1
 */