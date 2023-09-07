package kotlin.collections;

import b8.g;
import java.util.Arrays;
import java.util.Iterator;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/collections/t0;", "T", "Lkotlin/collections/b;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "", "index", "get", "(I)Ljava/lang/Object;", "", "isFull", "", "iterator", "", "array", "toArray", "([Ljava/lang/Object;)[Ljava/lang/Object;", "", "()[Ljava/lang/Object;", "maxCapacity", "m", "element", "Lkotlin/u;", "l", "(Ljava/lang/Object;)V", "n", "b", "[Ljava/lang/Object;", "buffer", "c", "I", "capacity", "d", "startIndex", "<set-?>", "e", "()I", "size", "filledSize", "<init>", "([Ljava/lang/Object;I)V", "(I)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
final class t0<T>
  extends b<T>
  implements RandomAccess
{
  private final Object[] b;
  private final int c;
  private int d;
  private int e;
  
  public t0(int paramInt)
  {
    this(new Object[paramInt], 0);
  }
  
  public t0(Object[] paramArrayOfObject, int paramInt)
  {
    this.b = paramArrayOfObject;
    int i = 1;
    int j;
    if (paramInt >= 0) {
      j = 1;
    } else {
      j = 0;
    }
    if (j != 0)
    {
      if (paramInt <= paramArrayOfObject.length) {
        j = i;
      } else {
        j = 0;
      }
      if (j != 0)
      {
        this.c = paramArrayOfObject.length;
        this.e = paramInt;
        return;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("ring buffer filled size: ");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(" cannot be larger than the buffer size: ");
      localStringBuilder.append(paramArrayOfObject.length);
      throw new IllegalArgumentException(localStringBuilder.toString().toString());
    }
    paramArrayOfObject = new StringBuilder();
    paramArrayOfObject.append("ring buffer filled size should not be negative but it is ");
    paramArrayOfObject.append(paramInt);
    throw new IllegalArgumentException(paramArrayOfObject.toString().toString());
  }
  
  public int c()
  {
    return this.e;
  }
  
  public T get(int paramInt)
  {
    b.a.a(paramInt, size());
    return this.b[((this.d + paramInt) % j(this))];
  }
  
  public final boolean isFull()
  {
    boolean bool;
    if (size() == this.c) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public Iterator<T> iterator()
  {
    return new a(this);
  }
  
  public final void l(T paramT)
  {
    if (!isFull())
    {
      this.b[((this.d + size()) % j(this))] = paramT;
      this.e = (size() + 1);
      return;
    }
    throw new IllegalStateException("ring buffer is full");
  }
  
  public final t0<T> m(int paramInt)
  {
    int i = this.c;
    paramInt = g.f(i + (i >> 1) + 1, paramInt);
    Object[] arrayOfObject;
    if (this.d == 0)
    {
      arrayOfObject = Arrays.copyOf(this.b, paramInt);
      r.e(arrayOfObject, "copyOf(this, newSize)");
    }
    else
    {
      arrayOfObject = toArray(new Object[paramInt]);
    }
    return new t0(arrayOfObject, size());
  }
  
  public final void n(int paramInt)
  {
    int i = 1;
    int j;
    if (paramInt >= 0) {
      j = 1;
    } else {
      j = 0;
    }
    if (j != 0)
    {
      if (paramInt <= size()) {
        j = i;
      } else {
        j = 0;
      }
      if (j != 0)
      {
        if (paramInt > 0)
        {
          i = this.d;
          j = (i + paramInt) % j(this);
          if (i > j)
          {
            j.k(this.b, null, i, this.c);
            j.k(this.b, null, 0, j);
          }
          else
          {
            j.k(this.b, null, i, j);
          }
          this.d = j;
          this.e = (size() - paramInt);
        }
        return;
      }
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("n shouldn't be greater than the buffer size: n = ");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(", size = ");
      localStringBuilder.append(size());
      throw new IllegalArgumentException(localStringBuilder.toString().toString());
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("n shouldn't be negative but it is ");
    localStringBuilder.append(paramInt);
    throw new IllegalArgumentException(localStringBuilder.toString().toString());
  }
  
  public Object[] toArray()
  {
    return toArray(new Object[size()]);
  }
  
  public <T> T[] toArray(T[] paramArrayOfT)
  {
    r.f(paramArrayOfT, "array");
    Object localObject = paramArrayOfT;
    if (paramArrayOfT.length < size())
    {
      localObject = Arrays.copyOf(paramArrayOfT, size());
      r.e(localObject, "copyOf(this, newSize)");
    }
    int i = size();
    int j = this.d;
    int k = 0;
    int m = 0;
    int n;
    int i1;
    for (;;)
    {
      n = k;
      i1 = m;
      if (m >= i) {
        break;
      }
      n = k;
      i1 = m;
      if (j >= this.c) {
        break;
      }
      localObject[m] = this.b[j];
      m++;
      j++;
    }
    while (i1 < i)
    {
      localObject[i1] = this.b[n];
      i1++;
      n++;
    }
    if (localObject.length > size()) {
      localObject[size()] = null;
    }
    r.d(localObject, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.RingBuffer.toArray>");
    return localObject;
  }
  
  @Metadata(bv={}, d1={""}, d2={"kotlin/collections/t0$a", "Lkotlin/collections/a;", "Lkotlin/u;", "b", "", "c", "I", "count", "d", "index", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class a
    extends a<T>
  {
    private int c;
    private int d;
    
    a(t0<T> paramt0)
    {
      this.c = paramt0.size();
      this.d = t0.k(paramt0);
    }
    
    protected void b()
    {
      if (this.c == 0)
      {
        c();
      }
      else
      {
        f(t0.h(this.e)[this.d]);
        t0 localt0 = this.e;
        this.d = ((this.d + 1) % t0.j(localt0));
        this.c -= 1;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.collections.t0
 * JD-Core Version:    0.7.0.1
 */