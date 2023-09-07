package kotlin.jvm.internal;

import java.io.Serializable;
import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/jvm/internal/Lambda;", "R", "Lkotlin/jvm/internal/p;", "Ljava/io/Serializable;", "", "toString", "", "arity", "I", "getArity", "()I", "<init>", "(I)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public abstract class Lambda<R>
  implements p<R>, Serializable
{
  private final int arity;
  
  public Lambda(int paramInt)
  {
    this.arity = paramInt;
  }
  
  public int getArity()
  {
    return this.arity;
  }
  
  public String toString()
  {
    String str = v.l(this);
    r.e(str, "renderLambdaToString(this)");
    return str;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.Lambda
 * JD-Core Version:    0.7.0.1
 */