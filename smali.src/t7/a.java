package t7;

import java.lang.reflect.Field;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lt7/a;", "Ls7/a;", "", "version", "", "c", "", "cause", "exception", "Lkotlin/u;", "a", "<init>", "()V", "kotlin-stdlib-jdk7"}, k=1, mv={1, 7, 1})
public class a
  extends s7.a
{
  private final boolean c(int paramInt)
  {
    Integer localInteger = a.b;
    boolean bool;
    if ((localInteger != null) && (localInteger.intValue() < paramInt)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public void a(Throwable paramThrowable1, Throwable paramThrowable2)
  {
    r.f(paramThrowable1, "cause");
    r.f(paramThrowable2, "exception");
    if (c(19)) {
      paramThrowable1.addSuppressed(paramThrowable2);
    } else {
      super.a(paramThrowable1, paramThrowable2);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lt7/a$a;", "", "<init>", "()V", "kotlin-stdlib-jdk7"}, k=1, mv={1, 7, 1})
  private static final class a
  {
    public static final a a = new a();
    public static final Integer b;
    
    static
    {
      Object localObject1 = null;
      try
      {
        localObject2 = Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
        if ((localObject2 instanceof Integer)) {
          localObject2 = (Integer)localObject2;
        }
      }
      finally
      {
        Object localObject2;
        label42:
        Object localObject4;
        int i;
        break label42;
      }
      localObject2 = null;
      localObject4 = localObject1;
      if (localObject2 != null)
      {
        if (((Number)localObject2).intValue() > 0) {
          i = 1;
        } else {
          i = 0;
        }
        localObject4 = localObject1;
        if (i != 0) {
          localObject4 = localObject2;
        }
      }
      b = localObject4;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     t7.a
 * JD-Core Version:    0.7.0.1
 */