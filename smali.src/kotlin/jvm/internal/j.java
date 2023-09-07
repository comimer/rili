package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.k0;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/jvm/internal/j;", "Lkotlin/collections/k0;", "", "hasNext", "", "nextLong", "", "a", "[J", "array", "", "b", "I", "index", "<init>", "([J)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
final class j
  extends k0
{
  private final long[] a;
  private int b;
  
  public j(long[] paramArrayOfLong)
  {
    this.a = paramArrayOfLong;
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
  
  public long nextLong()
  {
    try
    {
      long[] arrayOfLong = this.a;
      int i = this.b;
      this.b = (i + 1);
      long l = arrayOfLong[i];
      return l;
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
      this.b -= 1;
      throw new NoSuchElementException(localArrayIndexOutOfBoundsException.getMessage());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.j
 * JD-Core Version:    0.7.0.1
 */