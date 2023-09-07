package kotlin.random;

import b8.a;
import b8.c;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/random/Random;", "Lb8/c;", "range", "", "f", "value", "e", "bitCount", "g", "from", "until", "Lkotlin/u;", "c", "", "d", "", "b", "", "", "a", "kotlin-stdlib"}, k=2, mv={1, 7, 1})
public final class d
{
  public static final String a(Object paramObject1, Object paramObject2)
  {
    r.f(paramObject1, "from");
    r.f(paramObject2, "until");
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Random range is empty: [");
    localStringBuilder.append(paramObject1);
    localStringBuilder.append(", ");
    localStringBuilder.append(paramObject2);
    localStringBuilder.append(").");
    return localStringBuilder.toString();
  }
  
  public static final void b(double paramDouble1, double paramDouble2)
  {
    int i;
    if (paramDouble2 > paramDouble1) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      return;
    }
    throw new IllegalArgumentException(a(Double.valueOf(paramDouble1), Double.valueOf(paramDouble2)).toString());
  }
  
  public static final void c(int paramInt1, int paramInt2)
  {
    int i;
    if (paramInt2 > paramInt1) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      return;
    }
    throw new IllegalArgumentException(a(Integer.valueOf(paramInt1), Integer.valueOf(paramInt2)).toString());
  }
  
  public static final void d(long paramLong1, long paramLong2)
  {
    int i;
    if (paramLong2 > paramLong1) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      return;
    }
    throw new IllegalArgumentException(a(Long.valueOf(paramLong1), Long.valueOf(paramLong2)).toString());
  }
  
  public static final int e(int paramInt)
  {
    return 31 - Integer.numberOfLeadingZeros(paramInt);
  }
  
  public static final int f(Random paramRandom, c paramc)
  {
    r.f(paramRandom, "<this>");
    r.f(paramc, "range");
    if (!paramc.isEmpty())
    {
      int i;
      if (paramc.h() < 2147483647) {
        i = paramRandom.nextInt(paramc.c(), paramc.h() + 1);
      } else if (paramc.c() > -2147483648) {
        i = paramRandom.nextInt(paramc.c() - 1, paramc.h()) + 1;
      } else {
        i = paramRandom.nextInt();
      }
      return i;
    }
    paramRandom = new StringBuilder();
    paramRandom.append("Cannot get random in empty range: ");
    paramRandom.append(paramc);
    throw new IllegalArgumentException(paramRandom.toString());
  }
  
  public static final int g(int paramInt1, int paramInt2)
  {
    return paramInt1 >>> 32 - paramInt2 & -paramInt2 >> 31;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.random.d
 * JD-Core Version:    0.7.0.1
 */