package kotlin;

import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"", "exception", "", "a", "Lkotlin/Result;", "Lkotlin/u;", "b", "(Ljava/lang/Object;)V", "kotlin-stdlib"}, k=2, mv={1, 7, 1})
public final class j
{
  public static final Object a(Throwable paramThrowable)
  {
    r.f(paramThrowable, "exception");
    return new Result.Failure(paramThrowable);
  }
  
  public static final void b(Object paramObject)
  {
    if (!(paramObject instanceof Result.Failure)) {
      return;
    }
    throw ((Result.Failure)paramObject).exception;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.j
 * JD-Core Version:    0.7.0.1
 */