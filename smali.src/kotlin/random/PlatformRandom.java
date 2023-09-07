package kotlin.random;

import java.io.Serializable;
import java.util.Random;
import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/random/PlatformRandom;", "Lkotlin/random/a;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "Ljava/util/Random;", "impl", "Ljava/util/Random;", "getImpl", "()Ljava/util/Random;", "<init>", "(Ljava/util/Random;)V", "Companion", "a", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
final class PlatformRandom
  extends a
  implements Serializable
{
  private static final a Companion = new a(null);
  @Deprecated
  private static final long serialVersionUID = 0L;
  private final Random impl;
  
  public PlatformRandom(Random paramRandom)
  {
    this.impl = paramRandom;
  }
  
  public Random getImpl()
  {
    return this.impl;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lkotlin/random/PlatformRandom$a;", "", "", "serialVersionUID", "J", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  private static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.random.PlatformRandom
 * JD-Core Version:    0.7.0.1
 */