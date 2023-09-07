package kotlin.collections.builders;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.d;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/builders/e;", "V", "", "Lkotlin/collections/d;", "", "isEmpty", "element", "contains", "(Ljava/lang/Object;)Z", "add", "", "elements", "addAll", "Lkotlin/u;", "clear", "", "iterator", "remove", "removeAll", "retainAll", "Lkotlin/collections/builders/MapBuilder;", "a", "Lkotlin/collections/builders/MapBuilder;", "getBacking", "()Lkotlin/collections/builders/MapBuilder;", "backing", "", "c", "()I", "size", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class e<V>
  extends d<V>
{
  private final MapBuilder<?, V> a;
  
  public e(MapBuilder<?, V> paramMapBuilder)
  {
    this.a = paramMapBuilder;
  }
  
  public boolean add(V paramV)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean addAll(Collection<? extends V> paramCollection)
  {
    r.f(paramCollection, "elements");
    throw new UnsupportedOperationException();
  }
  
  public int c()
  {
    return this.a.size();
  }
  
  public void clear()
  {
    this.a.clear();
  }
  
  public boolean contains(Object paramObject)
  {
    return this.a.containsValue(paramObject);
  }
  
  public boolean isEmpty()
  {
    return this.a.isEmpty();
  }
  
  public Iterator<V> iterator()
  {
    return this.a.valuesIterator$kotlin_stdlib();
  }
  
  public boolean remove(Object paramObject)
  {
    return this.a.removeValue$kotlin_stdlib(paramObject);
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
 * Qualified Name:     kotlin.collections.builders.e
 * JD-Core Version:    0.7.0.1
 */