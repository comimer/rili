package kotlin.coroutines;

import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/coroutines/CoroutineContext;", "", "Lkotlin/coroutines/CoroutineContext$a;", "E", "Lkotlin/coroutines/CoroutineContext$b;", "key", "get", "(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;", "R", "initial", "Lkotlin/Function2;", "operation", "fold", "(Ljava/lang/Object;Lw7/p;)Ljava/lang/Object;", "context", "plus", "minusKey", "a", "b", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public abstract interface CoroutineContext
{
  public abstract <R> R fold(R paramR, p<? super R, ? super a, ? extends R> paramp);
  
  public abstract <E extends a> E get(b<E> paramb);
  
  public abstract CoroutineContext minusKey(b<?> paramb);
  
  public abstract CoroutineContext plus(CoroutineContext paramCoroutineContext);
  
  @Metadata(k=3, mv={1, 7, 1}, xi=48)
  public static final class DefaultImpls
  {
    public static CoroutineContext a(CoroutineContext paramCoroutineContext1, CoroutineContext paramCoroutineContext2)
    {
      r.f(paramCoroutineContext2, "context");
      if (paramCoroutineContext2 != EmptyCoroutineContext.INSTANCE) {
        paramCoroutineContext1 = (CoroutineContext)paramCoroutineContext2.fold(paramCoroutineContext1, CoroutineContext.plus.1.INSTANCE);
      }
      return paramCoroutineContext1;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/coroutines/CoroutineContext$a;", "Lkotlin/coroutines/CoroutineContext;", "E", "Lkotlin/coroutines/CoroutineContext$b;", "key", "get", "(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;", "getKey", "()Lkotlin/coroutines/CoroutineContext$b;", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static abstract interface a
    extends CoroutineContext
  {
    public abstract <E extends a> E get(CoroutineContext.b<E> paramb);
    
    public abstract CoroutineContext.b<?> getKey();
    
    @Metadata(k=3, mv={1, 7, 1}, xi=48)
    public static final class a
    {
      public static <R> R a(CoroutineContext.a parama, R paramR, p<? super R, ? super CoroutineContext.a, ? extends R> paramp)
      {
        r.f(paramp, "operation");
        return paramp.invoke(paramR, parama);
      }
      
      public static <E extends CoroutineContext.a> E b(CoroutineContext.a parama, CoroutineContext.b<E> paramb)
      {
        r.f(paramb, "key");
        if (r.a(parama.getKey(), paramb)) {
          r.d(parama, "null cannot be cast to non-null type E of kotlin.coroutines.CoroutineContext.Element.get");
        } else {
          parama = null;
        }
        return parama;
      }
      
      public static CoroutineContext c(CoroutineContext.a parama, CoroutineContext.b<?> paramb)
      {
        r.f(paramb, "key");
        Object localObject = parama;
        if (r.a(parama.getKey(), paramb)) {
          localObject = EmptyCoroutineContext.INSTANCE;
        }
        return localObject;
      }
      
      public static CoroutineContext d(CoroutineContext.a parama, CoroutineContext paramCoroutineContext)
      {
        r.f(paramCoroutineContext, "context");
        return CoroutineContext.DefaultImpls.a(parama, paramCoroutineContext);
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/coroutines/CoroutineContext$b;", "Lkotlin/coroutines/CoroutineContext$a;", "E", "", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static abstract interface b<E extends CoroutineContext.a> {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.coroutines.CoroutineContext
 * JD-Core Version:    0.7.0.1
 */