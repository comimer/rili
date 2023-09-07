package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.d0;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/jvm/internal/d;", "Lkotlin/collections/d0;", "", "hasNext", "", "nextDouble", "", "a", "[D", "array", "", "b", "I", "index", "<init>", "([D)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
final class d
  extends d0
{
  private final double[] a;
  private int b;
  
  public d(double[] paramArrayOfDouble)
  {
    this.a = paramArrayOfDouble;
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
  
  public double nextDouble()
  {
    try
    {
      double[] arrayOfDouble = this.a;
      int i = this.b;
      this.b = (i + 1);
      double d = arrayOfDouble[i];
      return d;
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
      this.b -= 1;
      throw new NoSuchElementException(localArrayIndexOutOfBoundsException.getMessage());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.d
 * JD-Core Version:    0.7.0.1
 */