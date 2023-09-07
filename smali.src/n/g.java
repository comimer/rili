package n;

import java.util.ConcurrentModificationException;
import java.util.Map;

public class g<K, V>
{
  static Object[] d;
  static int e;
  static Object[] f;
  static int g;
  int[] a;
  Object[] b;
  int c;
  
  public g()
  {
    this.a = c.a;
    this.b = c.c;
    this.c = 0;
  }
  
  public g(int paramInt)
  {
    if (paramInt == 0)
    {
      this.a = c.a;
      this.b = c.c;
    }
    else
    {
      c(paramInt);
    }
    this.c = 0;
  }
  
  public g(g<K, V> paramg)
  {
    this();
    if (paramg != null) {
      m(paramg);
    }
  }
  
  private void c(int paramInt)
  {
    if (paramInt == 8) {
      try
      {
        Object[] arrayOfObject1 = f;
        if (arrayOfObject1 != null)
        {
          this.b = arrayOfObject1;
          f = (Object[])arrayOfObject1[0];
          this.a = ((int[])arrayOfObject1[1]);
          arrayOfObject1[1] = null;
          arrayOfObject1[0] = null;
          g -= 1;
          return;
        }
      }
      finally {}
    } else if (paramInt == 4) {
      try
      {
        Object[] arrayOfObject2 = d;
        if (arrayOfObject2 != null)
        {
          this.b = arrayOfObject2;
          d = (Object[])arrayOfObject2[0];
          this.a = ((int[])arrayOfObject2[1]);
          arrayOfObject2[1] = null;
          arrayOfObject2[0] = null;
          e -= 1;
          return;
        }
      }
      finally {}
    }
    this.a = new int[paramInt];
    this.b = new Object[paramInt << 1];
  }
  
  private static int e(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    try
    {
      paramInt1 = c.a(paramArrayOfInt, paramInt1, paramInt2);
      return paramInt1;
    }
    catch (ArrayIndexOutOfBoundsException paramArrayOfInt)
    {
      throw new ConcurrentModificationException();
    }
  }
  
  private static void g(int[] paramArrayOfInt, Object[] paramArrayOfObject, int paramInt)
  {
    if (paramArrayOfInt.length == 8) {
      try
      {
        if (g < 10)
        {
          paramArrayOfObject[0] = f;
          paramArrayOfObject[1] = paramArrayOfInt;
          for (paramInt = (paramInt << 1) - 1; paramInt >= 2; paramInt--) {
            paramArrayOfObject[paramInt] = null;
          }
          f = paramArrayOfObject;
          g += 1;
        }
      }
      finally {}
    } else if (paramArrayOfInt.length == 4) {
      try
      {
        if (e < 10)
        {
          paramArrayOfObject[0] = d;
          paramArrayOfObject[1] = paramArrayOfInt;
          for (paramInt = (paramInt << 1) - 1; paramInt >= 2; paramInt--) {
            paramArrayOfObject[paramInt] = null;
          }
          d = paramArrayOfObject;
          e += 1;
        }
      }
      finally {}
    }
  }
  
  public void clear()
  {
    int i = this.c;
    if (i > 0)
    {
      int[] arrayOfInt = this.a;
      Object[] arrayOfObject = this.b;
      this.a = c.a;
      this.b = c.c;
      this.c = 0;
      g(arrayOfInt, arrayOfObject, i);
    }
    if (this.c <= 0) {
      return;
    }
    throw new ConcurrentModificationException();
  }
  
