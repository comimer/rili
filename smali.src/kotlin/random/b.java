package kotlin.random;

import java.util.Random;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/random/b;", "Lkotlin/random/a;", "kotlin/random/b$a", "a", "Lkotlin/random/b$a;", "implStorage", "Ljava/util/Random;", "getImpl", "()Ljava/util/Random;", "impl", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public final class b
  extends a
{
  private final a a = new a();
  
  public Random getImpl()
  {
    Object localObject = this.a.get();
    r.e(localObject, "implStorage.get()");
    return (Random)localObject;
  }
  
  @Metadata(bv={}, d1={""}, d2={"kotlin/random/b$a", "Ljava/lang/ThreadLocal;", "Ljava/util/Random;", "a", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  public static final class a
    extends ThreadLocal<Random>
  {
    protected Random a()
    {
      return new Random();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.random.b
 * JD-Core Version:    0.7.0.1
 */