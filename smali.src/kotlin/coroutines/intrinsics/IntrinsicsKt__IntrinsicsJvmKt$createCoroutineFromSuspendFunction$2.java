package kotlin.coroutines.intrinsics;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.c;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.j;
import w7.l;

@Metadata(bv={}, d1={""}, d2={"kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2", "Lkotlin/coroutines/jvm/internal/ContinuationImpl;", "Lkotlin/Result;", "", "result", "invokeSuspend", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "label", "I", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2
  extends ContinuationImpl
{
  private int label;
  
  public IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2(c<Object> paramc, CoroutineContext paramCoroutineContext, l<? super c<Object>, ? extends Object> paraml)
  {
    super(paramc, paramCoroutineContext);
  }
  
  protected Object invokeSuspend(Object paramObject)
  {
    int i = this.label;
    if (i != 0)
    {
      if (i == 1)
      {
        this.label = 2;
        j.b(paramObject);
      }
      else
      {
        throw new IllegalStateException("This coroutine had already completed".toString());
      }
    }
    else
    {
      this.label = 1;
      j.b(paramObject);
      paramObject = this.$block.invoke(this);
    }
    return paramObject;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineFromSuspendFunction.2
 * JD-Core Version:    0.7.0.1
 */