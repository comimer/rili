package kotlin.random;

import java.io.Serializable;
import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/random/XorWowRandom;", "Lkotlin/random/Random;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "nextInt", "bitCount", "nextBits", "x", "I", "y", "z", "w", "v", "addend", "<init>", "(IIIIII)V", "seed1", "seed2", "(II)V", "Companion", "a", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class XorWowRandom
  extends Random
  implements Serializable
{
  private static final a Companion = new a(null);
  @Deprecated
  private static final long serialVersionUID = 0L;
  private int addend;
  private int v;
  private int w;
  private int x;
  private int y;
  private int z;
  
  public XorWowRandom(int paramInt1, int paramInt2)
  {
    this(paramInt1, paramInt2, 0, 0, paramInt1, paramInt1 << 10 ^ paramInt2 >>> 4);
  }
  
  public XorWowRandom(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    this.x = paramInt1;
    this.y = paramInt2;
    this.z = paramInt3;
    this.w = paramInt4;
    this.v = paramInt5;
    this.addend = paramInt6;
    paramInt6 = 0;
    if ((paramInt1 | paramInt2 | paramInt3 | paramInt4 | paramInt5) != 0) {
      paramInt1 = 1;
    } else {
      paramInt1 = 0;
    }
    if (paramInt1 != 0)
    {
      for (paramInt1 = paramInt6; paramInt1 < 64; paramInt1++) {
        nextInt();
      }
      return;
    }
    throw new IllegalArgumentException("Initial state must have at least one non-zero element.".toString());
  }
  
  public int nextBits(int paramInt)
  {
    return d.g(nextInt(), paramInt);
  }
  
  public int nextInt()
  {
    int i = this.x;
    i ^= i >>> 2;
    this.x = this.y;
    this.y = this.z;
    this.z = this.w;
    int j = this.v;
    this.w = j;
    j = i ^ i << 1 ^ j ^ j << 4;
    this.v = j;
    i = this.addend + 362437;
    this.addend = i;
    return j + i;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/random/XorWowRandom$a;", "", "", "serialVersionUID", "J", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  private static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.random.XorWowRandom
 * JD-Core Version:    0.7.0.1
 */