package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import x7.a;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/b;", "E", "Lkotlin/collections/AbstractCollection;", "", "", "index", "get", "(I)Ljava/lang/Object;", "", "iterator", "element", "indexOf", "(Ljava/lang/Object;)I", "lastIndexOf", "", "listIterator", "fromIndex", "toIndex", "subList", "", "other", "", "equals", "hashCode", "<init>", "()V", "a", "b", "c", "d", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public abstract class b<E>
  extends AbstractCollection<E>
  implements List<E>
{
  public static final a a = new a(null);
  
  public void add(int paramInt, E paramE)
  {
    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
  }
  
  public boolean addAll(int paramInt, Collection<? extends E> paramCollection)
  {
    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof List)) {
      return false;
    }
    return a.d(this, (Collection)paramObject);
  }
  
  public abstract E get(int paramInt);
  
  public int hashCode()
  {
    return a.e(this);
  }
  
  public int indexOf(E paramE)
  {
    Iterator localIterator = iterator();
    for (int i = 0; localIterator.hasNext(); i++) {
      if (r.a(localIterator.next(), paramE)) {
        return i;
      }
    }
    i = -1;
    return i;
  }
  
  public Iterator<E> iterator()
  {
    return new b();
  }
  
  public int lastIndexOf(E paramE)
  {
    ListIterator localListIterator = listIterator(size());
    while (localListIterator.hasPrevious()) {
      if (r.a(localListIterator.previous(), paramE)) {
        return localListIterator.nextIndex();
      }
    }
    int i = -1;
    return i;
  }
  
  public ListIterator<E> listIterator()
  {
    return new c(0);
  }
  
  public ListIterator<E> listIterator(int paramInt)
  {
    return new c(paramInt);
  }
  
  public E remove(int paramInt)
  {
    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
  }
  
  public E set(int paramInt, E paramE)
  {
    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
  }
  
  public List<E> subList(int paramInt1, int paramInt2)
  {
    return new d(this, paramInt1, paramInt2);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/b$a;", "", "", "index", "size", "Lkotlin/u;", "a", "(II)V", "b", "fromIndex", "toIndex", "c", "(III)V", "", "e", "(Ljava/util/Collection;)I", "other", "", "d", "(Ljava/util/Collection;Ljava/util/Collection;)Z", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class a
  {
    public final void a(int paramInt1, int paramInt2)
    {
      if ((paramInt1 >= 0) && (paramInt1 < paramInt2)) {
        return;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("index: ");
      localStringBuilder.append(paramInt1);
      localStringBuilder.append(", size: ");
      localStringBuilder.append(paramInt2);
      throw new IndexOutOfBoundsException(localStringBuilder.toString());
    }
    
    public final void b(int paramInt1, int paramInt2)
    {
      if ((paramInt1 >= 0) && (paramInt1 <= paramInt2)) {
        return;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("index: ");
      localStringBuilder.append(paramInt1);
      localStringBuilder.append(", size: ");
      localStringBuilder.append(paramInt2);
      throw new IndexOutOfBoundsException(localStringBuilder.toString());
    }
    
    public final void c(int paramInt1, int paramInt2, int paramInt3)
    {
      if ((paramInt1 >= 0) && (paramInt2 <= paramInt3))
      {
        if (paramInt1 <= paramInt2) {
          return;
        }
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("fromIndex: ");
        localStringBuilder.append(paramInt1);
        localStringBuilder.append(" > toIndex: ");
        localStringBuilder.append(paramInt2);
        throw new IllegalArgumentException(localStringBuilder.toString());
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("fromIndex: ");
      localStringBuilder.append(paramInt1);
      localStringBuilder.append(", toIndex: ");
      localStringBuilder.append(paramInt2);
      localStringBuilder.append(", size: ");
      localStringBuilder.append(paramInt3);
      throw new IndexOutOfBoundsException(localStringBuilder.toString());
    }
    
    public final boolean d(Collection<?> paramCollection1, Collection<?> paramCollection2)
    {
      r.f(paramCollection1, "c");
      r.f(paramCollection2, "other");
      if (paramCollection1.size() != paramCollection2.size()) {
        return false;
      }
      paramCollection2 = paramCollection2.iterator();
      paramCollection1 = paramCollection1.iterator();
      while (paramCollection1.hasNext()) {
        if (!r.a(paramCollection1.next(), paramCollection2.next())) {
          return false;
        }
      }
      return true;
    }
    
    public final int e(Collection<?> paramCollection)
    {
      r.f(paramCollection, "c");
      paramCollection = paramCollection.iterator();
      int j;
      for (int i = 1; paramCollection.hasNext(); i = i * 31 + j)
      {
        Object localObject = paramCollection.next();
        if (localObject != null) {
          j = localObject.hashCode();
        } else {
          j = 0;
        }
      }
      return i;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/b$b;", "", "", "hasNext", "next", "()Ljava/lang/Object;", "", "a", "I", "b", "()I", "c", "(I)V", "index", "<init>", "(Lkotlin/collections/b;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  private class b
    implements Iterator<E>, a
  {
    private int a;
    
    protected final int b()
    {
      return this.a;
    }
    
    protected final void c(int paramInt)
    {
      this.a = paramInt;
    }
    
    public boolean hasNext()
    {
      boolean bool;
      if (this.a < this.b.size()) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public E next()
    {
      if (hasNext())
      {
        b localb = this.b;
        int i = this.a;
        this.a = (i + 1);
        return localb.get(i);
      }
      throw new NoSuchElementException();
    }
    
    public void remove()
    {
      throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/b$c;", "Lkotlin/collections/b$b;", "Lkotlin/collections/b;", "", "", "hasPrevious", "", "nextIndex", "previous", "()Ljava/lang/Object;", "previousIndex", "index", "<init>", "(Lkotlin/collections/b;I)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  private class c
    extends b<E>.b
    implements ListIterator<E>
  {
    public c()
    {
      super();
      int i;
      b.a.b(i, b.this.size());
      c(i);
    }
    
    public void add(E paramE)
    {
      throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
    
    public boolean hasPrevious()
    {
      boolean bool;
      if (b() > 0) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public int nextIndex()
    {
      return b();
    }
    
    public E previous()
    {
      if (hasPrevious())
      {
        b localb = b.this;
        c(b() - 1);
        return localb.get(b());
      }
      throw new NoSuchElementException();
    }
    
    public int previousIndex()
    {
      return b() - 1;
    }
    
    public void set(E paramE)
    {
      throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/b$d;", "E", "Lkotlin/collections/b;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "", "index", "get", "(I)Ljava/lang/Object;", "b", "Lkotlin/collections/b;", "list", "c", "I", "fromIndex", "d", "_size", "()I", "size", "toIndex", "<init>", "(Lkotlin/collections/b;II)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  private static final class d<E>
    extends b<E>
    implements RandomAccess
  {
    private final b<E> b;
    private final int c;
    private int d;
    
    public d(b<? extends E> paramb, int paramInt1, int paramInt2)
    {
      this.b = paramb;
      this.c = paramInt1;
      b.a.c(paramInt1, paramInt2, paramb.size());
      this.d = (paramInt2 - paramInt1);
    }
    
    public int c()
    {
      return this.d;
    }
    
    public E get(int paramInt)
    {
      b.a.a(paramInt, this.d);
      return this.b.get(this.c + paramInt);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.b
 * JD-Core Version:    0.7.0.1
 */