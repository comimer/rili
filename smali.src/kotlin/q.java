package kotlin;

import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import x7.a;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/q;", "", "Lkotlin/p;", "", "c", "([J)Ljava/util/Iterator;", "a", "storage", "", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class q
  implements Collection<p>, a
{
  public static Iterator<p> c(long[] paramArrayOfLong)
  {
    return new a(paramArrayOfLong);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/q$a;", "", "Lkotlin/p;", "", "hasNext", "b", "()J", "", "a", "[J", "array", "", "I", "index", "<init>", "([J)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  private static final class a
    implements Iterator<p>, a
  {
    private final long[] a;
    private int b;
    
    public a(long[] paramArrayOfLong)
    {
      this.a = paramArrayOfLong;
    }
    
    public long b()
    {
      int i = this.b;
      long[] arrayOfLong = this.a;
      if (i < arrayOfLong.length)
      {
        this.b = (i + 1);
        return p.c(arrayOfLong[i]);
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
 * Qualified Name:     kotlin.q
 * JD-Core Version:    0.7.0.1
 */