package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.y0;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/jvm/internal/k;", "Lkotlin/collections/y0;", "", "hasNext", "", "b", "", "a", "[S", "array", "", "I", "index", "<init>", "([S)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
final class k
  extends y0
{
  private final short[] a;
  private int b;
  
  public k(short[] paramArrayOfShort)
  {
    this.a = paramArrayOfShort;
  }
  
  public short b()
  {
    try
    {
      short[] arrayOfShort = this.a;
      int i = this.b;
      this.b = (i + 1);
      short s = arrayOfShort[i];
      return s;
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
      this.b -= 1;
      throw new NoSuchElementException(localArrayIndexOutOfBoundsException.getMessage());
    }
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
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.k
 * JD-Core Version:    0.7.0.1
 */