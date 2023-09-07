package n;

public class h<E>
  implements Cloneable
{
  private static final Object e = new Object();
  private boolean a = false;
  private int[] b;
  private Object[] c;
  private int d;
  
  public h()
  {
    this(10);
  }
  
  public h(int paramInt)
  {
    if (paramInt == 0)
    {
      this.b = c.a;
      this.c = c.c;
    }
    else
    {
      paramInt = c.e(paramInt);
      this.b = new int[paramInt];
      this.c = new Object[paramInt];
    }
  }
  
  private void e()
  {
    int i = this.d;
    int[] arrayOfInt = this.b;
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
          arrayOfInt[k] = arrayOfInt[j];
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
  
  public void a(int paramInt, E paramE)
  {
    int i = this.d;
    if ((i != 0) && (paramInt <= this.b[(i - 1)]))
    {
      l(paramInt, paramE);
      return;
    }
    if ((this.a) && (i >= this.b.length)) {
      e();
    }
    i = this.d;
    if (i >= this.b.length)
    {
      int j = c.e(i + 1);
      int[] arrayOfInt = new int[j];
      Object[] arrayOfObject = new Object[j];
      Object localObject = this.b;
      System.arraycopy(localObject, 0, arrayOfInt, 0, localObject.length);
      localObject = this.c;
      System.arraycopy(localObject, 0, arrayOfObject, 0, localObject.length);
      this.b = arrayOfInt;
      this.c = arrayOfObject;
    }
    this.b[i] = paramInt;
    this.c[i] = paramE;
    this.d = (i + 1);
  }
  
  public void b()
  {
    int i = this.d;
    Object[] arrayOfObject = this.c;
    for (int j = 0; j < i; j++) {
      arrayOfObject[j] = null;
    }
    this.d = 0;
    this.a = false;
  }
  
  public h<E> d()
  {
    try
    {
      h localh = (h)super.clone();
      localh.b = ((int[])this.b.clone());
      localh.c = ((Object[])this.c.clone());
      return localh;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError(localCloneNotSupportedException);
    }
  }
  
  public E f(int paramInt)
  {
    return g(paramInt, null);
  }
  
  public E g(int paramInt, E paramE)
  {
    paramInt = c.a(this.b, this.d, paramInt);
    if (paramInt >= 0)
    {
      Object localObject = this.c[paramInt];
      if (localObject != e) {
        return localObject;
      }
    }
    return paramE;
  }
  
  public int h(int paramInt)
  {
    if (this.a) {
      e();
    }
    return c.a(this.b, this.d, paramInt);
  }
  
  public int i(E paramE)
  {
    if (this.a) {
      e();
    }
    for (int i = 0; i < this.d; i++) {
      if (this.c[i] == paramE) {
        return i;
      }
    }
    return -1;
  }
  
  public int k(int paramInt)
  {
    if (this.a) {
      e();
    }
    return this.b[paramInt];
  }
  
  public void l(int paramInt, E paramE)
  {
    int i = c.a(this.b, this.d, paramInt);
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
          this.b[j] = paramInt;
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
          i = c.a(this.b, this.d, paramInt);
        }
      }
      j = this.d;
      if (j >= this.b.length)
      {
        j = c.e(j + 1);
        int[] arrayOfInt = new int[j];
        localObject1 = new Object[j];
        Object localObject2 = this.b;
        System.arraycopy(localObject2, 0, arrayOfInt, 0, localObject2.length);
        localObject2 = this.c;
        System.arraycopy(localObject2, 0, localObject1, 0, localObject2.length);
        this.b = arrayOfInt;
        this.c = ((Object[])localObject1);
      }
      k = this.d;
      if (k - i != 0)
      {
        localObject1 = this.b;
        j = i + 1;
        System.arraycopy(localObject1, i, localObject1, j, k - i);
        localObject1 = this.c;
        System.arraycopy(localObject1, i, localObject1, j, this.d - i);
      }
      this.b[i] = paramInt;
      this.c[i] = paramE;
      this.d += 1;
    }
  }
  
  public int n()
  {
    if (this.a) {
      e();
    }
    return this.d;
  }
  
  public E o(int paramInt)
  {
    if (this.a) {
      e();
    }
    return this.c[paramInt];
  }
  
  public String toString()
  {
    if (n() <= 0) {
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
      Object localObject = o(i);
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
 * Qualified Name:     n.h
 * JD-Core Version:    0.7.0.1
 */