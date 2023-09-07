package kotlin.jvm.internal;

import kotlin.Metadata;
import kotlin.reflect.KVariance;
import kotlin.reflect.q;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/jvm/internal/b0;", "Lkotlin/reflect/q;", "a", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class b0
  implements q
{
  public static final a a = new a(null);
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/jvm/internal/b0$a;", "", "Lkotlin/reflect/q;", "typeParameter", "", "a", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class a
  {
    public final String a(q paramq)
    {
      r.f(paramq, "typeParameter");
      StringBuilder localStringBuilder = new StringBuilder();
      KVariance localKVariance = paramq.l();
      int i = a.a[localKVariance.ordinal()];
      if (i != 2)
      {
        if (i == 3) {
          localStringBuilder.append("out ");
        }
      }
      else {
        localStringBuilder.append("in ");
      }
      localStringBuilder.append(paramq.getName());
      paramq = localStringBuilder.toString();
      r.e(paramq, "StringBuilder().apply(builderAction).toString()");
      return paramq;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.b0
 * JD-Core Version:    0.7.0.1
 */