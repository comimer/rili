package kotlin.coroutines.jvm.internal;

import kotlin.Metadata;
import kotlin.coroutines.c;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/coroutines/jvm/internal/SuspendLambda;", "Lkotlin/coroutines/jvm/internal/ContinuationImpl;", "Lkotlin/jvm/internal/p;", "", "", "toString", "", "arity", "I", "getArity", "()I", "Lkotlin/coroutines/c;", "completion", "<init>", "(ILkotlin/coroutines/c;)V", "(I)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public abstract class SuspendLambda
  extends ContinuationImpl
  implements p<Object>
{
  private final int arity;
  
  public SuspendLambda(int paramInt)
  {
    this(paramInt, null);
  }
  
  public SuspendLambda(int paramInt, c<Object> paramc)
  {
    super(paramc);
    this.arity = paramInt;
  }
  
  public int getArity()
  {
    return this.arity;
  }
  
  public String toString()
  {
    String str;
    if (getCompletion() == null)
    {
      str = v.k(this);
      r.e(str, "renderLambdaToString(this)");
    }
    else
    {
      str = super.toString();
    }
    return str;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.coroutines.jvm.internal.SuspendLambda
 * JD-Core Version:    0.7.0.1
 */