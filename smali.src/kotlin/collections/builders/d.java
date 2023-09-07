package kotlin.collections.builders;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.g;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/builders/d;", "E", "", "Lkotlin/collections/g;", "", "isEmpty", "element", "contains", "(Ljava/lang/Object;)Z", "Lkotlin/u;", "clear", "add", "", "elements", "addAll", "remove", "", "iterator", "removeAll", "retainAll", "Lkotlin/collections/builders/MapBuilder;", "a", "Lkotlin/collections/builders/MapBuilder;", "backing", "", "getSize", "()I", "size", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class d<E>
  extends g<E>
{
  private final MapBuilder<E, ?> a;
  
  public d(MapBuilder<E, ?> paramMapBuilder)
  {
    this.a = paramMapBuilder;
  }
  
  public boolean add(E paramE)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean addAll(Collection<? extends E> paramCollection)
  {
    r.f(paramCollection, "elements");
    throw new UnsupportedOperationException();
  }
  
  public void clear()
  {
    this.a.clear();
  }
  
  public boolean contains(Object paramObject)
  {
    return this.a.containsKey(paramObject);
  }
  
  public int getSize()
  {
    return this.a.size();
  }
  
  public boolean isEmpty()
  {
    return this.a.isEmpty();
  }
  
  public Iterator<E> iterator()
  {
    return this.a.keysIterator$kotlin_stdlib();
  }
  
  public boolean remove(Object paramObject)
  {
    boolean bool;
    if (this.a.removeKey$kotlin_stdlib(paramObject) >= 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
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
 * Qualified Name:     kotlin.collections.builders.d
 * JD-Core Version:    0.7.0.1
 */