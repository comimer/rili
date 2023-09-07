package kotlin.coroutines.jvm.internal;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.j;
import kotlin.jvm.internal.r;
import kotlin.u;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;", "Lkotlin/coroutines/c;", "", "Lkotlin/coroutines/jvm/internal/c;", "Ljava/io/Serializable;", "Lkotlin/Result;", "result", "Lkotlin/u;", "resumeWith", "(Ljava/lang/Object;)V", "invokeSuspend", "(Ljava/lang/Object;)Ljava/lang/Object;", "releaseIntercepted", "completion", "create", "value", "", "toString", "Ljava/lang/StackTraceElement;", "getStackTraceElement", "Lkotlin/coroutines/c;", "getCompletion", "()Lkotlin/coroutines/c;", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/c;", "callerFrame", "<init>", "(Lkotlin/coroutines/c;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public abstract class BaseContinuationImpl
  implements kotlin.coroutines.c<Object>, c, Serializable
{
  private final kotlin.coroutines.c<Object> completion;
  
  public BaseContinuationImpl(kotlin.coroutines.c<Object> paramc)
  {
    this.completion = paramc;
  }
  
  public kotlin.coroutines.c<u> create(Object paramObject, kotlin.coroutines.c<?> paramc)
  {
    r.f(paramc, "completion");
    throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
  }
  
  public kotlin.coroutines.c<u> create(kotlin.coroutines.c<?> paramc)
  {
    r.f(paramc, "completion");
    throw new UnsupportedOperationException("create(Continuation) has not been overridden");
  }
  
  public c getCallerFrame()
  {
    Object localObject = this.completion;
    if ((localObject instanceof c)) {
      localObject = (c)localObject;
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public final kotlin.coroutines.c<Object> getCompletion()
  {
    return this.completion;
  }
  
  public StackTraceElement getStackTraceElement()
  {
    return e.d(this);
  }
  
  protected abstract Object invokeSuspend(Object paramObject);
  
  protected void releaseIntercepted() {}
  
  public final void resumeWith(Object paramObject)
  {
    Object localObject = this;
    do
    {
      f.b((kotlin.coroutines.c)localObject);
      BaseContinuationImpl localBaseContinuationImpl = (BaseContinuationImpl)localObject;
      localObject = localBaseContinuationImpl.completion;
      r.c(localObject);
      try
      {
        paramObject = localBaseContinuationImpl.invokeSuspend(paramObject);
        if (paramObject == a.d()) {
          return;
        }
        paramObject = Result.constructor-impl(paramObject);
      }
      finally
      {
        paramObject = Result.Companion;
        paramObject = Result.constructor-impl(j.a(localThrowable));
      }
      localBaseContinuationImpl.releaseIntercepted();
    } while ((localObject instanceof BaseContinuationImpl));
    ((kotlin.coroutines.c)localObject).resumeWith(paramObject);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Continuation at ");
    Object localObject = getStackTraceElement();
    if (localObject == null) {
      localObject = getClass().getName();
    }
    localStringBuilder.append(localObject);
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.coroutines.jvm.internal.BaseContinuationImpl
 * JD-Core Version:    0.7.0.1
 */