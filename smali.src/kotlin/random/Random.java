package kotlin.random;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import s7.a;
import s7.b;

@Metadata(d1={""}, d2={"Lkotlin/random/Random;", "", "()V", "nextBits", "", "bitCount", "nextBoolean", "", "nextBytes", "", "array", "fromIndex", "toIndex", "size", "nextDouble", "", "until", "from", "nextFloat", "", "nextInt", "nextLong", "", "Default", "kotlin-stdlib"}, k=1, mv={1, 7, 1}, xi=48)
public abstract class Random
{
  public static final Default Default = new Default(null);
  private static final Random defaultRandom = b.a.b();
  
  public abstract int nextBits(int paramInt);
  
  public boolean nextBoolean()
  {
    boolean bool = true;
    if (nextBits(1) == 0) {
      bool = false;
    }
    return bool;
  }
  
  public byte[] nextBytes(int paramInt)
  {
    return nextBytes(new byte[paramInt]);
  }
  
  public byte[] nextBytes(byte[] paramArrayOfByte)
  {
    r.f(paramArrayOfByte, "array");
    return nextBytes(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public byte[] nextBytes(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    r.f(paramArrayOfByte, "array");
    int i = paramArrayOfByte.length;
    int j = 0;
    boolean bool = new b8.c(0, i).m(paramInt1);
    int k = 1;
    if ((bool) && (new b8.c(0, paramArrayOfByte.length).m(paramInt2))) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0)
    {
      if (paramInt1 <= paramInt2) {
        i = k;
      } else {
        i = 0;
      }
      if (i != 0)
      {
        k = (paramInt2 - paramInt1) / 4;
        for (i = 0; i < k; i++)
        {
          int m = nextInt();
          paramArrayOfByte[paramInt1] = ((byte)(byte)m);
          paramArrayOfByte[(paramInt1 + 1)] = ((byte)(byte)(m >>> 8));
          paramArrayOfByte[(paramInt1 + 2)] = ((byte)(byte)(m >>> 16));
          paramArrayOfByte[(paramInt1 + 3)] = ((byte)(byte)(m >>> 24));
          paramInt1 += 4;
        }
        i = paramInt2 - paramInt1;
        k = nextBits(i * 8);
        for (paramInt2 = j; paramInt2 < i; paramInt2++) {
          paramArrayOfByte[(paramInt1 + paramInt2)] = ((byte)(byte)(k >>> paramInt2 * 8));
        }
        return paramArrayOfByte;
      }
      paramArrayOfByte = new StringBuilder();
      paramArrayOfByte.append("fromIndex (");
      paramArrayOfByte.append(paramInt1);
      paramArrayOfByte.append(") must be not greater than toIndex (");
      paramArrayOfByte.append(paramInt2);
      paramArrayOfByte.append(").");
      throw new IllegalArgumentException(paramArrayOfByte.toString().toString());
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("fromIndex (");
    localStringBuilder.append(paramInt1);
    localStringBuilder.append(") or toIndex (");
    localStringBuilder.append(paramInt2);
    localStringBuilder.append(") are out of range: 0..");
    localStringBuilder.append(paramArrayOfByte.length);
    localStringBuilder.append('.');
    throw new IllegalArgumentException(localStringBuilder.toString().toString());
  }
  
  public double nextDouble()
  {
    return c.a(nextBits(26), nextBits(27));
  }
  
  public double nextDouble(double paramDouble)
  {
    return nextDouble(0.0D, paramDouble);
  }
  
  public double nextDouble(double paramDouble1, double paramDouble2)
  {
    d.b(paramDouble1, paramDouble2);
    double d1 = paramDouble2 - paramDouble1;
    if (Double.isInfinite(d1))
    {
      boolean bool = Double.isInfinite(paramDouble1);
      int i = 1;
      int j;
      if ((!bool) && (!Double.isNaN(paramDouble1))) {
        j = 1;
      } else {
        j = 0;
      }
      if (j != 0)
      {
        if ((!Double.isInfinite(paramDouble2)) && (!Double.isNaN(paramDouble2))) {
          j = i;
        } else {
          j = 0;
        }
        if (j != 0)
        {
          d1 = nextDouble();
          double d2 = 2;
          d1 *= (paramDouble2 / d2 - paramDouble1 / d2);
          paramDouble1 = paramDouble1 + d1 + d1;
          break label127;
        }
      }
    }
    paramDouble1 += nextDouble() * d1;
    label127:
    d1 = paramDouble1;
    if (paramDouble1 >= paramDouble2) {
      d1 = Math.nextAfter(paramDouble2, (-1.0D / 0.0D));
    }
    return d1;
  }
  
  public float nextFloat()
  {
    return nextBits(24) / 16777216.0F;
  }
  
  public int nextInt()
  {
    return nextBits(32);
  }
  
  public int nextInt(int paramInt)
  {
    return nextInt(0, paramInt);
  }
  
  public int nextInt(int paramInt1, int paramInt2)
  {
    d.c(paramInt1, paramInt2);
    int i = paramInt2 - paramInt1;
    int k;
    if ((i <= 0) && (i != -2147483648))
    {
      int j;
      do
      {
        j = nextInt();
        k = 0;
        i = k;
        if (paramInt1 <= j)
        {
          i = k;
          if (j < paramInt2) {
            i = 1;
          }
        }
      } while (i == 0);
      return j;
    }
    if ((-i & i) == i) {
      paramInt2 = nextBits(d.e(i));
    } else {
      do
      {
        k = nextInt() >>> 1;
        paramInt2 = k % i;
      } while (k - paramInt2 + (i - 1) < 0);
    }
    return paramInt1 + paramInt2;
  }
  
  public long nextLong()
  {
    return (nextInt() << 32) + nextInt();
  }
  
  public long nextLong(long paramLong)
  {
    return nextLong(0L, paramLong);
  }
  
  public long nextLong(long paramLong1, long paramLong2)
  {
    d.d(paramLong1, paramLong2);
    long l1 = paramLong2 - paramLong1;
    int i;
    int j;
    if (l1 > 0L)
    {
      if ((-l1 & l1) == l1)
      {
        i = (int)l1;
        j = (int)(l1 >>> 32);
        if (i != 0) {}
        for (j = nextBits(d.e(i));; j = nextInt())
        {
          paramLong2 = j & 0xFFFFFFFF;
          break label139;
          if (j != 1) {
            break;
          }
        }
        paramLong2 = (nextBits(d.e(j)) << 32) + (nextInt() & 0xFFFFFFFF);
      }
      else
      {
        long l2;
        do
        {
          l2 = nextLong() >>> 1;
          paramLong2 = l2 % l1;
        } while (l2 - paramLong2 + (l1 - 1L) < 0L);
      }
      label139:
      return paramLong1 + paramLong2;
    }
    do
    {
      l1 = nextLong();
      i = 0;
      j = i;
      if (paramLong1 <= l1)
      {
        j = i;
        if (l1 < paramLong2) {
          j = 1;
        }
      }
    } while (j == 0);
    return l1;
  }
  
  @Metadata(d1={""}, d2={"Lkotlin/random/Random$Default;", "Lkotlin/random/Random;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "()V", "defaultRandom", "nextBits", "", "bitCount", "nextBoolean", "", "nextBytes", "", "array", "fromIndex", "toIndex", "size", "nextDouble", "", "until", "from", "nextFloat", "", "nextInt", "nextLong", "", "writeReplace", "", "Serialized", "kotlin-stdlib"}, k=1, mv={1, 7, 1}, xi=48)
  public static final class Default
    extends Random
    implements Serializable
  {
    private final Object writeReplace()
    {
      return Serialized.INSTANCE;
    }
    
    public int nextBits(int paramInt)
    {
      return Random.access$getDefaultRandom$cp().nextBits(paramInt);
    }
    
    public boolean nextBoolean()
    {
      return Random.access$getDefaultRandom$cp().nextBoolean();
    }
    
    public byte[] nextBytes(int paramInt)
    {
      return Random.access$getDefaultRandom$cp().nextBytes(paramInt);
    }
    
    public byte[] nextBytes(byte[] paramArrayOfByte)
    {
      r.f(paramArrayOfByte, "array");
      return Random.access$getDefaultRandom$cp().nextBytes(paramArrayOfByte);
    }
    
    public byte[] nextBytes(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      r.f(paramArrayOfByte, "array");
      return Random.access$getDefaultRandom$cp().nextBytes(paramArrayOfByte, paramInt1, paramInt2);
    }
    
    public double nextDouble()
    {
      return Random.access$getDefaultRandom$cp().nextDouble();
    }
    
    public double nextDouble(double paramDouble)
    {
      return Random.access$getDefaultRandom$cp().nextDouble(paramDouble);
    }
    
    public double nextDouble(double paramDouble1, double paramDouble2)
    {
      return Random.access$getDefaultRandom$cp().nextDouble(paramDouble1, paramDouble2);
    }
    
    public float nextFloat()
    {
      return Random.access$getDefaultRandom$cp().nextFloat();
    }
    
    public int nextInt()
    {
      return Random.access$getDefaultRandom$cp().nextInt();
    }
    
    public int nextInt(int paramInt)
    {
      return Random.access$getDefaultRandom$cp().nextInt(paramInt);
    }
    
    public int nextInt(int paramInt1, int paramInt2)
    {
      return Random.access$getDefaultRandom$cp().nextInt(paramInt1, paramInt2);
    }
    
    public long nextLong()
    {
      return Random.access$getDefaultRandom$cp().nextLong();
    }
    
    public long nextLong(long paramLong)
    {
      return Random.access$getDefaultRandom$cp().nextLong(paramLong);
    }
    
    public long nextLong(long paramLong1, long paramLong2)
    {
      return Random.access$getDefaultRandom$cp().nextLong(paramLong1, paramLong2);
    }
    
    @Metadata(d1={""}, d2={"Lkotlin/random/Random$Default$Serialized;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "()V", "serialVersionUID", "", "readResolve", "", "kotlin-stdlib"}, k=1, mv={1, 7, 1}, xi=48)
    private static final class Serialized
      implements Serializable
    {
      public static final Serialized INSTANCE = new Serialized();
      private static final long serialVersionUID = 0L;
      
      private final Object readResolve()
      {
        return Random.Default;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.random.Random
 * JD-Core Version:    0.7.0.1
 */