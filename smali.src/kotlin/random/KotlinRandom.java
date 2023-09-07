package kotlin.random;

import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/random/KotlinRandom;", "Ljava/util/Random;", "", "bits", "next", "nextInt", "bound", "", "nextBoolean", "", "nextLong", "", "nextFloat", "", "nextDouble", "", "bytes", "Lkotlin/u;", "nextBytes", "seed", "setSeed", "Lkotlin/random/Random;", "impl", "Lkotlin/random/Random;", "getImpl", "()Lkotlin/random/Random;", "seedInitialized", "Z", "<init>", "(Lkotlin/random/Random;)V", "Companion", "a", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
final class KotlinRandom
  extends java.util.Random
{
  private static final a Companion = new a(null);
  @Deprecated
  private static final long serialVersionUID = 0L;
  private final Random impl;
  private boolean seedInitialized;
  
  public KotlinRandom(Random paramRandom)
  {
    this.impl = paramRandom;
  }
  
  public final Random getImpl()
  {
    return this.impl;
  }
  
  protected int next(int paramInt)
  {
    return this.impl.nextBits(paramInt);
  }
  
  public boolean nextBoolean()
  {
    return this.impl.nextBoolean();
  }
  
  public void nextBytes(byte[] paramArrayOfByte)
  {
    r.f(paramArrayOfByte, "bytes");
    this.impl.nextBytes(paramArrayOfByte);
  }
  
  public double nextDouble()
  {
    return this.impl.nextDouble();
  }
  
  public float nextFloat()
  {
    return this.impl.nextFloat();
  }
  
  public int nextInt()
  {
    return this.impl.nextInt();
  }
  
  public int nextInt(int paramInt)
  {
    return this.impl.nextInt(paramInt);
  }
  
  public long nextLong()
  {
    return this.impl.nextLong();
  }
  
  public void setSeed(long paramLong)
  {
    if (!this.seedInitialized)
    {
      this.seedInitialized = true;
      return;
    }
    throw new UnsupportedOperationException("Setting seed is not supported.");
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/random/KotlinRandom$a;", "", "", "serialVersionUID", "J", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  private static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.random.KotlinRandom
 * JD-Core Version:    0.7.0.1
 */