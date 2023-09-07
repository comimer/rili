package kotlin.collections.builders;

import b8.g;
import java.io.NotSerializableException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.j;
import kotlin.collections.j0;
import kotlin.jvm.internal.r;
import x7.f;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/builders/MapBuilder;", "K", "V", "", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "writeReplace", "", "n", "Lkotlin/u;", "ensureExtraCapacity", "capacity", "ensureCapacity", "", "allocateValuesArray", "()[Ljava/lang/Object;", "key", "hash", "(Ljava/lang/Object;)I", "compact", "newHashSize", "rehash", "i", "", "putRehash", "findKey", "value", "findValue", "index", "removeKeyAt", "removedHash", "removeHashAt", "", "other", "contentEquals", "", "entry", "putEntry", "", "from", "putAllEntries", "build", "isEmpty", "containsKey", "(Ljava/lang/Object;)Z", "containsValue", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "putAll", "remove", "clear", "equals", "hashCode", "", "toString", "checkIsMutable$kotlin_stdlib", "()V", "checkIsMutable", "addKey$kotlin_stdlib", "addKey", "removeKey$kotlin_stdlib", "removeKey", "containsEntry$kotlin_stdlib", "(Ljava/util/Map$Entry;)Z", "containsEntry", "m", "containsAllEntries$kotlin_stdlib", "(Ljava/util/Collection;)Z", "containsAllEntries", "removeEntry$kotlin_stdlib", "removeEntry", "element", "removeValue$kotlin_stdlib", "removeValue", "Lkotlin/collections/builders/MapBuilder$e;", "keysIterator$kotlin_stdlib", "()Lkotlin/collections/builders/MapBuilder$e;", "keysIterator", "Lkotlin/collections/builders/MapBuilder$f;", "valuesIterator$kotlin_stdlib", "()Lkotlin/collections/builders/MapBuilder$f;", "valuesIterator", "Lkotlin/collections/builders/MapBuilder$b;", "entriesIterator$kotlin_stdlib", "()Lkotlin/collections/builders/MapBuilder$b;", "entriesIterator", "keysArray", "[Ljava/lang/Object;", "valuesArray", "", "presenceArray", "[I", "hashArray", "maxProbeDistance", "I", "length", "hashShift", "<set-?>", "size", "getSize", "()I", "Lkotlin/collections/builders/d;", "keysView", "Lkotlin/collections/builders/d;", "Lkotlin/collections/builders/e;", "valuesView", "Lkotlin/collections/builders/e;", "Lkotlin/collections/builders/c;", "entriesView", "Lkotlin/collections/builders/c;", "isReadOnly", "Z", "isReadOnly$kotlin_stdlib", "()Z", "getCapacity", "getHashSize", "hashSize", "", "getKeys", "()Ljava/util/Set;", "keys", "", "getValues", "()Ljava/util/Collection;", "values", "", "getEntries", "entries", "<init>", "([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V", "initialCapacity", "(I)V", "Companion", "a", "b", "c", "d", "e", "f", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class MapBuilder<K, V>
  implements Map<K, V>, Serializable, f
{
  private static final a Companion = new a(null);
  @Deprecated
  private static final int INITIAL_CAPACITY = 8;
  @Deprecated
  private static final int INITIAL_MAX_PROBE_DISTANCE = 2;
  @Deprecated
  private static final int MAGIC = -1640531527;
  @Deprecated
  private static final int TOMBSTONE = -1;
  private c<K, V> entriesView;
  private int[] hashArray;
  private int hashShift;
  private boolean isReadOnly;
  private K[] keysArray;
  private d<K> keysView;
  private int length;
  private int maxProbeDistance;
  private int[] presenceArray;
  private int size;
  private V[] valuesArray;
  private e<V> valuesView;
  
  public MapBuilder()
  {
    this(8);
  }
  
  public MapBuilder(int paramInt)
  {
    this(b.d(paramInt), null, new int[paramInt], new int[a.a(Companion, paramInt)], 2, 0);
  }
  
  private MapBuilder(K[] paramArrayOfK, V[] paramArrayOfV, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt1, int paramInt2)
  {
    this.keysArray = paramArrayOfK;
    this.valuesArray = paramArrayOfV;
    this.presenceArray = paramArrayOfInt1;
    this.hashArray = paramArrayOfInt2;
    this.maxProbeDistance = paramInt1;
    this.length = paramInt2;
    this.hashShift = a.b(Companion, getHashSize());
  }
  
  private final V[] allocateValuesArray()
  {
    Object[] arrayOfObject = this.valuesArray;
    if (arrayOfObject != null) {
      return arrayOfObject;
    }
    arrayOfObject = b.d(getCapacity());
    this.valuesArray = arrayOfObject;
    return arrayOfObject;
  }
  
  private final void compact()
  {
    Object[] arrayOfObject1 = this.valuesArray;
    int i = 0;
    int k;
    for (int j = 0;; j = k)
    {
      k = this.length;
      if (i >= k) {
        break;
      }
      k = j;
      if (this.presenceArray[i] >= 0)
      {
        Object[] arrayOfObject2 = this.keysArray;
        arrayOfObject2[j] = arrayOfObject2[i];
        if (arrayOfObject1 != null) {
          arrayOfObject1[j] = arrayOfObject1[i];
        }
        k = j + 1;
      }
      i++;
    }
    b.g(this.keysArray, j, k);
    if (arrayOfObject1 != null) {
      b.g(arrayOfObject1, j, this.length);
    }
    this.length = j;
  }
  
  private final boolean contentEquals(Map<?, ?> paramMap)
  {
    boolean bool;
    if ((size() == paramMap.size()) && (containsAllEntries$kotlin_stdlib(paramMap.entrySet()))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private final void ensureCapacity(int paramInt)
  {
    if (paramInt >= 0)
    {
      if (paramInt > getCapacity())
      {
        int i = getCapacity() * 3 / 2;
        if (paramInt <= i) {
          paramInt = i;
        }
        this.keysArray = b.e(this.keysArray, paramInt);
        Object localObject = this.valuesArray;
        if (localObject != null) {
          localObject = b.e((Object[])localObject, paramInt);
        } else {
          localObject = null;
        }
        this.valuesArray = ((Object[])localObject);
        localObject = Arrays.copyOf(this.presenceArray, paramInt);
        r.e(localObject, "copyOf(this, newSize)");
        this.presenceArray = ((int[])localObject);
        paramInt = a.a(Companion, paramInt);
        if (paramInt > getHashSize()) {
          rehash(paramInt);
        }
      }
      else if (this.length + paramInt - size() > getCapacity())
      {
        rehash(getHashSize());
      }
      return;
    }
    throw new OutOfMemoryError();
  }
  
  private final void ensureExtraCapacity(int paramInt)
  {
    ensureCapacity(this.length + paramInt);
  }
  
  private final int findKey(K paramK)
  {
    int i = hash(paramK);
    int j = this.maxProbeDistance;
    for (;;)
    {
      int k = this.hashArray[i];
      if (k == 0) {
        return -1;
      }
      if (k > 0)
      {
        Object[] arrayOfObject = this.keysArray;
        k--;
        if (r.a(arrayOfObject[k], paramK)) {
          return k;
        }
      }
      j--;
      if (j < 0) {
        return -1;
      }
      if (i == 0) {
        i = getHashSize() - 1;
      } else {
        i--;
      }
    }
  }
  
  private final int findValue(V paramV)
  {
    int i = this.length;
    int j;
    Object[] arrayOfObject;
    do
    {
      do
      {
        j = i - 1;
        if (j < 0) {
          break;
        }
        i = j;
      } while (this.presenceArray[j] < 0);
      arrayOfObject = this.valuesArray;
      r.c(arrayOfObject);
      i = j;
    } while (!r.a(arrayOfObject[j], paramV));
    return j;
    return -1;
  }
  
  private final int getCapacity()
  {
    return this.keysArray.length;
  }
  
  private final int getHashSize()
  {
    return this.hashArray.length;
  }
  
  private final int hash(K paramK)
  {
    int i;
    if (paramK != null) {
      i = paramK.hashCode();
    } else {
      i = 0;
    }
    return i * -1640531527 >>> this.hashShift;
  }
  
  private final boolean putAllEntries(Collection<? extends Map.Entry<? extends K, ? extends V>> paramCollection)
  {
    boolean bool1 = paramCollection.isEmpty();
    boolean bool2 = false;
    if (bool1) {
      return false;
    }
    ensureExtraCapacity(paramCollection.size());
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      if (putEntry((Map.Entry)paramCollection.next())) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  private final boolean putEntry(Map.Entry<? extends K, ? extends V> paramEntry)
  {
    int i = addKey$kotlin_stdlib(paramEntry.getKey());
    Object[] arrayOfObject = allocateValuesArray();
    if (i >= 0)
    {
      arrayOfObject[i] = paramEntry.getValue();
      return true;
    }
    i = -i - 1;
    Object localObject = arrayOfObject[i];
    if (!r.a(paramEntry.getValue(), localObject))
    {
      arrayOfObject[i] = paramEntry.getValue();
      return true;
    }
    return false;
  }
  
  private final boolean putRehash(int paramInt)
  {
    int i = hash(this.keysArray[paramInt]);
    int j = this.maxProbeDistance;
    for (;;)
    {
      int[] arrayOfInt = this.hashArray;
      if (arrayOfInt[i] == 0)
      {
        arrayOfInt[i] = (paramInt + 1);
        this.presenceArray[paramInt] = i;
        return true;
      }
      j--;
      if (j < 0) {
        return false;
      }
      if (i == 0) {
        i = getHashSize() - 1;
      } else {
        i--;
      }
    }
  }
  
  private final void rehash(int paramInt)
  {
    if (this.length > size()) {
      compact();
    }
    int i = getHashSize();
    int j = 0;
    if (paramInt != i)
    {
      this.hashArray = new int[paramInt];
      this.hashShift = a.b(Companion, paramInt);
      paramInt = j;
    }
    else
    {
      j.j(this.hashArray, 0, 0, getHashSize());
      paramInt = j;
    }
    while (paramInt < this.length) {
      if (putRehash(paramInt)) {
        paramInt++;
      } else {
        throw new IllegalStateException("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
      }
    }
  }
  
  private final void removeHashAt(int paramInt)
  {
    int i = g.f(this.maxProbeDistance * 2, getHashSize() / 2);
    int j = 0;
    int k = paramInt;
    int m;
    int i1;
    do
    {
      if (paramInt == 0) {
        paramInt = getHashSize() - 1;
      } else {
        paramInt--;
      }
      m = j + 1;
      if (m > this.maxProbeDistance)
      {
        this.hashArray[k] = 0;
        return;
      }
      Object localObject = this.hashArray;
      int n = localObject[paramInt];
      if (n == 0)
      {
        localObject[k] = 0;
        return;
      }
      if (n < 0) {
        localObject[k] = -1;
      }
      for (;;)
      {
        i1 = paramInt;
        j = 0;
        break;
        localObject = this.keysArray;
        int i2 = n - 1;
        i1 = k;
        j = m;
        if ((hash(localObject[i2]) - paramInt & getHashSize() - 1) < m) {
          break;
        }
        this.hashArray[k] = n;
        this.presenceArray[i2] = k;
      }
      m = i - 1;
      k = i1;
      i = m;
    } while (m >= 0);
    this.hashArray[i1] = -1;
  }
  
  private final void removeKeyAt(int paramInt)
  {
    b.f(this.keysArray, paramInt);
    removeHashAt(this.presenceArray[paramInt]);
    this.presenceArray[paramInt] = -1;
    this.size = (size() - 1);
  }
  
  private final Object writeReplace()
  {
    if (this.isReadOnly) {
      return new SerializedMap(this);
    }
    throw new NotSerializableException("The map cannot be serialized while it is being built.");
  }
  
  public final int addKey$kotlin_stdlib(K paramK)
  {
    checkIsMutable$kotlin_stdlib();
    int i = hash(paramK);
    int j = g.f(this.maxProbeDistance * 2, getHashSize() / 2);
    int k = 0;
    for (;;)
    {
      int m = this.hashArray[i];
      if (m <= 0)
      {
        if (this.length >= getCapacity())
        {
          ensureExtraCapacity(1);
          break;
        }
        j = this.length;
        m = j + 1;
        this.length = m;
        this.keysArray[j] = paramK;
        this.presenceArray[j] = i;
        this.hashArray[i] = m;
        this.size = (size() + 1);
        if (k > this.maxProbeDistance) {
          this.maxProbeDistance = k;
        }
        return j;
      }
      if (r.a(this.keysArray[(m - 1)], paramK)) {
        return -m;
      }
      k++;
      if (k > j)
      {
        rehash(getHashSize() * 2);
        break;
      }
      if (i == 0) {
        i = getHashSize() - 1;
      } else {
        i--;
      }
    }
  }
  
  public final Map<K, V> build()
  {
    checkIsMutable$kotlin_stdlib();
    this.isReadOnly = true;
    return this;
  }
  
  public final void checkIsMutable$kotlin_stdlib()
  {
    if (!this.isReadOnly) {
      return;
    }
    throw new UnsupportedOperationException();
  }
  
  public void clear()
  {
    checkIsMutable$kotlin_stdlib();
    Object localObject = new b8.c(0, this.length - 1).k();
    while (((Iterator)localObject).hasNext())
    {
      int i = ((j0)localObject).nextInt();
      int[] arrayOfInt = this.presenceArray;
      int j = arrayOfInt[i];
      if (j >= 0)
      {
        this.hashArray[j] = 0;
        arrayOfInt[i] = -1;
      }
    }
    b.g(this.keysArray, 0, this.length);
    localObject = this.valuesArray;
    if (localObject != null) {
      b.g((Object[])localObject, 0, this.length);
    }
    this.size = 0;
    this.length = 0;
  }
  
  public final boolean containsAllEntries$kotlin_stdlib(Collection<?> paramCollection)
  {
    r.f(paramCollection, "m");
    paramCollection = paramCollection.iterator();
    for (;;)
    {
      if (!paramCollection.hasNext()) {
        break label49;
      }
      Object localObject = paramCollection.next();
      if (localObject != null) {}
      try
      {
        boolean bool = containsEntry$kotlin_stdlib((Map.Entry)localObject);
        if (bool) {}
      }
      catch (ClassCastException paramCollection)
      {
        label47:
        label49:
        break label47;
      }
    }
    return false;
    return true;
  }
  
  public final boolean containsEntry$kotlin_stdlib(Map.Entry<? extends K, ? extends V> paramEntry)
  {
    r.f(paramEntry, "entry");
    int i = findKey(paramEntry.getKey());
    if (i < 0) {
      return false;
    }
    Object[] arrayOfObject = this.valuesArray;
    r.c(arrayOfObject);
    return r.a(arrayOfObject[i], paramEntry.getValue());
  }
  
  public boolean containsKey(Object paramObject)
  {
    boolean bool;
    if (findKey(paramObject) >= 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean containsValue(Object paramObject)
  {
    boolean bool;
    if (findValue(paramObject) >= 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public final b<K, V> entriesIterator$kotlin_stdlib()
  {
    return new b(this);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool;
    if ((paramObject != this) && ((!(paramObject instanceof Map)) || (!contentEquals((Map)paramObject)))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public V get(Object paramObject)
  {
    int i = findKey(paramObject);
    if (i < 0) {
      return null;
    }
    paramObject = this.valuesArray;
    r.c(paramObject);
    return paramObject[i];
  }
  
  public Set<Map.Entry<K, V>> getEntries()
  {
    c localc1 = this.entriesView;
    c localc2 = localc1;
    if (localc1 == null)
    {
      localc2 = new c(this);
      this.entriesView = localc2;
    }
    return localc2;
  }
  
  public Set<K> getKeys()
  {
    d locald1 = this.keysView;
    d locald2 = locald1;
    if (locald1 == null)
    {
      locald2 = new d(this);
      this.keysView = locald2;
    }
    return locald2;
  }
  
  public int getSize()
  {
    return this.size;
  }
  
  public Collection<V> getValues()
  {
    e locale1 = this.valuesView;
    e locale2 = locale1;
    if (locale1 == null)
    {
      locale2 = new e(this);
      this.valuesView = locale2;
    }
    return locale2;
  }
  
  public int hashCode()
  {
    b localb = entriesIterator$kotlin_stdlib();
    int i = 0;
    while (localb.hasNext()) {
      i += localb.m();
    }
    return i;
  }
  
  public boolean isEmpty()
  {
    boolean bool;
    if (size() == 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public final boolean isReadOnly$kotlin_stdlib()
  {
    return this.isReadOnly;
  }
  
  public final e<K, V> keysIterator$kotlin_stdlib()
  {
    return new e(this);
  }
  
  public V put(K paramK, V paramV)
  {
    checkIsMutable$kotlin_stdlib();
    int i = addKey$kotlin_stdlib(paramK);
    paramK = allocateValuesArray();
    if (i < 0)
    {
      i = -i - 1;
      V ? = paramK[i];
      paramK[i] = paramV;
      return ?;
    }
    paramK[i] = paramV;
    return null;
  }
  
  public void putAll(Map<? extends K, ? extends V> paramMap)
  {
    r.f(paramMap, "from");
    checkIsMutable$kotlin_stdlib();
    putAllEntries(paramMap.entrySet());
  }
  
  public V remove(Object paramObject)
  {
    int i = removeKey$kotlin_stdlib(paramObject);
    if (i < 0) {
      return null;
    }
    Object[] arrayOfObject = this.valuesArray;
    r.c(arrayOfObject);
    paramObject = arrayOfObject[i];
    b.f(arrayOfObject, i);
    return paramObject;
  }
  
  public final boolean removeEntry$kotlin_stdlib(Map.Entry<? extends K, ? extends V> paramEntry)
  {
    r.f(paramEntry, "entry");
    checkIsMutable$kotlin_stdlib();
    int i = findKey(paramEntry.getKey());
    if (i < 0) {
      return false;
    }
    Object[] arrayOfObject = this.valuesArray;
    r.c(arrayOfObject);
    if (!r.a(arrayOfObject[i], paramEntry.getValue())) {
      return false;
    }
    removeKeyAt(i);
    return true;
  }
  
  public final int removeKey$kotlin_stdlib(K paramK)
  {
    checkIsMutable$kotlin_stdlib();
    int i = findKey(paramK);
    if (i < 0) {
      return -1;
    }
    removeKeyAt(i);
    return i;
  }
  
  public final boolean removeValue$kotlin_stdlib(V paramV)
  {
    checkIsMutable$kotlin_stdlib();
    int i = findValue(paramV);
    if (i < 0) {
      return false;
    }
    removeKeyAt(i);
    return true;
  }
  
  public String toString()
  {
    Object localObject = new StringBuilder(size() * 3 + 2);
    ((StringBuilder)localObject).append("{");
    b localb = entriesIterator$kotlin_stdlib();
    for (int i = 0; localb.hasNext(); i++)
    {
      if (i > 0) {
        ((StringBuilder)localObject).append(", ");
      }
      localb.l((StringBuilder)localObject);
    }
    ((StringBuilder)localObject).append("}");
    localObject = ((StringBuilder)localObject).toString();
    r.e(localObject, "sb.toString()");
    return localObject;
  }
  
  public final f<K, V> valuesIterator$kotlin_stdlib()
  {
    return new f(this);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/builders/MapBuilder$a;", "", "", "capacity", "c", "hashSize", "d", "INITIAL_CAPACITY", "I", "INITIAL_MAX_PROBE_DISTANCE", "MAGIC", "TOMBSTONE", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  private static final class a
  {
    private final int c(int paramInt)
    {
      return Integer.highestOneBit(g.c(paramInt, 1) * 3);
    }
    
    private final int d(int paramInt)
    {
      return Integer.numberOfLeadingZeros(paramInt) + 1;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/builders/MapBuilder$b;", "K", "V", "Lkotlin/collections/builders/MapBuilder$d;", "", "", "Lkotlin/collections/builders/MapBuilder$c;", "k", "", "m", "()I", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "sb", "Lkotlin/u;", "l", "Lkotlin/collections/builders/MapBuilder;", "map", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class b<K, V>
    extends MapBuilder.d<K, V>
    implements Iterator<Map.Entry<K, V>>, x7.d
  {
    public b(MapBuilder<K, V> paramMapBuilder)
    {
      super();
    }
    
    public MapBuilder.c<K, V> k()
    {
      if (b() < MapBuilder.access$getLength$p(f()))
      {
        int i = b();
        h(i + 1);
        j(i);
        MapBuilder.c localc = new MapBuilder.c(f(), c());
        g();
        return localc;
      }
      throw new NoSuchElementException();
    }
    
    public final void l(StringBuilder paramStringBuilder)
    {
      r.f(paramStringBuilder, "sb");
      if (b() < MapBuilder.access$getLength$p(f()))
      {
        int i = b();
        h(i + 1);
        j(i);
        Object localObject = MapBuilder.access$getKeysArray$p(f())[c()];
        if (r.a(localObject, f())) {
          paramStringBuilder.append("(this Map)");
        } else {
          paramStringBuilder.append(localObject);
        }
        paramStringBuilder.append('=');
        localObject = MapBuilder.access$getValuesArray$p(f());
        r.c(localObject);
        localObject = localObject[c()];
        if (r.a(localObject, f())) {
          paramStringBuilder.append("(this Map)");
        } else {
          paramStringBuilder.append(localObject);
        }
        g();
        return;
      }
      throw new NoSuchElementException();
    }
    
    public final int m()
    {
      if (b() < MapBuilder.access$getLength$p(f()))
      {
        int i = b();
        h(i + 1);
        j(i);
        Object localObject = MapBuilder.access$getKeysArray$p(f())[c()];
        int j = 0;
        if (localObject != null) {
          i = localObject.hashCode();
        } else {
          i = 0;
        }
        localObject = MapBuilder.access$getValuesArray$p(f());
        r.c(localObject);
        localObject = localObject[c()];
        if (localObject != null) {
          j = localObject.hashCode();
        }
        g();
        return i ^ j;
      }
      throw new NoSuchElementException();
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/builders/MapBuilder$c;", "K", "V", "", "newValue", "setValue", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "other", "", "equals", "", "hashCode", "", "toString", "Lkotlin/collections/builders/MapBuilder;", "a", "Lkotlin/collections/builders/MapBuilder;", "map", "b", "I", "index", "getKey", "()Ljava/lang/Object;", "key", "getValue", "value", "<init>", "(Lkotlin/collections/builders/MapBuilder;I)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class c<K, V>
    implements Map.Entry<K, V>, x7.a
  {
    private final MapBuilder<K, V> a;
    private final int b;
    
    public c(MapBuilder<K, V> paramMapBuilder, int paramInt)
    {
      this.a = paramMapBuilder;
      this.b = paramInt;
    }
    
    public boolean equals(Object paramObject)
    {
      if ((paramObject instanceof Map.Entry))
      {
        paramObject = (Map.Entry)paramObject;
        if ((r.a(paramObject.getKey(), getKey())) && (r.a(paramObject.getValue(), getValue()))) {
          return true;
        }
      }
      boolean bool = false;
      return bool;
    }
    
    public K getKey()
    {
      return MapBuilder.access$getKeysArray$p(this.a)[this.b];
    }
    
    public V getValue()
    {
      Object[] arrayOfObject = MapBuilder.access$getValuesArray$p(this.a);
      r.c(arrayOfObject);
      return arrayOfObject[this.b];
    }
    
    public int hashCode()
    {
      Object localObject = getKey();
      int i = 0;
      int j;
      if (localObject != null) {
        j = localObject.hashCode();
      } else {
        j = 0;
      }
      localObject = getValue();
      if (localObject != null) {
        i = localObject.hashCode();
      }
      return j ^ i;
    }
    
    public V setValue(V paramV)
    {
      this.a.checkIsMutable$kotlin_stdlib();
      Object[] arrayOfObject = MapBuilder.access$allocateValuesArray(this.a);
      int i = this.b;
      Object localObject = arrayOfObject[i];
      arrayOfObject[i] = paramV;
      return localObject;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(getKey());
      localStringBuilder.append('=');
      localStringBuilder.append(getValue());
      return localStringBuilder.toString();
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/builders/MapBuilder$d;", "K", "V", "", "Lkotlin/u;", "g", "()V", "", "hasNext", "remove", "Lkotlin/collections/builders/MapBuilder;", "a", "Lkotlin/collections/builders/MapBuilder;", "f", "()Lkotlin/collections/builders/MapBuilder;", "map", "", "b", "I", "()I", "h", "(I)V", "index", "c", "j", "lastIndex", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static class d<K, V>
  {
    private final MapBuilder<K, V> a;
    private int b;
    private int c;
    
    public d(MapBuilder<K, V> paramMapBuilder)
    {
      this.a = paramMapBuilder;
      this.c = -1;
      g();
    }
    
    public final int b()
    {
      return this.b;
    }
    
    public final int c()
    {
      return this.c;
    }
    
    public final MapBuilder<K, V> f()
    {
      return this.a;
    }
    
    public final void g()
    {
      while (this.b < MapBuilder.access$getLength$p(this.a))
      {
        int[] arrayOfInt = MapBuilder.access$getPresenceArray$p(this.a);
        int i = this.b;
        if (arrayOfInt[i] >= 0) {
          break;
        }
        this.b = (i + 1);
      }
    }
    
    public final void h(int paramInt)
    {
      this.b = paramInt;
    }
    
    public final boolean hasNext()
    {
      boolean bool;
      if (this.b < MapBuilder.access$getLength$p(this.a)) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public final void j(int paramInt)
    {
      this.c = paramInt;
    }
    
    public final void remove()
    {
      int i;
      if (this.c != -1) {
        i = 1;
      } else {
        i = 0;
      }
      if (i != 0)
      {
        this.a.checkIsMutable$kotlin_stdlib();
        MapBuilder.access$removeKeyAt(this.a, this.c);
        this.c = -1;
        return;
      }
      throw new IllegalStateException("Call next() before removing element from the iterator.".toString());
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/builders/MapBuilder$e;", "K", "V", "Lkotlin/collections/builders/MapBuilder$d;", "", "next", "()Ljava/lang/Object;", "Lkotlin/collections/builders/MapBuilder;", "map", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class e<K, V>
    extends MapBuilder.d<K, V>
    implements Iterator<K>, x7.d
  {
    public e(MapBuilder<K, V> paramMapBuilder)
    {
      super();
    }
    
    public K next()
    {
      if (b() < MapBuilder.access$getLength$p(f()))
      {
        int i = b();
        h(i + 1);
        j(i);
        Object localObject = MapBuilder.access$getKeysArray$p(f())[c()];
        g();
        return localObject;
      }
      throw new NoSuchElementException();
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/builders/MapBuilder$f;", "K", "V", "Lkotlin/collections/builders/MapBuilder$d;", "", "next", "()Ljava/lang/Object;", "Lkotlin/collections/builders/MapBuilder;", "map", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class f<K, V>
    extends MapBuilder.d<K, V>
    implements Iterator<V>, x7.d
  {
    public f(MapBuilder<K, V> paramMapBuilder)
    {
      super();
    }
    
    public V next()
    {
      if (b() < MapBuilder.access$getLength$p(f()))
      {
        int i = b();
        h(i + 1);
        j(i);
        Object localObject = MapBuilder.access$getValuesArray$p(f());
        r.c(localObject);
        localObject = localObject[c()];
        g();
        return localObject;
      }
      throw new NoSuchElementException();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.builders.MapBuilder
 * JD-Core Version:    0.7.0.1
 */