package kotlin.coroutines;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/coroutines/EmptyCoroutineContext;", "Lkotlin/coroutines/CoroutineContext;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "readResolve", "Lkotlin/coroutines/CoroutineContext$a;", "E", "Lkotlin/coroutines/CoroutineContext$b;", "key", "get", "(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;", "R", "initial", "Lkotlin/Function2;", "operation", "fold", "(Ljava/lang/Object;Lw7/p;)Ljava/lang/Object;", "context", "plus", "minusKey", "", "hashCode", "", "toString", "", "serialVersionUID", "J", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class EmptyCoroutineContext
  implements CoroutineContext, Serializable
{
  public static final EmptyCoroutineContext INSTANCE = new EmptyCoroutineContext();
  private static final long serialVersionUID = 0L;
  
  private final Object readResolve()
  {
    return INSTANCE;
  }
  
  public <R> R fold(R paramR, p<? super R, ? super CoroutineContext.a, ? extends R> paramp)
  {
    r.f(paramp, "operation");
    return paramR;
  }
  
  public <E extends CoroutineContext.a> E get(CoroutineContext.b<E> paramb)
  {
    r.f(paramb, "key");
    return null;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public CoroutineContext minusKey(CoroutineContext.b<?> paramb)
  {
    r.f(paramb, "key");
    return this;
  }
  
  public CoroutineContext plus(CoroutineContext paramCoroutineContext)
  {
    r.f(paramCoroutineContext, "context");
    return paramCoroutineContext;
  }
  
  public String toString()
  {
    return "EmptyCoroutineContext";
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.coroutines.EmptyCoroutineContext
 * JD-Core Version:    0.7.0.1
 */