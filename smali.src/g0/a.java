package g0;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lg0/a;", "", "T", "Lg0/a$b;", "key", "a", "(Lg0/a$b;)Ljava/lang/Object;", "", "map", "Ljava/util/Map;", "b", "()Ljava/util/Map;", "<init>", "()V", "lifecycle-viewmodel_release"}, k=1, mv={1, 6, 0})
public abstract class a
{
  private final Map<b<?>, Object> a = new LinkedHashMap();
  
  public abstract <T> T a(b<T> paramb);
  
  public final Map<b<?>, Object> b()
  {
    return this.a;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lg0/a$a;", "Lg0/a;", "T", "Lg0/a$b;", "key", "a", "(Lg0/a$b;)Ljava/lang/Object;", "<init>", "()V", "lifecycle-viewmodel_release"}, k=1, mv={1, 6, 0})
  public static final class a
    extends a
  {
    public static final a b = new a();
    
    public <T> T a(a.b<T> paramb)
    {
      r.f(paramb, "key");
      return null;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lg0/a$b;", "T", "", "lifecycle-viewmodel_release"}, k=1, mv={1, 6, 0})
  public static abstract interface b<T> {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     g0.a
 * JD-Core Version:    0.7.0.1
 */