package j;

import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.WeakHashMap;

public class b<K, V>
  implements Iterable<Map.Entry<K, V>>
{
  c<K, V> a;
  private c<K, V> b;
  private WeakHashMap<f<K, V>, Boolean> c = new WeakHashMap();
  private int d = 0;
  
  public Map.Entry<K, V> c()
  {
    return this.a;
  }
  
  protected c<K, V> d(K paramK)
  {
    for (c localc = this.a; (localc != null) && (!localc.a.equals(paramK)); localc = localc.c) {}
    return localc;
  }
  
  public Iterator<Map.Entry<K, V>> descendingIterator()
  {
    b localb = new b(this.b, this.a);
    this.c.put(localb, Boolean.FALSE);
    return localb;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof b)) {
      return false;
    }
    Object localObject1 = (b)paramObject;
    if (size() != ((b)localObject1).size()) {
      return false;
    }
    paramObject = iterator();
    Iterator localIterator = ((b)localObject1).iterator();
    while ((paramObject.hasNext()) && (localIterator.hasNext()))
    {
      localObject1 = (Map.Entry)paramObject.next();
      Object localObject2 = localIterator.next();
      if (((localObject1 == null) && (localObject2 != null)) || ((localObject1 != null) && (!((Map.Entry)localObject1).equals(localObject2)))) {
        return false;
      }
    }
    if ((paramObject.hasNext()) || (localIterator.hasNext())) {
      bool = false;
    }
    return bool;
  }
  
  public b<K, V>.d h()
  {
    d locald = new d();
    this.c.put(locald, Boolean.FALSE);
    return locald;
  }
  
  public int hashCode()
  {
    Iterator localIterator = iterator();
    int i = 0;
    while (localIterator.hasNext()) {
      i += ((Map.Entry)localIterator.next()).hashCode();
    }
    return i;
  }
  
  public Iterator<Map.Entry<K, V>> iterator()
  {
    a locala = new a(this.a, this.b);
    this.c.put(locala, Boolean.FALSE);
    return locala;
  }
  
  public Map.Entry<K, V> j()
  {
    return this.b;
  }
  
  protected c<K, V> k(K paramK, V paramV)
  {
    paramK = new c(paramK, paramV);
    this.d += 1;
    paramV = this.b;
    if (paramV == null)
    {
      this.a = paramK;
      this.b = paramK;
      return paramK;
    }
    paramV.c = paramK;
    paramK.d = paramV;
    this.b = paramK;
    return paramK;
  }
  
  public V l(K paramK, V paramV)
  {
    c localc = d(paramK);
    if (localc != null) {
      return localc.b;
    }
    k(paramK, paramV);
    return null;
  }
  
  public V m(K paramK)
  {
    paramK = d(paramK);
    if (paramK == null) {
      return null;
    }
    this.d -= 1;
    if (!this.c.isEmpty())
    {
      localObject = this.c.keySet().iterator();
      while (((Iterator)localObject).hasNext()) {
        ((f)((Iterator)localObject).next()).b(paramK);
      }
    }
    Object localObject = paramK.d;
    if (localObject != null) {
      ((c)localObject).c = paramK.c;
    } else {
      this.a = paramK.c;
    }
    c localc = paramK.c;
    if (localc != null) {
      localc.d = ((c)localObject);
    } else {
      this.b = ((c)localObject);
    }
    paramK.c = null;
    paramK.d = null;
    return paramK.b;
  }
  
  public int size()
  {
    return this.d;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    Iterator localIterator = iterator();
    while (localIterator.hasNext())
    {
      localStringBuilder.append(((Map.Entry)localIterator.next()).toString());
      if (localIterator.hasNext()) {
        localStringBuilder.append(", ");
      }
    }
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
  
  static class a<K, V>
    extends b.e<K, V>
  {
    a(b.c<K, V> paramc1, b.c<K, V> paramc2)
    {
      super(paramc2);
    }
    
    b.c<K, V> c(b.c<K, V> paramc)
    {
      return paramc.d;
    }
    
    b.c<K, V> d(b.c<K, V> paramc)
    {
      return paramc.c;
    }
  }
  
  private static class b<K, V>
    extends b.e<K, V>
  {
    b(b.c<K, V> paramc1, b.c<K, V> paramc2)
    {
      super(paramc2);
    }
    
    b.c<K, V> c(b.c<K, V> paramc)
    {
      return paramc.c;
    }
    
    b.c<K, V> d(b.c<K, V> paramc)
    {
      return paramc.d;
    }
  }
  
  static class c<K, V>
    implements Map.Entry<K, V>
  {
    final K a;
    final V b;
    c<K, V> c;
    c<K, V> d;
    
    c(K paramK, V paramV)
    {
      this.a = paramK;
      this.b = paramV;
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool = true;
      if (paramObject == this) {
        return true;
      }
      if (!(paramObject instanceof c)) {
        return false;
      }
      paramObject = (c)paramObject;
      if ((!this.a.equals(paramObject.a)) || (!this.b.equals(paramObject.b))) {
        bool = false;
      }
      return bool;
    }
    
    public K getKey()
    {
      return this.a;
    }
    
    public V getValue()
    {
      return this.b;
    }
    
    public int hashCode()
    {
      return this.a.hashCode() ^ this.b.hashCode();
    }
    
    public V setValue(V paramV)
    {
      throw new UnsupportedOperationException("An entry modification is not supported");
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.a);
      localStringBuilder.append("=");
      localStringBuilder.append(this.b);
      return localStringBuilder.toString();
    }
  }
  
  private class d
    implements Iterator<Map.Entry<K, V>>, b.f<K, V>
  {
    private b.c<K, V> a;
    private boolean b = true;
    
    d() {}
    
    public void b(b.c<K, V> paramc)
    {
      b.c localc = this.a;
      if (paramc == localc)
      {
        paramc = localc.d;
        this.a = paramc;
        boolean bool;
        if (paramc == null) {
          bool = true;
        } else {
          bool = false;
        }
        this.b = bool;
      }
    }
    
    public Map.Entry<K, V> c()
    {
      if (this.b)
      {
        this.b = false;
        this.a = b.this.a;
      }
      else
      {
        b.c localc = this.a;
        if (localc != null) {
          localc = localc.c;
        } else {
          localc = null;
        }
        this.a = localc;
      }
      return this.a;
    }
    
    public boolean hasNext()
    {
      boolean bool1 = this.b;
      boolean bool2 = true;
      boolean bool3 = true;
      if (bool1)
      {
        if (b.this.a == null) {
          bool3 = false;
        }
        return bool3;
      }
      b.c localc = this.a;
      if ((localc != null) && (localc.c != null)) {
        bool3 = bool2;
      } else {
        bool3 = false;
      }
      return bool3;
    }
  }
  
  private static abstract class e<K, V>
    implements Iterator<Map.Entry<K, V>>, b.f<K, V>
  {
    b.c<K, V> a;
    b.c<K, V> b;
    
    e(b.c<K, V> paramc1, b.c<K, V> paramc2)
    {
      this.a = paramc2;
      this.b = paramc1;
    }
    
    private b.c<K, V> f()
    {
      b.c localc1 = this.b;
      b.c localc2 = this.a;
      if ((localc1 != localc2) && (localc2 != null)) {
        return d(localc1);
      }
      return null;
    }
    
    public void b(b.c<K, V> paramc)
    {
      if ((this.a == paramc) && (paramc == this.b))
      {
        this.b = null;
        this.a = null;
      }
      b.c localc = this.a;
      if (localc == paramc) {
        this.a = c(localc);
      }
      if (this.b == paramc) {
        this.b = f();
      }
    }
    
    abstract b.c<K, V> c(b.c<K, V> paramc);
    
    abstract b.c<K, V> d(b.c<K, V> paramc);
    
    public Map.Entry<K, V> e()
    {
      b.c localc = this.b;
      this.b = f();
      return localc;
    }
    
    public boolean hasNext()
    {
      boolean bool;
      if (this.b != null) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
  
  static abstract interface f<K, V>
  {
    public abstract void b(b.c<K, V> paramc);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j.b
 * JD-Core Version:    0.7.0.1
 */