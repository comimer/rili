package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.n;
import kotlin.jvm.internal.r;
import x7.a;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/h;", "T", "", "", "isEmpty", "element", "contains", "(Ljava/lang/Object;)Z", "elements", "containsAll", "", "iterator", "", "", "toArray", "()[Ljava/lang/Object;", "a", "[Ljava/lang/Object;", "getValues", "values", "b", "Z", "isVarargs", "()Z", "", "c", "()I", "size", "<init>", "([Ljava/lang/Object;Z)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
final class h<T>
  implements Collection<T>, a
{
  private final T[] a;
  private final boolean b;
  
  public h(T[] paramArrayOfT, boolean paramBoolean)
  {
    this.a = paramArrayOfT;
    this.b = paramBoolean;
  }
  
  public boolean add(T paramT)
  {
    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
  }
  
  public boolean addAll(Collection<? extends T> paramCollection)
  {
    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
  }
  
  public int c()
  {
    return this.a.length;
  }
  
  public void clear()
  {
    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
  }
  
  public boolean contains(Object paramObject)
  {
    return j.u(this.a, paramObject);
  }
  
  public boolean containsAll(Collection<? extends Object> paramCollection)
  {
    r.f(paramCollection, "elements");
    boolean bool1 = paramCollection.isEmpty();
    boolean bool2 = true;
    if (bool1)
    {
      bool1 = bool2;
    }
    else
    {
      paramCollection = paramCollection.iterator();
      do
      {
        bool1 = bool2;
        if (!paramCollection.hasNext()) {
          break;
        }
      } while (contains(paramCollection.next()));
      bool1 = false;
    }
    return bool1;
  }
  
  public boolean isEmpty()
  {
    boolean bool;
    if (this.a.length == 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public Iterator<T> iterator()
  {
    return kotlin.jvm.internal.h.a(this.a);
  }
  
  public boolean remove(Object paramObject)
  {
    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
  }
  
  public boolean removeAll(Collection<? extends Object> paramCollection)
  {
    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
  }
  
  public boolean retainAll(Collection<? extends Object> paramCollection)
  {
    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
  }
  
  public final Object[] toArray()
  {
    return u.b(this.a, this.b);
  }
  
  public <T> T[] toArray(T[] paramArrayOfT)
  {
    r.f(paramArrayOfT, "array");
    return n.b(this, paramArrayOfT);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.h
 * JD-Core Version:    0.7.0.1
 */