package kotlin.collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"R", "", "Ljava/lang/Class;", "klass", "", "N", "", "C", "destination", "O", "(Ljava/lang/Iterable;Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;", "T", "", "Lkotlin/u;", "P", "kotlin-stdlib"}, k=5, mv={1, 7, 1}, xs="kotlin/collections/CollectionsKt")
class c0
  extends b0
{
  public static <R> List<R> N(Iterable<?> paramIterable, Class<R> paramClass)
  {
    r.f(paramIterable, "<this>");
    r.f(paramClass, "klass");
    return (List)O(paramIterable, new ArrayList(), paramClass);
  }
  
  public static final <C extends Collection<? super R>, R> C O(Iterable<?> paramIterable, C paramC, Class<R> paramClass)
  {
    r.f(paramIterable, "<this>");
    r.f(paramC, "destination");
    r.f(paramClass, "klass");
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext())
    {
      Object localObject = paramIterable.next();
      if (paramClass.isInstance(localObject)) {
        paramC.add(localObject);
      }
    }
    return paramC;
  }
  
  public static <T> void P(List<T> paramList)
  {
    r.f(paramList, "<this>");
    Collections.reverse(paramList);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.c0
 * JD-Core Version:    0.7.0.1
 */