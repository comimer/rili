package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.j0;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/jvm/internal/f;", "Lkotlin/collections/j0;", "", "hasNext", "", "nextInt", "", "a", "[I", "array", "b", "I", "index", "<init>", "([I)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
final class f
  extends j0
{
  private final int[] a;
  private int b;
  
  public f(int[] paramArrayOfInt)
  {
    this.a = paramArrayOfInt;
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
  
  public int nextInt()
  {
    try
    {
      int[] arrayOfInt = this.a;
      int i = this.b;
      this.b = (i + 1);
      i = arrayOfInt[i];
      return i;
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
      this.b -= 1;
      throw new NoSuchElementException(localArrayIndexOutOfBoundsException.getMessage());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.f
 * JD-Core Version:    0.7.0.1
 */