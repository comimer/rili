package b8;

import kotlin.Metadata;
import kotlin.collections.k0;
import s7.c;
import x7.a;

@Metadata(bv={}, d1={""}, d2={"Lb8/d;", "", "", "Lkotlin/collections/k0;", "j", "first", "J", "c", "()J", "last", "h", "start", "endInclusive", "step", "<init>", "(JJJ)V", "a", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public class d
  implements Iterable<Long>, a
{
  public static final a d = new a(null);
  private final long a;
  private final long b;
  private final long c;
  
  public d(long paramLong1, long paramLong2, long paramLong3)
  {
    if (paramLong3 != 0L)
    {
      if (paramLong3 != -9223372036854775808L)
      {
        this.a = paramLong1;
        this.b = c.d(paramLong1, paramLong2, paramLong3);
        this.c = paramLong3;
        return;
      }
      throw new IllegalArgumentException("Step must be greater than Long.MIN_VALUE to avoid overflow on negation.");
    }
    throw new IllegalArgumentException("Step must be non-zero.");
  }
  
  public final long c()
  {
    return this.a;
  }
  
  public final long h()
  {
    return this.b;
  }
  
  public k0 j()
  {
    return new e(this.a, this.b, this.c);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lb8/d$a;", "", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b8.d
 * JD-Core Version:    0.7.0.1
 */