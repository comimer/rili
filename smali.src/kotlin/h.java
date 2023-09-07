package kotlin;

import kotlin.jvm.internal.r;
import w7.a;

@Metadata(bv={}, d1={""}, d2={"T", "Lkotlin/Function0;", "initializer", "Lkotlin/f;", "b", "Lkotlin/LazyThreadSafetyMode;", "mode", "a", "kotlin-stdlib"}, k=5, mv={1, 7, 1}, xs="kotlin/LazyKt")
class h
{
  public static <T> f<T> a(LazyThreadSafetyMode paramLazyThreadSafetyMode, a<? extends T> parama)
  {
    r.f(paramLazyThreadSafetyMode, "mode");
    r.f(parama, "initializer");
    int i = a.a[paramLazyThreadSafetyMode.ordinal()];
    if (i != 1)
    {
      if (i != 2)
      {
        if (i == 3) {
          paramLazyThreadSafetyMode = new UnsafeLazyImpl(parama);
        } else {
          throw new NoWhenBranchMatchedException();
        }
      }
      else {
        paramLazyThreadSafetyMode = new SafePublicationLazyImpl(parama);
      }
    }
    else {
      paramLazyThreadSafetyMode = new SynchronizedLazyImpl(parama, null, 2, null);
    }
    return paramLazyThreadSafetyMode;
  }
  
  public static <T> f<T> b(a<? extends T> parama)
  {
    r.f(parama, "initializer");
    return new SynchronizedLazyImpl(parama, null, 2, null);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.h
 * JD-Core Version:    0.7.0.1
 */