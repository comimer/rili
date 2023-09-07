package kotlin;

import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import x7.a;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/m;", "", "Lkotlin/l;", "", "c", "([B)Ljava/util/Iterator;", "a", "storage", "", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class m
  implements Collection<l>, a
{
  public static Iterator<l> c(byte[] paramArrayOfByte)
  {
    return new a(paramArrayOfByte);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/m$a;", "", "Lkotlin/l;", "", "hasNext", "b", "()B", "", "a", "[B", "array", "", "I", "index", "<init>", "([B)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  private static final class a
    implements Iterator<l>, a
  {
    private final byte[] a;
    private int b;
    
    public a(byte[] paramArrayOfByte)
    {
      this.a = paramArrayOfByte;
    }
    
    public byte b()
    {
      int i = this.b;
      byte[] arrayOfByte = this.a;
      if (i < arrayOfByte.length)
      {
        this.b = (i + 1);
        return l.c(arrayOfByte[i]);
      }
      throw new NoSuchElementException(String.valueOf(this.b));
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
    
    public void remove()
    {
      throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.m
 * JD-Core Version:    0.7.0.1
 */