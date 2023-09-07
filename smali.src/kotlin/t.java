package kotlin;

import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import x7.a;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/t;", "", "Lkotlin/s;", "", "c", "([S)Ljava/util/Iterator;", "a", "storage", "", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class t
  implements Collection<s>, a
{
  public static Iterator<s> c(short[] paramArrayOfShort)
  {
    return new a(paramArrayOfShort);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/t$a;", "", "Lkotlin/s;", "", "hasNext", "b", "()S", "", "a", "[S", "array", "", "I", "index", "<init>", "([S)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  private static final class a
    implements Iterator<s>, a
  {
    private final short[] a;
    private int b;
    
    public a(short[] paramArrayOfShort)
    {
      this.a = paramArrayOfShort;
    }
    
    public short b()
    {
      int i = this.b;
      short[] arrayOfShort = this.a;
      if (i < arrayOfShort.length)
      {
        this.b = (i + 1);
        return s.c(arrayOfShort[i]);
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
 * Qualified Name:     kotlin.t
 * JD-Core Version:    0.7.0.1
 */