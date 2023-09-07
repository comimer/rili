package b8;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.k0;

@Metadata(bv={}, d1={""}, d2={"Lb8/e;", "Lkotlin/collections/k0;", "", "hasNext", "", "nextLong", "first", "last", "step", "<init>", "(JJJ)V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class e
  extends k0
{
  private final long a;
  private final long b;
  private boolean c;
  private long d;
  
  public e(long paramLong1, long paramLong2, long paramLong3)
  {
    this.a = paramLong3;
    this.b = paramLong2;
    boolean bool = true;
    if (paramLong3 > 0L ? paramLong1 > paramLong2 : paramLong1 < paramLong2) {
      bool = false;
    }
    this.c = bool;
    if (!bool) {
      paramLong1 = paramLong2;
    }
    this.d = paramLong1;
  }
  
  public boolean hasNext()
  {
    return this.c;
  }
  
  public long nextLong()
  {
    long l = this.d;
    if (l == this.b)
    {
      if (this.c) {
        this.c = false;
      } else {
        throw new NoSuchElementException();
      }
    }
    else {
      this.d = (this.a + l);
    }
    return l;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b8.e
 * JD-Core Version:    0.7.0.1
 */