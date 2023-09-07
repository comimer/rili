package b8;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.random.Random;
import kotlin.random.d;

@Metadata(bv={}, d1={""}, d2={"Lb8/c;", "Lkotlin/random/Random;", "random", "", "j", "to", "Lb8/a;", "i", "step", "k", "l", "minimumValue", "c", "", "d", "", "b", "maximumValue", "f", "g", "e", "h", "kotlin-stdlib"}, k=5, mv={1, 7, 1}, xs="kotlin/ranges/RangesKt")
class i
  extends h
{
  public static float b(float paramFloat1, float paramFloat2)
  {
    float f = paramFloat1;
    if (paramFloat1 < paramFloat2) {
      f = paramFloat2;
    }
    return f;
  }
  
  public static int c(int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    if (paramInt1 < paramInt2) {
      i = paramInt2;
    }
    return i;
  }
  
  public static long d(long paramLong1, long paramLong2)
  {
    long l = paramLong1;
    if (paramLong1 < paramLong2) {
      l = paramLong2;
    }
    return l;
  }
  
  public static float e(float paramFloat1, float paramFloat2)
  {
    float f = paramFloat1;
    if (paramFloat1 > paramFloat2) {
      f = paramFloat2;
    }
    return f;
  }
  
  public static int f(int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    if (paramInt1 > paramInt2) {
      i = paramInt2;
    }
    return i;
  }
  
  public static long g(long paramLong1, long paramLong2)
  {
    long l = paramLong1;
    if (paramLong1 > paramLong2) {
      l = paramLong2;
    }
    return l;
  }
  
  public static int h(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt2 <= paramInt3)
    {
      if (paramInt1 < paramInt2) {
        return paramInt2;
      }
      if (paramInt1 > paramInt3) {
        return paramInt3;
      }
      return paramInt1;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Cannot coerce value to an empty range: maximum ");
    localStringBuilder.append(paramInt3);
    localStringBuilder.append(" is less than minimum ");
    localStringBuilder.append(paramInt2);
    localStringBuilder.append('.');
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  public static a i(int paramInt1, int paramInt2)
  {
    return a.d.a(paramInt1, paramInt2, -1);
  }
  
  public static int j(c paramc, Random paramRandom)
  {
    r.f(paramc, "<this>");
    r.f(paramRandom, "random");
    try
    {
      int i = d.f(paramRandom, paramc);
      return i;
    }
    catch (IllegalArgumentException paramc)
    {
      throw new NoSuchElementException(paramc.getMessage());
    }
  }
  
  public static a k(a parama, int paramInt)
  {
    r.f(parama, "<this>");
    boolean bool;
    if (paramInt > 0) {
      bool = true;
    } else {
      bool = false;
    }
    h.a(bool, Integer.valueOf(paramInt));
    a.a locala = a.d;
    int i = parama.c();
    int j = parama.h();
    if (parama.j() <= 0) {
      paramInt = -paramInt;
    }
    return locala.a(i, j, paramInt);
  }
  
  public static c l(int paramInt1, int paramInt2)
  {
    if (paramInt2 <= -2147483648) {
      return c.e.a();
    }
    return new c(paramInt1, paramInt2 - 1);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b8.i
 * JD-Core Version:    0.7.0.1
 */