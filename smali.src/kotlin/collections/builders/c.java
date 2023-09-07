package kotlin.collections.builders;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map.Entry;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/builders/c;", "K", "V", "Lkotlin/collections/builders/a;", "", "", "isEmpty", "", "element", "h", "Lkotlin/u;", "clear", "k", "", "elements", "addAll", "j", "", "iterator", "containsAll", "removeAll", "retainAll", "Lkotlin/collections/builders/MapBuilder;", "a", "Lkotlin/collections/builders/MapBuilder;", "getBacking", "()Lkotlin/collections/builders/MapBuilder;", "backing", "", "getSize", "()I", "size", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class c<K, V>
  extends a<Map.Entry<K, V>, K, V>
{
  private final MapBuilder<K, V> a;
  
  public c(MapBuilder<K, V> paramMapBuilder)
  {
    this.a = paramMapBuilder;
  }
  
  public boolean addAll(Collection<? extends Map.Entry<K, V>> paramCollection)
  {
    r.f(paramCollection, "elements");
    throw new UnsupportedOperationException();
  }
  
  public void clear()
  {
    this.a.clear();
  }
  
  public boolean containsAll(Collection<? extends Object> paramCollection)
  {
    r.f(paramCollection, "elements");
    return this.a.containsAllEntries$kotlin_stdlib(paramCollection);
  }
  
  public int getSize()
  {
    return this.a.size();
  }
  
  public boolean h(Map.Entry<? extends K, ? extends V> paramEntry)
  {
    r.f(paramEntry, "element");
    return this.a.containsEntry$kotlin_stdlib(paramEntry);
  }
  
  public boolean isEmpty()
  {
    return this.a.isEmpty();
  }
  
  public Iterator<Map.Entry<K, V>> iterator()
  {
    return this.a.entriesIterator$kotlin_stdlib();
  }
  
  public boolean j(Map.Entry paramEntry)
  {
    r.f(paramEntry, "element");
    return this.a.removeEntry$kotlin_stdlib(paramEntry);
  }
  
  public boolean k(Map.Entry<K, V> paramEntry)
  {
    r.f(paramEntry, "element");
    throw new UnsupportedOperationException();
  }
  
  public boolean removeAll(Collection<? extends Object> paramCollection)
  {
    r.f(paramCollection, "elements");
    this.a.checkIsMutable$kotlin_stdlib();
    return super.removeAll(paramCollection);
  }
  
  public boolean retainAll(Collection<? extends Object> paramCollection)
  {
    r.f(paramCollection, "elements");
    this.a.checkIsMutable$kotlin_stdlib();
    return super.retainAll(paramCollection);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.builders.c
 * JD-Core Version:    0.7.0.1
 */