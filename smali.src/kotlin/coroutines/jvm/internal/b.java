package kotlin.coroutines.jvm.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.c;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/coroutines/jvm/internal/b;", "Lkotlin/coroutines/c;", "", "Lkotlin/Result;", "result", "Lkotlin/u;", "resumeWith", "(Ljava/lang/Object;)V", "", "toString", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class b
  implements c<Object>
{
  public static final b a = new b();
  
  public CoroutineContext getContext()
  {
    throw new IllegalStateException("This continuation is already complete".toString());
  }
  
  public void resumeWith(Object paramObject)
  {
    throw new IllegalStateException("This continuation is already complete".toString());
  }
  
  public String toString()
  {
    return "This continuation is already complete";
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.coroutines.jvm.internal.b
 * JD-Core Version:    0.7.0.1
 */