package kotlin.collections;

import java.util.Collections;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.builders.SetBuilder;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"T", "element", "", "c", "(Ljava/lang/Object;)Ljava/util/Set;", "E", "", "capacity", "", "b", "builder", "a", "kotlin-stdlib"}, k=5, mv={1, 7, 1}, xs="kotlin/collections/SetsKt")
class v0
{
  public static <E> Set<E> a(Set<E> paramSet)
  {
    r.f(paramSet, "builder");
    return ((SetBuilder)paramSet).build();
  }
  
  public static <E> Set<E> b(int paramInt)
  {
    return new SetBuilder(paramInt);
  }
  
  public static <T> Set<T> c(T paramT)
  {
    paramT = Collections.singleton(paramT);
    r.e(paramT, "singleton(element)");
    return paramT;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.v0
 * JD-Core Version:    0.7.0.1
 */