package kotlin.coroutines;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.internal.r;
import kotlin.u;
import w7.l;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"T", "Lkotlin/Function1;", "Lkotlin/coroutines/c;", "", "completion", "Lkotlin/u;", "a", "(Lw7/l;Lkotlin/coroutines/c;)V", "R", "Lkotlin/Function2;", "receiver", "b", "(Lw7/p;Ljava/lang/Object;Lkotlin/coroutines/c;)V", "kotlin-stdlib"}, k=2, mv={1, 7, 1})
public final class e
{
  public static final <T> void a(l<? super c<? super T>, ? extends Object> paraml, c<? super T> paramc)
  {
    r.f(paraml, "<this>");
    r.f(paramc, "completion");
    paraml = a.c(a.a(paraml, paramc));
    paramc = Result.Companion;
    paraml.resumeWith(Result.constructor-impl(u.a));
  }
  
  public static final <R, T> void b(p<? super R, ? super c<? super T>, ? extends Object> paramp, R paramR, c<? super T> paramc)
  {
    r.f(paramp, "<this>");
    r.f(paramc, "completion");
    paramR = a.c(a.b(paramp, paramR, paramc));
    paramp = Result.Companion;
    paramR.resumeWith(Result.constructor-impl(u.a));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.coroutines.e
 * JD-Core Version:    0.7.0.1
 */