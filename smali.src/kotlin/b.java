package kotlin;

import kotlin.jvm.internal.r;
import s7.a;

@Metadata(bv={}, d1={""}, d2={"", "exception", "Lkotlin/u;", "a", "kotlin-stdlib"}, k=5, mv={1, 7, 1}, xs="kotlin/ExceptionsKt")
class b
{
  public static void a(Throwable paramThrowable1, Throwable paramThrowable2)
  {
    r.f(paramThrowable1, "<this>");
    r.f(paramThrowable2, "exception");
    if (paramThrowable1 != paramThrowable2) {
      s7.b.a.a(paramThrowable1, paramThrowable2);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.b
 * JD-Core Version:    0.7.0.1
 */