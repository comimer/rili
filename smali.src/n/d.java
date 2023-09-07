package n;

public class d<E>
  implements Cloneable
{
  private static final Object e = new Object();
  private boolean a = false;
  private long[] b;
  private Object[] c;
  private int d;
  
  public d()
  {
    this(10);
  }
  
  public d(int paramInt)
  {
    if (paramInt == 0)
    {
      this.b = c.b;
      this.c = c.c;
    }
    else
    {
      paramInt = c.f(paramInt);
      this.b = new long[paramInt];
      this.c = new Object[paramInt];
    }
  }
  
  private void e()
  {
    int i = this.d;
    long[] arrayOfLong = this.b;
    Object[] arrayOfObject = this.c;
    int j = 0;
    int m;
    for (int k = j; j < i; k = m)
    {
      Object localObject = arrayOfObject[j];
      m = k;
      if (localObject != e)
      {
        if (j != k)
        {
          arrayOfLong[k] = arrayOfLong[j];
          arrayOfObject[k] = localObject;
          arrayOfObject[j] = null;
        }
        m = k + 1;
      }
      j++;
    }
    this.a = false;
    this.d = k;
  }
  
  public void a()
  {
    int i = this.d;
    Object[] arrayOfObject = this.c;
    for (int j = 0; j < i; j++) {
      arrayOfObject[j] = null;
    }
    this.d = 0;
    this.a = false;
  }
  
  public d<E> b()
  {
    try
    {
      d locald = (d)super.clone();
      locald.b = ((long[])this.b.clone());
      locald.c = ((Object[])this.c.clone());
      return locald;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError(localCloneNotSupportedException);
    }
  }
  
  public boolean d(long paramLong)
  {
    boolean bool;
    if (h(paramLong) >= 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public E f(long paramLong)
  {
    return g(paramLong, null);
  }
  
  public E g(long paramLong, E paramE)
  {
    int i = c.b(this.b, this.d, paramLong);
    if (i >= 0)
    {
      Object localObject = this.c[i];
      if (localObject != e) {
        return localObject;
      }
    }
    return paramE;
  }
  
  public int h(long paramLong)
  {
    if (this.a) {
      e();
    }
    return c.b(this.b, this.d, paramLong);
  }
  
  public boolean i()
  {
    boolean bool;
    if (p() == 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public long k(int paramInt)
  {
    if (this.a) {
      e();
    }
    return this.b[paramInt];
  }
  
  public void l(long paramLong, E paramE)
  {
    int i = c.b(this.b, this.d, paramLong);
    if (i >= 0)
    {
      this.c[i] = paramE;
    }
    else
    {
      int j = i;
      int k = this.d;
      Object localObject1;
      if (j < k)
      {
        localObject1 = this.c;
        if (localObject1[j] == e)
        {
          this.b[j] = paramLong;
          localObject1[j] = paramE;
          return;
        }
      }
      i = j;
      if (this.a)
      {
        i = j;
        if (k >= this.b.length)
        {
          e();
          i = c.b(this.b, this.d, paramLong);
        }
      }
      j = this.d;
      if (j >= this.b.length)
      {
        j = c.f(j + 1);
        long[] arrayOfLong = new long[j];
        localObject1 = new Object[j];
        Object localObject2 = this.b;
        System.arraycopy(localObject2, 0, arrayOfLong, 0, localObject2.length);
        localObject2 = this.c;
        System.arraycopy(localObject2, 0, localObject1, 0, localObject2.length);
        this.b = arrayOfLong;
        this.c = ((Object[])localObject1);
      }
      j = this.d;
      if (j - i != 0)
      {
        localObject1 = this.b;
        k = i + 1;
        System.arraycopy(localObject1, i, localObject1, k, j - i);
        localObject1 = this.c;
        System.arraycopy(localObject1, i, localObject1, k, this.d - i);
      }
      this.b[i] = paramLong;
      this.c[i] = paramE;
      this.d += 1;
    }
  }
  
  public void n(long paramLong)
  {
    int i = c.b(this.b, this.d, paramLong);
    if (i >= 0)
    {
      Object[] arrayOfObject = this.c;
      Object localObject1 = arrayOfObject[i];
      Object localObject2 = e;
      if (localObject1 != localObject2)
      {
        arrayOfObject[i] = localObject2;
        this.a = true;
      }
    }
  }
  
  public void o(int paramInt)
  {
    Object[] arrayOfObject = this.c;
    Object localObject1 = arrayOfObject[paramInt];
    Object localObject2 = e;
    if (localObject1 != localObject2)
    {
      arrayOfObject[paramInt] = localObject2;
      this.a = true;
    }
  }
  
  public int p()
  {
    if (this.a) {
      e();
    }
    return this.d;
  }
  
  public E r(int paramInt)
  {
    if (this.a) {
      e();
    }
    return this.c[paramInt];
  }
  
  public String toString()
  {
    if (p() <= 0) {
      return "{}";
    }
    StringBuilder localStringBuilder = new StringBuilder(this.d * 28);
    localStringBuilder.append('{');
    for (int i = 0; i < this.d; i++)
    {
      if (i > 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(k(i));
      localStringBuilder.append('=');
      Object localObject = r(i);
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
 * Qualified Name:     n.d
 * JD-Core Version:    0.7.0.1
 */