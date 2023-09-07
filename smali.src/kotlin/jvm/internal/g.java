package kotlin.jvm.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import x7.a;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/jvm/internal/g;", "T", "", "", "hasNext", "next", "()Ljava/lang/Object;", "", "a", "[Ljava/lang/Object;", "getArray", "()[Ljava/lang/Object;", "array", "", "b", "I", "index", "<init>", "([Ljava/lang/Object;)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
final class g<T>
  implements Iterator<T>, a
{
  private final T[] a;
  private int b;
  
  public g(T[] paramArrayOfT)
  {
    this.a = paramArrayOfT;
  }
  
  public boolean hasNext()
  {
    boolean bool;
    if (this.b < this.a.length) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public T next()
  {
    try
    {
      Object localObject = this.a;
      int i = this.b;
      this.b = (i + 1);
      localObject = localObject[i];
      return localObject;
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
      this.b -= 1;
      throw new NoSuchElementException(localArrayIndexOutOfBoundsException.getMessage());
    }
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException("Operation is not supported for read-only collection");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.g
 * JD-Core Version:    0.7.0.1
 */