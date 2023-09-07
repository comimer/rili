package s7;

import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.collections.j;
import kotlin.jvm.internal.r;
import kotlin.random.Random;
import kotlin.random.b;

@Metadata(bv={}, d1={""}, d2={"Ls7/a;", "", "", "cause", "exception", "Lkotlin/u;", "a", "Lkotlin/random/Random;", "b", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public class a
{
  public void a(Throwable paramThrowable1, Throwable paramThrowable2)
  {
    r.f(paramThrowable1, "cause");
    r.f(paramThrowable2, "exception");
    Method localMethod = a.b;
    if (localMethod != null) {
      localMethod.invoke(paramThrowable1, new Object[] { paramThrowable2 });
    }
  }
  
  public Random b()
  {
    return new b();
  }
  
  @Metadata(bv={}, d1={""}, d2={"Ls7/a$a;", "", "<init>", "()V", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
  private static final class a
  {
    public static final a a = new a();
    public static final Method b;
    public static final Method c;
    
    static
    {
      Method[] arrayOfMethod = Throwable.class.getMethods();
      r.e(arrayOfMethod, "throwableMethods");
      int i = arrayOfMethod.length;
      int j = 0;
      Object localObject1;
      for (int k = 0;; k++)
      {
        localObject1 = null;
        if (k >= i) {
          break;
        }
        localObject2 = arrayOfMethod[k];
        if (r.a(((Method)localObject2).getName(), "addSuppressed"))
        {
          Class[] arrayOfClass = ((Method)localObject2).getParameterTypes();
          r.e(arrayOfClass, "it.parameterTypes");
          if (r.a(j.P(arrayOfClass), Throwable.class))
          {
            m = 1;
            break label91;
          }
        }
        m = 0;
        label91:
        if (m != 0) {
          break label108;
        }
      }
      Object localObject2 = null;
      label108:
      b = (Method)localObject2;
      int m = arrayOfMethod.length;
      for (k = j;; k++)
      {
        localObject2 = localObject1;
        if (k >= m) {
          break;
        }
        localObject2 = arrayOfMethod[k];
        if (r.a(((Method)localObject2).getName(), "getSuppressed")) {
          break;
        }
      }
      c = (Method)localObject2;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s7.a
 * JD-Core Version:    0.7.0.1
 */