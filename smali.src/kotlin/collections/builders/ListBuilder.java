package kotlin.collections.builders;

import java.io.NotSerializableException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.b.a;
import kotlin.collections.e;
import kotlin.collections.i;
import kotlin.collections.i.a;
import kotlin.collections.j;
import kotlin.jvm.internal.r;
import x7.d;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/builders/ListBuilder;", "E", "", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "Lkotlin/collections/e;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "writeReplace", "", "minCapacity", "Lkotlin/u;", "ensureCapacity", "checkIsMutable", "n", "ensureExtraCapacity", "", "other", "", "contentEquals", "i", "insertAtInternal", "element", "addAtInternal", "(ILjava/lang/Object;)V", "", "elements", "addAllInternal", "removeAtInternal", "(I)Ljava/lang/Object;", "rangeOffset", "rangeLength", "removeRangeInternal", "retain", "retainOrRemoveAllInternal", "build", "isEmpty", "index", "get", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "indexOf", "(Ljava/lang/Object;)I", "lastIndexOf", "", "iterator", "", "listIterator", "add", "(Ljava/lang/Object;)Z", "addAll", "clear", "removeAt", "remove", "removeAll", "retainAll", "fromIndex", "toIndex", "subList", "T", "", "destination", "toArray", "([Ljava/lang/Object;)[Ljava/lang/Object;", "()[Ljava/lang/Object;", "equals", "hashCode", "", "toString", "array", "[Ljava/lang/Object;", "offset", "I", "length", "isReadOnly", "Z", "backing", "Lkotlin/collections/builders/ListBuilder;", "root", "isEffectivelyReadOnly", "()Z", "getSize", "()I", "size", "<init>", "([Ljava/lang/Object;IIZLkotlin/collections/builders/ListBuilder;Lkotlin/collections/builders/ListBuilder;)V", "()V", "initialCapacity", "(I)V", "a", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class ListBuilder<E>
  extends e<E>
  implements RandomAccess, Serializable
{
  private E[] array;
  private final ListBuilder<E> backing;
  private boolean isReadOnly;
  private int length;
  private int offset;
  private final ListBuilder<E> root;
  
  public ListBuilder()
  {
    this(10);
  }
  
  public ListBuilder(int paramInt)
  {
    this(b.d(paramInt), 0, 0, false, null, null);
  }
  
  private ListBuilder(E[] paramArrayOfE, int paramInt1, int paramInt2, boolean paramBoolean, ListBuilder<E> paramListBuilder1, ListBuilder<E> paramListBuilder2)
  {
    this.array = paramArrayOfE;
    this.offset = paramInt1;
    this.length = paramInt2;
    this.isReadOnly = paramBoolean;
    this.backing = paramListBuilder1;
    this.root = paramListBuilder2;
  }
  
  private final void addAllInternal(int paramInt1, Collection<? extends E> paramCollection, int paramInt2)
  {
    ListBuilder localListBuilder = this.backing;
    if (localListBuilder != null)
    {
      localListBuilder.addAllInternal(paramInt1, paramCollection, paramInt2);
      this.array = this.backing.array;
      this.length += paramInt2;
    }
    else
    {
      insertAtInternal(paramInt1, paramInt2);
      int i = 0;
      paramCollection = paramCollection.iterator();
      while (i < paramInt2)
      {
        this.array[(paramInt1 + i)] = paramCollection.next();
        i++;
      }
    }
  }
  
  private final void addAtInternal(int paramInt, E paramE)
  {
    ListBuilder localListBuilder = this.backing;
    if (localListBuilder != null)
    {
      localListBuilder.addAtInternal(paramInt, paramE);
      this.array = this.backing.array;
      this.length += 1;
    }
    else
    {
      insertAtInternal(paramInt, 1);
      this.array[paramInt] = paramE;
    }
  }
  
  private final void checkIsMutable()
  {
    if (!isEffectivelyReadOnly()) {
      return;
    }
    throw new UnsupportedOperationException();
  }
  
  private final boolean contentEquals(List<?> paramList)
  {
    return b.a(this.array, this.offset, this.length, paramList);
  }
  
  private final void ensureCapacity(int paramInt)
  {
    if (this.backing == null)
    {
      if (paramInt >= 0)
      {
        Object[] arrayOfObject = this.array;
        if (paramInt > arrayOfObject.length)
        {
          paramInt = i.a.a(arrayOfObject.length, paramInt);
          this.array = b.e(this.array, paramInt);
        }
        return;
      }
      throw new OutOfMemoryError();
    }
    throw new IllegalStateException();
  }
  
  private final void ensureExtraCapacity(int paramInt)
  {
    ensureCapacity(this.length + paramInt);
  }
  
  private final void insertAtInternal(int paramInt1, int paramInt2)
  {
    ensureExtraCapacity(paramInt2);
    Object[] arrayOfObject = this.array;
    j.e(arrayOfObject, arrayOfObject, paramInt1 + paramInt2, paramInt1, this.offset + this.length);
    this.length += paramInt2;
  }
  
  private final boolean isEffectivelyReadOnly()
  {
    if (!this.isReadOnly)
    {
      ListBuilder localListBuilder = this.root;
      if ((localListBuilder == null) || (!localListBuilder.isReadOnly)) {
        return false;
      }
    }
    boolean bool = true;
    return bool;
  }
  
  private final E removeAtInternal(int paramInt)
  {
    Object localObject = this.backing;
    if (localObject != null)
    {
      localObject = ((ListBuilder)localObject).removeAtInternal(paramInt);
      this.length -= 1;
      return localObject;
    }
    Object[] arrayOfObject = this.array;
    localObject = arrayOfObject[paramInt];
    j.e(arrayOfObject, arrayOfObject, paramInt, paramInt + 1, this.offset + this.length);
    b.f(this.array, this.offset + this.length - 1);
    this.length -= 1;
    return localObject;
  }
  
  private final void removeRangeInternal(int paramInt1, int paramInt2)
  {
    Object localObject = this.backing;
    if (localObject != null)
    {
      ((ListBuilder)localObject).removeRangeInternal(paramInt1, paramInt2);
    }
    else
    {
      localObject = this.array;
      j.e((Object[])localObject, (Object[])localObject, paramInt1, paramInt1 + paramInt2, this.length);
      localObject = this.array;
      paramInt1 = this.length;
      b.g((Object[])localObject, paramInt1 - paramInt2, paramInt1);
    }
    this.length -= paramInt2;
  }
  
  private final int retainOrRemoveAllInternal(int paramInt1, int paramInt2, Collection<? extends E> paramCollection, boolean paramBoolean)
  {
    Object localObject = this.backing;
    if (localObject != null)
    {
      paramInt1 = ((ListBuilder)localObject).retainOrRemoveAllInternal(paramInt1, paramInt2, paramCollection, paramBoolean);
      this.length -= paramInt1;
      return paramInt1;
    }
    int i = 0;
    int j = 0;
    while (i < paramInt2)
    {
      localObject = this.array;
      int k = paramInt1 + i;
      if (paramCollection.contains(localObject[k]) == paramBoolean)
      {
        localObject = this.array;
        i++;
        localObject[(j + paramInt1)] = localObject[k];
        j++;
      }
      else
      {
        i++;
      }
    }
    i = paramInt2 - j;
    paramCollection = this.array;
    j.e(paramCollection, paramCollection, paramInt1 + j, paramInt2 + paramInt1, this.length);
    paramCollection = this.array;
    paramInt1 = this.length;
    b.g(paramCollection, paramInt1 - i, paramInt1);
    this.length -= i;
    return i;
  }
  
  private final Object writeReplace()
  {
    if (isEffectivelyReadOnly()) {
      return new SerializedCollection(this, 0);
    }
    throw new NotSerializableException("The list cannot be serialized while it is being built.");
  }
  
  public void add(int paramInt, E paramE)
  {
    checkIsMutable();
    kotlin.collections.b.a.b(paramInt, this.length);
    addAtInternal(this.offset + paramInt, paramE);
  }
  
  public boolean add(E paramE)
  {
    checkIsMutable();
    addAtInternal(this.offset + this.length, paramE);
    return true;
  }
  
  public boolean addAll(int paramInt, Collection<? extends E> paramCollection)
  {
    r.f(paramCollection, "elements");
    checkIsMutable();
    kotlin.collections.b.a.b(paramInt, this.length);
    int i = paramCollection.size();
    addAllInternal(this.offset + paramInt, paramCollection, i);
    boolean bool;
    if (i > 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean addAll(Collection<? extends E> paramCollection)
  {
    r.f(paramCollection, "elements");
    checkIsMutable();
    int i = paramCollection.size();
    addAllInternal(this.offset + this.length, paramCollection, i);
    boolean bool;
    if (i > 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public final List<E> build()
  {
    if (this.backing == null)
    {
      checkIsMutable();
      this.isReadOnly = true;
      return this;
    }
    throw new IllegalStateException();
  }
  
  public void clear()
  {
    checkIsMutable();
    removeRangeInternal(this.offset, this.length);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool;
    if ((paramObject != this) && ((!(paramObject instanceof List)) || (!contentEquals((List)paramObject)))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public E get(int paramInt)
  {
    kotlin.collections.b.a.a(paramInt, this.length);
    return this.array[(this.offset + paramInt)];
  }
  
  public int getSize()
  {
    return this.length;
  }
  
  public int hashCode()
  {
    return b.b(this.array, this.offset, this.length);
  }
  
  public int indexOf(Object paramObject)
  {
    for (int i = 0; i < this.length; i++) {
      if (r.a(this.array[(this.offset + i)], paramObject)) {
        return i;
      }
    }
    return -1;
  }
  
  public boolean isEmpty()
  {
    boolean bool;
    if (this.length == 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public Iterator<E> iterator()
  {
    return new a(this, 0);
  }
  
  public int lastIndexOf(Object paramObject)
  {
    for (int i = this.length - 1; i >= 0; i--) {
      if (r.a(this.array[(this.offset + i)], paramObject)) {
        return i;
      }
    }
    return -1;
  }
  
  public ListIterator<E> listIterator()
  {
    return new a(this, 0);
  }
  
  public ListIterator<E> listIterator(int paramInt)
  {
    kotlin.collections.b.a.b(paramInt, this.length);
    return new a(this, paramInt);
  }
  
  public boolean remove(Object paramObject)
  {
    checkIsMutable();
    int i = indexOf(paramObject);
    if (i >= 0) {
      remove(i);
    }
    boolean bool;
    if (i >= 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean removeAll(Collection<? extends Object> paramCollection)
  {
    r.f(paramCollection, "elements");
    checkIsMutable();
    int i = this.offset;
    int j = this.length;
    boolean bool = false;
    if (retainOrRemoveAllInternal(i, j, paramCollection, false) > 0) {
      bool = true;
    }
    return bool;
  }
  
  public E removeAt(int paramInt)
  {
    checkIsMutable();
    kotlin.collections.b.a.a(paramInt, this.length);
    return removeAtInternal(this.offset + paramInt);
  }
  
  public boolean retainAll(Collection<? extends Object> paramCollection)
  {
    r.f(paramCollection, "elements");
    checkIsMutable();
    int i = this.offset;
    int j = this.length;
    boolean bool = true;
    if (retainOrRemoveAllInternal(i, j, paramCollection, true) <= 0) {
      bool = false;
    }
    return bool;
  }
  
  public E set(int paramInt, E paramE)
  {
    checkIsMutable();
    kotlin.collections.b.a.a(paramInt, this.length);
    Object[] arrayOfObject = this.array;
    int i = this.offset;
    Object localObject = arrayOfObject[(i + paramInt)];
    arrayOfObject[(i + paramInt)] = paramE;
    return localObject;
  }
  
  public List<E> subList(int paramInt1, int paramInt2)
  {
    kotlin.collections.b.a.c(paramInt1, paramInt2, this.length);
    Object[] arrayOfObject = this.array;
    int i = this.offset;
    boolean bool = this.isReadOnly;
    ListBuilder localListBuilder = this.root;
    if (localListBuilder == null) {
      localListBuilder = this;
    }
    return new ListBuilder(arrayOfObject, i + paramInt1, paramInt2 - paramInt1, bool, this, localListBuilder);
  }
  
  public Object[] toArray()
  {
    Object[] arrayOfObject = this.array;
    int i = this.offset;
    arrayOfObject = j.i(arrayOfObject, i, this.length + i);
    r.d(arrayOfObject, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
    return arrayOfObject;
  }
  
  public <T> T[] toArray(T[] paramArrayOfT)
  {
    r.f(paramArrayOfT, "destination");
    int i = paramArrayOfT.length;
    int j = this.length;
    if (i < j)
    {
      arrayOfObject = this.array;
      i = this.offset;
      paramArrayOfT = Arrays.copyOfRange(arrayOfObject, i, j + i, paramArrayOfT.getClass());
      r.e(paramArrayOfT, "copyOfRange(array, offse…h, destination.javaClass)");
      return paramArrayOfT;
    }
    Object[] arrayOfObject = this.array;
    r.d(arrayOfObject, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.builders.ListBuilder.toArray>");
    j = this.offset;
    j.e(arrayOfObject, paramArrayOfT, 0, j, this.length + j);
    j = paramArrayOfT.length;
    i = this.length;
    if (j > i) {
      paramArrayOfT[i] = null;
    }
    return paramArrayOfT;
  }
  
  public String toString()
  {
    return b.c(this.array, this.offset, this.length);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/builders/ListBuilder$a;", "E", "", "", "hasPrevious", "hasNext", "", "previousIndex", "nextIndex", "previous", "()Ljava/lang/Object;", "next", "element", "Lkotlin/u;", "set", "(Ljava/lang/Object;)V", "add", "remove", "Lkotlin/collections/builders/ListBuilder;", "a", "Lkotlin/collections/builders/ListBuilder;", "list", "b", "I", "index", "c", "lastIndex", "<init>", "(Lkotlin/collections/builders/ListBuilder;I)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  private static final class a<E>
    implements ListIterator<E>, d
  {
    private final ListBuilder<E> a;
    private int b;
    private int c;
    
    public a(ListBuilder<E> paramListBuilder, int paramInt)
    {
      this.a = paramListBuilder;
      this.b = paramInt;
      this.c = -1;
    }
    
    public void add(E paramE)
    {
      ListBuilder localListBuilder = this.a;
      int i = this.b;
      this.b = (i + 1);
      localListBuilder.add(i, paramE);
      this.c = -1;
    }
    
    public boolean hasNext()
    {
      boolean bool;
      if (this.b < ListBuilder.access$getLength$p(this.a)) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public boolean hasPrevious()
    {
      boolean bool;
      if (this.b > 0) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public E next()
    {
      if (this.b < ListBuilder.access$getLength$p(this.a))
      {
        int i = this.b;
        this.b = (i + 1);
        this.c = i;
        return ListBuilder.access$getArray$p(this.a)[(ListBuilder.access$getOffset$p(this.a) + this.c)];
      }
      throw new NoSuchElementException();
    }
    
    public int nextIndex()
    {
      return this.b;
    }
    
    public E previous()
    {
      int i = this.b;
      if (i > 0)
      {
        i--;
        this.b = i;
        this.c = i;
        return ListBuilder.access$getArray$p(this.a)[(ListBuilder.access$getOffset$p(this.a) + this.c)];
      }
      throw new NoSuchElementException();
    }
    
    public int previousIndex()
    {
      return this.b - 1;
    }
    
    public void remove()
    {
      int i = this.c;
      int j;
      if (i != -1) {
        j = 1;
      } else {
        j = 0;
      }
      if (j != 0)
      {
        this.a.remove(i);
        this.b = this.c;
        this.c = -1;
        return;
      }
      throw new IllegalStateException("Call next() or previous() before removing element from the iterator.".toString());
    }
    
    public void set(E paramE)
    {
      int i = this.c;
      int j;
      if (i != -1) {
        j = 1;
      } else {
        j = 0;
      }
      if (j != 0)
      {
        this.a.set(i, paramE);
        return;
      }
      throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.".toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.builders.ListBuilder
 * JD-Core Version:    0.7.0.1
 */