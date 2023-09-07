package kotlin.coroutines.jvm.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.c;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/coroutines/jvm/internal/RestrictedContinuationImpl;", "Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlin/coroutines/c;", "", "completion", "<init>", "(Lkotlin/coroutines/c;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public abstract class RestrictedContinuationImpl
  extends BaseContinuationImpl
{
  public RestrictedContinuationImpl(c<Object> paramc)
  {
    super(paramc);
    if (paramc != null)
    {
      int i;
      if (paramc.getContext() == EmptyCoroutineContext.INSTANCE) {
        i = 1;
      } else {
        i = 0;
      }
      if (i == 0) {
        throw new IllegalArgumentException("Coroutines with restricted suspension must have EmptyCoroutineContext".toString());
      }
    }
  }
  
  public CoroutineContext getContext()
  {
    return EmptyCoroutineContext.INSTANCE;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.coroutines.jvm.internal.RestrictedContinuationImpl
 * JD-Core Version:    0.7.0.1
 */