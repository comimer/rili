package s7;

import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"", "a", "b", "e", "", "f", "c", "start", "end", "step", "d", "kotlin-stdlib"}, k=2, mv={1, 7, 1})
public final class c
{
  private static final int a(int paramInt1, int paramInt2, int paramInt3)
  {
    return e(e(paramInt1, paramInt3) - e(paramInt2, paramInt3), paramInt3);
  }
  
  private static final long b(long paramLong1, long paramLong2, long paramLong3)
  {
    return f(f(paramLong1, paramLong3) - f(paramLong2, paramLong3), paramLong3);
  }
  
  public static final int c(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt3 > 0)
    {
      if (paramInt1 < paramInt2) {
        paramInt2 -= a(paramInt2, paramInt1, paramInt3);
      }
    }
    else
    {
      if (paramInt3 >= 0) {
        break label48;
      }
      if (paramInt1 > paramInt2) {
        paramInt2 += a(paramInt1, paramInt2, -paramInt3);
      }
    }
    return paramInt2;
    label48:
    throw new IllegalArgumentException("Step is zero.");
  }
  
  public static final long d(long paramLong1, long paramLong2, long paramLong3)
  {
    boolean bool = paramLong3 < 0L;
    if (bool)
    {
      if (paramLong1 < paramLong2) {
        paramLong2 -= b(paramLong2, paramLong1, paramLong3);
      }
    }
    else
    {
      if (!bool) {
        break label60;
      }
      if (paramLong1 > paramLong2) {
        paramLong2 += b(paramLong1, paramLong2, -paramLong3);
      }
    }
    return paramLong2;
    label60:
    throw new IllegalArgumentException("Step is zero.");
  }
  
  private static final int e(int paramInt1, int paramInt2)
  {
    paramInt1 %= paramInt2;
    if (paramInt1 < 0) {
      paramInt1 += paramInt2;
    }
    return paramInt1;
  }
  
  private static final long f(long paramLong1, long paramLong2)
  {
    paramLong1 %= paramLong2;
    if (paramLong1 < 0L) {
      paramLong1 += paramLong2;
    }
    return paramLong1;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s7.c
 * JD-Core Version:    0.7.0.1
 */