package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.r;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/jvm/internal/c;", "Lkotlin/collections/r;", "", "hasNext", "", "b", "", "a", "[C", "array", "", "I", "index", "<init>", "([C)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
final class c
  extends r
{
  private final char[] a;
  private int b;
  
  public c(char[] paramArrayOfChar)
  {
    this.a = paramArrayOfChar;
  }
  
  public char b()
  {
    try
    {
      char[] arrayOfChar = this.a;
      int i = this.b;
      this.b = (i + 1);
      char c = arrayOfChar[i];
      return c;
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
 * Qualified Name:     kotlin.jvm.internal.c
 * JD-Core Version:    0.7.0.1
 */