package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.o;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/jvm/internal/a;", "Lkotlin/collections/o;", "", "hasNext", "b", "", "a", "[Z", "array", "", "I", "index", "<init>", "([Z)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
final class a
  extends o
{
  private final boolean[] a;
  private int b;
  
  public a(boolean[] paramArrayOfBoolean)
  {
    this.a = paramArrayOfBoolean;
  }
  
  public boolean b()
  {
    try
    {
      boolean[] arrayOfBoolean = this.a;
      int i = this.b;
      this.b = (i + 1);
      int j = arrayOfBoolean[i];
      return j;
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
 * Qualified Name:     kotlin.jvm.internal.a
 * JD-Core Version:    0.7.0.1
 */