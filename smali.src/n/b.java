package n;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class b<E>
  implements Collection<E>, Set<E>
{
  private static final int[] e = new int[0];
  private static final Object[] f = new Object[0];
  private static Object[] g;
  private static int h;
  private static Object[] i;
  private static int j;
  private int[] a;
  Object[] b;
  int c;
  private f<E, E> d;
  
  public b()
  {
    this(0);
  }
  
  public b(int paramInt)
  {
    if (paramInt == 0)
    {
      this.a = e;
      this.b = f;
    }
    else
    {
      c(paramInt);
    }
    this.c = 0;
  }
  
  private void c(int paramInt)
  {
    if (paramInt == 8) {
      try
      {
        Object[] arrayOfObject1 = i;
        if (arrayOfObject1 != null)
        {
          this.b = arrayOfObject1;
          i = (Object[])arrayOfObject1[0];
          this.a = ((int[])arrayOfObject1[1]);
          arrayOfObject1[1] = null;
          arrayOfObject1[0] = null;
          j -= 1;
          return;
        }
      }
      finally {}
    } else if (paramInt == 4) {
      try
      {
        Object[] arrayOfObject2 = g;
        if (arrayOfObject2 != null)
        {
          this.b = arrayOfObject2;
          g = (Object[])arrayOfObject2[0];
          this.a = ((int[])arrayOfObject2[1]);
          arrayOfObject2[1] = null;
          arrayOfObject2[0] = null;
          h -= 1;
          return;
        }
      }
      finally {}
    }
    this.a = new int[paramInt];
    this.b = new Object[paramInt];
  }
  
  private static void h(int[] paramArrayOfInt, Object[] paramArrayOfObject, int paramInt)
  {
    if (paramArrayOfInt.length == 8) {
      try
      {
        if (j < 10)
        {
          paramArrayOfObject[0] = i;
          paramArrayOfObject[1] = paramArrayOfInt;
          paramInt--;
          while (paramInt >= 2)
          {
            paramArrayOfObject[paramInt] = null;
            paramInt--;
          }
          i = paramArrayOfObject;
          j += 1;
        }
      }
      finally {}
    } else if (paramArrayOfInt.length == 4) {
      try
      {
        if (h < 10)
        {
          paramArrayOfObject[0] = g;
          paramArrayOfObject[1] = paramArrayOfInt;
          paramInt--;
          while (paramInt >= 2)
          {
            paramArrayOfObject[paramInt] = null;
            paramInt--;
          }
          g = paramArrayOfObject;
          h += 1;
        }
      }
      finally {}
    }
  }
  
  private f<E, E> j()
  {
    if (this.d == null) {
      this.d = new a();
    }
    return this.d;
  }
  
  private int k(Object paramObject, int paramInt)
  {
    int k = this.c;
    if (k == 0) {
      return -1;
    }
    int m = c.a(this.a, k, paramInt);
    if (m < 0) {
      return m;
    }
    if (paramObject.equals(this.b[m])) {
      return m;
    }
    for (int n = m + 1; (n < k) && (this.a[n] == paramInt); n++) {
      if (paramObject.equals(this.b[n])) {
        return n;
      }
    }
    for (k = m - 1; (k >= 0) && (this.a[k] == paramInt); k--) {
      if (paramObject.equals(this.b[k])) {
        return k;
      }
    }
    return n;
  }
  
  private int l()
  {
    int k = this.c;
    if (k == 0) {
      return -1;
    }
    int m = c.a(this.a, k, 0);
    if (m < 0) {
      return m;
    }
    if (this.b[m] == null) {
      return m;
    }
    for (int n = m + 1; (n < k) && (this.a[n] == 0); n++) {
      if (this.b[n] == null) {
        return n;
      }
    }
    m--;
    while ((m >= 0) && (this.a[m] == 0))
    {
      if (this.b[m] == null) {
        return m;
      }
      m--;
    }
    return n;
  }
  
  public boolean add(E paramE)
  {
    int k;
    int m;
    if (paramE == null)
    {
      k = l();
      m = 0;
    }
    else
    {
      m = paramE.hashCode();
      k = k(paramE, m);
    }
    if (k >= 0) {
      return false;
    }
    int n = k;
    int i1 = this.c;
    int[] arrayOfInt = this.a;
    Object localObject;
    if (i1 >= arrayOfInt.length)
    {
      k = 4;
      if (i1 >= 8) {
        k = (i1 >> 1) + i1;
      } else if (i1 >= 4) {
        k = 8;
      }
      Object[] arrayOfObject = this.b;
      c(k);
      localObject = this.a;
      if (localObject.length > 0)
      {
        System.arraycopy(arrayOfInt, 0, localObject, 0, arrayOfInt.length);
        System.arraycopy(arrayOfObject, 0, this.b, 0, arrayOfObject.length);
      }
      h(arrayOfInt, arrayOfObject, this.c);
    }
    i1 = this.c;
    if (n < i1)
    {
      localObject = this.a;
      k = n + 1;
      System.arraycopy(localObject, n, localObject, k, i1 - n);
      localObject = this.b;
      System.arraycopy(localObject, n, localObject, k, this.c - n);
    }
    this.a[n] = m;
    this.b[n] = paramE;
    this.c += 1;
    return true;
  }
  
  public boolean addAll(Collection<? extends E> paramCollection)
  {
    d(this.c + paramCollection.size());
    paramCollection = paramCollection.iterator();
    boolean bool = false;
    while (paramCollection.hasNext()) {
      bool |= add(paramCollection.next());
    }
    return bool;
  }
  
  public void clear()
  {
    int k = this.c;
    if (k != 0)
    {
      h(this.a, this.b, k);
      this.a = e;
      this.b = f;
      this.c = 0;
    }
  }
  
  public boolean contains(Object paramObject)
  {
    boolean bool;
    if (indexOf(paramObject) >= 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean containsAll(Collection<?> paramCollection)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      if (!contains(paramCollection.next())) {
        return false;
      }
    }
    return true;
  }
  
  public void d(int paramInt)
  {
    int[] arrayOfInt = this.a;
    if (arrayOfInt.length < paramInt)
    {
      Object[] arrayOfObject = this.b;
      c(paramInt);
      paramInt = this.c;
      if (paramInt > 0)
      {
        System.arraycopy(arrayOfInt, 0, this.a, 0, paramInt);
        System.arraycopy(arrayOfObject, 0, this.b, 0, this.c);
      }
      h(arrayOfInt, arrayOfObject, this.c);
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    int k;
    if ((paramObject instanceof Set))
    {
      paramObject = (Set)paramObject;
      if (size() != paramObject.size()) {
        return false;
      }
      k = 0;
    }
    try
    {
      while (k < this.c)
      {
        boolean bool = paramObject.contains(n(k));
        if (!bool) {
          return false;
        }
        k++;
      }
      return true;
    }
    catch (NullPointerException|ClassCastException paramObject)
    {
      label70:
      break label70;
    }
    return false;
  }
  
  public int hashCode()
  {
    int[] arrayOfInt = this.a;
    int k = this.c;
    int m = 0;
    int n = 0;
    while (m < k)
    {
      n += arrayOfInt[m];
      m++;
    }
    return n;
  }
  
  public int indexOf(Object paramObject)
  {
    int k;
    if (paramObject == null) {
      k = l();
    } else {
      k = k(paramObject, paramObject.hashCode());
    }
    return k;
  }
  
  public boolean isEmpty()
  {
    boolean bool;
    if (this.c <= 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public Iterator<E> iterator()
  {
    return j().m().iterator();
  }
  
  public E m(int paramInt)
  {
    Object[] arrayOfObject = this.b;
    Object localObject1 = arrayOfObject[paramInt];
    int k = this.c;
    if (k <= 1)
    {
      h(this.a, arrayOfObject, k);
      this.a = e;
      this.b = f;
      this.c = 0;
    }
    else
    {
      Object localObject2 = this.a;
      int m = localObject2.length;
      int n = 8;
      if ((m > 8) && (k < localObject2.length / 3))
      {
        if (k > 8) {
          n = k + (k >> 1);
        }
        c(n);
        this.c -= 1;
        if (paramInt > 0)
        {
          System.arraycopy(localObject2, 0, this.a, 0, paramInt);
          System.arraycopy(arrayOfObject, 0, this.b, 0, paramInt);
        }
        n = this.c;
        if (paramInt < n)
        {
          k = paramInt + 1;
          System.arraycopy(localObject2, k, this.a, paramInt, n - paramInt);
          System.arraycopy(arrayOfObject, k, this.b, paramInt, this.c - paramInt);
        }
      }
      else
      {
        n = k - 1;
        this.c = n;
        if (paramInt < n)
        {
          k = paramInt + 1;
          System.arraycopy(localObject2, k, localObject2, paramInt, n - paramInt);
          localObject2 = this.b;
          System.arraycopy(localObject2, k, localObject2, paramInt, this.c - paramInt);
        }
        this.b[this.c] = null;
      }
    }
    return localObject1;
  }
  
  public E n(int paramInt)
  {
    return this.b[paramInt];
  }
  
  public boolean remove(Object paramObject)
  {
    int k = indexOf(paramObject);
    if (k >= 0)
    {
      m(k);
      return true;
    }
    return false;
  }
  
  public boolean removeAll(Collection<?> paramCollection)
  {
    paramCollection = paramCollection.iterator();
    boolean bool = false;
    while (paramCollection.hasNext()) {
      bool |= remove(paramCollection.next());
    }
    return bool;
  }
  
  public boolean retainAll(Collection<?> paramCollection)
  {
    int k = this.c - 1;
    boolean bool = false;
    while (k >= 0)
    {
      if (!paramCollection.contains(this.b[k]))
      {
        m(k);
        bool = true;
      }
      k--;
    }
    return bool;
  }
  
  public int size()
  {
    return this.c;
  }
  
  public Object[] toArray()
  {
    int k = this.c;
    Object[] arrayOfObject = new Object[k];
    System.arraycopy(this.b, 0, arrayOfObject, 0, k);
    return arrayOfObject;
  }
  
  public <T> T[] toArray(T[] paramArrayOfT)
  {
    Object localObject = paramArrayOfT;
    if (paramArrayOfT.length < this.c) {
      localObject = (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), this.c);
    }
    System.arraycopy(this.b, 0, localObject, 0, this.c);
    int k = localObject.length;
    int m = this.c;
    if (k > m) {
      localObject[m] = null;
    }
    return localObject;
  }
  
  public String toString()
  {
    if (isEmpty()) {
      return "{}";
    }
    StringBuilder localStringBuilder = new StringBuilder(this.c * 14);
    localStringBuilder.append('{');
    for (int k = 0; k < this.c; k++)
    {
      if (k > 0) {
        localStringBuilder.append(", ");
      }
      Object localObject = n(k);
      if (localObject != this) {
        localStringBuilder.append(localObject);
      } else {
        localStringBuilder.append("(this Set)");
      }
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  class a
    extends f<E, E>
  {
    a() {}
    
    protected void a()
    {
      b.this.clear();
    }
    
    protected Object b(int paramInt1, int paramInt2)
    {
      return b.this.b[paramInt1];
    }
    
    protected Map<E, E> c()
    {
      throw new UnsupportedOperationException("not a map");
    }
    
    protected int d()
    {
      return b.this.c;
    }
    
    protected int e(Object paramObject)
    {
      return b.this.indexOf(paramObject);
    }
    
    protected int f(Object paramObject)
    {
      return b.this.indexOf(paramObject);
    }
    
    protected void g(E paramE1, E paramE2)
    {
      b.this.add(paramE1);
    }
    
    protected void h(int paramInt)
    {
      b.this.m(paramInt);
    }
    
    protected E i(int paramInt, E paramE)
    {
      throw new UnsupportedOperationException("not a map");
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n.b
 * JD-Core Version:    0.7.0.1
 */