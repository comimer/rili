package com.airbnb.lottie.parser.moshi;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Set;

final class LinkedHashTreeMap<K, V>
  extends AbstractMap<K, V>
  implements Serializable
{
  private static final Comparator<Comparable> NATURAL_ORDER = new a();
  Comparator<? super K> comparator;
  private LinkedHashTreeMap<K, V>.d entrySet;
  final g<K, V> header;
  private LinkedHashTreeMap<K, V>.e keySet;
  int modCount = 0;
  int size = 0;
  g<K, V>[] table;
  int threshold;
  
  LinkedHashTreeMap()
  {
    this(null);
  }
  
  LinkedHashTreeMap(Comparator<? super K> paramComparator)
  {
    if (paramComparator == null) {
      paramComparator = NATURAL_ORDER;
    }
    this.comparator = paramComparator;
    this.header = new g();
    paramComparator = new g[16];
    this.table = paramComparator;
    this.threshold = (paramComparator.length / 2 + paramComparator.length / 4);
  }
  
  private void doubleCapacity()
  {
    g[] arrayOfg = doubleCapacity(this.table);
    this.table = arrayOfg;
    this.threshold = (arrayOfg.length / 2 + arrayOfg.length / 4);
  }
  
  static <K, V> g<K, V>[] doubleCapacity(g<K, V>[] paramArrayOfg)
  {
    int i = paramArrayOfg.length;
    g[] arrayOfg = new g[i * 2];
    c localc = new c();
    b localb1 = new b();
    b localb2 = new b();
    for (int j = 0; j < i; j++)
    {
      g<K, V> localg = paramArrayOfg[j];
      if (localg != null)
      {
        localc.b(localg);
        int k = 0;
        int m = k;
        for (;;)
        {
          localObject = localc.a();
          if (localObject == null) {
            break;
          }
          if ((((g)localObject).g & i) == 0) {
            k++;
          } else {
            m++;
          }
        }
        localb1.b(k);
        localb2.b(m);
        localc.b(localg);
        for (;;)
        {
          localObject = localc.a();
          if (localObject == null) {
            break;
          }
          if ((((g)localObject).g & i) == 0) {
            localb1.a((g)localObject);
          } else {
            localb2.a((g)localObject);
          }
        }
        localg = null;
        if (k > 0) {
          localObject = localb1.c();
        } else {
          localObject = null;
        }
        arrayOfg[j] = localObject;
        Object localObject = localg;
        if (m > 0) {
          localObject = localb2.c();
        }
        arrayOfg[(j + i)] = localObject;
      }
    }
    return arrayOfg;
  }
  
  private boolean equal(Object paramObject1, Object paramObject2)
  {
    boolean bool;
    if ((paramObject1 != paramObject2) && ((paramObject1 == null) || (!paramObject1.equals(paramObject2)))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private void rebalance(g<K, V> paramg, boolean paramBoolean)
  {
    while (paramg != null)
    {
      g localg1 = paramg.b;
      g localg2 = paramg.c;
      int i = 0;
      int j = 0;
      int k;
      if (localg1 != null) {
        k = localg1.i;
      } else {
        k = 0;
      }
      int m;
      if (localg2 != null) {
        m = localg2.i;
      } else {
        m = 0;
      }
      int n = k - m;
      g localg3;
      if (n == -2)
      {
        localg1 = localg2.b;
        localg3 = localg2.c;
        if (localg3 != null) {
          k = localg3.i;
        } else {
          k = 0;
        }
        m = j;
        if (localg1 != null) {
          m = localg1.i;
        }
        k = m - k;
        if ((k != -1) && ((k != 0) || (paramBoolean)))
        {
          rotateRight(localg2);
          rotateLeft(paramg);
        }
        else
        {
          rotateLeft(paramg);
        }
        if (paramBoolean) {
          break;
        }
      }
      else if (n == 2)
      {
        localg3 = localg1.b;
        localg2 = localg1.c;
        if (localg2 != null) {
          k = localg2.i;
        } else {
          k = 0;
        }
        m = i;
        if (localg3 != null) {
          m = localg3.i;
        }
        k = m - k;
        if ((k != 1) && ((k != 0) || (paramBoolean)))
        {
          rotateLeft(localg1);
          rotateRight(paramg);
        }
        else
        {
          rotateRight(paramg);
        }
        if (paramBoolean) {
          break;
        }
      }
      else if (n == 0)
      {
        paramg.i = (k + 1);
        if (paramBoolean) {
          break;
        }
      }
      else
      {
        paramg.i = (Math.max(k, m) + 1);
        if (!paramBoolean) {
          break;
        }
      }
      paramg = paramg.a;
    }
  }
  
  private void replaceInParent(g<K, V> paramg1, g<K, V> paramg2)
  {
    g localg = paramg1.a;
    paramg1.a = null;
    if (paramg2 != null) {
      paramg2.a = localg;
    }
    if (localg != null)
    {
      if (localg.b == paramg1) {
        localg.b = paramg2;
      } else {
        localg.c = paramg2;
      }
    }
    else
    {
      int i = paramg1.g;
      paramg1 = this.table;
      paramg1[(i & paramg1.length - 1)] = paramg2;
    }
  }
  
  private void rotateLeft(g<K, V> paramg)
  {
    g localg1 = paramg.b;
    g localg2 = paramg.c;
    g localg3 = localg2.b;
    g localg4 = localg2.c;
    paramg.c = localg3;
    if (localg3 != null) {
      localg3.a = paramg;
    }
    replaceInParent(paramg, localg2);
    localg2.b = paramg;
    paramg.a = localg2;
    int i = 0;
    if (localg1 != null) {
      j = localg1.i;
    } else {
      j = 0;
    }
    if (localg3 != null) {
      k = localg3.i;
    } else {
      k = 0;
    }
    int k = Math.max(j, k) + 1;
    paramg.i = k;
    int j = i;
    if (localg4 != null) {
      j = localg4.i;
    }
    localg2.i = (Math.max(k, j) + 1);
  }
  
  private void rotateRight(g<K, V> paramg)
  {
    g localg1 = paramg.b;
    g localg2 = paramg.c;
    g localg3 = localg1.b;
    g localg4 = localg1.c;
    paramg.b = localg4;
    if (localg4 != null) {
      localg4.a = paramg;
    }
    replaceInParent(paramg, localg1);
    localg1.c = paramg;
    paramg.a = localg1;
    int i = 0;
    if (localg2 != null) {
      j = localg2.i;
    } else {
      j = 0;
    }
    if (localg4 != null) {
      k = localg4.i;
    } else {
      k = 0;
    }
    int k = Math.max(j, k) + 1;
    paramg.i = k;
    int j = i;
    if (localg3 != null) {
      j = localg3.i;
    }
    localg1.i = (Math.max(k, j) + 1);
  }
  
  private static int secondaryHash(int paramInt)
  {
    paramInt ^= paramInt >>> 20 ^ paramInt >>> 12;
    return paramInt >>> 4 ^ paramInt >>> 7 ^ paramInt;
  }
  
  private Object writeReplace()
    throws ObjectStreamException
  {
    return new LinkedHashMap(this);
  }
  
  public void clear()
  {
    Arrays.fill(this.table, null);
    this.size = 0;
    this.modCount += 1;
    g localg1 = this.header;
    g localg2;
    for (Object localObject = localg1.d; localObject != localg1; localObject = localg2)
    {
      localg2 = ((g)localObject).d;
      ((g)localObject).e = null;
      ((g)localObject).d = null;
    }
    localg1.e = localg1;
    localg1.d = localg1;
  }
  
  public boolean containsKey(Object paramObject)
  {
    boolean bool;
    if (findByObject(paramObject) != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public Set<Map.Entry<K, V>> entrySet()
  {
    d locald = this.entrySet;
    if (locald == null)
    {
      locald = new d();
      this.entrySet = locald;
    }
    return locald;
  }
  
  g<K, V> find(K paramK, boolean paramBoolean)
  {
    Comparator localComparator = this.comparator;
    g[] arrayOfg = this.table;
    int i = secondaryHash(paramK.hashCode());
    int j = arrayOfg.length - 1 & i;
    Object localObject = arrayOfg[j];
    if (localObject != null)
    {
      Comparable localComparable;
      if (localComparator == NATURAL_ORDER) {
        localComparable = (Comparable)paramK;
      } else {
        localComparable = null;
      }
      for (;;)
      {
        if (localComparable != null) {
          k = localComparable.compareTo(((g)localObject).f);
        } else {
          k = localComparator.compare(paramK, ((g)localObject).f);
        }
        if (k == 0) {
          return localObject;
        }
        if (k < 0) {
          localg = ((g)localObject).b;
        } else {
          localg = ((g)localObject).c;
        }
        if (localg == null) {
          break;
        }
        localObject = localg;
      }
    }
    int k = 0;
    if (!paramBoolean) {
      return null;
    }
    g localg = this.header;
    if (localObject == null)
    {
      if ((localComparator == NATURAL_ORDER) && (!(paramK instanceof Comparable)))
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append(paramK.getClass().getName());
        ((StringBuilder)localObject).append(" is not Comparable");
        throw new ClassCastException(((StringBuilder)localObject).toString());
      }
      paramK = new g((g)localObject, paramK, i, localg, localg.e);
      arrayOfg[j] = paramK;
    }
    else
    {
      paramK = new g((g)localObject, paramK, i, localg, localg.e);
      if (k < 0) {
        ((g)localObject).b = paramK;
      } else {
        ((g)localObject).c = paramK;
      }
      rebalance((g)localObject, true);
    }
    k = this.size;
    this.size = (k + 1);
    if (k > this.threshold) {
      doubleCapacity();
    }
    this.modCount += 1;
    return paramK;
  }
  
  g<K, V> findByEntry(Map.Entry<?, ?> paramEntry)
  {
    g localg = findByObject(paramEntry.getKey());
    int i;
    if ((localg != null) && (equal(localg.h, paramEntry.getValue()))) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      paramEntry = localg;
    } else {
      paramEntry = null;
    }
    return paramEntry;
  }
  
  g<K, V> findByObject(Object paramObject)
  {
    Object localObject1 = null;
    Object localObject2 = localObject1;
    if (paramObject != null) {}
    try
    {
      localObject2 = find(paramObject, false);
      return localObject2;
    }
    catch (ClassCastException paramObject)
    {
      for (;;)
      {
        localObject2 = localObject1;
      }
    }
  }
  
  public V get(Object paramObject)
  {
    paramObject = findByObject(paramObject);
    if (paramObject != null) {
      paramObject = paramObject.h;
    } else {
      paramObject = null;
    }
    return paramObject;
  }
  
  public Set<K> keySet()
  {
    e locale = this.keySet;
    if (locale == null)
    {
      locale = new e();
      this.keySet = locale;
    }
    return locale;
  }
  
  public V put(K paramK, V paramV)
  {
    if (paramK != null)
    {
      g localg = find(paramK, true);
      paramK = localg.h;
      localg.h = paramV;
      return paramK;
    }
    throw new NullPointerException("key == null");
  }
  
  public V remove(Object paramObject)
  {
    paramObject = removeInternalByKey(paramObject);
    if (paramObject != null) {
      paramObject = paramObject.h;
    } else {
      paramObject = null;
    }
    return paramObject;
  }
  
  void removeInternal(g<K, V> paramg, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      localg1 = paramg.e;
      localg1.d = paramg.d;
      paramg.d.e = localg1;
      paramg.e = null;
      paramg.d = null;
    }
    g localg2 = paramg.b;
    g localg3 = paramg.c;
    g localg1 = paramg.a;
    int i = 0;
    if ((localg2 != null) && (localg3 != null))
    {
      if (localg2.i > localg3.i) {
        localg1 = localg2.b();
      } else {
        localg1 = localg3.a();
      }
      removeInternal(localg1, false);
      localg2 = paramg.b;
      int j;
      if (localg2 != null)
      {
        j = localg2.i;
        localg1.b = localg2;
        localg2.a = localg1;
        paramg.b = null;
      }
      else
      {
        j = 0;
      }
      localg2 = paramg.c;
      if (localg2 != null)
      {
        i = localg2.i;
        localg1.c = localg2;
        localg2.a = localg1;
        paramg.c = null;
      }
      localg1.i = (Math.max(j, i) + 1);
      replaceInParent(paramg, localg1);
      return;
    }
    if (localg2 != null)
    {
      replaceInParent(paramg, localg2);
      paramg.b = null;
    }
    else if (localg3 != null)
    {
      replaceInParent(paramg, localg3);
      paramg.c = null;
    }
    else
    {
      replaceInParent(paramg, null);
    }
    rebalance(localg1, false);
    this.size -= 1;
    this.modCount += 1;
  }
  
  g<K, V> removeInternalByKey(Object paramObject)
  {
    paramObject = findByObject(paramObject);
    if (paramObject != null) {
      removeInternal(paramObject, true);
    }
    return paramObject;
  }
  
  public int size()
  {
    return this.size;
  }
  
  class a
    implements Comparator<Comparable>
  {
    public int a(Comparable paramComparable1, Comparable paramComparable2)
    {
      return paramComparable1.compareTo(paramComparable2);
    }
  }
  
  static final class b<K, V>
  {
    private LinkedHashTreeMap.g<K, V> a;
    private int b;
    private int c;
    private int d;
    
    void a(LinkedHashTreeMap.g<K, V> paramg)
    {
      paramg.c = null;
      paramg.a = null;
      paramg.b = null;
      paramg.i = 1;
      int i = this.b;
      if (i > 0)
      {
        j = this.d;
        if ((j & 0x1) == 0)
        {
          this.d = (j + 1);
          this.b = (i - 1);
          this.c += 1;
        }
      }
      paramg.a = this.a;
      this.a = paramg;
      i = this.d + 1;
      this.d = i;
      int j = this.b;
      if ((j > 0) && ((i & 0x1) == 0))
      {
        this.d = (i + 1);
        this.b = (j - 1);
        this.c += 1;
      }
      i = 4;
      for (;;)
      {
        j = this.d;
        int k = i - 1;
        if ((j & k) != k) {
          break;
        }
        j = this.c;
        LinkedHashTreeMap.g localg2;
        if (j == 0)
        {
          LinkedHashTreeMap.g localg1 = this.a;
          localg2 = localg1.a;
          paramg = localg2.a;
          localg2.a = paramg.a;
          this.a = localg2;
          localg2.b = paramg;
          localg2.c = localg1;
          localg1.i += 1;
          paramg.a = localg2;
          localg1.a = localg2;
        }
        else if (j == 1)
        {
          paramg = this.a;
          localg2 = paramg.a;
          this.a = localg2;
          localg2.c = paramg;
          paramg.i += 1;
          paramg.a = localg2;
          this.c = 0;
        }
        else if (j == 2)
        {
          this.c = 0;
        }
        i *= 2;
      }
    }
    
    void b(int paramInt)
    {
      this.b = (Integer.highestOneBit(paramInt) * 2 - 1 - paramInt);
      this.d = 0;
      this.c = 0;
      this.a = null;
    }
    
    LinkedHashTreeMap.g<K, V> c()
    {
      LinkedHashTreeMap.g localg = this.a;
      if (localg.a == null) {
        return localg;
      }
      throw new IllegalStateException();
    }
  }
  
  static class c<K, V>
  {
    private LinkedHashTreeMap.g<K, V> a;
    
    public LinkedHashTreeMap.g<K, V> a()
    {
      LinkedHashTreeMap.g localg1 = this.a;
      if (localg1 == null) {
        return null;
      }
      Object localObject1 = localg1.a;
      localg1.a = null;
      Object localObject2;
      for (LinkedHashTreeMap.g localg2 = localg1.c;; localg2 = ((LinkedHashTreeMap.g)localObject1).b)
      {
        localObject2 = localObject1;
        localObject1 = localg2;
        if (localObject1 == null) {
          break;
        }
        ((LinkedHashTreeMap.g)localObject1).a = localObject2;
      }
      this.a = localObject2;
      return localg1;
    }
    
    void b(LinkedHashTreeMap.g<K, V> paramg)
    {
      LinkedHashTreeMap.g<K, V> localg = null;
      while (paramg != null)
      {
        paramg.a = localg;
        LinkedHashTreeMap.g localg1 = paramg.b;
        localg = paramg;
        paramg = localg1;
      }
      this.a = localg;
    }
  }
  
  final class d
    extends AbstractSet<Map.Entry<K, V>>
  {
    d() {}
    
    public void clear()
    {
      LinkedHashTreeMap.this.clear();
    }
    
    public boolean contains(Object paramObject)
    {
      boolean bool;
      if (((paramObject instanceof Map.Entry)) && (LinkedHashTreeMap.this.findByEntry((Map.Entry)paramObject) != null)) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public Iterator<Map.Entry<K, V>> iterator()
    {
      return new a();
    }
    
    public boolean remove(Object paramObject)
    {
      if (!(paramObject instanceof Map.Entry)) {
        return false;
      }
      paramObject = LinkedHashTreeMap.this.findByEntry((Map.Entry)paramObject);
      if (paramObject == null) {
        return false;
      }
      LinkedHashTreeMap.this.removeInternal(paramObject, true);
      return true;
    }
    
    public int size()
    {
      return LinkedHashTreeMap.this.size;
    }
    
    class a
      extends LinkedHashTreeMap<K, V>.f<Map.Entry<K, V>>
    {
      a()
      {
        super();
      }
      
      public Map.Entry<K, V> c()
      {
        return b();
      }
    }
  }
  
  final class e
    extends AbstractSet<K>
  {
    e() {}
    
    public void clear()
    {
      LinkedHashTreeMap.this.clear();
    }
    
    public boolean contains(Object paramObject)
    {
      return LinkedHashTreeMap.this.containsKey(paramObject);
    }
    
    public Iterator<K> iterator()
    {
      return new a();
    }
    
    public boolean remove(Object paramObject)
    {
      boolean bool;
      if (LinkedHashTreeMap.this.removeInternalByKey(paramObject) != null) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public int size()
    {
      return LinkedHashTreeMap.this.size;
    }
    
    class a
      extends LinkedHashTreeMap<K, V>.f<K>
    {
      a()
      {
        super();
      }
      
      public K next()
      {
        return b().f;
      }
    }
  }
  
  abstract class f<T>
    implements Iterator<T>
  {
    LinkedHashTreeMap.g<K, V> a = LinkedHashTreeMap.this.header.d;
    LinkedHashTreeMap.g<K, V> b = null;
    int c = LinkedHashTreeMap.this.modCount;
    
    f() {}
    
    final LinkedHashTreeMap.g<K, V> b()
    {
      LinkedHashTreeMap.g localg = this.a;
      LinkedHashTreeMap localLinkedHashTreeMap = LinkedHashTreeMap.this;
      if (localg != localLinkedHashTreeMap.header)
      {
        if (localLinkedHashTreeMap.modCount == this.c)
        {
          this.a = localg.d;
          this.b = localg;
          return localg;
        }
        throw new ConcurrentModificationException();
      }
      throw new NoSuchElementException();
    }
    
    public final boolean hasNext()
    {
      boolean bool;
      if (this.a != LinkedHashTreeMap.this.header) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public final void remove()
    {
      LinkedHashTreeMap.g localg = this.b;
      if (localg != null)
      {
        LinkedHashTreeMap.this.removeInternal(localg, true);
        this.b = null;
        this.c = LinkedHashTreeMap.this.modCount;
        return;
      }
      throw new IllegalStateException();
    }
  }
  
  static final class g<K, V>
    implements Map.Entry<K, V>
  {
    g<K, V> a;
    g<K, V> b;
    g<K, V> c;
    g<K, V> d;
    g<K, V> e;
    final K f;
    final int g;
    V h;
    int i;
    
    g()
    {
      this.f = null;
      this.g = -1;
      this.e = this;
      this.d = this;
    }
    
    g(g<K, V> paramg1, K paramK, int paramInt, g<K, V> paramg2, g<K, V> paramg3)
    {
      this.a = paramg1;
      this.f = paramK;
      this.g = paramInt;
      this.i = 1;
      this.d = paramg2;
      this.e = paramg3;
      paramg3.d = this;
      paramg2.e = this;
    }
    
    public g<K, V> a()
    {
      Object localObject1 = this.b;
      Object localObject2 = this;
      while (localObject1 != null)
      {
        g localg = ((g)localObject1).b;
        localObject2 = localObject1;
        localObject1 = localg;
      }
      return localObject2;
    }
    
    public g<K, V> b()
    {
      Object localObject1 = this.c;
      Object localObject2 = this;
      while (localObject1 != null)
      {
        g localg = ((g)localObject1).c;
        localObject2 = localObject1;
        localObject1 = localg;
      }
      return localObject2;
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool1 = paramObject instanceof Map.Entry;
      boolean bool2 = false;
      boolean bool3 = bool2;
      if (bool1)
      {
        paramObject = (Map.Entry)paramObject;
        Object localObject = this.f;
        if (localObject == null)
        {
          bool3 = bool2;
          if (paramObject.getKey() != null) {
            break label108;
          }
        }
        else
        {
          bool3 = bool2;
          if (!localObject.equals(paramObject.getKey())) {
            break label108;
          }
        }
        localObject = this.h;
        if (localObject == null)
        {
          bool3 = bool2;
          if (paramObject.getValue() != null) {
            break label108;
          }
        }
        else
        {
          bool3 = bool2;
          if (!localObject.equals(paramObject.getValue())) {
            break label108;
          }
        }
        bool3 = true;
      }
      label108:
      return bool3;
    }
    
    public K getKey()
    {
      return this.f;
    }
    
    public V getValue()
    {
      return this.h;
    }
    
    public int hashCode()
    {
      Object localObject = this.f;
      int j = 0;
      int k;
      if (localObject == null) {
        k = 0;
      } else {
        k = localObject.hashCode();
      }
      localObject = this.h;
      if (localObject != null) {
        j = localObject.hashCode();
      }
      return k ^ j;
    }
    
    public V setValue(V paramV)
    {
      Object localObject = this.h;
      this.h = paramV;
      return localObject;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.f);
      localStringBuilder.append("=");
      localStringBuilder.append(this.h);
      return localStringBuilder.toString();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.parser.moshi.LinkedHashTreeMap
 * JD-Core Version:    0.7.0.1
 */