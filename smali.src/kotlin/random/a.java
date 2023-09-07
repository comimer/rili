package kotlin.random;

import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/random/a;", "Lkotlin/random/Random;", "", "bitCount", "nextBits", "nextInt", "until", "", "nextLong", "", "nextBoolean", "", "nextDouble", "", "nextFloat", "", "array", "nextBytes", "Ljava/util/Random;", "getImpl", "()Ljava/util/Random;", "impl", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public abstract class a
  extends Random
{
  public abstract java.util.Random getImpl();
  
  public int nextBits(int paramInt)
  {
    return d.g(getImpl().nextInt(), paramInt);
  }
  
  public boolean nextBoolean()
  {
    return getImpl().nextBoolean();
  }
  
  public byte[] nextBytes(byte[] paramArrayOfByte)
  {
    r.f(paramArrayOfByte, "array");
    getImpl().nextBytes(paramArrayOfByte);
    return paramArrayOfByte;
  }
  
  public double nextDouble()
  {
    return getImpl().nextDouble();
  }
  
  public float nextFloat()
  {
    return getImpl().nextFloat();
  }
  
  public int nextInt()
  {
    return getImpl().nextInt();
  }
  
  public int nextInt(int paramInt)
  {
    return getImpl().nextInt(paramInt);
  }
  
  public long nextLong()
  {
    return getImpl().nextLong();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.random.a
 * JD-Core Version:    0.7.0.1
 */