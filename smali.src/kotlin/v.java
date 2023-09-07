package kotlin;

import kotlin.jvm.internal.r;
import kotlin.text.a;

@Metadata(bv={}, d1={""}, d2={"", "v1", "v2", "a", "", "b", "v", "", "c", "base", "d", "kotlin-stdlib"}, k=2, mv={1, 7, 1})
public final class v
{
  public static final int a(int paramInt1, int paramInt2)
  {
    return r.h(paramInt1 ^ 0x80000000, paramInt2 ^ 0x80000000);
  }
  
  public static final int b(long paramLong1, long paramLong2)
  {
    return r.i(paramLong1 ^ 0x0, paramLong2 ^ 0x0);
  }
  
  public static final String c(long paramLong)
  {
    return d(paramLong, 10);
  }
  
  public static final String d(long paramLong, int paramInt)
  {
    if (paramLong >= 0L)
    {
      localObject = Long.toString(paramLong, a.a(paramInt));
      r.e(localObject, "toString(this, checkRadix(radix))");
      return localObject;
    }
    long l1 = paramInt;
    long l2 = (paramLong >>> 1) / l1 << 1;
    long l3 = paramLong - l2 * l1;
    long l4 = l2;
    paramLong = l3;
    if (l3 >= l1)
    {
      paramLong = l3 - l1;
      l4 = l2 + 1L;
    }
    Object localObject = new StringBuilder();
    String str = Long.toString(l4, a.a(paramInt));
    r.e(str, "toString(this, checkRadix(radix))");
    ((StringBuilder)localObject).append(str);
    str = Long.toString(paramLong, a.a(paramInt));
    r.e(str, "toString(this, checkRadix(radix))");
    ((StringBuilder)localObject).append(str);
    return ((StringBuilder)localObject).toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.v
 * JD-Core Version:    0.7.0.1
 */