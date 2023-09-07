package a8;

import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"La8/a;", "Lkotlin/random/a;", "", "from", "until", "nextInt", "", "nextLong", "", "nextDouble", "Ljava/util/Random;", "getImpl", "()Ljava/util/Random;", "impl", "<init>", "()V", "kotlin-stdlib-jdk8"}, k=1, mv={1, 6, 0})
public final class a
  extends kotlin.random.a
{
  public Random getImpl()
  {
    ThreadLocalRandom localThreadLocalRandom = ThreadLocalRandom.current();
    r.e(localThreadLocalRandom, "current()");
    return localThreadLocalRandom;
  }
  
  public double nextDouble(double paramDouble)
  {
    return ThreadLocalRandom.current().nextDouble(paramDouble);
  }
  
  public int nextInt(int paramInt1, int paramInt2)
  {
    return ThreadLocalRandom.current().nextInt(paramInt1, paramInt2);
  }
  
  public long nextLong(long paramLong)
  {
    return ThreadLocalRandom.current().nextLong(paramLong);
  }
  
  public long nextLong(long paramLong1, long paramLong2)
  {
    return ThreadLocalRandom.current().nextLong(paramLong1, paramLong2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     a8.a
 * JD-Core Version:    0.7.0.1
 */