  public boolean containsKey(Object paramObject)
  {
    boolean bool;
    if (i(paramObject) >= 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean containsValue(Object paramObject)
  {
    boolean bool;
    if (k(paramObject) >= 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    int i;
    Object localObject1;
    Object localObject2;
    Object localObject3;
    boolean bool;
    if ((paramObject instanceof g))
    {
      paramObject = (g)paramObject;
      if (size() != paramObject.size()) {
        return false;
      }
      i = 0;
      try
      {
        while (i < this.c)
        {
          localObject1 = l(i);
          localObject2 = p(i);
          localObject3 = paramObject.get(localObject1);
          if (localObject2 == null)
          {
            if ((localObject3 != null) || (!paramObject.containsKey(localObject1))) {
              return false;
            }
          }
          else
          {
            bool = localObject2.equals(localObject3);
            if (!bool) {
              return false;
            }
          }
          i++;
        }
        return true;
      }
      catch (NullPointerException|ClassCastException paramObject)
      {
        return false;
      }
    }
    if ((paramObject instanceof Map))
    {
      localObject1 = (Map)paramObject;
      if (size() != ((Map)localObject1).size()) {
        return false;
      }
      i = 0;
    }
    try
    {
      while (i < this.c)
      {
        localObject2 = l(i);
        paramObject = p(i);
        localObject3 = ((Map)localObject1).get(localObject2);
        if (paramObject == null)
        {
          if ((localObject3 != null) || (!((Map)localObject1).containsKey(localObject2))) {
            return false;
          }
        }
        else
        {
          bool = paramObject.equals(localObject3);
          if (!bool) {
            return false;
          }
        }
        i++;
      }
      return true;
    }
    catch (NullPointerException|ClassCastException paramObject)
    {
      label214:
      break label214;
    }
    return false;
  }
  
  public void f(int paramInt)
  {
    int i = this.c;
    int[] arrayOfInt = this.a;
    if (arrayOfInt.length < paramInt)
    {
      Object[] arrayOfObject = this.b;
      c(paramInt);
      if (this.c > 0)
      {
        System.arraycopy(arrayOfInt, 0, this.a, 0, i);
        System.arraycopy(arrayOfObject, 0, this.b, 0, i << 1);
      }
      g(arrayOfInt, arrayOfObject, i);
    }
    if (this.c == i) {
      return;
    }
    throw new ConcurrentModificationException();
  }
  
  public V get(Object paramObject)
  {
    return getOrDefault(paramObject, null);
  }
  
  public V getOrDefault(Object paramObject, V paramV)
  {
    int i = i(paramObject);
    if (i >= 0) {
      paramV = this.b[((i << 1) + 1)];
    }
    return paramV;
  }
  
  int h(Object paramObject, int paramInt)
  {
    int i = this.c;
    if (i == 0) {
      return -1;
    }
    int j = e(this.a, i, paramInt);
    if (j < 0) {
      return j;
    }
    if (paramObject.equals(this.b[(j << 1)])) {
      return j;
    }
    for (int k = j + 1; (k < i) && (this.a[k] == paramInt); k++) {
      if (paramObject.equals(this.b[(k << 1)])) {
        return k;
      }
    }
    for (i = j - 1; (i >= 0) && (this.a[i] == paramInt); i--) {
      if (paramObject.equals(this.b[(i << 1)])) {
        return i;
      }
    }
    return k;
  }
  
  public int hashCode()
  {
    int[] arrayOfInt = this.a;
    Object[] arrayOfObject = this.b;
    int i = this.c;
    int j = 1;
    int k = 0;
    int m = k;
    while (k < i)
    {
      Object localObject = arrayOfObject[j];
      int n = arrayOfInt[k];
      int i1;
      if (localObject == null) {
        i1 = 0;
      } else {
        i1 = localObject.hashCode();
      }
      m += (i1 ^ n);
      k++;
      j += 2;
    }
    return m;
  }
  
  public int i(Object paramObject)
  {
    int i;
    if (paramObject == null) {
      i = j();
    } else {
      i = h(paramObject, paramObject.hashCode());
    }
    return i;
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
  
  int j()
  {
    int i = this.c;
    if (i == 0) {
      return -1;
    }
    int j = e(this.a, i, 0);
    if (j < 0) {
      return j;
    }
    if (this.b[(j << 1)] == null) {
      return j;
    }
    for (int k = j + 1; (k < i) && (this.a[k] == 0); k++) {
      if (this.b[(k << 1)] == null) {
        return k;
      }
    }
    for (i = j - 1; (i >= 0) && (this.a[i] == 0); i--) {
      if (this.b[(i << 1)] == null) {
        return i;
      }
    }
    return k;
  }
  
  int k(Object paramObject)
  {
    int i = this.c * 2;
    Object[] arrayOfObject = this.b;
    if (paramObject == null) {
      for (j = 1; j < i; j += 2) {
        if (arrayOfObject[j] == null) {
          return j >> 1;
        }
      }
    }
    for (int j = 1; j < i; j += 2) {
      if (paramObject.equals(arrayOfObject[j])) {
        return j >> 1;
      }
    }
    return -1;
  }
  
  public K l(int paramInt)
  {
    return this.b[(paramInt << 1)];
  }
  
  public void m(g<? extends K, ? extends V> paramg)
  {
    int i = paramg.c;
    f(this.c + i);
    int j = this.c;
    int k = 0;
    if (j == 0)
    {
      if (i > 0)
      {
        System.arraycopy(paramg.a, 0, this.a, 0, i);
        System.arraycopy(paramg.b, 0, this.b, 0, i << 1);
        this.c = i;
      }
    }
    else {
      while (k < i)
      {
        put(paramg.l(k), paramg.p(k));
        k++;
      }
    }
  }
  
  public V n(int paramInt)
  {
    Object[] arrayOfObject = this.b;
    int i = paramInt << 1;
    Object localObject = arrayOfObject[(i + 1)];
    int j = this.c;
    int k = 0;
    if (j <= 1)
    {
      g(this.a, arrayOfObject, j);
      this.a = c.a;
      this.b = c.c;
      paramInt = k;
    }
    else
    {
      int m = j - 1;
      int[] arrayOfInt1 = this.a;
      int n = arrayOfInt1.length;
      k = 8;
      if ((n > 8) && (j < arrayOfInt1.length / 3))
      {
        if (j > 8) {
          k = j + (j >> 1);
        }
        c(k);
        if (j == this.c)
        {
          if (paramInt > 0)
          {
            System.arraycopy(arrayOfInt1, 0, this.a, 0, paramInt);
            System.arraycopy(arrayOfObject, 0, this.b, 0, i);
          }
          if (paramInt < m)
          {
            k = paramInt + 1;
            int[] arrayOfInt2 = this.a;
            n = m - paramInt;
            System.arraycopy(arrayOfInt1, k, arrayOfInt2, paramInt, n);
            System.arraycopy(arrayOfObject, k << 1, this.b, i, n << 1);
          }
        }
        else
        {
          throw new ConcurrentModificationException();
        }
      }
      else
      {
        if (paramInt < m)
        {
          k = paramInt + 1;
          n = m - paramInt;
          System.arraycopy(arrayOfInt1, k, arrayOfInt1, paramInt, n);
          arrayOfObject = this.b;
          System.arraycopy(arrayOfObject, k << 1, arrayOfObject, i, n << 1);
        }
        arrayOfObject = this.b;
        paramInt = m << 1;
        arrayOfObject[paramInt] = null;
        arrayOfObject[(paramInt + 1)] = null;
      }
      paramInt = m;
    }
    if (j == this.c)
    {
      this.c = paramInt;
      return localObject;
    }
    throw new ConcurrentModificationException();
  }
  
  public V o(int paramInt, V paramV)
  {
    paramInt = (paramInt << 1) + 1;
    Object[] arrayOfObject = this.b;
    Object localObject = arrayOfObject[paramInt];
    arrayOfObject[paramInt] = paramV;
    return localObject;
  }
  
  public V p(int paramInt)
  {
    return this.b[((paramInt << 1) + 1)];
  }
  
  public V put(K paramK, V paramV)
  {
    int i = this.c;
    int k;
    if (paramK == null)
    {
      j = j();
      k = 0;
    }
    else
    {
      k = paramK.hashCode();
      j = h(paramK, k);
    }
    Object localObject;
    if (j >= 0)
    {
      j = (j << 1) + 1;
      paramK = this.b;
      localObject = paramK[j];
      paramK[j] = paramV;
      return localObject;
    }
    int m = j;
    int[] arrayOfInt = this.a;
    if (i >= arrayOfInt.length)
    {
      j = 4;
      if (i >= 8) {
        j = (i >> 1) + i;
      } else if (i >= 4) {
        j = 8;
      }
      Object[] arrayOfObject = this.b;
      c(j);
      if (i == this.c)
      {
        localObject = this.a;
        if (localObject.length > 0)
        {
          System.arraycopy(arrayOfInt, 0, localObject, 0, arrayOfInt.length);
          System.arraycopy(arrayOfObject, 0, this.b, 0, arrayOfObject.length);
        }
        g(arrayOfInt, arrayOfObject, i);
      }
      else
      {
        throw new ConcurrentModificationException();
      }
    }
    if (m < i)
    {
      localObject = this.a;
      j = m + 1;
      System.arraycopy(localObject, m, localObject, j, i - m);
      localObject = this.b;
      System.arraycopy(localObject, m << 1, localObject, j << 1, this.c - m << 1);
    }
    int j = this.c;
    if (i == j)
    {
      localObject = this.a;
      if (m < localObject.length)
      {
        localObject[m] = k;
        localObject = this.b;
        k = m << 1;
        localObject[k] = paramK;
        localObject[(k + 1)] = paramV;
        this.c = (j + 1);
        return null;
      }
    }
    throw new ConcurrentModificationException();
  }
  
  public V putIfAbsent(K paramK, V paramV)
  {
    Object localObject1 = get(paramK);
    Object localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = put(paramK, paramV);
    }
    return localObject2;
  }
  
  public V remove(Object paramObject)
  {
    int i = i(paramObject);
    if (i >= 0) {
      return n(i);
    }
    return null;
  }
  
  public boolean remove(Object paramObject1, Object paramObject2)
  {
    int i = i(paramObject1);
    if (i >= 0)
    {
      paramObject1 = p(i);
      if ((paramObject2 == paramObject1) || ((paramObject2 != null) && (paramObject2.equals(paramObject1))))
      {
        n(i);
        return true;
      }
    }
    return false;
  }
  
  public V replace(K paramK, V paramV)
  {
    int i = i(paramK);
    if (i >= 0) {
      return o(i, paramV);
    }
    return null;
  }
  
  public boolean replace(K paramK, V paramV1, V paramV2)
  {
    int i = i(paramK);
    if (i >= 0)
    {
      paramK = p(i);
      if ((paramK == paramV1) || ((paramV1 != null) && (paramV1.equals(paramK))))
      {
        o(i, paramV2);
        return true;
      }
    }
    return false;
  }
  
  public int size()
  {
    return this.c;
  }
  
  public String toString()
  {
    if (isEmpty()) {
      return "{}";
    }
    StringBuilder localStringBuilder = new StringBuilder(this.c * 28);
    localStringBuilder.append('{');
    for (int i = 0; i < this.c; i++)
    {
      if (i > 0) {
        localStringBuilder.append(", ");
      }
      Object localObject = l(i);
      if (localObject != this) {
        localStringBuilder.append(localObject);
      } else {
        localStringBuilder.append("(this Map)");
      }
      localStringBuilder.append('=');
      localObject = p(i);
      if (localObject != this) {
        localStringBuilder.append(localObject);
      } else {
        localStringBuilder.append("(this Map)");
      }
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n.g
 * JD-Core Version:    0.7.0.1
 */