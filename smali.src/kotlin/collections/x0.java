package kotlin.collections;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"T", "", "element", "i", "(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;", "", "elements", "h", "k", "j", "kotlin-stdlib"}, k=5, mv={1, 7, 1}, xs="kotlin/collections/SetsKt")
class x0
  extends w0
{
  public static <T> Set<T> h(Set<? extends T> paramSet, Iterable<? extends T> paramIterable)
  {
    r.f(paramSet, "<this>");
    r.f(paramIterable, "elements");
    paramIterable = p.a(paramIterable, paramSet);
    if (paramIterable.isEmpty()) {
      return t.I0(paramSet);
    }
    if ((paramIterable instanceof Set))
    {
      LinkedHashSet localLinkedHashSet = new LinkedHashSet();
      Iterator localIterator = paramSet.iterator();
      while (localIterator.hasNext())
      {
        paramSet = localIterator.next();
        if (!paramIterable.contains(paramSet)) {
          localLinkedHashSet.add(paramSet);
        }
      }
      return localLinkedHashSet;
    }
    paramSet = new LinkedHashSet(paramSet);
    paramSet.removeAll(paramIterable);
    return paramSet;
  }
  
  public static <T> Set<T> i(Set<? extends T> paramSet, T paramT)
  {
    r.f(paramSet, "<this>");
    LinkedHashSet localLinkedHashSet = new LinkedHashSet(m0.e(paramSet.size()));
    paramSet = paramSet.iterator();
    int i = 0;
    while (paramSet.hasNext())
    {
      Object localObject = paramSet.next();
      int j = 1;
      int k = i;
      int m = j;
      if (i == 0)
      {
        k = i;
        m = j;
        if (r.a(localObject, paramT))
        {
          k = 1;
          m = 0;
        }
      }
      i = k;
      if (m != 0)
      {
        localLinkedHashSet.add(localObject);
        i = k;
      }
    }
    return localLinkedHashSet;
  }
  
  public static <T> Set<T> j(Set<? extends T> paramSet, Iterable<? extends T> paramIterable)
  {
    r.f(paramSet, "<this>");
    r.f(paramIterable, "elements");
    Object localObject = w.v(paramIterable);
    int i;
    if (localObject != null)
    {
      i = ((Number)localObject).intValue();
      i = paramSet.size() + i;
    }
    else
    {
      i = paramSet.size() * 2;
    }
    localObject = new LinkedHashSet(m0.e(i));
    ((AbstractCollection)localObject).addAll(paramSet);
    t.A((Collection)localObject, paramIterable);
    return localObject;
  }
  
  public static <T> Set<T> k(Set<? extends T> paramSet, T paramT)
  {
    r.f(paramSet, "<this>");
    LinkedHashSet localLinkedHashSet = new LinkedHashSet(m0.e(paramSet.size() + 1));
    localLinkedHashSet.addAll(paramSet);
    localLinkedHashSet.add(paramT);
    return localLinkedHashSet;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.x0
 * JD-Core Version:    0.7.0.1
 */