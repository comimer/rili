package kotlin.coroutines;

import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/coroutines/c;", "T", "", "Lkotlin/Result;", "result", "Lkotlin/u;", "resumeWith", "(Ljava/lang/Object;)V", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public abstract interface c<T>
{
  public abstract CoroutineContext getContext();
  
  public abstract void resumeWith(Object paramObject);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.coroutines.c
 * JD-Core Version:    0.7.0.1
 */