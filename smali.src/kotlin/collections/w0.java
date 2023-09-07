package kotlin.collections;

import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"T", "", "d", "", "elements", "g", "([Ljava/lang/Object;)Ljava/util/Set;", "Ljava/util/LinkedHashSet;", "Lkotlin/collections/LinkedHashSet;", "e", "([Ljava/lang/Object;)Ljava/util/LinkedHashSet;", "f", "kotlin-stdlib"}, k=5, mv={1, 7, 1}, xs="kotlin/collections/SetsKt")
class w0
  extends v0
{
  public static <T> Set<T> d()
  {
    return EmptySet.INSTANCE;
  }
  
  public static <T> LinkedHashSet<T> e(T... paramVarArgs)
  {
    r.f(paramVarArgs, "elements");
    return (LinkedHashSet)ArraysKt___ArraysKt.S(paramVarArgs, new LinkedHashSet(m0.e(paramVarArgs.length)));
  }
  
  public static final <T> Set<T> f(Set<? extends T> paramSet)
  {
    r.f(paramSet, "<this>");
    int i = paramSet.size();
    if (i != 0)
    {
      if (i == 1) {
        paramSet = u0.c(paramSet.iterator().next());
      }
    }
    else {
      paramSet = u0.d();
    }
    return paramSet;
  }
  
  public static <T> Set<T> g(T... paramVarArgs)
  {
    r.f(paramVarArgs, "elements");
    if (paramVarArgs.length > 0) {
      paramVarArgs = j.l0(paramVarArgs);
    } else {
      paramVarArgs = u0.d();
    }
    return paramVarArgs;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.w0
 * JD-Core Version:    0.7.0.1
 */