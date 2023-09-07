package kotlin.coroutines.jvm.internal;

import kotlin.Metadata;
import kotlin.coroutines.c;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"T", "Lkotlin/coroutines/c;", "completion", "a", "frame", "Lkotlin/u;", "b", "c", "kotlin-stdlib"}, k=2, mv={1, 7, 1})
public final class f
{
  public static final <T> c<T> a(c<? super T> paramc)
  {
    r.f(paramc, "completion");
    return paramc;
  }
  
  public static final void b(c<?> paramc)
  {
    r.f(paramc, "frame");
  }
  
  public static final void c(c<?> paramc)
  {
    r.f(paramc, "frame");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.coroutines.jvm.internal.f
 * JD-Core Version:    0.7.0.1
 */