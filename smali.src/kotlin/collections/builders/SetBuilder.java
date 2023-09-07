package kotlin.collections.builders;

import java.io.NotSerializableException;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.g;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/builders/SetBuilder;", "E", "", "Lkotlin/collections/g;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "writeReplace", "", "build", "", "isEmpty", "element", "contains", "(Ljava/lang/Object;)Z", "Lkotlin/u;", "clear", "add", "remove", "", "iterator", "", "elements", "addAll", "removeAll", "retainAll", "Lkotlin/collections/builders/MapBuilder;", "backing", "Lkotlin/collections/builders/MapBuilder;", "", "getSize", "()I", "size", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "()V", "initialCapacity", "(I)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class SetBuilder<E>
  extends g<E>
  implements Serializable
{
  private final MapBuilder<E, ?> backing;
  
  public SetBuilder()
  {
    this(new MapBuilder());
  }
  
  public SetBuilder(int paramInt)
  {
    this(new MapBuilder(paramInt));
  }
  
  public SetBuilder(MapBuilder<E, ?> paramMapBuilder)
  {
    this.backing = paramMapBuilder;
  }
  
  private final Object writeReplace()
  {
    if (this.backing.isReadOnly$kotlin_stdlib()) {
      return new SerializedCollection(this, 1);
    }
    throw new NotSerializableException("The set cannot be serialized while it is being built.");
  }
  
  public boolean add(E paramE)
  {
    boolean bool;
    if (this.backing.addKey$kotlin_stdlib(paramE) >= 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean addAll(Collection<? extends E> paramCollection)
  {
    r.f(paramCollection, "elements");
    this.backing.checkIsMutable$kotlin_stdlib();
    return super.addAll(paramCollection);
  }
  
  public final Set<E> build()
  {
    this.backing.build();
    return this;
  }
  
  public void clear()
  {
    this.backing.clear();
  }
  
  public boolean contains(Object paramObject)
  {
    return this.backing.containsKey(paramObject);
  }
  
  public int getSize()
  {
    return this.backing.size();
  }
  
  public boolean isEmpty()
  {
    return this.backing.isEmpty();
  }
  
  public Iterator<E> iterator()
  {
    return this.backing.keysIterator$kotlin_stdlib();
  }
  
  public boolean remove(Object paramObject)
  {
    boolean bool;
    if (this.backing.removeKey$kotlin_stdlib(paramObject) >= 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean removeAll(Collection<? extends Object> paramCollection)
  {
    r.f(paramCollection, "elements");
    this.backing.checkIsMutable$kotlin_stdlib();
    return super.removeAll(paramCollection);
  }
  
  public boolean retainAll(Collection<? extends Object> paramCollection)
  {
    r.f(paramCollection, "elements");
    this.backing.checkIsMutable$kotlin_stdlib();
    return super.retainAll(paramCollection);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.builders.SetBuilder
 * JD-Core Version:    0.7.0.1
 */