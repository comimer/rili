package kotlin.collections;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"K", "V", "", "i", "", "Lkotlin/Pair;", "pairs", "l", "([Lkotlin/Pair;)Ljava/util/Map;", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "k", "([Lkotlin/Pair;)Ljava/util/HashMap;", "key", "j", "(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;", "", "Lkotlin/u;", "p", "(Ljava/util/Map;[Lkotlin/Pair;)V", "", "o", "q", "M", "destination", "r", "(Ljava/lang/Iterable;Ljava/util/Map;)Ljava/util/Map;", "t", "([Lkotlin/Pair;Ljava/util/Map;)Ljava/util/Map;", "s", "u", "map", "n", "m", "kotlin-stdlib"}, k=5, mv={1, 7, 1}, xs="kotlin/collections/MapsKt")
class p0
  extends o0
{
  public static <K, V> Map<K, V> i()
  {
    EmptyMap localEmptyMap = EmptyMap.INSTANCE;
    r.d(localEmptyMap, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.emptyMap, V of kotlin.collections.MapsKt__MapsKt.emptyMap>");
    return localEmptyMap;
  }
  
  public static <K, V> V j(Map<K, ? extends V> paramMap, K paramK)
  {
    r.f(paramMap, "<this>");
    return n0.a(paramMap, paramK);
  }
  
  public static <K, V> HashMap<K, V> k(Pair<? extends K, ? extends V>... paramVarArgs)
  {
    r.f(paramVarArgs, "pairs");
    HashMap localHashMap = new HashMap(m0.e(paramVarArgs.length));
    p(localHashMap, paramVarArgs);
    return localHashMap;
  }
  
  public static <K, V> Map<K, V> l(Pair<? extends K, ? extends V>... paramVarArgs)
  {
    r.f(paramVarArgs, "pairs");
    if (paramVarArgs.length > 0) {
      paramVarArgs = t(paramVarArgs, new LinkedHashMap(m0.e(paramVarArgs.length)));
    } else {
      paramVarArgs = m0.i();
    }
    return paramVarArgs;
  }
  
  public static final <K, V> Map<K, V> m(Map<K, ? extends V> paramMap)
  {
    r.f(paramMap, "<this>");
    int i = paramMap.size();
    if (i != 0)
    {
      if (i == 1) {
        paramMap = o0.g(paramMap);
      }
    }
    else {
      paramMap = m0.i();
    }
    return paramMap;
  }
  
  public static <K, V> Map<K, V> n(Map<? extends K, ? extends V> paramMap1, Map<? extends K, ? extends V> paramMap2)
  {
    r.f(paramMap1, "<this>");
    r.f(paramMap2, "map");
    paramMap1 = new LinkedHashMap(paramMap1);
    paramMap1.putAll(paramMap2);
    return paramMap1;
  }
  
  public static final <K, V> void o(Map<? super K, ? super V> paramMap, Iterable<? extends Pair<? extends K, ? extends V>> paramIterable)
  {
    r.f(paramMap, "<this>");
    r.f(paramIterable, "pairs");
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
    {
      paramIterable = (Pair)localIterator.next();
      paramMap.put(paramIterable.component1(), paramIterable.component2());
    }
  }
  
  public static final <K, V> void p(Map<? super K, ? super V> paramMap, Pair<? extends K, ? extends V>[] paramArrayOfPair)
  {
    r.f(paramMap, "<this>");
    r.f(paramArrayOfPair, "pairs");
    int i = paramArrayOfPair.length;
    for (int j = 0; j < i; j++)
    {
      Pair<? extends K, ? extends V> localPair = paramArrayOfPair[j];
      paramMap.put(localPair.component1(), localPair.component2());
    }
  }
  
  public static <K, V> Map<K, V> q(Iterable<? extends Pair<? extends K, ? extends V>> paramIterable)
  {
    r.f(paramIterable, "<this>");
    if ((paramIterable instanceof Collection))
    {
      Collection localCollection = (Collection)paramIterable;
      int i = localCollection.size();
      if (i != 0)
      {
        if (i != 1)
        {
          paramIterable = r(paramIterable, new LinkedHashMap(m0.e(localCollection.size())));
        }
        else
        {
          if ((paramIterable instanceof List)) {
            paramIterable = ((List)paramIterable).get(0);
          } else {
            paramIterable = paramIterable.iterator().next();
          }
          paramIterable = m0.f((Pair)paramIterable);
        }
      }
      else {
        paramIterable = m0.i();
      }
      return paramIterable;
    }
    return m(r(paramIterable, new LinkedHashMap()));
  }
  
  public static final <K, V, M extends Map<? super K, ? super V>> M r(Iterable<? extends Pair<? extends K, ? extends V>> paramIterable, M paramM)
  {
    r.f(paramIterable, "<this>");
    r.f(paramM, "destination");
    o(paramM, paramIterable);
    return paramM;
  }
  
  public static <K, V> Map<K, V> s(Map<? extends K, ? extends V> paramMap)
  {
    r.f(paramMap, "<this>");
    int i = paramMap.size();
    if (i != 0)
    {
      if (i != 1) {
        paramMap = m0.u(paramMap);
      } else {
        paramMap = o0.g(paramMap);
      }
    }
    else {
      paramMap = m0.i();
    }
    return paramMap;
  }
  
  public static final <K, V, M extends Map<? super K, ? super V>> M t(Pair<? extends K, ? extends V>[] paramArrayOfPair, M paramM)
  {
    r.f(paramArrayOfPair, "<this>");
    r.f(paramM, "destination");
    p(paramM, paramArrayOfPair);
    return paramM;
  }
  
  public static <K, V> Map<K, V> u(Map<? extends K, ? extends V> paramMap)
  {
    r.f(paramMap, "<this>");
    return new LinkedHashMap(paramMap);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.p0
 * JD-Core Version:    0.7.0.1
 */