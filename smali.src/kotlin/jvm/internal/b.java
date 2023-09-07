package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.q;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/jvm/internal/b;", "Lkotlin/collections/q;", "", "hasNext", "", "a", "", "[B", "array", "", "b", "I", "index", "<init>", "([B)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
final class b
  extends q
{
  private final byte[] a;
  private int b;
  
  public b(byte[] paramArrayOfByte)
  {
    this.a = paramArrayOfByte;
  }
  
  public byte a()
  {
    try
    {
      byte[] arrayOfByte = this.a;
      int i = this.b;
      this.b = (i + 1);
      byte b1 = arrayOfByte[i];
      return b1;
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
 * Qualified Name:     kotlin.jvm.internal.b
 * JD-Core Version:    0.7.0.1
 */