package kotlin.coroutines;

import kotlin.Metadata;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/coroutines/a;", "Lkotlin/coroutines/CoroutineContext$a;", "Lkotlin/coroutines/CoroutineContext$b;", "key", "Lkotlin/coroutines/CoroutineContext$b;", "getKey", "()Lkotlin/coroutines/CoroutineContext$b;", "<init>", "(Lkotlin/coroutines/CoroutineContext$b;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public abstract class a
  implements CoroutineContext.a
{
  private final CoroutineContext.b<?> key;
  
  public a(CoroutineContext.b<?> paramb)
  {
    this.key = paramb;
  }
  
  public <R> R fold(R paramR, p<? super R, ? super CoroutineContext.a, ? extends R> paramp)
  {
    return CoroutineContext.a.a.a(this, paramR, paramp);
  }
  
  public <E extends CoroutineContext.a> E get(CoroutineContext.b<E> paramb)
  {
    return CoroutineContext.a.a.b(this, paramb);
  }
  
  public CoroutineContext.b<?> getKey()
  {
    return this.key;
  }
  
  public CoroutineContext minusKey(CoroutineContext.b<?> paramb)
  {
    return CoroutineContext.a.a.c(this, paramb);
  }
  
  public CoroutineContext plus(CoroutineContext paramCoroutineContext)
  {
    return CoroutineContext.a.a.d(this, paramCoroutineContext);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.coroutines.a
 * JD-Core Version:    0.7.0.1
 */