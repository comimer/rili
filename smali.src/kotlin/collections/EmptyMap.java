package kotlin.collections;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import x7.a;

@Metadata(d1={""}, d2={"Lkotlin/collections/EmptyMap;", "", "", "", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "()V", "entries", "", "", "getEntries", "()Ljava/util/Set;", "keys", "getKeys", "serialVersionUID", "", "size", "", "getSize", "()I", "values", "", "getValues", "()Ljava/util/Collection;", "containsKey", "", "key", "containsValue", "value", "equals", "other", "get", "hashCode", "isEmpty", "readResolve", "toString", "", "kotlin-stdlib"}, k=1, mv={1, 7, 1}, xi=48)
final class EmptyMap
  implements Map, Serializable, a
{
  public static final EmptyMap INSTANCE = new EmptyMap();
  private static final long serialVersionUID = 8246714829545688274L;
  
  private final Object readResolve()
  {
    return INSTANCE;
  }
  
  public void clear()
  {
    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
  }
  
  public boolean containsKey(Object paramObject)
  {
    return false;
  }
  
  public boolean containsValue(Void paramVoid)
  {
    r.f(paramVoid, "value");
    return false;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool;
    if (((paramObject instanceof Map)) && (((Map)paramObject).isEmpty())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public Void get(Object paramObject)
  {
    return null;
  }
  
  public Set<Map.Entry> getEntries()
  {
    return EmptySet.INSTANCE;
  }
  
  public Set<Object> getKeys()
  {
    return EmptySet.INSTANCE;
  }
  
  public int getSize()
  {
    return 0;
  }
  
  public Collection getValues()
  {
    return EmptyList.INSTANCE;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public boolean isEmpty()
  {
    return true;
  }
  
  public Void put(Object paramObject, Void paramVoid)
  {
    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
  }
  
  public void putAll(Map paramMap)
  {
    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
  }
  
  public Void remove(Object paramObject)
  {
    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
  }
  
  public String toString()
  {
    return "{}";
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.EmptyMap
 * JD-Core Version:    0.7.0.1
 */