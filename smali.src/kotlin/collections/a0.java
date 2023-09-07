package kotlin.collections;

import b8.a;
import b8.c;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import w7.l;

@Metadata(bv={}, d1={""}, d2={"T", "", "", "elements", "", "A", "", "B", "(Ljava/util/Collection;[Ljava/lang/Object;)Z", "H", "", "Lkotlin/Function1;", "predicate", "G", "predicateResultToRemove", "C", "(Ljava/lang/Iterable;Lw7/l;Z)Z", "", "F", "(Ljava/util/List;)Ljava/lang/Object;", "E", "D", "(Ljava/util/List;Lw7/l;Z)Z", "kotlin-stdlib"}, k=5, mv={1, 7, 1}, xs="kotlin/collections/CollectionsKt")
class a0
  extends z
{
  public static <T> boolean A(Collection<? super T> paramCollection, Iterable<? extends T> paramIterable)
  {
    r.f(paramCollection, "<this>");
    r.f(paramIterable, "elements");
    if ((paramIterable instanceof Collection)) {
      return paramCollection.addAll((Collection)paramIterable);
    }
    boolean bool = false;
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext()) {
      if (paramCollection.add(paramIterable.next())) {
        bool = true;
      }
    }
    return bool;
  }
  
  public static <T> boolean B(Collection<? super T> paramCollection, T[] paramArrayOfT)
  {
    r.f(paramCollection, "<this>");
    r.f(paramArrayOfT, "elements");
    return paramCollection.addAll(j.c(paramArrayOfT));
  }
  
  private static final <T> boolean C(Iterable<? extends T> paramIterable, l<? super T, Boolean> paraml, boolean paramBoolean)
  {
    paramIterable = paramIterable.iterator();
    boolean bool = false;
    while (paramIterable.hasNext()) {
      if (((Boolean)paraml.invoke(paramIterable.next())).booleanValue() == paramBoolean)
      {
        paramIterable.remove();
        bool = true;
      }
    }
    return bool;
  }
  
  private static final <T> boolean D(List<T> paramList, l<? super T, Boolean> paraml, boolean paramBoolean)
  {
    if (!(paramList instanceof RandomAccess))
    {
      r.d(paramList, "null cannot be cast to non-null type kotlin.collections.MutableIterable<T of kotlin.collections.CollectionsKt__MutableCollectionsKt.filterInPlace>");
      return C(kotlin.jvm.internal.a0.b(paramList), paraml, paramBoolean);
    }
    j0 localj0 = new c(0, t.l(paramList)).k();
    int i = 0;
    int j;
    while (localj0.hasNext())
    {
      j = localj0.nextInt();
      Object localObject = paramList.get(j);
      if (((Boolean)paraml.invoke(localObject)).booleanValue() != paramBoolean)
      {
        if (i != j) {
          paramList.set(i, localObject);
        }
        i++;
      }
    }
    if (i < paramList.size())
    {
      j = t.l(paramList);
      if (i <= j) {
        for (;;)
        {
          paramList.remove(j);
          if (j == i) {
            break;
          }
          j--;
        }
      }
      return true;
    }
    return false;
  }
  
  public static <T> boolean E(List<T> paramList, l<? super T, Boolean> paraml)
  {
    r.f(paramList, "<this>");
    r.f(paraml, "predicate");
    return D(paramList, paraml, true);
  }
  
  public static <T> T F(List<T> paramList)
  {
    r.f(paramList, "<this>");
    if (!paramList.isEmpty()) {
      return paramList.remove(t.l(paramList));
    }
    throw new NoSuchElementException("List is empty.");
  }
  
  public static <T> boolean G(Iterable<? extends T> paramIterable, l<? super T, Boolean> paraml)
  {
    r.f(paramIterable, "<this>");
    r.f(paraml, "predicate");
    return C(paramIterable, paraml, false);
  }
  
  public static final <T> boolean H(Collection<? super T> paramCollection, Iterable<? extends T> paramIterable)
  {
    r.f(paramCollection, "<this>");
    r.f(paramIterable, "elements");
    paramIterable = p.a(paramIterable, paramCollection);
    return kotlin.jvm.internal.a0.a(paramCollection).retainAll(paramIterable);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.a0
 * JD-Core Version:    0.7.0.1
 */