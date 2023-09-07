package kotlin.collections;

import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"K", "V", "", "key", "a", "(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-stdlib"}, k=5, mv={1, 7, 1}, xs="kotlin/collections/MapsKt")
class n0
{
  public static final <K, V> V a(Map<K, ? extends V> paramMap, K paramK)
  {
    r.f(paramMap, "<this>");
    if ((paramMap instanceof l0)) {
      return ((l0)paramMap).d(paramK);
    }
    Object localObject = paramMap.get(paramK);
    if ((localObject == null) && (!paramMap.containsKey(paramK)))
    {
      paramMap = new StringBuilder();
      paramMap.append("Key ");
      paramMap.append(paramK);
      paramMap.append(" is missing in the map.");
      throw new NoSuchElementException(paramMap.toString());
    }
    return localObject;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.n0
 * JD-Core Version:    0.7.0.1
 */