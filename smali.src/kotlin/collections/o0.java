package kotlin.collections;

import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.builders.MapBuilder;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"K", "V", "Lkotlin/Pair;", "pair", "", "f", "", "c", "", "capacity", "d", "builder", "b", "Ljava/util/Comparator;", "comparator", "Ljava/util/SortedMap;", "h", "g", "expectedSize", "e", "kotlin-stdlib"}, k=5, mv={1, 7, 1}, xs="kotlin/collections/MapsKt")
class o0
  extends n0
{
  public static <K, V> Map<K, V> b(Map<K, V> paramMap)
  {
    r.f(paramMap, "builder");
    return ((MapBuilder)paramMap).build();
  }
  
  public static <K, V> Map<K, V> c()
  {
    return new MapBuilder();
  }
  
  public static <K, V> Map<K, V> d(int paramInt)
  {
    return new MapBuilder(paramInt);
  }
  
  public static int e(int paramInt)
  {
    if (paramInt >= 0) {
      if (paramInt < 3) {
        paramInt++;
      } else if (paramInt < 1073741824) {
        paramInt = (int)(paramInt / 0.75F + 1.0F);
      } else {
        paramInt = 2147483647;
      }
    }
    return paramInt;
  }
  
  public static <K, V> Map<K, V> f(Pair<? extends K, ? extends V> paramPair)
  {
    r.f(paramPair, "pair");
    paramPair = Collections.singletonMap(paramPair.getFirst(), paramPair.getSecond());
    r.e(paramPair, "singletonMap(pair.first, pair.second)");
    return paramPair;
  }
  
  public static final <K, V> Map<K, V> g(Map<? extends K, ? extends V> paramMap)
  {
    r.f(paramMap, "<this>");
    paramMap = (Map.Entry)paramMap.entrySet().iterator().next();
    paramMap = Collections.singletonMap(paramMap.getKey(), paramMap.getValue());
    r.e(paramMap, "with(entries.iterator().…ingletonMap(key, value) }");
    return paramMap;
  }
  
  public static <K, V> SortedMap<K, V> h(Map<? extends K, ? extends V> paramMap, Comparator<? super K> paramComparator)
  {
    r.f(paramMap, "<this>");
    r.f(paramComparator, "comparator");
    paramComparator = new TreeMap(paramComparator);
    paramComparator.putAll(paramMap);
    return paramComparator;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.o0
 * JD-Core Version:    0.7.0.1
 */