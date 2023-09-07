package kotlin.coroutines;

import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/coroutines/d;", "Lkotlin/coroutines/CoroutineContext$a;", "T", "Lkotlin/coroutines/c;", "continuation", "j", "Lkotlin/u;", "e", "t", "b", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public abstract interface d
  extends CoroutineContext.a
{
  public static final b t = b.a;
  
  public abstract void e(c<?> paramc);
  
  public abstract <T> c<T> j(c<? super T> paramc);
  
  @Metadata(k=3, mv={1, 7, 1}, xi=48)
  public static final class a
  {
    public static <E extends CoroutineContext.a> E a(d paramd, CoroutineContext.b<E> paramb)
    {
      r.f(paramb, "key");
      boolean bool = paramb instanceof b;
      Object localObject = null;
      if (bool)
      {
        b localb = (b)paramb;
        paramb = localObject;
        if (localb.a(paramd.getKey()))
        {
          paramd = localb.b(paramd);
          paramb = localObject;
          if ((paramd instanceof CoroutineContext.a)) {
            paramb = paramd;
          }
        }
        return paramb;
      }
      if (d.t == paramb) {
        r.d(paramd, "null cannot be cast to non-null type E of kotlin.coroutines.ContinuationInterceptor.get");
      } else {
        paramd = null;
      }
      return paramd;
    }
    
    public static CoroutineContext b(d paramd, CoroutineContext.b<?> paramb)
    {
      r.f(paramb, "key");
      if ((paramb instanceof b))
      {
        b localb = (b)paramb;
        paramb = paramd;
        if (localb.a(paramd.getKey()))
        {
          paramb = paramd;
          if (localb.b(paramd) != null) {
            paramb = EmptyCoroutineContext.INSTANCE;
          }
        }
        return paramb;
      }
      if (d.t == paramb) {
        paramd = EmptyCoroutineContext.INSTANCE;
      }
      return paramd;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/coroutines/d$b;", "Lkotlin/coroutines/CoroutineContext$b;", "Lkotlin/coroutines/d;", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class b
    implements CoroutineContext.b<d>
  {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.coroutines.d
 * JD-Core Version:    0.7.0.1
 */